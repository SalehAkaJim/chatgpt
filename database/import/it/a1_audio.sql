-- Generated audio link import for it-IT A1
-- Source manifest: audio/manifests/it/A1.json
-- Generated rows: 260
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'it' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'it-IT' LIMIT 1);
START TRANSACTION;

-- d_at_the_cafe_02:3 -> audio/generated/it-IT/dialogues/00ca5c17a4501c4510bf43020909f1c2fa93daff6015f51c2f1e994a850caa0e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('256af412-c315-558f-8077-e05ba6142c86', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_at_the_cafe_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '75c1d76cd4ba067414205d88895e7d59d440eab1e07ba4692122db5ec4cbdbbc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3b2121dd-a089-5c7f-9b78-bf7b82f8cfea', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('256af412-c315-558f-8077-e05ba6142c86', 1), '75c1d76cd4ba067414205d88895e7d59d440eab1e07ba4692122db5ec4cbdbbc',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/00ca5c17a4501c4510bf43020909f1c2fa93daff6015f51c2f1e994a850caa0e.mp3', 1515, '2026-09-14 03:09:07.466203', 'd2b63cb38128ef294ccdc431ed36083c5934e6fc7f3c44818faecc9d47965ec3', 'validated', '{"audio_key":"00ca5c17a4501c4510bf43020909f1c2fa93daff6015f51c2f1e994a850caa0e","entity_key":"d_at_the_cafe_02:3","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"d2b63cb38128ef294ccdc431ed36083c5934e6fc7f3c44818faecc9d47965ec3","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/00ca5c17a4501c4510bf43020909f1c2fa93daff6015f51c2f1e994a850caa0e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_time_and_plans_01:3 -> audio/generated/it-IT/dialogues/00f75e4424710deea835c2e6583ae2df553adcf75a323eaac50433b21a08f76d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b252e4b8-90ca-5ab3-8054-ae096463a16c', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_time_and_plans_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ad2b8c946ed934be2b1bd9831b01d0f580cf2d8d2a140c44d87cc20dbed8171d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('197fca46-bb5a-541f-85ce-49d7fb3ff606', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b252e4b8-90ca-5ab3-8054-ae096463a16c', 1), 'ad2b8c946ed934be2b1bd9831b01d0f580cf2d8d2a140c44d87cc20dbed8171d',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/00f75e4424710deea835c2e6583ae2df553adcf75a323eaac50433b21a08f76d.mp3', 1697, '2026-09-14 03:09:07.630420', '24dd89e665e3c83f34a14d7a08bc7473a0ff51347d0e080158ecb11c36d03e6f', 'validated', '{"audio_key":"00f75e4424710deea835c2e6583ae2df553adcf75a323eaac50433b21a08f76d","entity_key":"d_time_and_plans_01:3","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"24dd89e665e3c83f34a14d7a08bc7473a0ff51347d0e080158ecb11c36d03e6f","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/00f75e4424710deea835c2e6583ae2df553adcf75a323eaac50433b21a08f76d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_getting_around_01:2 -> audio/generated/it-IT/dialogues/02be285be11d80a05c7aab6bde1bf164fff376c566f58475f7f160622bd5ab98.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f8414b1b-ce19-58b3-89d1-e2c190a340cc', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_getting_around_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9f14b91211b0c4e762881f2559d816ffd0d6d54d16fb2a3850f2804be9768f75'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e23d5c9b-8385-57e6-b672-91d17b892a16', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f8414b1b-ce19-58b3-89d1-e2c190a340cc', 1), '9f14b91211b0c4e762881f2559d816ffd0d6d54d16fb2a3850f2804be9768f75',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/02be285be11d80a05c7aab6bde1bf164fff376c566f58475f7f160622bd5ab98.mp3', 1985, '2026-09-14 03:09:08.651174', '0d4f2fd141811f9e1b61f2dbda088ba26efd3a197b48d1ea46992aa7d5aed91e', 'validated', '{"audio_key":"02be285be11d80a05c7aab6bde1bf164fff376c566f58475f7f160622bd5ab98","entity_key":"d_getting_around_01:2","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0d4f2fd141811f9e1b61f2dbda088ba26efd3a197b48d1ea46992aa7d5aed91e","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/02be285be11d80a05c7aab6bde1bf164fff376c566f58475f7f160622bd5ab98.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_time_and_plans_02:3 -> audio/generated/it-IT/dialogues/0566cd5d3fc0d4e8e837ff32e76bb43ee9bd51c941b78f981c8d395933bc80f0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fe0c9188-b567-5902-8ecb-a62390b56384', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_time_and_plans_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2d300f1923208c6b1fbe8596d8b6877435a22d5a97ccea407ed1623f7b5cad0d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ea13fbfb-c897-5a10-85ad-097d2575e5eb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fe0c9188-b567-5902-8ecb-a62390b56384', 1), '2d300f1923208c6b1fbe8596d8b6877435a22d5a97ccea407ed1623f7b5cad0d',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/0566cd5d3fc0d4e8e837ff32e76bb43ee9bd51c941b78f981c8d395933bc80f0.mp3', 1488, '2026-09-14 03:09:08.800534', 'ff7792b343ffbd146117b79b756795bffcaeacb9cef85e14f147e6cd08135c22', 'validated', '{"audio_key":"0566cd5d3fc0d4e8e837ff32e76bb43ee9bd51c941b78f981c8d395933bc80f0","entity_key":"d_time_and_plans_02:3","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"ff7792b343ffbd146117b79b756795bffcaeacb9cef85e14f147e6cd08135c22","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/0566cd5d3fc0d4e8e837ff32e76bb43ee9bd51c941b78f981c8d395933bc80f0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_getting_around_02:4 -> audio/generated/it-IT/dialogues/05837b93eaec0ddba4c292301bf49f7f5e51869aa7d0cd81e146060ff56432aa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0d07c843-1e06-526c-81d8-4067ed750560', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_getting_around_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0107307363f29e22144bc01b7feb1413880caf249293900c4ab2236862eae1d0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ebbe9742-0d93-57fa-9719-f31441729893', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0d07c843-1e06-526c-81d8-4067ed750560', 1), '0107307363f29e22144bc01b7feb1413880caf249293900c4ab2236862eae1d0',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/05837b93eaec0ddba4c292301bf49f7f5e51869aa7d0cd81e146060ff56432aa.mp3', 1906, '2026-09-14 03:09:10.022466', 'bf50e3635d896dda2087c754ddf72109f46ddcd5c95f6d6ce5eb4b330bacdfbc', 'validated', '{"audio_key":"05837b93eaec0ddba4c292301bf49f7f5e51869aa7d0cd81e146060ff56432aa","entity_key":"d_getting_around_02:4","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bf50e3635d896dda2087c754ddf72109f46ddcd5c95f6d6ce5eb4b330bacdfbc","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/05837b93eaec0ddba4c292301bf49f7f5e51869aa7d0cd81e146060ff56432aa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_articles_and_objects_01:3 -> audio/generated/it-IT/dialogues/0be582a4cba394b962b1b903950bdcee6f9f49cd1d1088715536ea6da32dba46.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('80d535d6-5c85-58c0-8f01-b62fd6a348a4', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_articles_and_objects_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd42c52b6200a90e418d1b986a052ad4178d2626caf2ca8467a98206238767092'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('311b6c08-7b79-5786-8c34-b7ff88e8e872', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('80d535d6-5c85-58c0-8f01-b62fd6a348a4', 1), 'd42c52b6200a90e418d1b986a052ad4178d2626caf2ca8467a98206238767092',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/0be582a4cba394b962b1b903950bdcee6f9f49cd1d1088715536ea6da32dba46.mp3', 1097, '2026-09-14 01:56:27.857186', 'cd0846f43116c807c00160e140aa40d9a479ee5bbdb3ecc2fcceb4d6514a644b', 'validated', '{"audio_key":"0be582a4cba394b962b1b903950bdcee6f9f49cd1d1088715536ea6da32dba46","entity_key":"d_articles_and_objects_01:3","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cd0846f43116c807c00160e140aa40d9a479ee5bbdb3ecc2fcceb4d6514a644b","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/0be582a4cba394b962b1b903950bdcee6f9f49cd1d1088715536ea6da32dba46.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_getting_around_02:1 -> audio/generated/it-IT/dialogues/0e364cc5ef91fb28803d352adbafd1dafe050d36a704dfe993ede75435d47fe0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3afcf881-c2fc-53a8-939c-88eed26145b1', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_getting_around_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fc3f12a17fa18c1c6bc535957d273ae1af6ae9e22460209c4afd1d8f3323b78d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8e9eaf92-e409-5e7a-9ce8-1bc337473848', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3afcf881-c2fc-53a8-939c-88eed26145b1', 1), 'fc3f12a17fa18c1c6bc535957d273ae1af6ae9e22460209c4afd1d8f3323b78d',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/0e364cc5ef91fb28803d352adbafd1dafe050d36a704dfe993ede75435d47fe0.mp3', 2324, '2026-09-14 03:09:10.048698', 'b3e000b6507d39f71dfd9526e60c7f2711812b8a615fa3a79403c2918a69a340', 'validated', '{"audio_key":"0e364cc5ef91fb28803d352adbafd1dafe050d36a704dfe993ede75435d47fe0","entity_key":"d_getting_around_02:1","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"b3e000b6507d39f71dfd9526e60c7f2711812b8a615fa3a79403c2918a69a340","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/0e364cc5ef91fb28803d352adbafd1dafe050d36a704dfe993ede75435d47fe0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_time_and_plans_02:2 -> audio/generated/it-IT/dialogues/1026e11edc6359a996a1ced9c8017a9e7545347b7828b8891a9c39bba92d6238.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1ce7f8d5-d666-5efe-81a5-f3722bcd27a1', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_time_and_plans_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3b09c2f5f1bd3bca2bb7062a3ef32b8baecca4540223dc601ca799e23a3abd9f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cd9677e9-48dd-5809-92cd-46d5e4c8e506', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1ce7f8d5-d666-5efe-81a5-f3722bcd27a1', 1), '3b09c2f5f1bd3bca2bb7062a3ef32b8baecca4540223dc601ca799e23a3abd9f',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/1026e11edc6359a996a1ced9c8017a9e7545347b7828b8891a9c39bba92d6238.mp3', 1567, '2026-09-14 03:09:11.164712', '61f7adbdccd14fd90e86cc954e41642200af286bb4e2b7bc272248f6ea4f980b', 'validated', '{"audio_key":"1026e11edc6359a996a1ced9c8017a9e7545347b7828b8891a9c39bba92d6238","entity_key":"d_time_and_plans_02:2","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"61f7adbdccd14fd90e86cc954e41642200af286bb4e2b7bc272248f6ea4f980b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/1026e11edc6359a996a1ced9c8017a9e7545347b7828b8891a9c39bba92d6238.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_articles_and_objects_02:1 -> audio/generated/it-IT/dialogues/1901cba906121f943ecf5d64158621523184b46194d393a603cd71a0174522f2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('31f2dedb-5622-51f2-9cb1-653b03811b38', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_articles_and_objects_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '10a0d453354b2876268715c637752f4ccb3a2c7d58ad0a8992c386fe5471504b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('93df2000-15d4-52cd-9494-de1417b09565', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('31f2dedb-5622-51f2-9cb1-653b03811b38', 1), '10a0d453354b2876268715c637752f4ccb3a2c7d58ad0a8992c386fe5471504b',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/1901cba906121f943ecf5d64158621523184b46194d393a603cd71a0174522f2.mp3', 1384, '2026-09-14 03:09:11.103616', 'd39f8c5f64ebdfe4f2709da5f010bcc3693dfa7f82a22b6c22a1b369554795d4', 'validated', '{"audio_key":"1901cba906121f943ecf5d64158621523184b46194d393a603cd71a0174522f2","entity_key":"d_articles_and_objects_02:1","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"d39f8c5f64ebdfe4f2709da5f010bcc3693dfa7f82a22b6c22a1b369554795d4","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/1901cba906121f943ecf5d64158621523184b46194d393a603cd71a0174522f2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_getting_around_01:3 -> audio/generated/it-IT/dialogues/19384c9a5bebd6dc37fc1c0af5f534ac8cf9d4dc22cc96c64904c07751dc5a19.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('82dcfa05-6217-523f-8dc5-9eb8b7303396', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_getting_around_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '16ebfd87f52d1da481b92ec605121c73dacd534037cb9210581611e0027cf211'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3bb9cc7e-cb16-5f7b-ba94-180d8b6f6d6e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('82dcfa05-6217-523f-8dc5-9eb8b7303396', 1), '16ebfd87f52d1da481b92ec605121c73dacd534037cb9210581611e0027cf211',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/19384c9a5bebd6dc37fc1c0af5f534ac8cf9d4dc22cc96c64904c07751dc5a19.mp3', 1619, '2026-09-14 03:09:12.267616', 'b3ac91e53c72895479b0f29d7d106251ca312e076f7875e9b801fc892194d0f5', 'validated', '{"audio_key":"19384c9a5bebd6dc37fc1c0af5f534ac8cf9d4dc22cc96c64904c07751dc5a19","entity_key":"d_getting_around_01:3","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"b3ac91e53c72895479b0f29d7d106251ca312e076f7875e9b801fc892194d0f5","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/19384c9a5bebd6dc37fc1c0af5f534ac8cf9d4dc22cc96c64904c07751dc5a19.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_at_home_01:3 -> audio/generated/it-IT/dialogues/199ccc19365ae3944b0f58f811810e9d69aa9212907ba046f35e8347d5f91545.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e18512ce-066c-5a72-8797-b05b82812ee9', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_at_home_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f5cd8e90ce44d776561fe9b5dda1be59fa261c135b714c42e30e8a3abb37d1e2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0b8aaa5f-bb05-5531-b856-a200495f1535', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e18512ce-066c-5a72-8797-b05b82812ee9', 1), 'f5cd8e90ce44d776561fe9b5dda1be59fa261c135b714c42e30e8a3abb37d1e2',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/199ccc19365ae3944b0f58f811810e9d69aa9212907ba046f35e8347d5f91545.mp3', 1802, '2026-09-14 03:09:12.310617', 'a012a29e827be66303d9e8232a4cc5ab28e1c74bf74f1229efd77235af15ea5d', 'validated', '{"audio_key":"199ccc19365ae3944b0f58f811810e9d69aa9212907ba046f35e8347d5f91545","entity_key":"d_at_home_01:3","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"a012a29e827be66303d9e8232a4cc5ab28e1c74bf74f1229efd77235af15ea5d","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/199ccc19365ae3944b0f58f811810e9d69aa9212907ba046f35e8347d5f91545.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_family_02:2 -> audio/generated/it-IT/dialogues/22668b6d36f8d2a8ee9f49c2b24663812e92f59b696a674edd5c715010358aef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('343f744b-8c7c-5921-8374-a96a30fa340b', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_family_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8c4bb15fc6d17147649919044db85abbe43457cb10b83fc76df408314b8224cd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('de258c34-f811-5b4b-97b9-7a5246af98ed', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('343f744b-8c7c-5921-8374-a96a30fa340b', 1), '8c4bb15fc6d17147649919044db85abbe43457cb10b83fc76df408314b8224cd',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/22668b6d36f8d2a8ee9f49c2b24663812e92f59b696a674edd5c715010358aef.mp3', 2272, '2026-09-14 03:09:13.467106', '37688a61756510efd39795e49e7901d9750d3cb8a70dae03a5b580b700691c74', 'validated', '{"audio_key":"22668b6d36f8d2a8ee9f49c2b24663812e92f59b696a674edd5c715010358aef","entity_key":"d_my_family_02:2","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"37688a61756510efd39795e49e7901d9750d3cb8a70dae03a5b580b700691c74","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/22668b6d36f8d2a8ee9f49c2b24663812e92f59b696a674edd5c715010358aef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_shopping_basics_02:2 -> audio/generated/it-IT/dialogues/237f8aa3090c5c0c32ee5055645af5019053266f49ad0e2e9b1291a0ee71d435.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ad1c99c7-177b-5980-adf1-74d4e18fd5eb', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_shopping_basics_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '514a1d4c8dc7d6797ce7faed4ac3572dc5b15443ec677740ff69a878739e8417'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c0ff3bdb-48bf-5d3a-bda2-d1369e5053be', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ad1c99c7-177b-5980-adf1-74d4e18fd5eb', 1), '514a1d4c8dc7d6797ce7faed4ac3572dc5b15443ec677740ff69a878739e8417',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/237f8aa3090c5c0c32ee5055645af5019053266f49ad0e2e9b1291a0ee71d435.mp3', 1149, '2026-09-14 03:09:13.409911', '65ed70948198aab0f435176c5940eab2fc239b7bb7d4f875cb30a558ebbbe2ec', 'validated', '{"audio_key":"237f8aa3090c5c0c32ee5055645af5019053266f49ad0e2e9b1291a0ee71d435","entity_key":"d_shopping_basics_02:2","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"65ed70948198aab0f435176c5940eab2fc239b7bb7d4f875cb30a558ebbbe2ec","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/237f8aa3090c5c0c32ee5055645af5019053266f49ad0e2e9b1291a0ee71d435.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_who_i_am_01:4 -> audio/generated/it-IT/dialogues/26a18d203f1792bcdadc06fec28b2756e7493fee48bd272df9e7a2a069c04474.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('74c6f273-9f12-518c-81b4-24c8b83d7874', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_who_i_am_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5d05ae43cd37811a12b54459710d97ebb16977b28d86fdd54f9380bff6486c4a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f012a6c5-8fa5-50f1-9023-d2b38a935b9f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('74c6f273-9f12-518c-81b4-24c8b83d7874', 1), '5d05ae43cd37811a12b54459710d97ebb16977b28d86fdd54f9380bff6486c4a',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/26a18d203f1792bcdadc06fec28b2756e7493fee48bd272df9e7a2a069c04474.mp3', 914, '2026-09-14 03:09:14.684626', 'b6198824d4cf1169d0528b935c6feed7671c4071c18aa76c68b5e77fbfd7e98c', 'validated', '{"audio_key":"26a18d203f1792bcdadc06fec28b2756e7493fee48bd272df9e7a2a069c04474","entity_key":"d_who_i_am_01:4","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b6198824d4cf1169d0528b935c6feed7671c4071c18aa76c68b5e77fbfd7e98c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/26a18d203f1792bcdadc06fec28b2756e7493fee48bd272df9e7a2a069c04474.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_at_the_cafe_01:1 -> audio/generated/it-IT/dialogues/28d55c9025b2574a1fda9cb89b3739523e21d6608a5f198511175a56fe110823.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a517cceb-5154-5ab6-a650-6a8d6c202581', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_at_the_cafe_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4325974221c5306708b4f1502648b657dc9199182b1bd86265dc6504762119d8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3a5366c7-f1d8-51c7-a7e6-55a00ecea206', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a517cceb-5154-5ab6-a650-6a8d6c202581', 1), '4325974221c5306708b4f1502648b657dc9199182b1bd86265dc6504762119d8',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/28d55c9025b2574a1fda9cb89b3739523e21d6608a5f198511175a56fe110823.mp3', 1697, '2026-09-14 03:09:14.551786', 'd386fcc81d48a72ebb07126063569c252202d87ef680a6f82dfea52480220a85', 'validated', '{"audio_key":"28d55c9025b2574a1fda9cb89b3739523e21d6608a5f198511175a56fe110823","entity_key":"d_at_the_cafe_01:1","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"d386fcc81d48a72ebb07126063569c252202d87ef680a6f82dfea52480220a85","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/28d55c9025b2574a1fda9cb89b3739523e21d6608a5f198511175a56fe110823.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_at_home_02:2 -> audio/generated/it-IT/dialogues/31b897e8602f5c34a5fd3d5b6ac1f04ae036f4cecdfd5fb42c386b575d0512fc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('28987730-f996-5ddd-a43a-9affc9d7c2ed', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_at_home_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a5225f4a71582b1107baaac5be1feebdf08baee82aad9c44ba1efb92a00f987d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('32577cfe-82d4-5031-8954-1e81d04d5dbf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('28987730-f996-5ddd-a43a-9affc9d7c2ed', 1), 'a5225f4a71582b1107baaac5be1feebdf08baee82aad9c44ba1efb92a00f987d',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/31b897e8602f5c34a5fd3d5b6ac1f04ae036f4cecdfd5fb42c386b575d0512fc.mp3', 1488, '2026-09-14 03:09:15.629360', 'ecd203d477d7991cea5b5d3f90239c9ae9a49b417d7e59d467fcb964f504580a', 'validated', '{"audio_key":"31b897e8602f5c34a5fd3d5b6ac1f04ae036f4cecdfd5fb42c386b575d0512fc","entity_key":"d_at_home_02:2","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ecd203d477d7991cea5b5d3f90239c9ae9a49b417d7e59d467fcb964f504580a","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/31b897e8602f5c34a5fd3d5b6ac1f04ae036f4cecdfd5fb42c386b575d0512fc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_who_i_am_01:3 -> audio/generated/it-IT/dialogues/3c71612acc4c7950a44680c60e6c6031915582ae42f89be51bc37fc3e19b07c9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('14fa39dc-0ee8-5888-877d-e0094fe49af7', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_who_i_am_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '27010f0fc2d92450d9cfc4f06183b4da916ca7ce1d1ab825041b02c02081a215'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2bc7589d-adc3-598e-bae9-90d9ec74f3cb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('14fa39dc-0ee8-5888-877d-e0094fe49af7', 1), '27010f0fc2d92450d9cfc4f06183b4da916ca7ce1d1ab825041b02c02081a215',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/3c71612acc4c7950a44680c60e6c6031915582ae42f89be51bc37fc3e19b07c9.mp3', 1384, '2026-09-14 03:09:15.755038', 'f8397c08e2ddc7dc137e60f8ef2d334a450110fca41f055e4bfddd89366223f7', 'validated', '{"audio_key":"3c71612acc4c7950a44680c60e6c6031915582ae42f89be51bc37fc3e19b07c9","entity_key":"d_who_i_am_01:3","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"f8397c08e2ddc7dc137e60f8ef2d334a450110fca41f055e4bfddd89366223f7","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/3c71612acc4c7950a44680c60e6c6031915582ae42f89be51bc37fc3e19b07c9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_articles_and_objects_01:1 -> audio/generated/it-IT/dialogues/3e0d982fd936b2a43ba5c4c96b120e09e3a5b249782d13076196193eae0d2ddc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1410666d-0ad4-5b79-8bb1-623504238fe9', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_articles_and_objects_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '73e7521b83027a36162457e7a3ae4f1438e09f042d18859e8d359249e418797f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3b28c944-edeb-5f70-828c-d3a0c4284f72', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1410666d-0ad4-5b79-8bb1-623504238fe9', 1), '73e7521b83027a36162457e7a3ae4f1438e09f042d18859e8d359249e418797f',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/3e0d982fd936b2a43ba5c4c96b120e09e3a5b249782d13076196193eae0d2ddc.mp3', 1332, '2026-09-14 03:09:16.692388', '5da97a51d9cf8c34154cfa402c99d0e8c68217e7c8e923d2743bcf4146ab1039', 'validated', '{"audio_key":"3e0d982fd936b2a43ba5c4c96b120e09e3a5b249782d13076196193eae0d2ddc","entity_key":"d_articles_and_objects_01:1","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5da97a51d9cf8c34154cfa402c99d0e8c68217e7c8e923d2743bcf4146ab1039","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/3e0d982fd936b2a43ba5c4c96b120e09e3a5b249782d13076196193eae0d2ddc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_shopping_basics_01:4 -> audio/generated/it-IT/dialogues/3fdf7ef7f10251bf3bf6f4e2889d1a235dbb893a0bc0c7bfec166c59bc84f114.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fc2209ba-f749-50fe-9e0a-b1d17deb891b', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_shopping_basics_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '337f9f88170c31545acf2b6458f2a7b20dc6b87e25c52cd8386ec59a7d231f20'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2d6c0995-cace-58a3-98a7-4e3a860da5ab', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fc2209ba-f749-50fe-9e0a-b1d17deb891b', 1), '337f9f88170c31545acf2b6458f2a7b20dc6b87e25c52cd8386ec59a7d231f20',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/3fdf7ef7f10251bf3bf6f4e2889d1a235dbb893a0bc0c7bfec166c59bc84f114.mp3', 1332, '2026-09-14 03:09:16.834156', 'c1062697f868a7d66bcc9b5e446fb7de2f8b940f9ad4b6fdc24b2457698cbe6e', 'validated', '{"audio_key":"3fdf7ef7f10251bf3bf6f4e2889d1a235dbb893a0bc0c7bfec166c59bc84f114","entity_key":"d_shopping_basics_01:4","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c1062697f868a7d66bcc9b5e446fb7de2f8b940f9ad4b6fdc24b2457698cbe6e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/3fdf7ef7f10251bf3bf6f4e2889d1a235dbb893a0bc0c7bfec166c59bc84f114.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_daily_routine_02:4 -> audio/generated/it-IT/dialogues/4ed4a6427fd11938d120e575ede5befbf378d860b134a825bab4525ed0482d58.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('12243e80-3b65-5b72-abd7-2d1b2de5833e', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_daily_routine_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '278f83842d5194f49f43eb9909158513c6d8a3465d7d80fdb67dfc0ed2d02128'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0ba10fa5-40ae-599a-ab45-6827f9b8ce62', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('12243e80-3b65-5b72-abd7-2d1b2de5833e', 1), '278f83842d5194f49f43eb9909158513c6d8a3465d7d80fdb67dfc0ed2d02128',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/4ed4a6427fd11938d120e575ede5befbf378d860b134a825bab4525ed0482d58.mp3', 1436, '2026-09-14 03:09:17.740979', 'aa3a410fd99ddddcab11e710440dc042fba6619dd20944c3aaaa4396ff56235a', 'validated', '{"audio_key":"4ed4a6427fd11938d120e575ede5befbf378d860b134a825bab4525ed0482d58","entity_key":"d_daily_routine_02:4","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"aa3a410fd99ddddcab11e710440dc042fba6619dd20944c3aaaa4396ff56235a","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/4ed4a6427fd11938d120e575ede5befbf378d860b134a825bab4525ed0482d58.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_shopping_basics_02:4 -> audio/generated/it-IT/dialogues/518a5d6524a7bcb43506738573d32c9eef66a083167d64b02d746c3b0a75fe6a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c84d64b0-8303-5930-a92d-cfb3fa2c75ac', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_shopping_basics_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'de53f7a1b5aab1fe336acc8b22fa938501cbec035a21938d51f32562d3654384'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2d6e78fb-7ef2-5b47-aa97-6107735b206f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c84d64b0-8303-5930-a92d-cfb3fa2c75ac', 1), 'de53f7a1b5aab1fe336acc8b22fa938501cbec035a21938d51f32562d3654384',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/518a5d6524a7bcb43506738573d32c9eef66a083167d64b02d746c3b0a75fe6a.mp3', 1018, '2026-09-14 03:09:18.129711', 'ed5782cead7ea20e296419f126bacc1d8eb4ac6be5ec186c66bced19c42f12a1', 'validated', '{"audio_key":"518a5d6524a7bcb43506738573d32c9eef66a083167d64b02d746c3b0a75fe6a","entity_key":"d_shopping_basics_02:4","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"ed5782cead7ea20e296419f126bacc1d8eb4ac6be5ec186c66bced19c42f12a1","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/518a5d6524a7bcb43506738573d32c9eef66a083167d64b02d746c3b0a75fe6a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_time_and_plans_02:4 -> audio/generated/it-IT/dialogues/518a5d6524a7bcb43506738573d32c9eef66a083167d64b02d746c3b0a75fe6a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('15785806-325b-5082-9930-ba881bd40f14', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_time_and_plans_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'de53f7a1b5aab1fe336acc8b22fa938501cbec035a21938d51f32562d3654384'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('078f8ca9-9151-5367-9c18-8d3d5c0dbd3d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('15785806-325b-5082-9930-ba881bd40f14', 1), 'de53f7a1b5aab1fe336acc8b22fa938501cbec035a21938d51f32562d3654384',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/518a5d6524a7bcb43506738573d32c9eef66a083167d64b02d746c3b0a75fe6a.mp3', 1018, '2026-09-14 03:09:18.129711', 'ed5782cead7ea20e296419f126bacc1d8eb4ac6be5ec186c66bced19c42f12a1', 'validated', '{"audio_key":"518a5d6524a7bcb43506738573d32c9eef66a083167d64b02d746c3b0a75fe6a","entity_key":"d_time_and_plans_02:4","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"ed5782cead7ea20e296419f126bacc1d8eb4ac6be5ec186c66bced19c42f12a1","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/518a5d6524a7bcb43506738573d32c9eef66a083167d64b02d746c3b0a75fe6a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_who_i_am_01:2 -> audio/generated/it-IT/dialogues/567ba83e584a36ba9e68a5a65c2a717623f9260653995f30c7fee1bc6c2e9eb9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a0ffd5bc-1541-5a66-86a3-d0669f1bd0c8', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_who_i_am_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '49e2a411fdea24a1cea77f4e18acec65c4b1d19763d897944317d83258c41faf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1ee99df3-8d69-59e1-a159-cccee31dc05b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a0ffd5bc-1541-5a66-86a3-d0669f1bd0c8', 1), '49e2a411fdea24a1cea77f4e18acec65c4b1d19763d897944317d83258c41faf',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/567ba83e584a36ba9e68a5a65c2a717623f9260653995f30c7fee1bc6c2e9eb9.mp3', 1697, '2026-09-14 03:09:18.862973', '1f9cbb4cb6b45493e360feaf25a360f0f3d597b2c950b0877bd733145f70393a', 'validated', '{"audio_key":"567ba83e584a36ba9e68a5a65c2a717623f9260653995f30c7fee1bc6c2e9eb9","entity_key":"d_who_i_am_01:2","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"1f9cbb4cb6b45493e360feaf25a360f0f3d597b2c950b0877bd733145f70393a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/567ba83e584a36ba9e68a5a65c2a717623f9260653995f30c7fee1bc6c2e9eb9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_family_02:3 -> audio/generated/it-IT/dialogues/5f2a05fdac088a17ffcd7a4cdddba1559e75a8bd62cbcde0322fe197f005deda.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a4dd4422-e095-55ec-81c1-a7bf636d587f', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_family_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'df1af89fedd52ca0a28d56271e78d7b8fdd675175bf299b930c9098a67420922'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ce1a271d-20d2-5c36-94d2-f69b81ddfa31', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a4dd4422-e095-55ec-81c1-a7bf636d587f', 1), 'df1af89fedd52ca0a28d56271e78d7b8fdd675175bf299b930c9098a67420922',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/5f2a05fdac088a17ffcd7a4cdddba1559e75a8bd62cbcde0322fe197f005deda.mp3', 1515, '2026-09-14 03:09:19.140364', '3ed652351e7d4358965c8a69650b6e9ccb33d0edc0cb48698adce993d0a348ee', 'validated', '{"audio_key":"5f2a05fdac088a17ffcd7a4cdddba1559e75a8bd62cbcde0322fe197f005deda","entity_key":"d_my_family_02:3","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"3ed652351e7d4358965c8a69650b6e9ccb33d0edc0cb48698adce993d0a348ee","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/5f2a05fdac088a17ffcd7a4cdddba1559e75a8bd62cbcde0322fe197f005deda.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a1_day_capstone_02:1 -> audio/generated/it-IT/dialogues/6137e5323eb66b695b14aef106266d85055467159bd1eb319ed46f37fb93d748.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ab5c4373-768c-55ce-b1fe-071c11552263', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a1_day_capstone_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '42605e71174acb4a442c35c3b692398804a9a66a2f78fbf62abea31c4d63a957'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('57b062aa-f570-5744-a9eb-0fb439bb2fbd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ab5c4373-768c-55ce-b1fe-071c11552263', 1), '42605e71174acb4a442c35c3b692398804a9a66a2f78fbf62abea31c4d63a957',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/6137e5323eb66b695b14aef106266d85055467159bd1eb319ed46f37fb93d748.mp3', 1619, '2026-09-14 03:09:19.991170', 'b83f2265087851c75192b16a189aca52836fdb0051896606e86576392c285187', 'validated', '{"audio_key":"6137e5323eb66b695b14aef106266d85055467159bd1eb319ed46f37fb93d748","entity_key":"d_a1_day_capstone_02:1","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b83f2265087851c75192b16a189aca52836fdb0051896606e86576392c285187","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/6137e5323eb66b695b14aef106266d85055467159bd1eb319ed46f37fb93d748.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_at_home_02:1 -> audio/generated/it-IT/dialogues/62ffc7dc65ef0344d6289808cb6a2cafcbd358623aa6bc82292348717b56b74e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('83b3f563-5d42-5bb3-9eab-dc534e83f7e7', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_at_home_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3a59e3277da0ec3e80518734fe129674721f3c6ebe91362fd3840c7bc73e065a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5cf75361-7a89-58f3-b840-1605549bd860', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('83b3f563-5d42-5bb3-9eab-dc534e83f7e7', 1), '3a59e3277da0ec3e80518734fe129674721f3c6ebe91362fd3840c7bc73e065a',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/62ffc7dc65ef0344d6289808cb6a2cafcbd358623aa6bc82292348717b56b74e.mp3', 1619, '2026-09-14 03:09:20.258778', 'dc97e30367dc4b5d1160f3c3e6d5e5eaa58b25d2bc0959768be92a07a67cfe8a', 'validated', '{"audio_key":"62ffc7dc65ef0344d6289808cb6a2cafcbd358623aa6bc82292348717b56b74e","entity_key":"d_at_home_02:1","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dc97e30367dc4b5d1160f3c3e6d5e5eaa58b25d2bc0959768be92a07a67cfe8a","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/62ffc7dc65ef0344d6289808cb6a2cafcbd358623aa6bc82292348717b56b74e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_at_home_02:4 -> audio/generated/it-IT/dialogues/6c541b9de23b1b829c4ab339f014cf8fa70d4fa1e77a04d54c76ff88c78d71d1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('40a6cb28-1799-559b-af4a-999faaf51476', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_at_home_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '462d76210b11605ae6a62d80dad2b5b9637c04e8e47da70d57384d375a224762'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('126f07fb-77e8-5471-9957-ea148d6b0f42', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('40a6cb28-1799-559b-af4a-999faaf51476', 1), '462d76210b11605ae6a62d80dad2b5b9637c04e8e47da70d57384d375a224762',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/6c541b9de23b1b829c4ab339f014cf8fa70d4fa1e77a04d54c76ff88c78d71d1.mp3', 1018, '2026-09-14 03:09:20.982105', '273e99ebeaceaadf7a20bb173a895af4145779f24025e3e3f3114ec175eb4014', 'validated', '{"audio_key":"6c541b9de23b1b829c4ab339f014cf8fa70d4fa1e77a04d54c76ff88c78d71d1","entity_key":"d_at_home_02:4","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"273e99ebeaceaadf7a20bb173a895af4145779f24025e3e3f3114ec175eb4014","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/6c541b9de23b1b829c4ab339f014cf8fa70d4fa1e77a04d54c76ff88c78d71d1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_shopping_basics_01:2 -> audio/generated/it-IT/dialogues/7375462aa644f1e1e7b20a611acc283785e3ab4c55ad111a47c9008404e5ecb2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fe605340-9916-5b37-b05c-2d7a0efda9b6', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_shopping_basics_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '53ebf3821bc9605a1999854082bbd0b5dc85f917ea24ea4db90facf1e2a64582'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ad299c44-85c1-562c-9a62-4859580eaef1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fe605340-9916-5b37-b05c-2d7a0efda9b6', 1), '53ebf3821bc9605a1999854082bbd0b5dc85f917ea24ea4db90facf1e2a64582',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/7375462aa644f1e1e7b20a611acc283785e3ab4c55ad111a47c9008404e5ecb2.mp3', 1384, '2026-09-14 03:09:21.265013', '3c1fbbcf336749b19d8bbad65f5e2cf31bb17108fe035bd88a234f243e594f9e', 'validated', '{"audio_key":"7375462aa644f1e1e7b20a611acc283785e3ab4c55ad111a47c9008404e5ecb2","entity_key":"d_shopping_basics_01:2","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"3c1fbbcf336749b19d8bbad65f5e2cf31bb17108fe035bd88a234f243e594f9e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/7375462aa644f1e1e7b20a611acc283785e3ab4c55ad111a47c9008404e5ecb2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_at_home_02:3 -> audio/generated/it-IT/dialogues/760e01dc5a708ed0bb66a9b40d327f19842fc39cdd3eeefd9214b29e264065df.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0be07eac-c44e-5fba-b43e-21fff3ed6677', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_at_home_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8766dcaa26fceb98c9b3b990b8afeee788a680821b4e4264339a5bd856e5f9d7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('59315196-0dca-5398-9198-0ab295e092f0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0be07eac-c44e-5fba-b43e-21fff3ed6677', 1), '8766dcaa26fceb98c9b3b990b8afeee788a680821b4e4264339a5bd856e5f9d7',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/760e01dc5a708ed0bb66a9b40d327f19842fc39cdd3eeefd9214b29e264065df.mp3', 1253, '2026-09-14 03:09:21.999979', 'dfc57d401f60350ca53505eb4b4125146dea7efd77bd6a43747cb45a2eb62181', 'validated', '{"audio_key":"760e01dc5a708ed0bb66a9b40d327f19842fc39cdd3eeefd9214b29e264065df","entity_key":"d_at_home_02:3","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dfc57d401f60350ca53505eb4b4125146dea7efd77bd6a43747cb45a2eb62181","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/760e01dc5a708ed0bb66a9b40d327f19842fc39cdd3eeefd9214b29e264065df.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_daily_routine_02:2 -> audio/generated/it-IT/dialogues/79139824b7945655dcfdcf43f4eac50cdd8b8d20e74335d4bc38b5893bd96d9b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d409815b-83c3-5dfc-911f-900843c77d1f', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_daily_routine_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a22b4ee2c69e60ab31c6bcf81845cc4a20e5fdf4068ed0fb4739d00dc3fb6b8b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('49f609cb-37cd-52f8-bb34-ad24edb5423f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d409815b-83c3-5dfc-911f-900843c77d1f', 1), 'a22b4ee2c69e60ab31c6bcf81845cc4a20e5fdf4068ed0fb4739d00dc3fb6b8b',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/79139824b7945655dcfdcf43f4eac50cdd8b8d20e74335d4bc38b5893bd96d9b.mp3', 1906, '2026-09-14 03:09:22.332755', '8fce76da6aec77e55560032d2b451d85c19db4caaa50dfcda592ad0739e9d8cb', 'validated', '{"audio_key":"79139824b7945655dcfdcf43f4eac50cdd8b8d20e74335d4bc38b5893bd96d9b","entity_key":"d_daily_routine_02:2","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8fce76da6aec77e55560032d2b451d85c19db4caaa50dfcda592ad0739e9d8cb","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/79139824b7945655dcfdcf43f4eac50cdd8b8d20e74335d4bc38b5893bd96d9b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_daily_routine_01:1 -> audio/generated/it-IT/dialogues/7c1a4290e86fa3a7878eec974986694e76f05b734b6f4742649fe192f461c650.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4aa8d348-3d3a-5a15-9fc9-063b1231bbfa', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_daily_routine_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b6a565ea051cd90e87ce0037152620e8a2d1c05db4979053dade9eb7ff39d55a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('958c002c-d16d-540f-942a-12a79ad316bc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4aa8d348-3d3a-5a15-9fc9-063b1231bbfa', 1), 'b6a565ea051cd90e87ce0037152620e8a2d1c05db4979053dade9eb7ff39d55a',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/7c1a4290e86fa3a7878eec974986694e76f05b734b6f4742649fe192f461c650.mp3', 1018, '2026-09-14 03:09:22.993782', 'de9ca07cf82549d0bb0e15dccd9d2dc052a0865953dbc4c4974bddcc58cfb012', 'validated', '{"audio_key":"7c1a4290e86fa3a7878eec974986694e76f05b734b6f4742649fe192f461c650","entity_key":"d_daily_routine_01:1","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"de9ca07cf82549d0bb0e15dccd9d2dc052a0865953dbc4c4974bddcc58cfb012","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/7c1a4290e86fa3a7878eec974986694e76f05b734b6f4742649fe192f461c650.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_getting_around_02:2 -> audio/generated/it-IT/dialogues/8162d499f95433201b1080da6bfd322acaae45595499da89097cc3e40b368f00.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('974a4985-5054-5f7c-9595-eb07edbf892e', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_getting_around_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0ac3c9bee526d365462a9246975fc5e09aa13d984b1a2a84943d892874c83a76'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dbe4ddcd-1a92-5b73-baec-b8b97cd1d384', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('974a4985-5054-5f7c-9595-eb07edbf892e', 1), '0ac3c9bee526d365462a9246975fc5e09aa13d984b1a2a84943d892874c83a76',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/8162d499f95433201b1080da6bfd322acaae45595499da89097cc3e40b368f00.mp3', 1619, '2026-09-14 03:09:23.470462', 'd667d2bf239aca57bc3c588a2178c3daaa60aea3f7c9511a646c5fdb647598fa', 'validated', '{"audio_key":"8162d499f95433201b1080da6bfd322acaae45595499da89097cc3e40b368f00","entity_key":"d_getting_around_02:2","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d667d2bf239aca57bc3c588a2178c3daaa60aea3f7c9511a646c5fdb647598fa","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/8162d499f95433201b1080da6bfd322acaae45595499da89097cc3e40b368f00.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_family_02:4 -> audio/generated/it-IT/dialogues/858026678f22ac53beed4956f6fae02c2ffbba85c2fb0f89826dbf8fda9679b9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('aa3f3c94-02a7-58b7-816f-3660e988eca4', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_family_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c6f0115c5868da56aac846bf36ce9ff9043db66035995616362f8f9caf35a504'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('126261e0-5946-5909-a639-8f46d2b0d02c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('aa3f3c94-02a7-58b7-816f-3660e988eca4', 1), 'c6f0115c5868da56aac846bf36ce9ff9043db66035995616362f8f9caf35a504',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/858026678f22ac53beed4956f6fae02c2ffbba85c2fb0f89826dbf8fda9679b9.mp3', 1384, '2026-09-14 03:09:24.005748', 'bd9e703bc63a7ae58f741e924388127d1b7ded340174f90b8e95a2964f141169', 'validated', '{"audio_key":"858026678f22ac53beed4956f6fae02c2ffbba85c2fb0f89826dbf8fda9679b9","entity_key":"d_my_family_02:4","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bd9e703bc63a7ae58f741e924388127d1b7ded340174f90b8e95a2964f141169","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/858026678f22ac53beed4956f6fae02c2ffbba85c2fb0f89826dbf8fda9679b9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_who_i_am_01:1 -> audio/generated/it-IT/dialogues/88af5e75e24117b7d491d8b2ffb82e15937a8051ac9f2ef34644ac9c1dc77fdb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('64623555-7ce1-523b-b5b2-1d0637d26921', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_who_i_am_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c1dc978aeab026d8c6cfe3d0914586830c2f2bddc38bcc6c0a952721d31d6cbb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0022bdc7-8fd9-5813-9612-1b4f455189a3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('64623555-7ce1-523b-b5b2-1d0637d26921', 1), 'c1dc978aeab026d8c6cfe3d0914586830c2f2bddc38bcc6c0a952721d31d6cbb',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/88af5e75e24117b7d491d8b2ffb82e15937a8051ac9f2ef34644ac9c1dc77fdb.mp3', 1097, '2026-09-14 03:09:24.484672', 'b4fb8e6adb9e03e39d31a83363111bec98065cd52bd68fa7f6d4dbed3b11e87c', 'validated', '{"audio_key":"88af5e75e24117b7d491d8b2ffb82e15937a8051ac9f2ef34644ac9c1dc77fdb","entity_key":"d_who_i_am_01:1","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"b4fb8e6adb9e03e39d31a83363111bec98065cd52bd68fa7f6d4dbed3b11e87c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/88af5e75e24117b7d491d8b2ffb82e15937a8051ac9f2ef34644ac9c1dc77fdb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_daily_routine_02:1 -> audio/generated/it-IT/dialogues/8a84be1ccd5ff80964e4396368cd49b8a68a51e8421f43b61816de3b6087ef3c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('42e5416c-5a63-5c6a-8ae3-34e6a9890447', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_daily_routine_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '76c2ca32adf56fa4dcbbc6b377748b1915a3d693afe82a1505dc361e479e37d5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7e707f37-baa0-5f06-bdfe-52e98bb96b8d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('42e5416c-5a63-5c6a-8ae3-34e6a9890447', 1), '76c2ca32adf56fa4dcbbc6b377748b1915a3d693afe82a1505dc361e479e37d5',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/8a84be1ccd5ff80964e4396368cd49b8a68a51e8421f43b61816de3b6087ef3c.mp3', 914, '2026-09-14 03:09:25.045097', 'b41c3f161ab4705dd46276c05aced73610eae7e049f0f36b37c0c39b00d8169f', 'validated', '{"audio_key":"8a84be1ccd5ff80964e4396368cd49b8a68a51e8421f43b61816de3b6087ef3c","entity_key":"d_daily_routine_02:1","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"b41c3f161ab4705dd46276c05aced73610eae7e049f0f36b37c0c39b00d8169f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/8a84be1ccd5ff80964e4396368cd49b8a68a51e8421f43b61816de3b6087ef3c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_daily_routine_01:2 -> audio/generated/it-IT/dialogues/92a2439eac6aaec26182dab0a688472e96d48710d45f928312efb2d4a7567325.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('24f7c876-c42b-56a8-b51b-378907a14e21', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_daily_routine_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c4e7312ea45d6a61f04445515617bc11685be6be2b56196152362ef61d28a5b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0ddbd28b-48fd-59bd-a16d-e218a5fb2455', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('24f7c876-c42b-56a8-b51b-378907a14e21', 1), 'c4e7312ea45d6a61f04445515617bc11685be6be2b56196152362ef61d28a5b4',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/92a2439eac6aaec26182dab0a688472e96d48710d45f928312efb2d4a7567325.mp3', 1697, '2026-09-14 03:09:25.541965', 'dbf3d1ba3b0f136563f73714dc37f9243bd758905dd6f766adcd167c55695548', 'validated', '{"audio_key":"92a2439eac6aaec26182dab0a688472e96d48710d45f928312efb2d4a7567325","entity_key":"d_daily_routine_01:2","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dbf3d1ba3b0f136563f73714dc37f9243bd758905dd6f766adcd167c55695548","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/92a2439eac6aaec26182dab0a688472e96d48710d45f928312efb2d4a7567325.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_family_01:1 -> audio/generated/it-IT/dialogues/97acf3340106d32311504fd383e8b097435a124f4993617c9a642388a781effd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a4d3d666-cf2a-5cce-89f7-98811452e62d', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_family_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd065d120c0df4c40091633baf71201f57b2bd88d487c61c00a4326355f6d9ae7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f27731aa-7c2e-55ab-8e90-6b8e3c65b892', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a4d3d666-cf2a-5cce-89f7-98811452e62d', 1), 'd065d120c0df4c40091633baf71201f57b2bd88d487c61c00a4326355f6d9ae7',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/97acf3340106d32311504fd383e8b097435a124f4993617c9a642388a781effd.mp3', 1097, '2026-09-14 03:09:26.079895', 'da45adc8886cb63f8c211ad9606944c8fc3fa8cf5af98535654b6e8c78088e54', 'validated', '{"audio_key":"97acf3340106d32311504fd383e8b097435a124f4993617c9a642388a781effd","entity_key":"d_my_family_01:1","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"da45adc8886cb63f8c211ad9606944c8fc3fa8cf5af98535654b6e8c78088e54","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/97acf3340106d32311504fd383e8b097435a124f4993617c9a642388a781effd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a1_day_capstone_02:3 -> audio/generated/it-IT/dialogues/9a2757ab93c86d61bd240174d9db3b3a3e52e93c1d4d5568f9f154f479a6770f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d8c47d1a-0f82-5950-9e16-8c720bbe829b', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a1_day_capstone_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '846c8cb95670da5ac6a210f9e115bf7a2cd17d9706b941adace9f5fff60cd4bc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('773592cc-8cf1-5e7b-9ccc-f6b84dc91b62', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d8c47d1a-0f82-5950-9e16-8c720bbe829b', 1), '846c8cb95670da5ac6a210f9e115bf7a2cd17d9706b941adace9f5fff60cd4bc',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/9a2757ab93c86d61bd240174d9db3b3a3e52e93c1d4d5568f9f154f479a6770f.mp3', 1436, '2026-09-14 03:09:26.581903', 'cff6634edd65323d9b204557e4639b2606090939f8e17190237922047b9667fe', 'validated', '{"audio_key":"9a2757ab93c86d61bd240174d9db3b3a3e52e93c1d4d5568f9f154f479a6770f","entity_key":"d_a1_day_capstone_02:3","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cff6634edd65323d9b204557e4639b2606090939f8e17190237922047b9667fe","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/9a2757ab93c86d61bd240174d9db3b3a3e52e93c1d4d5568f9f154f479a6770f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_at_the_cafe_01:2 -> audio/generated/it-IT/dialogues/9aa4a23ba93999d434c2143d01e87bed97329bf5dd2e5e62d128ca92e9aede44.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fd8ef967-4cef-5af0-b022-87c42a9fa40f', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_at_the_cafe_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8612d144a312c8d814f5830185a5702ab349eaeae1d5df85f36dafca3b1076de'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('84f6ebd6-bb23-5eb6-bfb6-060517058c61', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fd8ef967-4cef-5af0-b022-87c42a9fa40f', 1), '8612d144a312c8d814f5830185a5702ab349eaeae1d5df85f36dafca3b1076de',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/9aa4a23ba93999d434c2143d01e87bed97329bf5dd2e5e62d128ca92e9aede44.mp3', 2089, '2026-09-14 03:09:27.134945', 'a70d61085ca4cd427b4bb8c6b8267cad7028260feb6fa502a2a25aff886c0095', 'validated', '{"audio_key":"9aa4a23ba93999d434c2143d01e87bed97329bf5dd2e5e62d128ca92e9aede44","entity_key":"d_at_the_cafe_01:2","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a70d61085ca4cd427b4bb8c6b8267cad7028260feb6fa502a2a25aff886c0095","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/9aa4a23ba93999d434c2143d01e87bed97329bf5dd2e5e62d128ca92e9aede44.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_who_i_am_02:2 -> audio/generated/it-IT/dialogues/9dffb4a6b2cf87498334ff7b70f2e3ce238a61b05a56dc7eaed79ab407a02553.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('56f2afa1-c0d4-56a4-a58f-8a78db703495', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_who_i_am_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'af456117d597d19893b269a89032a7039cd47b5f4df068e46cb3b32ff33d6339'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('db4f2154-d0ce-5fbd-b8e0-86248d8a5e46', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('56f2afa1-c0d4-56a4-a58f-8a78db703495', 1), 'af456117d597d19893b269a89032a7039cd47b5f4df068e46cb3b32ff33d6339',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/9dffb4a6b2cf87498334ff7b70f2e3ce238a61b05a56dc7eaed79ab407a02553.mp3', 1515, '2026-09-14 03:09:27.621857', 'be0466dd251d2a4e318bfddd01536c66ffebb526483333cd342d5e28d749d90b', 'validated', '{"audio_key":"9dffb4a6b2cf87498334ff7b70f2e3ce238a61b05a56dc7eaed79ab407a02553","entity_key":"d_who_i_am_02:2","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"be0466dd251d2a4e318bfddd01536c66ffebb526483333cd342d5e28d749d90b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/9dffb4a6b2cf87498334ff7b70f2e3ce238a61b05a56dc7eaed79ab407a02553.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a1_day_capstone_02:4 -> audio/generated/it-IT/dialogues/9ef4a23d8792d6b02575b85a0d7e6b7c6bd4bcdcbfa6fe4434fc3c523aed8390.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d305a388-fde6-57a4-a25d-8ce569d689d2', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a1_day_capstone_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e46046cd8086baafafc6d0e48b5451d4edb0c63de7c43d631c5b93abdaf837bb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3df23577-bd94-5630-a7cb-f8b3721f0a30', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d305a388-fde6-57a4-a25d-8ce569d689d2', 1), 'e46046cd8086baafafc6d0e48b5451d4edb0c63de7c43d631c5b93abdaf837bb',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/9ef4a23d8792d6b02575b85a0d7e6b7c6bd4bcdcbfa6fe4434fc3c523aed8390.mp3', 1280, '2026-09-14 03:09:28.136999', 'c1731d55c35685c6be3a713489f5503394d39e668cb446bf048d145110f0f834', 'validated', '{"audio_key":"9ef4a23d8792d6b02575b85a0d7e6b7c6bd4bcdcbfa6fe4434fc3c523aed8390","entity_key":"d_a1_day_capstone_02:4","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c1731d55c35685c6be3a713489f5503394d39e668cb446bf048d145110f0f834","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/9ef4a23d8792d6b02575b85a0d7e6b7c6bd4bcdcbfa6fe4434fc3c523aed8390.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_articles_and_objects_01:2 -> audio/generated/it-IT/dialogues/9f06ff80ee48232df5a1402da6817896de6c23db32ac11d21fb0ac7ac051f045.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('45bda6b8-3e22-5604-ac16-8546fd950f4a', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_articles_and_objects_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4baaeb9e9c49113429783906ab81987cb8dce4ed7d1d598011ba88d92f03d3b9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1368f39e-24b6-5437-9250-05df2576da2f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('45bda6b8-3e22-5604-ac16-8546fd950f4a', 1), '4baaeb9e9c49113429783906ab81987cb8dce4ed7d1d598011ba88d92f03d3b9',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/9f06ff80ee48232df5a1402da6817896de6c23db32ac11d21fb0ac7ac051f045.mp3', 1280, '2026-09-14 03:09:28.669745', '8c322a81ddeaf1bb0d7f9de47e0e513abd5ee51debb0671c370c69a7c475859f', 'validated', '{"audio_key":"9f06ff80ee48232df5a1402da6817896de6c23db32ac11d21fb0ac7ac051f045","entity_key":"d_articles_and_objects_01:2","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8c322a81ddeaf1bb0d7f9de47e0e513abd5ee51debb0671c370c69a7c475859f","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/9f06ff80ee48232df5a1402da6817896de6c23db32ac11d21fb0ac7ac051f045.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_who_i_am_02:1 -> audio/generated/it-IT/dialogues/a31041931fa531acffc8b02bb810b7f03cc3fd6f6459336bf7d065c38871bafd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('31d1207c-a0f1-597a-baee-5e89fcfd2ad1', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_who_i_am_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '549e8f7075eb87d707d80763bceb712088e983d031407a25b943720aefe01ea5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2899075c-1de2-5fcb-bad7-edad6f7b05c5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('31d1207c-a0f1-597a-baee-5e89fcfd2ad1', 1), '549e8f7075eb87d707d80763bceb712088e983d031407a25b943720aefe01ea5',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/a31041931fa531acffc8b02bb810b7f03cc3fd6f6459336bf7d065c38871bafd.mp3', 1332, '2026-09-14 03:09:29.156310', '5da3371f497a1afc52571906a2bb1fd5f13c08358d0e5df75bfa25587c408fb7', 'validated', '{"audio_key":"a31041931fa531acffc8b02bb810b7f03cc3fd6f6459336bf7d065c38871bafd","entity_key":"d_who_i_am_02:1","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"5da3371f497a1afc52571906a2bb1fd5f13c08358d0e5df75bfa25587c408fb7","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/a31041931fa531acffc8b02bb810b7f03cc3fd6f6459336bf7d065c38871bafd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_articles_and_objects_02:2 -> audio/generated/it-IT/dialogues/a6e2cd83d5791a927899e4eb4664a282e978f5e851c209bf2d17a1960ff0a7ea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3842a24e-3da1-535a-8f4b-f54684a67aa0', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_articles_and_objects_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e29dfa39d9802f5361a1aaffcd032d66d0b0dd1429897ec057034fa7badee23f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fadf6948-5a0c-535f-93d5-42e7596d2e9e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3842a24e-3da1-535a-8f4b-f54684a67aa0', 1), 'e29dfa39d9802f5361a1aaffcd032d66d0b0dd1429897ec057034fa7badee23f',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/a6e2cd83d5791a927899e4eb4664a282e978f5e851c209bf2d17a1960ff0a7ea.mp3', 1488, '2026-09-14 03:09:29.747560', 'f2ad4e2246484bfd6276c66b071a39de37db0643287a5cf22261e643b7519b35', 'validated', '{"audio_key":"a6e2cd83d5791a927899e4eb4664a282e978f5e851c209bf2d17a1960ff0a7ea","entity_key":"d_articles_and_objects_02:2","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f2ad4e2246484bfd6276c66b071a39de37db0643287a5cf22261e643b7519b35","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/a6e2cd83d5791a927899e4eb4664a282e978f5e851c209bf2d17a1960ff0a7ea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_getting_around_01:1 -> audio/generated/it-IT/dialogues/a701f183625b24543644fb6af0851a2cdd043389ab59ce3e7b4b0e0e9559b610.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('321abe04-3ea6-509b-8f90-baf3279e9d5e', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_getting_around_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '61e1cecdbbea2dddb11c5f529aa1f8fa30fef473a3bd9205e9c30e0b2e9415d0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bd030e18-f9d4-53b7-bd0f-46ebdc04cc5c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('321abe04-3ea6-509b-8f90-baf3279e9d5e', 1), '61e1cecdbbea2dddb11c5f529aa1f8fa30fef473a3bd9205e9c30e0b2e9415d0',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/a701f183625b24543644fb6af0851a2cdd043389ab59ce3e7b4b0e0e9559b610.mp3', 1384, '2026-09-14 03:09:30.187745', '715e5815399bdc93aa838c51d9a8e87b9044c26b177f4524d872895114c1ea3e', 'validated', '{"audio_key":"a701f183625b24543644fb6af0851a2cdd043389ab59ce3e7b4b0e0e9559b610","entity_key":"d_getting_around_01:1","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"715e5815399bdc93aa838c51d9a8e87b9044c26b177f4524d872895114c1ea3e","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/a701f183625b24543644fb6af0851a2cdd043389ab59ce3e7b4b0e0e9559b610.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_time_and_plans_01:1 -> audio/generated/it-IT/dialogues/a8e294c3e5b63a25b4f525d540aea23d39a4ba3f82883870e19b7d7495ef175d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d61bc896-df32-54f3-8eae-61b99e95e185', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_time_and_plans_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '380aae7080f34a3072be7d08ff36d04c4ec0356a2880612c2620013bbc3c86dd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('29d8bb3c-56ef-532c-a828-d2a19a0d5a3e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d61bc896-df32-54f3-8eae-61b99e95e185', 1), '380aae7080f34a3072be7d08ff36d04c4ec0356a2880612c2620013bbc3c86dd',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/a8e294c3e5b63a25b4f525d540aea23d39a4ba3f82883870e19b7d7495ef175d.mp3', 1071, '2026-09-14 03:09:30.724703', 'cb6b5162cdd48a3141324131688b7a814638b0bf8781ea3978d391ea51064f6e', 'validated', '{"audio_key":"a8e294c3e5b63a25b4f525d540aea23d39a4ba3f82883870e19b7d7495ef175d","entity_key":"d_time_and_plans_01:1","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cb6b5162cdd48a3141324131688b7a814638b0bf8781ea3978d391ea51064f6e","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/a8e294c3e5b63a25b4f525d540aea23d39a4ba3f82883870e19b7d7495ef175d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_at_the_cafe_02:4 -> audio/generated/it-IT/dialogues/b1ea0e8d14436b6092d4e7ee284137cca99a3bcd5aea3fd5eb500c3ba6f82c7f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fe0bf880-4d0a-56e7-a1d1-9b6eb5504d20', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_at_the_cafe_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c6f431a3933350ca14af7ab20f7d88b246b311be2217906cd71a143b75711526'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a4c1209a-cfd3-5314-8946-e8d57e7971df', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fe0bf880-4d0a-56e7-a1d1-9b6eb5504d20', 1), 'c6f431a3933350ca14af7ab20f7d88b246b311be2217906cd71a143b75711526',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/b1ea0e8d14436b6092d4e7ee284137cca99a3bcd5aea3fd5eb500c3ba6f82c7f.mp3', 1071, '2026-09-14 03:09:31.188197', 'f8c4f83c3c947357eea72ccf4806db72b407e7d6ae69e04425647329ee8906ba', 'validated', '{"audio_key":"b1ea0e8d14436b6092d4e7ee284137cca99a3bcd5aea3fd5eb500c3ba6f82c7f","entity_key":"d_at_the_cafe_02:4","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f8c4f83c3c947357eea72ccf4806db72b407e7d6ae69e04425647329ee8906ba","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/b1ea0e8d14436b6092d4e7ee284137cca99a3bcd5aea3fd5eb500c3ba6f82c7f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_who_i_am_02:3 -> audio/generated/it-IT/dialogues/b1f9e400056f3067bc0df13156a6b4c089e16f61e025a1742c0f4cc2e4f07be4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d1af8157-9f03-5823-acaa-f5ab10240224', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_who_i_am_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8e155e262a6b13c7ad51e0733daa6ef186be9f0b636ef8f601b949412057e58d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ba29d04e-bf29-5be4-8830-8e9f2e1056d7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d1af8157-9f03-5823-acaa-f5ab10240224', 1), '8e155e262a6b13c7ad51e0733daa6ef186be9f0b636ef8f601b949412057e58d',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/b1f9e400056f3067bc0df13156a6b4c089e16f61e025a1742c0f4cc2e4f07be4.mp3', 1253, '2026-09-14 03:09:31.735347', '3851a9cc5d6c57282825df09e16ce1b1b65bc307f0132b40fd9571548c4a6690', 'validated', '{"audio_key":"b1f9e400056f3067bc0df13156a6b4c089e16f61e025a1742c0f4cc2e4f07be4","entity_key":"d_who_i_am_02:3","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"3851a9cc5d6c57282825df09e16ce1b1b65bc307f0132b40fd9571548c4a6690","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/b1f9e400056f3067bc0df13156a6b4c089e16f61e025a1742c0f4cc2e4f07be4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_time_and_plans_01:2 -> audio/generated/it-IT/dialogues/b23a7f0aff89449d4155c500e36b0dc30a2642f484193e29c6bde07cf4050580.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f26fbfba-8cb1-50b3-b3d6-d7f965a15733', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_time_and_plans_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '47f3aa5c6d4716bfb1ba183afa244f4c5421342d3211b61a93bf12d6d398e655'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('45b86eb5-7e9d-542c-8513-7accc2ecc02e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f26fbfba-8cb1-50b3-b3d6-d7f965a15733', 1), '47f3aa5c6d4716bfb1ba183afa244f4c5421342d3211b61a93bf12d6d398e655',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/b23a7f0aff89449d4155c500e36b0dc30a2642f484193e29c6bde07cf4050580.mp3', 1436, '2026-09-14 03:09:32.222901', '607a89a3ecf949a8a9c982101578fcb740a656bb3d7e34848df545af214a792e', 'validated', '{"audio_key":"b23a7f0aff89449d4155c500e36b0dc30a2642f484193e29c6bde07cf4050580","entity_key":"d_time_and_plans_01:2","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"607a89a3ecf949a8a9c982101578fcb740a656bb3d7e34848df545af214a792e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/b23a7f0aff89449d4155c500e36b0dc30a2642f484193e29c6bde07cf4050580.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_articles_and_objects_02:4 -> audio/generated/it-IT/dialogues/b9aadebc40b36b9e4d0a1ec6466c0c323ac6565ebf3ac1e1d32402a1cf28fdaf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9c9a28ed-e197-5d3b-86bd-a08b0f3e0843', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_articles_and_objects_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9ba4a76e9540a24a67319383f522dbce3c211288bac51d6c3ccc5a197deca6bd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6057c298-1b5a-56de-8b9e-360d8f91bc13', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9c9a28ed-e197-5d3b-86bd-a08b0f3e0843', 1), '9ba4a76e9540a24a67319383f522dbce3c211288bac51d6c3ccc5a197deca6bd',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/b9aadebc40b36b9e4d0a1ec6466c0c323ac6565ebf3ac1e1d32402a1cf28fdaf.mp3', 1201, '2026-09-14 03:09:32.756881', 'dad4c17c0ed86408dca668c658d43dc8cea6463eb1cddad3a62a7184b55b5e0f', 'validated', '{"audio_key":"b9aadebc40b36b9e4d0a1ec6466c0c323ac6565ebf3ac1e1d32402a1cf28fdaf","entity_key":"d_articles_and_objects_02:4","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dad4c17c0ed86408dca668c658d43dc8cea6463eb1cddad3a62a7184b55b5e0f","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/b9aadebc40b36b9e4d0a1ec6466c0c323ac6565ebf3ac1e1d32402a1cf28fdaf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a1_day_capstone_01:4 -> audio/generated/it-IT/dialogues/baa027c0a7dbbdbcc5902fc6b274a8b540165e320287bc2871ff7b87b2358300.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7caacba5-d3b0-5fef-b20c-6ddf56ce6916', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a1_day_capstone_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5dd5b87ba35cdf5abaa1d753cba24a1bb68b118581138f3bf6ddb44f4966b88b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('87c1b928-d6e4-5efd-8790-f56027576275', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7caacba5-d3b0-5fef-b20c-6ddf56ce6916', 1), '5dd5b87ba35cdf5abaa1d753cba24a1bb68b118581138f3bf6ddb44f4966b88b',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/baa027c0a7dbbdbcc5902fc6b274a8b540165e320287bc2871ff7b87b2358300.mp3', 966, '2026-09-14 03:09:33.219686', '909de77499750ccbc57f35544d630be251d4047ff963f5f0cc56ce9ed4e49c8e', 'validated', '{"audio_key":"baa027c0a7dbbdbcc5902fc6b274a8b540165e320287bc2871ff7b87b2358300","entity_key":"d_a1_day_capstone_01:4","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"909de77499750ccbc57f35544d630be251d4047ff963f5f0cc56ce9ed4e49c8e","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/baa027c0a7dbbdbcc5902fc6b274a8b540165e320287bc2871ff7b87b2358300.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_daily_routine_01:4 -> audio/generated/it-IT/dialogues/bf08b2b54d39d786e957d77997b66c23ea3ee267b24e04a04a3bccfbe55889e6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('faab30d3-f729-5e53-bc58-b86aaa925779', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_daily_routine_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5c7beafec13dac459b85828b4aac3857db22759710c341789db5c84b5330130e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d4287e7b-f3af-52ab-afc0-180b294383c3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('faab30d3-f729-5e53-bc58-b86aaa925779', 1), '5c7beafec13dac459b85828b4aac3857db22759710c341789db5c84b5330130e',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/bf08b2b54d39d786e957d77997b66c23ea3ee267b24e04a04a3bccfbe55889e6.mp3', 862, '2026-09-14 03:09:33.728220', '617b75b2ff1f24b7bcce1c8febe4427ec20d77ae26317e92c9e5acef6c93d02b', 'validated', '{"audio_key":"bf08b2b54d39d786e957d77997b66c23ea3ee267b24e04a04a3bccfbe55889e6","entity_key":"d_daily_routine_01:4","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"617b75b2ff1f24b7bcce1c8febe4427ec20d77ae26317e92c9e5acef6c93d02b","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/bf08b2b54d39d786e957d77997b66c23ea3ee267b24e04a04a3bccfbe55889e6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_daily_routine_01:3 -> audio/generated/it-IT/dialogues/c0024a22d0c6cd39ce29c852208d9a0fd6574a2779de3dc5bf35ec57cc69a421.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('404f7603-2263-5d9f-9b93-31af1bc4824a', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_daily_routine_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0c76951a146ec88f4e34594a7aaab69d0d0e0bd5a7c38f7ba01634202a9a6291'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('332fd8a8-52ec-579c-8cc2-fb7564b5ca25', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('404f7603-2263-5d9f-9b93-31af1bc4824a', 1), '0c76951a146ec88f4e34594a7aaab69d0d0e0bd5a7c38f7ba01634202a9a6291',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/c0024a22d0c6cd39ce29c852208d9a0fd6574a2779de3dc5bf35ec57cc69a421.mp3', 2037, '2026-09-14 03:09:34.294658', '17e7ee9805481cf2f35b625ef804cacebb93447d48c31995a835bfb502185c51', 'validated', '{"audio_key":"c0024a22d0c6cd39ce29c852208d9a0fd6574a2779de3dc5bf35ec57cc69a421","entity_key":"d_daily_routine_01:3","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"17e7ee9805481cf2f35b625ef804cacebb93447d48c31995a835bfb502185c51","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/c0024a22d0c6cd39ce29c852208d9a0fd6574a2779de3dc5bf35ec57cc69a421.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_shopping_basics_01:1 -> audio/generated/it-IT/dialogues/c62e550b3dcb80cc9545c2d49ea22e220b73f0137aa804212c690a65e47c5720.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('02b7d90c-4f9c-5666-b589-70040979a401', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_shopping_basics_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3c2f5dcb844f74eb71adc9d7b7ab64615721b9efc8d820a9c7244dd21eeb8893'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('05073621-4f90-51b2-b07e-5f5371b539d4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('02b7d90c-4f9c-5666-b589-70040979a401', 1), '3c2f5dcb844f74eb71adc9d7b7ab64615721b9efc8d820a9c7244dd21eeb8893',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/c62e550b3dcb80cc9545c2d49ea22e220b73f0137aa804212c690a65e47c5720.mp3', 1671, '2026-09-14 03:09:34.795591', 'ba1b9761e2f0eda316427898d1e68ea955fb5be51e0b06a02507d525d9d8a465', 'validated', '{"audio_key":"c62e550b3dcb80cc9545c2d49ea22e220b73f0137aa804212c690a65e47c5720","entity_key":"d_shopping_basics_01:1","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"ba1b9761e2f0eda316427898d1e68ea955fb5be51e0b06a02507d525d9d8a465","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/c62e550b3dcb80cc9545c2d49ea22e220b73f0137aa804212c690a65e47c5720.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_at_home_01:4 -> audio/generated/it-IT/dialogues/c8b88e8e67f79f84ac19a582edabe718c9df1cc67361bfad9c78e1812545aefa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('648ef32e-f3a7-5a73-9b18-78c7ba174d6f', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_at_home_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '815f15dee0bbfd29d66e2c2242f66f81fc5d26177490395a62e737cf36b7f801'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dd1dad92-a043-5183-8e9f-1fabfdb1a028', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('648ef32e-f3a7-5a73-9b18-78c7ba174d6f', 1), '815f15dee0bbfd29d66e2c2242f66f81fc5d26177490395a62e737cf36b7f801',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/c8b88e8e67f79f84ac19a582edabe718c9df1cc67361bfad9c78e1812545aefa.mp3', 1018, '2026-09-14 03:09:35.286599', '259fa4c0280d88a656434256cfd36c295b966fa45487fc6c5368ba086fd1ddef', 'validated', '{"audio_key":"c8b88e8e67f79f84ac19a582edabe718c9df1cc67361bfad9c78e1812545aefa","entity_key":"d_at_home_01:4","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"259fa4c0280d88a656434256cfd36c295b966fa45487fc6c5368ba086fd1ddef","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/c8b88e8e67f79f84ac19a582edabe718c9df1cc67361bfad9c78e1812545aefa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_at_the_cafe_02:1 -> audio/generated/it-IT/dialogues/ca35cca61c23a0ba4d7b933822c06a6dc3eb3cc5a4d72ffa95fa06e96da9c1dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7dc86f92-f324-5708-97e0-53873ac003bc', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_at_the_cafe_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4e8c2c2fdb1f117964aad89c359aca9061020a85d2ac65ed0038c858c6db5675'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e2f305b7-e2ff-58aa-bf91-173696d3e78e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7dc86f92-f324-5708-97e0-53873ac003bc', 1), '4e8c2c2fdb1f117964aad89c359aca9061020a85d2ac65ed0038c858c6db5675',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/ca35cca61c23a0ba4d7b933822c06a6dc3eb3cc5a4d72ffa95fa06e96da9c1dd.mp3', 1671, '2026-09-14 03:09:35.841873', '5d8a780e6427b4b53f696c1056ee8fd26496e67f94743cfdb237ed504e93d265', 'validated', '{"audio_key":"ca35cca61c23a0ba4d7b933822c06a6dc3eb3cc5a4d72ffa95fa06e96da9c1dd","entity_key":"d_at_the_cafe_02:1","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"5d8a780e6427b4b53f696c1056ee8fd26496e67f94743cfdb237ed504e93d265","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/ca35cca61c23a0ba4d7b933822c06a6dc3eb3cc5a4d72ffa95fa06e96da9c1dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a1_day_capstone_01:3 -> audio/generated/it-IT/dialogues/ca9ff23b9ce5a0f87039d802446acbc178685041a0f871a3c37d509abb8e237a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1daa1e93-e74d-5fbc-ab7b-63629317435f', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a1_day_capstone_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1374eeb6ec4847c8d306a230141924df90007a3578580eaca980edcbebdf972b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4c1ee0f6-d389-52c1-a64f-f92cb9207666', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1daa1e93-e74d-5fbc-ab7b-63629317435f', 1), '1374eeb6ec4847c8d306a230141924df90007a3578580eaca980edcbebdf972b',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/ca9ff23b9ce5a0f87039d802446acbc178685041a0f871a3c37d509abb8e237a.mp3', 1697, '2026-09-14 03:09:36.343302', '46545b5549f1bec8a017799d4fd54faeeedf949a09abdf006acf32ba0990bc50', 'validated', '{"audio_key":"ca9ff23b9ce5a0f87039d802446acbc178685041a0f871a3c37d509abb8e237a","entity_key":"d_a1_day_capstone_01:3","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"46545b5549f1bec8a017799d4fd54faeeedf949a09abdf006acf32ba0990bc50","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/ca9ff23b9ce5a0f87039d802446acbc178685041a0f871a3c37d509abb8e237a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_family_01:4 -> audio/generated/it-IT/dialogues/cc44d7f01cf922a6757f489ac0c58f62d3b47a64fb5a75ec2cb95297019170be.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c449a25e-69bb-582d-9c14-de98961b6cc0', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_family_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '679ea77bad77cb2afa3175a080492853565611ea6e7c6e8b86f98982f6ab9e99'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0d5ae855-5957-548a-aa33-4e14d77bc1bb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c449a25e-69bb-582d-9c14-de98961b6cc0', 1), '679ea77bad77cb2afa3175a080492853565611ea6e7c6e8b86f98982f6ab9e99',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/cc44d7f01cf922a6757f489ac0c58f62d3b47a64fb5a75ec2cb95297019170be.mp3', 1253, '2026-09-14 03:09:36.855479', 'c78958af2390a0ebdf7c2cffb323385a797ef5746c08966bb42413658376824c', 'validated', '{"audio_key":"cc44d7f01cf922a6757f489ac0c58f62d3b47a64fb5a75ec2cb95297019170be","entity_key":"d_my_family_01:4","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"c78958af2390a0ebdf7c2cffb323385a797ef5746c08966bb42413658376824c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/cc44d7f01cf922a6757f489ac0c58f62d3b47a64fb5a75ec2cb95297019170be.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_shopping_basics_01:3 -> audio/generated/it-IT/dialogues/d0c14d1e64afb9fc683075110af14526299a69213886e71ed16df844ab6eff73.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4a97bac2-67b1-5acb-bf67-bf972c175a26', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_shopping_basics_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ab993466efa6758176764ccf7e0ae612ef0a4690c80a5e01fc575abeea9e31ab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('21fa92eb-7ff5-5534-810b-025669da380d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4a97bac2-67b1-5acb-bf67-bf972c175a26', 1), 'ab993466efa6758176764ccf7e0ae612ef0a4690c80a5e01fc575abeea9e31ab',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/d0c14d1e64afb9fc683075110af14526299a69213886e71ed16df844ab6eff73.mp3', 1149, '2026-09-14 03:09:37.332690', 'd24ba9afdc7befda5f7d0ffc440b8561aa9140524c46c489b9a5f465c95df376', 'validated', '{"audio_key":"d0c14d1e64afb9fc683075110af14526299a69213886e71ed16df844ab6eff73","entity_key":"d_shopping_basics_01:3","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"d24ba9afdc7befda5f7d0ffc440b8561aa9140524c46c489b9a5f465c95df376","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/d0c14d1e64afb9fc683075110af14526299a69213886e71ed16df844ab6eff73.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_getting_around_02:3 -> audio/generated/it-IT/dialogues/d52bd6a991271bd2d672702e921b180c9932c3148e31145c0e7bf8ad6a64cb4e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c56074a9-bdea-585e-9b97-fe9168aa9bb3', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_getting_around_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '688ec596568c98e1facbdd51e5e9f73ba70d782dc29692e0e90144c1d0cadcf1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4134d0c4-d498-537c-a447-8c6491f564e0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c56074a9-bdea-585e-9b97-fe9168aa9bb3', 1), '688ec596568c98e1facbdd51e5e9f73ba70d782dc29692e0e90144c1d0cadcf1',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/d52bd6a991271bd2d672702e921b180c9932c3148e31145c0e7bf8ad6a64cb4e.mp3', 1018, '2026-09-14 03:09:37.825999', '382f91c8f8f094d4c1c19a69db98950f709776308e052c12a7557eb71f389e50', 'validated', '{"audio_key":"d52bd6a991271bd2d672702e921b180c9932c3148e31145c0e7bf8ad6a64cb4e","entity_key":"d_getting_around_02:3","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"382f91c8f8f094d4c1c19a69db98950f709776308e052c12a7557eb71f389e50","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/d52bd6a991271bd2d672702e921b180c9932c3148e31145c0e7bf8ad6a64cb4e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_at_the_cafe_01:3 -> audio/generated/it-IT/dialogues/d56650533ec36d2026ed71dd3bd3a5eb19f642911e8b878965d98594467e6896.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('481a3a14-9ddb-57f5-a5f6-c342dcc38b5e', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_at_the_cafe_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '965ecc84325a015fecb3f1cdb7ac81868c390c66e5a8bb7c9eaf78ba7d9e83a7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f2860541-fd3b-58b9-8c66-fdda82f42ff4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('481a3a14-9ddb-57f5-a5f6-c342dcc38b5e', 1), '965ecc84325a015fecb3f1cdb7ac81868c390c66e5a8bb7c9eaf78ba7d9e83a7',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/d56650533ec36d2026ed71dd3bd3a5eb19f642911e8b878965d98594467e6896.mp3', 1515, '2026-09-14 03:09:38.366343', 'd42b06f4bb60fae7de5edc2fd9035577a53992ae1e5823e6ffc674bcabaa0e6c', 'validated', '{"audio_key":"d56650533ec36d2026ed71dd3bd3a5eb19f642911e8b878965d98594467e6896","entity_key":"d_at_the_cafe_01:3","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"d42b06f4bb60fae7de5edc2fd9035577a53992ae1e5823e6ffc674bcabaa0e6c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/d56650533ec36d2026ed71dd3bd3a5eb19f642911e8b878965d98594467e6896.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_shopping_basics_02:1 -> audio/generated/it-IT/dialogues/d7118bc5a2334bd7a72e640919c1547c7421e2bca67d6a58c5dddff38e4961be.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9575106d-b1a4-5740-b6e5-e5fb72209da8', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_shopping_basics_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e171f5e2aeadb87e63a70b0af4cdfe519315133d9f4b7916118b3d1fb63cd079'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eabf0700-77bd-5c26-8fc5-5ced682cee6a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9575106d-b1a4-5740-b6e5-e5fb72209da8', 1), 'e171f5e2aeadb87e63a70b0af4cdfe519315133d9f4b7916118b3d1fb63cd079',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/d7118bc5a2334bd7a72e640919c1547c7421e2bca67d6a58c5dddff38e4961be.mp3', 2351, '2026-09-14 03:09:38.978074', '9bdef1aadc123226d4aeb736bd82f02b4d18821cf6e33ed4d0208375fb30e1ce', 'validated', '{"audio_key":"d7118bc5a2334bd7a72e640919c1547c7421e2bca67d6a58c5dddff38e4961be","entity_key":"d_shopping_basics_02:1","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9bdef1aadc123226d4aeb736bd82f02b4d18821cf6e33ed4d0208375fb30e1ce","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/d7118bc5a2334bd7a72e640919c1547c7421e2bca67d6a58c5dddff38e4961be.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_time_and_plans_01:4 -> audio/generated/it-IT/dialogues/d9ea3f266efb620609330f174c8d5820c2d7d4aa5920c25790076fb0012c0473.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('aadd97a1-71d2-5e24-8666-bab9544aca92', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_time_and_plans_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6204119fbb4a46276df119274b8d0afcdfe73feda351e1d6c87b354899abfcec'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9edec06b-c9b0-50c3-ab46-64c8f0626992', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('aadd97a1-71d2-5e24-8666-bab9544aca92', 1), '6204119fbb4a46276df119274b8d0afcdfe73feda351e1d6c87b354899abfcec',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/d9ea3f266efb620609330f174c8d5820c2d7d4aa5920c25790076fb0012c0473.mp3', 1149, '2026-09-14 03:09:39.376791', 'ab570eae82a9ac9988fc33284762005a535160f9863bb0f9ae179e5c7824d236', 'validated', '{"audio_key":"d9ea3f266efb620609330f174c8d5820c2d7d4aa5920c25790076fb0012c0473","entity_key":"d_time_and_plans_01:4","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ab570eae82a9ac9988fc33284762005a535160f9863bb0f9ae179e5c7824d236","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/d9ea3f266efb620609330f174c8d5820c2d7d4aa5920c25790076fb0012c0473.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_articles_and_objects_01:4 -> audio/generated/it-IT/dialogues/e12a42386681b238d3a127899a945c94fc2342ae7203f1f6320d2e9675d90217.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dc674b58-b871-51fc-9b9a-382c99b60d5c', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_articles_and_objects_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ebef5a027d732cbd3f28e7fe6ce656681c90fd6fe5bf298f569c9ac2b8688766'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('03ebe4e5-3086-52b4-baf7-767e6379aba5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dc674b58-b871-51fc-9b9a-382c99b60d5c', 1), 'ebef5a027d732cbd3f28e7fe6ce656681c90fd6fe5bf298f569c9ac2b8688766',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/e12a42386681b238d3a127899a945c94fc2342ae7203f1f6320d2e9675d90217.mp3', 1332, '2026-09-14 03:09:40.028141', '7b83fe099ac5594f9065f098b4b90ac3a014305acbc863ece83c3462d86507b0', 'validated', '{"audio_key":"e12a42386681b238d3a127899a945c94fc2342ae7203f1f6320d2e9675d90217","entity_key":"d_articles_and_objects_01:4","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7b83fe099ac5594f9065f098b4b90ac3a014305acbc863ece83c3462d86507b0","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/e12a42386681b238d3a127899a945c94fc2342ae7203f1f6320d2e9675d90217.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_at_home_01:2 -> audio/generated/it-IT/dialogues/e2f7683a6628bdfda2d1caee15ae6b8c36323d0911ab3a527e512c98b932edb4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d07829de-5989-5167-81ea-a44be6738c8e', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_at_home_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ddd501d461dde824ee0a6d30c0f028c9aa35eb68e9c051a646ae0df293469a27'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a061c252-4aa6-512b-a2bb-d0fe9f1da9b8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d07829de-5989-5167-81ea-a44be6738c8e', 1), 'ddd501d461dde824ee0a6d30c0f028c9aa35eb68e9c051a646ae0df293469a27',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/e2f7683a6628bdfda2d1caee15ae6b8c36323d0911ab3a527e512c98b932edb4.mp3', 1280, '2026-09-14 03:09:40.407922', 'd303ecb3a7c9e9bcc020c0dc7101b8eb9846dabf07f26fac2c5df53c80d10b3c', 'validated', '{"audio_key":"e2f7683a6628bdfda2d1caee15ae6b8c36323d0911ab3a527e512c98b932edb4","entity_key":"d_at_home_01:2","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d303ecb3a7c9e9bcc020c0dc7101b8eb9846dabf07f26fac2c5df53c80d10b3c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/e2f7683a6628bdfda2d1caee15ae6b8c36323d0911ab3a527e512c98b932edb4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_family_02:1 -> audio/generated/it-IT/dialogues/e68f19eefed7c6fda879f4ac5b31aa3208878cc566e67c50177a4694399ab79d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7ae14e69-e94e-59ec-958a-684a1504f908', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_family_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2f29b01d051cd5026c73852d83702906042ccfd4f7b7ea9919adfd056a6ef61a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('54e45aa3-239a-5c89-be49-2e1089a6a850', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7ae14e69-e94e-59ec-958a-684a1504f908', 1), '2f29b01d051cd5026c73852d83702906042ccfd4f7b7ea9919adfd056a6ef61a',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/e68f19eefed7c6fda879f4ac5b31aa3208878cc566e67c50177a4694399ab79d.mp3', 1671, '2026-09-14 03:09:41.440783', '6d26c285a402da8865887d8baaf3df52dd85b4aff1ccfbbbfcb188233f0f8e5e', 'validated', '{"audio_key":"e68f19eefed7c6fda879f4ac5b31aa3208878cc566e67c50177a4694399ab79d","entity_key":"d_my_family_02:1","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"6d26c285a402da8865887d8baaf3df52dd85b4aff1ccfbbbfcb188233f0f8e5e","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/e68f19eefed7c6fda879f4ac5b31aa3208878cc566e67c50177a4694399ab79d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_at_the_cafe_02:2 -> audio/generated/it-IT/dialogues/e9096d9595d0d5b29945dac77865af15c68f169e77dc29a2684d58fa1650adb0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c783808b-7f6e-57e0-b22d-c3fd3f063d57', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_at_the_cafe_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7d778ba7e07e1fb45e522caee0ac0467a9f586b826f64608ce82dd7cd1a4fa82'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2efb021c-159e-5dd0-8daa-0165fcb17581', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c783808b-7f6e-57e0-b22d-c3fd3f063d57', 1), '7d778ba7e07e1fb45e522caee0ac0467a9f586b826f64608ce82dd7cd1a4fa82',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/e9096d9595d0d5b29945dac77865af15c68f169e77dc29a2684d58fa1650adb0.mp3', 1619, '2026-09-14 03:09:41.456506', 'ab02b92c544eb6704a953e92bfdd65b2fb4671bf8f56b30997aeddde84fe728e', 'validated', '{"audio_key":"e9096d9595d0d5b29945dac77865af15c68f169e77dc29a2684d58fa1650adb0","entity_key":"d_at_the_cafe_02:2","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ab02b92c544eb6704a953e92bfdd65b2fb4671bf8f56b30997aeddde84fe728e","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/e9096d9595d0d5b29945dac77865af15c68f169e77dc29a2684d58fa1650adb0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_time_and_plans_02:1 -> audio/generated/it-IT/dialogues/ec8d034af0920c3248a8f88762428015305630c8853be2c9e16ae27abb674986.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6ed4d2be-12c6-57df-88eb-4ec860ac0ad9', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_time_and_plans_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '759907eae0898afde88108c008e51b2d5ee3cbb29a7dfa63e9b54f532f762364'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0076c29d-2819-583d-b431-452904e0847e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6ed4d2be-12c6-57df-88eb-4ec860ac0ad9', 1), '759907eae0898afde88108c008e51b2d5ee3cbb29a7dfa63e9b54f532f762364',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/ec8d034af0920c3248a8f88762428015305630c8853be2c9e16ae27abb674986.mp3', 1332, '2026-09-14 03:09:42.462509', '97d6a81c1f55bfcf509e81d09a7ab3af1a66d2dfc5faec6ee70196825bf8b082', 'validated', '{"audio_key":"ec8d034af0920c3248a8f88762428015305630c8853be2c9e16ae27abb674986","entity_key":"d_time_and_plans_02:1","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"97d6a81c1f55bfcf509e81d09a7ab3af1a66d2dfc5faec6ee70196825bf8b082","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/ec8d034af0920c3248a8f88762428015305630c8853be2c9e16ae27abb674986.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_shopping_basics_02:3 -> audio/generated/it-IT/dialogues/ecfc200454241611b183fc769966ed884bb3b42be91b84bba23d8574b5af66a7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('26a318e4-ff5d-5335-80d3-1194233403d1', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_shopping_basics_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '59e3160ea6686ec0b83bf6fbedbcc9d03662b5876f44598fbb29897ef5932842'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('00fec177-dcae-54d3-b5de-38bec0c16c66', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('26a318e4-ff5d-5335-80d3-1194233403d1', 1), '59e3160ea6686ec0b83bf6fbedbcc9d03662b5876f44598fbb29897ef5932842',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/ecfc200454241611b183fc769966ed884bb3b42be91b84bba23d8574b5af66a7.mp3', 1280, '2026-09-14 03:09:42.507565', 'f537bde1f3e63e72365469039da0731136f53f3aa9d3d5ca2f21a807369bd8e5', 'validated', '{"audio_key":"ecfc200454241611b183fc769966ed884bb3b42be91b84bba23d8574b5af66a7","entity_key":"d_shopping_basics_02:3","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f537bde1f3e63e72365469039da0731136f53f3aa9d3d5ca2f21a807369bd8e5","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/ecfc200454241611b183fc769966ed884bb3b42be91b84bba23d8574b5af66a7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_at_the_cafe_01:4 -> audio/generated/it-IT/dialogues/f0896d3293a6005df5bcb52cebaa1fa5d7466195249b757a9280bc488b60e7db.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ab28c0bc-3bc7-5514-846d-c6aa36afef99', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_at_the_cafe_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd88f419cd69b81498a63d961ec3ee0019e5b69968f3e28057f6b17539259dfc8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d6e5d244-5fac-5db1-943e-5ce18a6f60b4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ab28c0bc-3bc7-5514-846d-c6aa36afef99', 1), 'd88f419cd69b81498a63d961ec3ee0019e5b69968f3e28057f6b17539259dfc8',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/f0896d3293a6005df5bcb52cebaa1fa5d7466195249b757a9280bc488b60e7db.mp3', 1018, '2026-09-14 03:09:43.457802', '924f642a90c9f99a0189d3f4b6e271f0b06c2e9600c7e9c2ed057149a23f2883', 'validated', '{"audio_key":"f0896d3293a6005df5bcb52cebaa1fa5d7466195249b757a9280bc488b60e7db","entity_key":"d_at_the_cafe_01:4","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"924f642a90c9f99a0189d3f4b6e271f0b06c2e9600c7e9c2ed057149a23f2883","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/f0896d3293a6005df5bcb52cebaa1fa5d7466195249b757a9280bc488b60e7db.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_family_01:3 -> audio/generated/it-IT/dialogues/f308812cb46a1d2c15e0e14d91e66e8995ba5bb7cc8397bec11502775dd639de.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3ea327aa-9748-5afe-ba89-c09c2fbc468c', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_family_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a443459717a6b2f0e25fa6db43ef52c0089d4481f6ba6471eb794da6cd32b0ea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('178c06ef-79fe-5bc2-a3ed-28732ab878b4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3ea327aa-9748-5afe-ba89-c09c2fbc468c', 1), 'a443459717a6b2f0e25fa6db43ef52c0089d4481f6ba6471eb794da6cd32b0ea',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/f308812cb46a1d2c15e0e14d91e66e8995ba5bb7cc8397bec11502775dd639de.mp3', 1280, '2026-09-14 03:09:43.537228', 'ca6ea363a6686e7957d3c060e23c384ac0277ed3f0af4aa91edac1759de3afad', 'validated', '{"audio_key":"f308812cb46a1d2c15e0e14d91e66e8995ba5bb7cc8397bec11502775dd639de","entity_key":"d_my_family_01:3","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"ca6ea363a6686e7957d3c060e23c384ac0277ed3f0af4aa91edac1759de3afad","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/f308812cb46a1d2c15e0e14d91e66e8995ba5bb7cc8397bec11502775dd639de.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_articles_and_objects_02:3 -> audio/generated/it-IT/dialogues/f477041bf260202e1ab98ae3dc6df5603eed874bbcbeff8dabf4164400d3660f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f7802fb9-cacb-5070-aa54-0c0189926344', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_articles_and_objects_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd36ad78ca4968f1bd05d52136eb168cef8882272e44b38e7e100b393a346b178'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5d56b3ee-3305-587d-a4aa-12fcc5079bf2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f7802fb9-cacb-5070-aa54-0c0189926344', 1), 'd36ad78ca4968f1bd05d52136eb168cef8882272e44b38e7e100b393a346b178',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/f477041bf260202e1ab98ae3dc6df5603eed874bbcbeff8dabf4164400d3660f.mp3', 1149, '2026-09-14 03:09:44.463643', '9cfe4fd97cbd9645ff9b4f57a18e17eeda60c3dd96a5e14f6a01ed9a3d8882b5', 'validated', '{"audio_key":"f477041bf260202e1ab98ae3dc6df5603eed874bbcbeff8dabf4164400d3660f","entity_key":"d_articles_and_objects_02:3","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"9cfe4fd97cbd9645ff9b4f57a18e17eeda60c3dd96a5e14f6a01ed9a3d8882b5","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/f477041bf260202e1ab98ae3dc6df5603eed874bbcbeff8dabf4164400d3660f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_at_home_01:1 -> audio/generated/it-IT/dialogues/f5bc8c1cf7a150b2884827b143485c7b994b79d6f7c0da30aac02967f6267f52.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8f4a4a6c-01d5-5e22-93ef-73cb94a07df7', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_at_home_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a288f724282d5b69b0662b98daecbf9b1ed0bc226a7e6be9b8206b87ad7b46a7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('43610e25-7dad-5a09-a299-34478c0606f2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8f4a4a6c-01d5-5e22-93ef-73cb94a07df7', 1), 'a288f724282d5b69b0662b98daecbf9b1ed0bc226a7e6be9b8206b87ad7b46a7',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/f5bc8c1cf7a150b2884827b143485c7b994b79d6f7c0da30aac02967f6267f52.mp3', 1567, '2026-09-14 03:09:44.809407', 'ccdc371ef78948ce7db8f594a202e7fc7a05b2c8287109fdf1e135ca8ae36601', 'validated', '{"audio_key":"f5bc8c1cf7a150b2884827b143485c7b994b79d6f7c0da30aac02967f6267f52","entity_key":"d_at_home_01:1","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"ccdc371ef78948ce7db8f594a202e7fc7a05b2c8287109fdf1e135ca8ae36601","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/f5bc8c1cf7a150b2884827b143485c7b994b79d6f7c0da30aac02967f6267f52.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_family_01:2 -> audio/generated/it-IT/dialogues/f60150f355010fcb6c26f2210b41b1323d8d753560262ebdad1249031cbe0bfd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6743a6ac-56b7-588c-ae59-ae2fed059576', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_family_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3dc5ae132ca1241cf53c5aad5d2062e32b052f219905edc216d0a22b870a9be8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ea670392-2ca1-59b9-bcbc-bead4e72e2fa', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6743a6ac-56b7-588c-ae59-ae2fed059576', 1), '3dc5ae132ca1241cf53c5aad5d2062e32b052f219905edc216d0a22b870a9be8',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/f60150f355010fcb6c26f2210b41b1323d8d753560262ebdad1249031cbe0bfd.mp3', 1018, '2026-09-14 03:09:45.474783', 'e230053b629d300198629bafd39b9491e440e224057a0ba82ef2b4803a5b57aa', 'validated', '{"audio_key":"f60150f355010fcb6c26f2210b41b1323d8d753560262ebdad1249031cbe0bfd","entity_key":"d_my_family_01:2","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"e230053b629d300198629bafd39b9491e440e224057a0ba82ef2b4803a5b57aa","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/f60150f355010fcb6c26f2210b41b1323d8d753560262ebdad1249031cbe0bfd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a1_day_capstone_02:2 -> audio/generated/it-IT/dialogues/f7e27c81d25801e08236eb014ce8d1ef71a6b9ed43bcb6b879d463a116454495.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('01ffafa4-9ac3-5028-8dfe-7e6263a5ba1f', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a1_day_capstone_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e11c7d21e13c2ec36c66d5a4649d927272634697c00b652fa1a8090acb5376a5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ff5d17ba-17f3-5d8b-939d-17412db38f10', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('01ffafa4-9ac3-5028-8dfe-7e6263a5ba1f', 1), 'e11c7d21e13c2ec36c66d5a4649d927272634697c00b652fa1a8090acb5376a5',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/f7e27c81d25801e08236eb014ce8d1ef71a6b9ed43bcb6b879d463a116454495.mp3', 1697, '2026-09-14 03:09:45.935889', '595346cd17273f22c2613c9adfa7b3bf38c6229bce466ea4b7f2eb232249ed07', 'validated', '{"audio_key":"f7e27c81d25801e08236eb014ce8d1ef71a6b9ed43bcb6b879d463a116454495","entity_key":"d_a1_day_capstone_02:2","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"595346cd17273f22c2613c9adfa7b3bf38c6229bce466ea4b7f2eb232249ed07","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/f7e27c81d25801e08236eb014ce8d1ef71a6b9ed43bcb6b879d463a116454495.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_daily_routine_02:3 -> audio/generated/it-IT/dialogues/f87f305c4f9d99a286d68d5a4c378760da4e5b827a77d93b10efcee5bff42928.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('14b85ce5-a761-512a-a604-9a22e299da65', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_daily_routine_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fa0eb9c03b1ddb7682f0e1309d37f78fd97f845433d0b1b605069645ca2beb5f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a6edbc86-76a4-5562-81eb-18888b7e497c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('14b85ce5-a761-512a-a604-9a22e299da65', 1), 'fa0eb9c03b1ddb7682f0e1309d37f78fd97f845433d0b1b605069645ca2beb5f',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/f87f305c4f9d99a286d68d5a4c378760da4e5b827a77d93b10efcee5bff42928.mp3', 1384, '2026-09-14 03:09:46.519361', '725ed3b4347dff3b5c283c74ff7827e77a1948754e9ce77370d1f381b75bd9e8', 'validated', '{"audio_key":"f87f305c4f9d99a286d68d5a4c378760da4e5b827a77d93b10efcee5bff42928","entity_key":"d_daily_routine_02:3","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"725ed3b4347dff3b5c283c74ff7827e77a1948754e9ce77370d1f381b75bd9e8","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/f87f305c4f9d99a286d68d5a4c378760da4e5b827a77d93b10efcee5bff42928.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a1_day_capstone_01:1 -> audio/generated/it-IT/dialogues/fc7234cb64b35764cb96a4172cb74e373078b47ae8c98bbfabfc4212f9d3307c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c1a3414a-4d8d-5e0e-aeaa-1cd0cc7876a1', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a1_day_capstone_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6c21bfcb9ad9ec273ad60dd7741cf7c894d9268e566dc7f907a4753fd4419b90'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('912ae9ee-e940-53ea-962a-844125fb0c9c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c1a3414a-4d8d-5e0e-aeaa-1cd0cc7876a1', 1), '6c21bfcb9ad9ec273ad60dd7741cf7c894d9268e566dc7f907a4753fd4419b90',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/fc7234cb64b35764cb96a4172cb74e373078b47ae8c98bbfabfc4212f9d3307c.mp3', 1488, '2026-09-14 03:09:46.977113', '62ae2a7d7f29ec5407ec6818c5dc99453cd287252413c3b65654083affdcec32', 'validated', '{"audio_key":"fc7234cb64b35764cb96a4172cb74e373078b47ae8c98bbfabfc4212f9d3307c","entity_key":"d_a1_day_capstone_01:1","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"62ae2a7d7f29ec5407ec6818c5dc99453cd287252413c3b65654083affdcec32","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/fc7234cb64b35764cb96a4172cb74e373078b47ae8c98bbfabfc4212f9d3307c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_who_i_am_02:4 -> audio/generated/it-IT/dialogues/fcfd06973a06dcddd7b7e673405eeda07c9dbb1386c97aa115e58f5ada91e701.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ef0ab0a3-17b2-59cf-a26e-952a2ffd94d1', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_who_i_am_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b5ab9aebe6d44dcd95d94a496d4d46b7da673510df9e21c73a0897f8ed96667a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('521665b8-f7a5-573f-8b37-afbe996c2758', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ef0ab0a3-17b2-59cf-a26e-952a2ffd94d1', 1), 'b5ab9aebe6d44dcd95d94a496d4d46b7da673510df9e21c73a0897f8ed96667a',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/fcfd06973a06dcddd7b7e673405eeda07c9dbb1386c97aa115e58f5ada91e701.mp3', 1018, '2026-09-14 03:09:47.504133', '11c187510de49c11d03f7d8955c0a8d07b9d0021d4cf958328cdc7b6a1f458dd', 'validated', '{"audio_key":"fcfd06973a06dcddd7b7e673405eeda07c9dbb1386c97aa115e58f5ada91e701","entity_key":"d_who_i_am_02:4","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"11c187510de49c11d03f7d8955c0a8d07b9d0021d4cf958328cdc7b6a1f458dd","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/fcfd06973a06dcddd7b7e673405eeda07c9dbb1386c97aa115e58f5ada91e701.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a1_day_capstone_01:2 -> audio/generated/it-IT/dialogues/fe8647ee7531a9a029f8c400264fa853a9d8dfd5939871b73aeb63871ae15ab0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b94db4c2-199c-5d86-9d0c-f7be7045061c', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a1_day_capstone_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '69f697eeeff34cb0fc365cd18280abeeb25aaf9ceb3abafcf17cca40f973eb3c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bc4fee49-0872-5397-9692-f3d86664f9e3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b94db4c2-199c-5d86-9d0c-f7be7045061c', 1), '69f697eeeff34cb0fc365cd18280abeeb25aaf9ceb3abafcf17cca40f973eb3c',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/fe8647ee7531a9a029f8c400264fa853a9d8dfd5939871b73aeb63871ae15ab0.mp3', 2089, '2026-09-14 03:09:48.067136', '97fe38baf2fc2a58a56218594de15d6ea341ba3b7e9c8bf31c348d88428059ad', 'validated', '{"audio_key":"fe8647ee7531a9a029f8c400264fa853a9d8dfd5939871b73aeb63871ae15ab0","entity_key":"d_a1_day_capstone_01:2","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"97fe38baf2fc2a58a56218594de15d6ea341ba3b7e9c8bf31c348d88428059ad","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/fe8647ee7531a9a029f8c400264fa853a9d8dfd5939871b73aeb63871ae15ab0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_getting_around_01:4 -> audio/generated/it-IT/dialogues/ff6d1a4b8d8ca59d67ccb856b3d72a6420d63de1cd96ca2086cca3d1418f5318.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('21de1577-e3fb-5f5a-b288-5907761b05c1', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_getting_around_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9be58a3a9602eb40795fc125f19f331d116943e8dc60e4f51d2178ade7e5a5cc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dfd944f9-7286-542c-be80-ef92674de8de', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('21de1577-e3fb-5f5a-b288-5907761b05c1', 1), '9be58a3a9602eb40795fc125f19f331d116943e8dc60e4f51d2178ade7e5a5cc',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/ff6d1a4b8d8ca59d67ccb856b3d72a6420d63de1cd96ca2086cca3d1418f5318.mp3', 1253, '2026-09-14 03:09:48.566641', 'd39609f344d7f196185a10a564f79c3b35c1191734ad25184fcc92d69613b1f1', 'validated', '{"audio_key":"ff6d1a4b8d8ca59d67ccb856b3d72a6420d63de1cd96ca2086cca3d1418f5318","entity_key":"d_getting_around_01:4","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d39609f344d7f196185a10a564f79c3b35c1191734ad25184fcc92d69613b1f1","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/ff6d1a4b8d8ca59d67ccb856b3d72a6420d63de1cd96ca2086cca3d1418f5318.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_my_family_02 -> audio/generated/it-IT/lexical/00584051895254f1ef3449a88426330be47454dc7996dee252b487fb6b3e85c5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a3ccd25e-206b-56dd-9111-56b8a7266a82', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_my_family_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '26709765e7365d694ad031634d7bc29478af921979271fe1baaaa518c6ce054e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5f804a69-be0e-5c34-bff8-5af88e5835f2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a3ccd25e-206b-56dd-9111-56b8a7266a82', 1), '26709765e7365d694ad031634d7bc29478af921979271fe1baaaa518c6ce054e',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/00584051895254f1ef3449a88426330be47454dc7996dee252b487fb6b3e85c5.mp3', 862, '2026-09-14 03:09:49.067819', 'b31d807693e2589f71e747b6a00361a87b06a785b3e94d7ee4788c3c638e4043', 'validated', '{"audio_key":"00584051895254f1ef3449a88426330be47454dc7996dee252b487fb6b3e85c5","entity_key":"lx_my_family_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"b31d807693e2589f71e747b6a00361a87b06a785b3e94d7ee4788c3c638e4043","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/00584051895254f1ef3449a88426330be47454dc7996dee252b487fb6b3e85c5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_my_family_02 -> audio/generated/it-IT/lexical/00584051895254f1ef3449a88426330be47454dc7996dee252b487fb6b3e85c5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a81a25d0-0377-58c9-b037-b8f04e3de24d', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_my_family_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '26709765e7365d694ad031634d7bc29478af921979271fe1baaaa518c6ce054e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('928209e8-4169-5bc5-85ad-09ec626bb15c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a81a25d0-0377-58c9-b037-b8f04e3de24d', 1), '26709765e7365d694ad031634d7bc29478af921979271fe1baaaa518c6ce054e',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/00584051895254f1ef3449a88426330be47454dc7996dee252b487fb6b3e85c5.mp3', 862, '2026-09-14 03:09:49.067819', 'b31d807693e2589f71e747b6a00361a87b06a785b3e94d7ee4788c3c638e4043', 'validated', '{"audio_key":"00584051895254f1ef3449a88426330be47454dc7996dee252b487fb6b3e85c5","entity_key":"wf_my_family_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"b31d807693e2589f71e747b6a00361a87b06a785b3e94d7ee4788c3c638e4043","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/00584051895254f1ef3449a88426330be47454dc7996dee252b487fb6b3e85c5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_at_home_05 -> audio/generated/it-IT/lexical/0c37c23451d264ab2c314d301c21a87cd959cd78ddf2130d8d3013bdd06e2e62.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('67e0097c-3595-5303-be64-d31da2728fdd', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_at_home_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '184c926681179fdf70982eef602f81688f7c74d37fe7f43f024544da28aa3c87'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a8f35605-6d10-56bc-80dc-9ef592c725ac', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('67e0097c-3595-5303-be64-d31da2728fdd', 1), '184c926681179fdf70982eef602f81688f7c74d37fe7f43f024544da28aa3c87',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/0c37c23451d264ab2c314d301c21a87cd959cd78ddf2130d8d3013bdd06e2e62.mp3', 783, '2026-09-14 03:09:49.588177', '46083d4c092a398b6b88bb023420071b9424dd71c85ec48a77491855cc2500a6', 'validated', '{"audio_key":"0c37c23451d264ab2c314d301c21a87cd959cd78ddf2130d8d3013bdd06e2e62","entity_key":"lx_at_home_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"46083d4c092a398b6b88bb023420071b9424dd71c85ec48a77491855cc2500a6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/0c37c23451d264ab2c314d301c21a87cd959cd78ddf2130d8d3013bdd06e2e62.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_at_home_05 -> audio/generated/it-IT/lexical/0c37c23451d264ab2c314d301c21a87cd959cd78ddf2130d8d3013bdd06e2e62.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5914fc4b-790c-5296-b1f9-c6f17e83aa72', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_at_home_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '184c926681179fdf70982eef602f81688f7c74d37fe7f43f024544da28aa3c87'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f40cfc68-fdf5-5c95-aa59-9dc58cd7fe44', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5914fc4b-790c-5296-b1f9-c6f17e83aa72', 1), '184c926681179fdf70982eef602f81688f7c74d37fe7f43f024544da28aa3c87',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/0c37c23451d264ab2c314d301c21a87cd959cd78ddf2130d8d3013bdd06e2e62.mp3', 783, '2026-09-14 03:09:49.588177', '46083d4c092a398b6b88bb023420071b9424dd71c85ec48a77491855cc2500a6', 'validated', '{"audio_key":"0c37c23451d264ab2c314d301c21a87cd959cd78ddf2130d8d3013bdd06e2e62","entity_key":"wf_at_home_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"46083d4c092a398b6b88bb023420071b9424dd71c85ec48a77491855cc2500a6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/0c37c23451d264ab2c314d301c21a87cd959cd78ddf2130d8d3013bdd06e2e62.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_daily_routine_06 -> audio/generated/it-IT/lexical/0d651ed6b6ff57c0eb10ede69988d4aaa3e7c7fbb9ea00b3bb28e604b24a1352.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9fcdcf2b-f85d-50af-abb3-d3dd2f82bc04', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_daily_routine_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '894208d49693eeb3d37cae60f5ea069108eaf22e7b69e3697e28ae140cd6119a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f4ac0275-1111-5b86-9e65-ddabd01ce34f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9fcdcf2b-f85d-50af-abb3-d3dd2f82bc04', 1), '894208d49693eeb3d37cae60f5ea069108eaf22e7b69e3697e28ae140cd6119a',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/0d651ed6b6ff57c0eb10ede69988d4aaa3e7c7fbb9ea00b3bb28e604b24a1352.mp3', 1071, '2026-09-14 03:09:50.059568', '642de6604c2f0bbc0ee1bb618d9b8d901554532cf180ce5abed44fb773725160', 'validated', '{"audio_key":"0d651ed6b6ff57c0eb10ede69988d4aaa3e7c7fbb9ea00b3bb28e604b24a1352","entity_key":"lx_daily_routine_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"642de6604c2f0bbc0ee1bb618d9b8d901554532cf180ce5abed44fb773725160","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/0d651ed6b6ff57c0eb10ede69988d4aaa3e7c7fbb9ea00b3bb28e604b24a1352.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_daily_routine_06 -> audio/generated/it-IT/lexical/0d651ed6b6ff57c0eb10ede69988d4aaa3e7c7fbb9ea00b3bb28e604b24a1352.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('da543cfe-a765-55f6-9116-1d0652fa62a8', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_daily_routine_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '894208d49693eeb3d37cae60f5ea069108eaf22e7b69e3697e28ae140cd6119a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fb7059b0-dd32-5f09-81d0-a4a8a4bcb579', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('da543cfe-a765-55f6-9116-1d0652fa62a8', 1), '894208d49693eeb3d37cae60f5ea069108eaf22e7b69e3697e28ae140cd6119a',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/0d651ed6b6ff57c0eb10ede69988d4aaa3e7c7fbb9ea00b3bb28e604b24a1352.mp3', 1071, '2026-09-14 03:09:50.059568', '642de6604c2f0bbc0ee1bb618d9b8d901554532cf180ce5abed44fb773725160', 'validated', '{"audio_key":"0d651ed6b6ff57c0eb10ede69988d4aaa3e7c7fbb9ea00b3bb28e604b24a1352","entity_key":"wf_daily_routine_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"642de6604c2f0bbc0ee1bb618d9b8d901554532cf180ce5abed44fb773725160","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/0d651ed6b6ff57c0eb10ede69988d4aaa3e7c7fbb9ea00b3bb28e604b24a1352.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_getting_around_05 -> audio/generated/it-IT/lexical/0f105af3aa0aa995d752960231e5c38e80c0e654683ebe3371dfe1234a0fa577.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('844a8cc6-3805-5b93-90cc-bf67f6b4df75', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_getting_around_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '867c084c65eaef56ade799fd88373190ff83f47f48b75688e550a9548d213785'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a219e0e1-6517-5f57-bc7d-f3ad8056f520', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('844a8cc6-3805-5b93-90cc-bf67f6b4df75', 1), '867c084c65eaef56ade799fd88373190ff83f47f48b75688e550a9548d213785',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/0f105af3aa0aa995d752960231e5c38e80c0e654683ebe3371dfe1234a0fa577.mp3', 914, '2026-09-14 03:09:50.559802', '65e0e05b386e4f9ed1ddd3fc7ea83e5b013b6a995b6c155c4a2abe475ca25b17', 'validated', '{"audio_key":"0f105af3aa0aa995d752960231e5c38e80c0e654683ebe3371dfe1234a0fa577","entity_key":"lx_getting_around_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"65e0e05b386e4f9ed1ddd3fc7ea83e5b013b6a995b6c155c4a2abe475ca25b17","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/0f105af3aa0aa995d752960231e5c38e80c0e654683ebe3371dfe1234a0fa577.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_getting_around_05 -> audio/generated/it-IT/lexical/0f105af3aa0aa995d752960231e5c38e80c0e654683ebe3371dfe1234a0fa577.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3f6319d0-b529-5734-b92a-53d22b12ba9a', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_getting_around_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '867c084c65eaef56ade799fd88373190ff83f47f48b75688e550a9548d213785'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5554a51b-a168-505f-8069-f06f993b997e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3f6319d0-b529-5734-b92a-53d22b12ba9a', 1), '867c084c65eaef56ade799fd88373190ff83f47f48b75688e550a9548d213785',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/0f105af3aa0aa995d752960231e5c38e80c0e654683ebe3371dfe1234a0fa577.mp3', 914, '2026-09-14 03:09:50.559802', '65e0e05b386e4f9ed1ddd3fc7ea83e5b013b6a995b6c155c4a2abe475ca25b17', 'validated', '{"audio_key":"0f105af3aa0aa995d752960231e5c38e80c0e654683ebe3371dfe1234a0fa577","entity_key":"wf_getting_around_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"65e0e05b386e4f9ed1ddd3fc7ea83e5b013b6a995b6c155c4a2abe475ca25b17","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/0f105af3aa0aa995d752960231e5c38e80c0e654683ebe3371dfe1234a0fa577.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a1_day_capstone_02 -> audio/generated/it-IT/lexical/0f2a23f5ca3a1276644ce9cd93a4c977627899700d32b670bdcaeced0b87a472.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('169438a7-da89-57a2-966a-7ebaef9bbc8c', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a1_day_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dcd2d81f921c28b11050e5ec52577293d5fc234290e90f87b5327bc5d12b9783'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5d70ce73-2cce-586e-8aec-1687f47dec47', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('169438a7-da89-57a2-966a-7ebaef9bbc8c', 1), 'dcd2d81f921c28b11050e5ec52577293d5fc234290e90f87b5327bc5d12b9783',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/0f2a23f5ca3a1276644ce9cd93a4c977627899700d32b670bdcaeced0b87a472.mp3', 1018, '2026-09-14 03:09:51.059008', 'f606575177ce761d7fd3d1f918d5c18a47331c89ef8e467f5d98fb369889fb5e', 'validated', '{"audio_key":"0f2a23f5ca3a1276644ce9cd93a4c977627899700d32b670bdcaeced0b87a472","entity_key":"lx_a1_day_capstone_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f606575177ce761d7fd3d1f918d5c18a47331c89ef8e467f5d98fb369889fb5e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/0f2a23f5ca3a1276644ce9cd93a4c977627899700d32b670bdcaeced0b87a472.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a1_day_capstone_02 -> audio/generated/it-IT/lexical/0f2a23f5ca3a1276644ce9cd93a4c977627899700d32b670bdcaeced0b87a472.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0bd0fde6-c7ca-519a-8cc7-936d2a767583', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a1_day_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dcd2d81f921c28b11050e5ec52577293d5fc234290e90f87b5327bc5d12b9783'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a886fb3a-6e7a-5eb8-b619-a7812afb05c2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0bd0fde6-c7ca-519a-8cc7-936d2a767583', 1), 'dcd2d81f921c28b11050e5ec52577293d5fc234290e90f87b5327bc5d12b9783',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/0f2a23f5ca3a1276644ce9cd93a4c977627899700d32b670bdcaeced0b87a472.mp3', 1018, '2026-09-14 03:09:51.059008', 'f606575177ce761d7fd3d1f918d5c18a47331c89ef8e467f5d98fb369889fb5e', 'validated', '{"audio_key":"0f2a23f5ca3a1276644ce9cd93a4c977627899700d32b670bdcaeced0b87a472","entity_key":"wf_a1_day_capstone_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f606575177ce761d7fd3d1f918d5c18a47331c89ef8e467f5d98fb369889fb5e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/0f2a23f5ca3a1276644ce9cd93a4c977627899700d32b670bdcaeced0b87a472.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_at_home_01 -> audio/generated/it-IT/lexical/1bd967f3915f8a6de7bd54534a1aa1a5776d0f85b8844362ee5e1e559e5993f5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c89c801c-405f-58fd-a8fe-8c5975b046d8', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_at_home_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b3813027ed2150ec3449f0716cf53c5d4a632486136365bd23e19c372884553f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f274ac54-2594-5a49-8654-9db2719b254f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c89c801c-405f-58fd-a8fe-8c5975b046d8', 1), 'b3813027ed2150ec3449f0716cf53c5d4a632486136365bd23e19c372884553f',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/1bd967f3915f8a6de7bd54534a1aa1a5776d0f85b8844362ee5e1e559e5993f5.mp3', 966, '2026-09-14 01:57:08.855589', '1611bdec4f1e420620b619619071dc4e392dd65a2390374fe488a1a3c199ed4c', 'validated', '{"audio_key":"1bd967f3915f8a6de7bd54534a1aa1a5776d0f85b8844362ee5e1e559e5993f5","entity_key":"lx_at_home_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1611bdec4f1e420620b619619071dc4e392dd65a2390374fe488a1a3c199ed4c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/1bd967f3915f8a6de7bd54534a1aa1a5776d0f85b8844362ee5e1e559e5993f5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_at_home_01 -> audio/generated/it-IT/lexical/1bd967f3915f8a6de7bd54534a1aa1a5776d0f85b8844362ee5e1e559e5993f5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('75002d85-5a7b-50c6-90cd-ef9d231956b9', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_at_home_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b3813027ed2150ec3449f0716cf53c5d4a632486136365bd23e19c372884553f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('22fa4b71-9c22-5cb4-8b10-ec7206220bdb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('75002d85-5a7b-50c6-90cd-ef9d231956b9', 1), 'b3813027ed2150ec3449f0716cf53c5d4a632486136365bd23e19c372884553f',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/1bd967f3915f8a6de7bd54534a1aa1a5776d0f85b8844362ee5e1e559e5993f5.mp3', 966, '2026-09-14 01:57:08.855589', '1611bdec4f1e420620b619619071dc4e392dd65a2390374fe488a1a3c199ed4c', 'validated', '{"audio_key":"1bd967f3915f8a6de7bd54534a1aa1a5776d0f85b8844362ee5e1e559e5993f5","entity_key":"wf_at_home_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1611bdec4f1e420620b619619071dc4e392dd65a2390374fe488a1a3c199ed4c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/1bd967f3915f8a6de7bd54534a1aa1a5776d0f85b8844362ee5e1e559e5993f5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_who_i_am_03 -> audio/generated/it-IT/lexical/1e2ae78ac39c608048f0b805edf3f48e80011663cc4ac2c1da603bd3db0f89c5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5979e465-3636-5dc2-8099-5a0a6a0f6361', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_who_i_am_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '19509e9f47ad44ba2259598fc3a33c1467dd5e5ab671a1cd9d914ccd31808ca4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('196f0faf-1c35-5990-a013-31a6c990a32f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5979e465-3636-5dc2-8099-5a0a6a0f6361', 1), '19509e9f47ad44ba2259598fc3a33c1467dd5e5ab671a1cd9d914ccd31808ca4',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/1e2ae78ac39c608048f0b805edf3f48e80011663cc4ac2c1da603bd3db0f89c5.mp3', 1332, '2026-09-14 03:09:51.561887', 'd486c8ba0a895dce55db12974c6045c199ff4ea3a12c7c7862178da790b8d1e4', 'validated', '{"audio_key":"1e2ae78ac39c608048f0b805edf3f48e80011663cc4ac2c1da603bd3db0f89c5","entity_key":"lx_who_i_am_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d486c8ba0a895dce55db12974c6045c199ff4ea3a12c7c7862178da790b8d1e4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/1e2ae78ac39c608048f0b805edf3f48e80011663cc4ac2c1da603bd3db0f89c5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_who_i_am_03 -> audio/generated/it-IT/lexical/1e2ae78ac39c608048f0b805edf3f48e80011663cc4ac2c1da603bd3db0f89c5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9645bbd1-2cc4-5c24-83e1-7477362f42fb', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_who_i_am_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '19509e9f47ad44ba2259598fc3a33c1467dd5e5ab671a1cd9d914ccd31808ca4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2fcfdc7b-d069-5f33-8a1d-43aa9ceb63ab', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9645bbd1-2cc4-5c24-83e1-7477362f42fb', 1), '19509e9f47ad44ba2259598fc3a33c1467dd5e5ab671a1cd9d914ccd31808ca4',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/1e2ae78ac39c608048f0b805edf3f48e80011663cc4ac2c1da603bd3db0f89c5.mp3', 1332, '2026-09-14 03:09:51.561887', 'd486c8ba0a895dce55db12974c6045c199ff4ea3a12c7c7862178da790b8d1e4', 'validated', '{"audio_key":"1e2ae78ac39c608048f0b805edf3f48e80011663cc4ac2c1da603bd3db0f89c5","entity_key":"wf_who_i_am_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d486c8ba0a895dce55db12974c6045c199ff4ea3a12c7c7862178da790b8d1e4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/1e2ae78ac39c608048f0b805edf3f48e80011663cc4ac2c1da603bd3db0f89c5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_articles_and_objects_03 -> audio/generated/it-IT/lexical/1e36de8311922e93360131c1a2718e39abdc67c911abaae58a73156bf3a6bb24.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('043f5280-79b6-56c6-a6fd-5f0c3717c6ff', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_articles_and_objects_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7503ee52b989df37f56c5676a10c820929736e7e6665cec00f412c9c960ab89a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('925b5643-00e8-5345-945f-2de4038668d4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('043f5280-79b6-56c6-a6fd-5f0c3717c6ff', 1), '7503ee52b989df37f56c5676a10c820929736e7e6665cec00f412c9c960ab89a',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/1e36de8311922e93360131c1a2718e39abdc67c911abaae58a73156bf3a6bb24.mp3', 1071, '2026-09-14 01:57:09.794999', '5666ad1d8bfaf990bc1c9c060265854af7320096cc51f23bfdc740683617839a', 'validated', '{"audio_key":"1e36de8311922e93360131c1a2718e39abdc67c911abaae58a73156bf3a6bb24","entity_key":"lx_articles_and_objects_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"5666ad1d8bfaf990bc1c9c060265854af7320096cc51f23bfdc740683617839a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/1e36de8311922e93360131c1a2718e39abdc67c911abaae58a73156bf3a6bb24.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_articles_and_objects_03 -> audio/generated/it-IT/lexical/1e36de8311922e93360131c1a2718e39abdc67c911abaae58a73156bf3a6bb24.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b211a460-8791-512f-bf79-58df41d1258f', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_articles_and_objects_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7503ee52b989df37f56c5676a10c820929736e7e6665cec00f412c9c960ab89a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b82a1b14-5ee0-5065-a34c-bda68d45b1c7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b211a460-8791-512f-bf79-58df41d1258f', 1), '7503ee52b989df37f56c5676a10c820929736e7e6665cec00f412c9c960ab89a',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/1e36de8311922e93360131c1a2718e39abdc67c911abaae58a73156bf3a6bb24.mp3', 1071, '2026-09-14 01:57:09.794999', '5666ad1d8bfaf990bc1c9c060265854af7320096cc51f23bfdc740683617839a', 'validated', '{"audio_key":"1e36de8311922e93360131c1a2718e39abdc67c911abaae58a73156bf3a6bb24","entity_key":"wf_articles_and_objects_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"5666ad1d8bfaf990bc1c9c060265854af7320096cc51f23bfdc740683617839a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/1e36de8311922e93360131c1a2718e39abdc67c911abaae58a73156bf3a6bb24.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_daily_routine_05 -> audio/generated/it-IT/lexical/1fb08ea72c9028d74c59f2f6e54fc4c153be27b7e26ead608dcc4066c92128a9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0cdb6873-43df-5aa4-9aac-c8c22a04b954', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_daily_routine_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1f7330d04cde8888b615475ca8d8479215d460cedbd970294f1e9671e2f09601'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('31a09e04-14af-5ef2-aca4-df0112dc11f2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0cdb6873-43df-5aa4-9aac-c8c22a04b954', 1), '1f7330d04cde8888b615475ca8d8479215d460cedbd970294f1e9671e2f09601',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/1fb08ea72c9028d74c59f2f6e54fc4c153be27b7e26ead608dcc4066c92128a9.mp3', 835, '2026-09-14 03:09:52.046929', '9f09911335a55e0df0f739289c09f970fe412feddc26a7db925a57080a1734b2', 'validated', '{"audio_key":"1fb08ea72c9028d74c59f2f6e54fc4c153be27b7e26ead608dcc4066c92128a9","entity_key":"lx_daily_routine_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"9f09911335a55e0df0f739289c09f970fe412feddc26a7db925a57080a1734b2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/1fb08ea72c9028d74c59f2f6e54fc4c153be27b7e26ead608dcc4066c92128a9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_daily_routine_05 -> audio/generated/it-IT/lexical/1fb08ea72c9028d74c59f2f6e54fc4c153be27b7e26ead608dcc4066c92128a9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('453a6169-50d1-5f84-a21e-2588f809dd85', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_daily_routine_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1f7330d04cde8888b615475ca8d8479215d460cedbd970294f1e9671e2f09601'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a25dfd8d-3499-5d4f-b9ee-67a87dceaaa2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('453a6169-50d1-5f84-a21e-2588f809dd85', 1), '1f7330d04cde8888b615475ca8d8479215d460cedbd970294f1e9671e2f09601',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/1fb08ea72c9028d74c59f2f6e54fc4c153be27b7e26ead608dcc4066c92128a9.mp3', 835, '2026-09-14 03:09:52.046929', '9f09911335a55e0df0f739289c09f970fe412feddc26a7db925a57080a1734b2', 'validated', '{"audio_key":"1fb08ea72c9028d74c59f2f6e54fc4c153be27b7e26ead608dcc4066c92128a9","entity_key":"wf_daily_routine_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"9f09911335a55e0df0f739289c09f970fe412feddc26a7db925a57080a1734b2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/1fb08ea72c9028d74c59f2f6e54fc4c153be27b7e26ead608dcc4066c92128a9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_time_and_plans_03 -> audio/generated/it-IT/lexical/2d9df26218ee3e0d586948f83c901d77442c5f987b124d5a3eb433d0e2c7bc3a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8b16aa60-0fbb-5f33-b488-c993219b707d', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_time_and_plans_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e6156fff6bb346069e8e78dac247a5f3cc5aa7795890fe00cbd8c7c535bc4cb0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0643147c-eb83-52bb-ab19-ad27d83c1966', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8b16aa60-0fbb-5f33-b488-c993219b707d', 1), 'e6156fff6bb346069e8e78dac247a5f3cc5aa7795890fe00cbd8c7c535bc4cb0',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/2d9df26218ee3e0d586948f83c901d77442c5f987b124d5a3eb433d0e2c7bc3a.mp3', 914, '2026-09-14 03:09:52.556916', '0fe499daa4dc816268be15ee4a120d3cadfa57f402b643f9ad82329367e0a5fd', 'validated', '{"audio_key":"2d9df26218ee3e0d586948f83c901d77442c5f987b124d5a3eb433d0e2c7bc3a","entity_key":"lx_time_and_plans_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"0fe499daa4dc816268be15ee4a120d3cadfa57f402b643f9ad82329367e0a5fd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/2d9df26218ee3e0d586948f83c901d77442c5f987b124d5a3eb433d0e2c7bc3a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_time_and_plans_03 -> audio/generated/it-IT/lexical/2d9df26218ee3e0d586948f83c901d77442c5f987b124d5a3eb433d0e2c7bc3a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2439a133-b598-52c5-bb93-bdf378c6bb75', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_time_and_plans_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e6156fff6bb346069e8e78dac247a5f3cc5aa7795890fe00cbd8c7c535bc4cb0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3d9fcfb2-d541-5755-a5f4-b99ddc1acea2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2439a133-b598-52c5-bb93-bdf378c6bb75', 1), 'e6156fff6bb346069e8e78dac247a5f3cc5aa7795890fe00cbd8c7c535bc4cb0',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/2d9df26218ee3e0d586948f83c901d77442c5f987b124d5a3eb433d0e2c7bc3a.mp3', 914, '2026-09-14 03:09:52.556916', '0fe499daa4dc816268be15ee4a120d3cadfa57f402b643f9ad82329367e0a5fd', 'validated', '{"audio_key":"2d9df26218ee3e0d586948f83c901d77442c5f987b124d5a3eb433d0e2c7bc3a","entity_key":"wf_time_and_plans_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"0fe499daa4dc816268be15ee4a120d3cadfa57f402b643f9ad82329367e0a5fd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/2d9df26218ee3e0d586948f83c901d77442c5f987b124d5a3eb433d0e2c7bc3a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_daily_routine_04 -> audio/generated/it-IT/lexical/300375a151b6cd4f23c212db40a8ebe54a2bf099f0a707c2379f2db9afe9548e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('75f7d369-11c0-5c3b-a43c-868b503f9d79', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_daily_routine_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '61f55c0e363d85278ddcfad9c98babcee6a09b8180ccb8d31dc9d2a9477f0cbd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7f469f17-ea8c-5ca2-9028-b0b1121203f9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('75f7d369-11c0-5c3b-a43c-868b503f9d79', 1), '61f55c0e363d85278ddcfad9c98babcee6a09b8180ccb8d31dc9d2a9477f0cbd',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/300375a151b6cd4f23c212db40a8ebe54a2bf099f0a707c2379f2db9afe9548e.mp3', 966, '2026-09-14 03:09:53.066925', '6e5750a20b4e5f772caf63ff80f516e0e1f3b0acc82f67fc4214a15d5dfc2123', 'validated', '{"audio_key":"300375a151b6cd4f23c212db40a8ebe54a2bf099f0a707c2379f2db9afe9548e","entity_key":"lx_daily_routine_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"6e5750a20b4e5f772caf63ff80f516e0e1f3b0acc82f67fc4214a15d5dfc2123","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/300375a151b6cd4f23c212db40a8ebe54a2bf099f0a707c2379f2db9afe9548e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_daily_routine_04 -> audio/generated/it-IT/lexical/300375a151b6cd4f23c212db40a8ebe54a2bf099f0a707c2379f2db9afe9548e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('91abe981-a211-53b3-8a0d-df4aa9510ccb', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_daily_routine_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '61f55c0e363d85278ddcfad9c98babcee6a09b8180ccb8d31dc9d2a9477f0cbd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9d854919-7847-5663-a57c-2490df1bfe05', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('91abe981-a211-53b3-8a0d-df4aa9510ccb', 1), '61f55c0e363d85278ddcfad9c98babcee6a09b8180ccb8d31dc9d2a9477f0cbd',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/300375a151b6cd4f23c212db40a8ebe54a2bf099f0a707c2379f2db9afe9548e.mp3', 966, '2026-09-14 03:09:53.066925', '6e5750a20b4e5f772caf63ff80f516e0e1f3b0acc82f67fc4214a15d5dfc2123', 'validated', '{"audio_key":"300375a151b6cd4f23c212db40a8ebe54a2bf099f0a707c2379f2db9afe9548e","entity_key":"wf_daily_routine_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"6e5750a20b4e5f772caf63ff80f516e0e1f3b0acc82f67fc4214a15d5dfc2123","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/300375a151b6cd4f23c212db40a8ebe54a2bf099f0a707c2379f2db9afe9548e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_getting_around_03 -> audio/generated/it-IT/lexical/3286bb9d7073d589a1bfd11836c30e6f87c24c65a17e4b5ab6bd1d5a43765a9b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('65c3ecf1-12d8-5fbd-98ef-bdf83bc45afb', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_getting_around_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1f580bb27589a391d83d35d35ebb2ae6a5d12c3b01326a52f45f16a675e68b10'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('12b4d6d4-b596-5574-b66e-d5c6b4e918cd', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('65c3ecf1-12d8-5fbd-98ef-bdf83bc45afb', 1), '1f580bb27589a391d83d35d35ebb2ae6a5d12c3b01326a52f45f16a675e68b10',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/3286bb9d7073d589a1bfd11836c30e6f87c24c65a17e4b5ab6bd1d5a43765a9b.mp3', 1071, '2026-09-14 03:09:53.569116', '93b8c227e394f9f41434b0e5d3f2ef0ff8e131ed901f84b3e66e51fb4c97612e', 'validated', '{"audio_key":"3286bb9d7073d589a1bfd11836c30e6f87c24c65a17e4b5ab6bd1d5a43765a9b","entity_key":"lx_getting_around_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"93b8c227e394f9f41434b0e5d3f2ef0ff8e131ed901f84b3e66e51fb4c97612e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/3286bb9d7073d589a1bfd11836c30e6f87c24c65a17e4b5ab6bd1d5a43765a9b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_getting_around_03 -> audio/generated/it-IT/lexical/3286bb9d7073d589a1bfd11836c30e6f87c24c65a17e4b5ab6bd1d5a43765a9b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('349cb8c0-b816-5c93-b3fd-d16739dec624', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_getting_around_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1f580bb27589a391d83d35d35ebb2ae6a5d12c3b01326a52f45f16a675e68b10'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6a4af94a-4100-5e51-9925-3cfc07a3de36', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('349cb8c0-b816-5c93-b3fd-d16739dec624', 1), '1f580bb27589a391d83d35d35ebb2ae6a5d12c3b01326a52f45f16a675e68b10',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/3286bb9d7073d589a1bfd11836c30e6f87c24c65a17e4b5ab6bd1d5a43765a9b.mp3', 1071, '2026-09-14 03:09:53.569116', '93b8c227e394f9f41434b0e5d3f2ef0ff8e131ed901f84b3e66e51fb4c97612e', 'validated', '{"audio_key":"3286bb9d7073d589a1bfd11836c30e6f87c24c65a17e4b5ab6bd1d5a43765a9b","entity_key":"wf_getting_around_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"93b8c227e394f9f41434b0e5d3f2ef0ff8e131ed901f84b3e66e51fb4c97612e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/3286bb9d7073d589a1bfd11836c30e6f87c24c65a17e4b5ab6bd1d5a43765a9b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_who_i_am_04 -> audio/generated/it-IT/lexical/3346d5dbecba313d2118a650fea09a7738c2af6d89849910ea3c58b3457d82bc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f134c2f4-3adc-5ae0-8035-a11464f0caea', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_who_i_am_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2cb4c2ac5779606a1fc2ff523ddacb4fd3a31294935a676b44c8e5a966586c5a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('46886ec0-b6dd-5719-97d8-c5702c44a8f8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f134c2f4-3adc-5ae0-8035-a11464f0caea', 1), '2cb4c2ac5779606a1fc2ff523ddacb4fd3a31294935a676b44c8e5a966586c5a',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/3346d5dbecba313d2118a650fea09a7738c2af6d89849910ea3c58b3457d82bc.mp3', 1071, '2026-09-14 01:57:13.593017', 'ff7aaa0416e513f7c1ea3fac625a374f0ed16ab85c7d4a069220b16771a1c8b1', 'validated', '{"audio_key":"3346d5dbecba313d2118a650fea09a7738c2af6d89849910ea3c58b3457d82bc","entity_key":"lx_who_i_am_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ff7aaa0416e513f7c1ea3fac625a374f0ed16ab85c7d4a069220b16771a1c8b1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/3346d5dbecba313d2118a650fea09a7738c2af6d89849910ea3c58b3457d82bc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_who_i_am_04 -> audio/generated/it-IT/lexical/3346d5dbecba313d2118a650fea09a7738c2af6d89849910ea3c58b3457d82bc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fa6e637e-997c-544f-854a-e3a3d00b0ac1', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_who_i_am_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2cb4c2ac5779606a1fc2ff523ddacb4fd3a31294935a676b44c8e5a966586c5a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('33440b49-8c44-5096-9e24-ed202c02e286', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fa6e637e-997c-544f-854a-e3a3d00b0ac1', 1), '2cb4c2ac5779606a1fc2ff523ddacb4fd3a31294935a676b44c8e5a966586c5a',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/3346d5dbecba313d2118a650fea09a7738c2af6d89849910ea3c58b3457d82bc.mp3', 1071, '2026-09-14 01:57:13.593017', 'ff7aaa0416e513f7c1ea3fac625a374f0ed16ab85c7d4a069220b16771a1c8b1', 'validated', '{"audio_key":"3346d5dbecba313d2118a650fea09a7738c2af6d89849910ea3c58b3457d82bc","entity_key":"wf_who_i_am_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ff7aaa0416e513f7c1ea3fac625a374f0ed16ab85c7d4a069220b16771a1c8b1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/3346d5dbecba313d2118a650fea09a7738c2af6d89849910ea3c58b3457d82bc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_at_home_06 -> audio/generated/it-IT/lexical/3589e85b183124c9584a1781013b404c8778a26bd2c74d3485757090fb3f5d0a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8d220273-5f6a-54bf-83f8-c31bbc40a046', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_at_home_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '760176194068f3029466de5c06f1faa6471a566c66eda866e984f0ca6674d96f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bcfab50a-2739-5bdc-a537-0b2516ee7f0a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8d220273-5f6a-54bf-83f8-c31bbc40a046', 1), '760176194068f3029466de5c06f1faa6471a566c66eda866e984f0ca6674d96f',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/3589e85b183124c9584a1781013b404c8778a26bd2c74d3485757090fb3f5d0a.mp3', 783, '2026-09-14 01:57:14.155217', 'ff74ab72c1d7289041419fde2ef6faf07a0eeca1c8388a3846a6974bf0c7ec30', 'validated', '{"audio_key":"3589e85b183124c9584a1781013b404c8778a26bd2c74d3485757090fb3f5d0a","entity_key":"lx_at_home_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ff74ab72c1d7289041419fde2ef6faf07a0eeca1c8388a3846a6974bf0c7ec30","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/3589e85b183124c9584a1781013b404c8778a26bd2c74d3485757090fb3f5d0a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_at_home_06 -> audio/generated/it-IT/lexical/3589e85b183124c9584a1781013b404c8778a26bd2c74d3485757090fb3f5d0a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e56dd78e-60b1-5840-9318-d855172d44c8', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_at_home_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '760176194068f3029466de5c06f1faa6471a566c66eda866e984f0ca6674d96f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9d123a58-4b26-56e2-a4dc-6eccd413cbe3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e56dd78e-60b1-5840-9318-d855172d44c8', 1), '760176194068f3029466de5c06f1faa6471a566c66eda866e984f0ca6674d96f',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/3589e85b183124c9584a1781013b404c8778a26bd2c74d3485757090fb3f5d0a.mp3', 783, '2026-09-14 01:57:14.155217', 'ff74ab72c1d7289041419fde2ef6faf07a0eeca1c8388a3846a6974bf0c7ec30', 'validated', '{"audio_key":"3589e85b183124c9584a1781013b404c8778a26bd2c74d3485757090fb3f5d0a","entity_key":"wf_at_home_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ff74ab72c1d7289041419fde2ef6faf07a0eeca1c8388a3846a6974bf0c7ec30","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/3589e85b183124c9584a1781013b404c8778a26bd2c74d3485757090fb3f5d0a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_time_and_plans_04 -> audio/generated/it-IT/lexical/3eb37052f6d9acad6be01fd848a2ce72fa241db8bd90f6d1c31d545db1361926.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('73ae8d9a-ebf2-5379-82a7-ca1403cbc717', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_time_and_plans_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '195277ce6b2ab1a4f6392b39674e99451773c6d10261b5b0154c57800bb9e4f3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('662b5d22-34d2-521f-bbe0-257dd15a84e8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('73ae8d9a-ebf2-5379-82a7-ca1403cbc717', 1), '195277ce6b2ab1a4f6392b39674e99451773c6d10261b5b0154c57800bb9e4f3',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/3eb37052f6d9acad6be01fd848a2ce72fa241db8bd90f6d1c31d545db1361926.mp3', 1018, '2026-09-14 03:09:54.039533', 'f5a649d5c65fc19c951ca2602d55d377b51b239e6d1f30969944af7af250b22a', 'validated', '{"audio_key":"3eb37052f6d9acad6be01fd848a2ce72fa241db8bd90f6d1c31d545db1361926","entity_key":"lx_time_and_plans_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f5a649d5c65fc19c951ca2602d55d377b51b239e6d1f30969944af7af250b22a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/3eb37052f6d9acad6be01fd848a2ce72fa241db8bd90f6d1c31d545db1361926.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_time_and_plans_04 -> audio/generated/it-IT/lexical/3eb37052f6d9acad6be01fd848a2ce72fa241db8bd90f6d1c31d545db1361926.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7667cd2c-9916-5726-9d33-98cf7605f38d', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_time_and_plans_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '195277ce6b2ab1a4f6392b39674e99451773c6d10261b5b0154c57800bb9e4f3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0380c6f6-51f6-5ddf-978a-66dc5c696c9d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7667cd2c-9916-5726-9d33-98cf7605f38d', 1), '195277ce6b2ab1a4f6392b39674e99451773c6d10261b5b0154c57800bb9e4f3',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/3eb37052f6d9acad6be01fd848a2ce72fa241db8bd90f6d1c31d545db1361926.mp3', 1018, '2026-09-14 03:09:54.039533', 'f5a649d5c65fc19c951ca2602d55d377b51b239e6d1f30969944af7af250b22a', 'validated', '{"audio_key":"3eb37052f6d9acad6be01fd848a2ce72fa241db8bd90f6d1c31d545db1361926","entity_key":"wf_time_and_plans_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f5a649d5c65fc19c951ca2602d55d377b51b239e6d1f30969944af7af250b22a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/3eb37052f6d9acad6be01fd848a2ce72fa241db8bd90f6d1c31d545db1361926.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_shopping_basics_04 -> audio/generated/it-IT/lexical/3f88d770510f10cc03604282fc318013401d1fdb121ddc6cb942da707fc4055e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('117a48b2-261e-56ca-b9dd-d5846cd66668', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_shopping_basics_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c2830116e7f5e5308cb118d3d138a8da830f4b74baef0b1abef4acb168c3b7d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ba68821d-81f8-58cd-aef3-9df43cf040d3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('117a48b2-261e-56ca-b9dd-d5846cd66668', 1), '2c2830116e7f5e5308cb118d3d138a8da830f4b74baef0b1abef4acb168c3b7d',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/3f88d770510f10cc03604282fc318013401d1fdb121ddc6cb942da707fc4055e.mp3', 1149, '2026-09-14 03:09:54.556071', '9dbdd526073773a33cb03c9f36956a47cf92f34a16ac5595413d61a6d10b5743', 'validated', '{"audio_key":"3f88d770510f10cc03604282fc318013401d1fdb121ddc6cb942da707fc4055e","entity_key":"lx_shopping_basics_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"9dbdd526073773a33cb03c9f36956a47cf92f34a16ac5595413d61a6d10b5743","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/3f88d770510f10cc03604282fc318013401d1fdb121ddc6cb942da707fc4055e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_shopping_basics_04 -> audio/generated/it-IT/lexical/3f88d770510f10cc03604282fc318013401d1fdb121ddc6cb942da707fc4055e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5c4e4a8b-32df-589f-9846-045f71ca581a', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_shopping_basics_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c2830116e7f5e5308cb118d3d138a8da830f4b74baef0b1abef4acb168c3b7d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7042f963-c438-5c5a-8a46-15cf72bb44da', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5c4e4a8b-32df-589f-9846-045f71ca581a', 1), '2c2830116e7f5e5308cb118d3d138a8da830f4b74baef0b1abef4acb168c3b7d',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/3f88d770510f10cc03604282fc318013401d1fdb121ddc6cb942da707fc4055e.mp3', 1149, '2026-09-14 03:09:54.556071', '9dbdd526073773a33cb03c9f36956a47cf92f34a16ac5595413d61a6d10b5743', 'validated', '{"audio_key":"3f88d770510f10cc03604282fc318013401d1fdb121ddc6cb942da707fc4055e","entity_key":"wf_shopping_basics_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"9dbdd526073773a33cb03c9f36956a47cf92f34a16ac5595413d61a6d10b5743","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/3f88d770510f10cc03604282fc318013401d1fdb121ddc6cb942da707fc4055e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_at_the_cafe_06 -> audio/generated/it-IT/lexical/4705eab7db6f71d28760ca0e5d4778d89a9545041a67b38606222543ef0fc31f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('435f3ba3-f076-5d43-b223-4b0ab111a7cd', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_at_the_cafe_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'afc14cc48691d5be8a930a964d47d382e35d00effb121da0d1d290ae57519744'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('db86ac0c-23dc-50bc-affa-32c0d69dea65', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('435f3ba3-f076-5d43-b223-4b0ab111a7cd', 1), 'afc14cc48691d5be8a930a964d47d382e35d00effb121da0d1d290ae57519744',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/4705eab7db6f71d28760ca0e5d4778d89a9545041a67b38606222543ef0fc31f.mp3', 1018, '2026-09-14 03:09:55.009239', 'd8540c5f4873d107102cfe8af997c24806e816eabb7ec5329ae4cd007f6960e5', 'validated', '{"audio_key":"4705eab7db6f71d28760ca0e5d4778d89a9545041a67b38606222543ef0fc31f","entity_key":"lx_at_the_cafe_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d8540c5f4873d107102cfe8af997c24806e816eabb7ec5329ae4cd007f6960e5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/4705eab7db6f71d28760ca0e5d4778d89a9545041a67b38606222543ef0fc31f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_at_the_cafe_06 -> audio/generated/it-IT/lexical/4705eab7db6f71d28760ca0e5d4778d89a9545041a67b38606222543ef0fc31f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('51bc0f56-24be-5d95-96a0-e83daf8cbb13', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_at_the_cafe_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'afc14cc48691d5be8a930a964d47d382e35d00effb121da0d1d290ae57519744'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0c2aaf0a-9eef-58a2-ae92-689fba2e5ebc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('51bc0f56-24be-5d95-96a0-e83daf8cbb13', 1), 'afc14cc48691d5be8a930a964d47d382e35d00effb121da0d1d290ae57519744',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/4705eab7db6f71d28760ca0e5d4778d89a9545041a67b38606222543ef0fc31f.mp3', 1018, '2026-09-14 03:09:55.009239', 'd8540c5f4873d107102cfe8af997c24806e816eabb7ec5329ae4cd007f6960e5', 'validated', '{"audio_key":"4705eab7db6f71d28760ca0e5d4778d89a9545041a67b38606222543ef0fc31f","entity_key":"wf_at_the_cafe_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d8540c5f4873d107102cfe8af997c24806e816eabb7ec5329ae4cd007f6960e5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/4705eab7db6f71d28760ca0e5d4778d89a9545041a67b38606222543ef0fc31f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_articles_and_objects_04 -> audio/generated/it-IT/lexical/47612971fad6cf63c423017e1e76e8820827382a6ec47f4ec3779d3f5cd7bb9c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d6d403c7-1c28-52cf-9aa4-2eddc18eec7f', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_articles_and_objects_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '68bca10eea2ba33f6f15a6ab0c7df2a49051a6541f9118d468b0585d5d60398b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e4a718fe-9e04-5d24-8520-9ac2faad9793', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d6d403c7-1c28-52cf-9aa4-2eddc18eec7f', 1), '68bca10eea2ba33f6f15a6ab0c7df2a49051a6541f9118d468b0585d5d60398b',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/47612971fad6cf63c423017e1e76e8820827382a6ec47f4ec3779d3f5cd7bb9c.mp3', 914, '2026-09-14 03:09:55.532710', '0e2cecdffa5e0fd3f49ac92ebb7c78bf0c9b87e40870d0cf512acb19b1695148', 'validated', '{"audio_key":"47612971fad6cf63c423017e1e76e8820827382a6ec47f4ec3779d3f5cd7bb9c","entity_key":"lx_articles_and_objects_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"0e2cecdffa5e0fd3f49ac92ebb7c78bf0c9b87e40870d0cf512acb19b1695148","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/47612971fad6cf63c423017e1e76e8820827382a6ec47f4ec3779d3f5cd7bb9c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_articles_and_objects_04 -> audio/generated/it-IT/lexical/47612971fad6cf63c423017e1e76e8820827382a6ec47f4ec3779d3f5cd7bb9c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a457151d-5096-540b-b40f-89995bbc60ef', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_articles_and_objects_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '68bca10eea2ba33f6f15a6ab0c7df2a49051a6541f9118d468b0585d5d60398b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('59d28149-df48-53f5-8518-0c7827bb90d5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a457151d-5096-540b-b40f-89995bbc60ef', 1), '68bca10eea2ba33f6f15a6ab0c7df2a49051a6541f9118d468b0585d5d60398b',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/47612971fad6cf63c423017e1e76e8820827382a6ec47f4ec3779d3f5cd7bb9c.mp3', 914, '2026-09-14 03:09:55.532710', '0e2cecdffa5e0fd3f49ac92ebb7c78bf0c9b87e40870d0cf512acb19b1695148', 'validated', '{"audio_key":"47612971fad6cf63c423017e1e76e8820827382a6ec47f4ec3779d3f5cd7bb9c","entity_key":"wf_articles_and_objects_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"0e2cecdffa5e0fd3f49ac92ebb7c78bf0c9b87e40870d0cf512acb19b1695148","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/47612971fad6cf63c423017e1e76e8820827382a6ec47f4ec3779d3f5cd7bb9c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_at_home_03 -> audio/generated/it-IT/lexical/4825f4a41cadfccad201c3a5a2beacaa3641702dc50be778bcc359bd88c13066.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0986b2e1-85be-5fe1-aa4e-6355f071375b', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_at_home_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '46b4eb8144194bab6b3f965c7e219258f71aed7475e005b8312e22cd5ee679d7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('843d1fb7-9fc9-54cc-b5fa-0d8671101611', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0986b2e1-85be-5fe1-aa4e-6355f071375b', 1), '46b4eb8144194bab6b3f965c7e219258f71aed7475e005b8312e22cd5ee679d7',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/4825f4a41cadfccad201c3a5a2beacaa3641702dc50be778bcc359bd88c13066.mp3', 1018, '2026-09-14 03:09:55.982499', '9b8332b3030a2e559fe304fe18758f4fbd447187e5fea96b83e523f752044dfc', 'validated', '{"audio_key":"4825f4a41cadfccad201c3a5a2beacaa3641702dc50be778bcc359bd88c13066","entity_key":"lx_at_home_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"9b8332b3030a2e559fe304fe18758f4fbd447187e5fea96b83e523f752044dfc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/4825f4a41cadfccad201c3a5a2beacaa3641702dc50be778bcc359bd88c13066.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_at_home_03 -> audio/generated/it-IT/lexical/4825f4a41cadfccad201c3a5a2beacaa3641702dc50be778bcc359bd88c13066.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6dd11712-4aa5-5e50-b8d8-5df30efd8500', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_at_home_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '46b4eb8144194bab6b3f965c7e219258f71aed7475e005b8312e22cd5ee679d7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('89af0356-5bb9-5609-9ced-8c3335d91895', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6dd11712-4aa5-5e50-b8d8-5df30efd8500', 1), '46b4eb8144194bab6b3f965c7e219258f71aed7475e005b8312e22cd5ee679d7',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/4825f4a41cadfccad201c3a5a2beacaa3641702dc50be778bcc359bd88c13066.mp3', 1018, '2026-09-14 03:09:55.982499', '9b8332b3030a2e559fe304fe18758f4fbd447187e5fea96b83e523f752044dfc', 'validated', '{"audio_key":"4825f4a41cadfccad201c3a5a2beacaa3641702dc50be778bcc359bd88c13066","entity_key":"wf_at_home_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"9b8332b3030a2e559fe304fe18758f4fbd447187e5fea96b83e523f752044dfc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/4825f4a41cadfccad201c3a5a2beacaa3641702dc50be778bcc359bd88c13066.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_time_and_plans_02 -> audio/generated/it-IT/lexical/4eb1a32ffcd446036206517f6056e396aa23ebf5a63657295dbbf8f3df9c0339.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('051002dd-a682-549e-86b0-68db16516ef4', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_time_and_plans_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7efe20901f083179f88567019725aea8275355dea2bd087c2243b0cee4a96824'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('548a00f8-84bf-5391-b2ef-8d86b8cb2526', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('051002dd-a682-549e-86b0-68db16516ef4', 1), '7efe20901f083179f88567019725aea8275355dea2bd087c2243b0cee4a96824',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/4eb1a32ffcd446036206517f6056e396aa23ebf5a63657295dbbf8f3df9c0339.mp3', 835, '2026-09-14 01:57:17.346776', '96cb0d6108464545e04dfda214635e12cbde6044fc73736bca6827f12c493546', 'validated', '{"audio_key":"4eb1a32ffcd446036206517f6056e396aa23ebf5a63657295dbbf8f3df9c0339","entity_key":"lx_time_and_plans_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"96cb0d6108464545e04dfda214635e12cbde6044fc73736bca6827f12c493546","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/4eb1a32ffcd446036206517f6056e396aa23ebf5a63657295dbbf8f3df9c0339.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_time_and_plans_02 -> audio/generated/it-IT/lexical/4eb1a32ffcd446036206517f6056e396aa23ebf5a63657295dbbf8f3df9c0339.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('44b9564c-d63e-5772-a005-9e46b46efc32', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_time_and_plans_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7efe20901f083179f88567019725aea8275355dea2bd087c2243b0cee4a96824'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6f69b679-8f94-5e0b-982f-385e1a608a9c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('44b9564c-d63e-5772-a005-9e46b46efc32', 1), '7efe20901f083179f88567019725aea8275355dea2bd087c2243b0cee4a96824',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/4eb1a32ffcd446036206517f6056e396aa23ebf5a63657295dbbf8f3df9c0339.mp3', 835, '2026-09-14 01:57:17.346776', '96cb0d6108464545e04dfda214635e12cbde6044fc73736bca6827f12c493546', 'validated', '{"audio_key":"4eb1a32ffcd446036206517f6056e396aa23ebf5a63657295dbbf8f3df9c0339","entity_key":"wf_time_and_plans_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"96cb0d6108464545e04dfda214635e12cbde6044fc73736bca6827f12c493546","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/4eb1a32ffcd446036206517f6056e396aa23ebf5a63657295dbbf8f3df9c0339.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_getting_around_02 -> audio/generated/it-IT/lexical/505c178982f03f5329960cb7fa0aa5e9e4a549d6730e962ca382c74d21f499de.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('909af95a-fecd-5f3a-9451-7c406da384c4', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_getting_around_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '222182aa2d1e1d548e8879371cd6b91cfc086231dffe19505b40f079077180b7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('caa801ca-4f1a-5d16-9193-3c0efe7a26d3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('909af95a-fecd-5f3a-9451-7c406da384c4', 1), '222182aa2d1e1d548e8879371cd6b91cfc086231dffe19505b40f079077180b7',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/505c178982f03f5329960cb7fa0aa5e9e4a549d6730e962ca382c74d21f499de.mp3', 1253, '2026-09-14 03:09:56.543475', 'd14c3f4fb3978cca802c4f2f2048c526a9282f9742f1d2db721d26c136015592', 'validated', '{"audio_key":"505c178982f03f5329960cb7fa0aa5e9e4a549d6730e962ca382c74d21f499de","entity_key":"lx_getting_around_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d14c3f4fb3978cca802c4f2f2048c526a9282f9742f1d2db721d26c136015592","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/505c178982f03f5329960cb7fa0aa5e9e4a549d6730e962ca382c74d21f499de.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_getting_around_02 -> audio/generated/it-IT/lexical/505c178982f03f5329960cb7fa0aa5e9e4a549d6730e962ca382c74d21f499de.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d8f3a4a8-d913-5241-93f9-f7d0a678e173', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_getting_around_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '222182aa2d1e1d548e8879371cd6b91cfc086231dffe19505b40f079077180b7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('76a39d69-0111-5b0f-8b3d-79ca658c1366', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d8f3a4a8-d913-5241-93f9-f7d0a678e173', 1), '222182aa2d1e1d548e8879371cd6b91cfc086231dffe19505b40f079077180b7',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/505c178982f03f5329960cb7fa0aa5e9e4a549d6730e962ca382c74d21f499de.mp3', 1253, '2026-09-14 03:09:56.543475', 'd14c3f4fb3978cca802c4f2f2048c526a9282f9742f1d2db721d26c136015592', 'validated', '{"audio_key":"505c178982f03f5329960cb7fa0aa5e9e4a549d6730e962ca382c74d21f499de","entity_key":"wf_getting_around_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d14c3f4fb3978cca802c4f2f2048c526a9282f9742f1d2db721d26c136015592","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/505c178982f03f5329960cb7fa0aa5e9e4a549d6730e962ca382c74d21f499de.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_daily_routine_01 -> audio/generated/it-IT/lexical/5769c6d89174a3b2882fd2935bfa42c1e3e4aaf4d488b8138434f0b6d6822f3b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9fe7a1e4-bdf0-5d6c-8ebc-a6d03ac16607', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_daily_routine_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '117be8d69b16af50728a4a7072d43ae6e3535b4fdc5dc4321534aeec50b20b93'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('32186394-6242-5610-83ad-f5c514a91c0a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9fe7a1e4-bdf0-5d6c-8ebc-a6d03ac16607', 1), '117be8d69b16af50728a4a7072d43ae6e3535b4fdc5dc4321534aeec50b20b93',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/5769c6d89174a3b2882fd2935bfa42c1e3e4aaf4d488b8138434f0b6d6822f3b.mp3', 1071, '2026-09-14 03:09:56.990966', 'e07307117e155803b9681916683cd99de8fcd13a4b9b344919a25e188878bd3d', 'validated', '{"audio_key":"5769c6d89174a3b2882fd2935bfa42c1e3e4aaf4d488b8138434f0b6d6822f3b","entity_key":"lx_daily_routine_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e07307117e155803b9681916683cd99de8fcd13a4b9b344919a25e188878bd3d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/5769c6d89174a3b2882fd2935bfa42c1e3e4aaf4d488b8138434f0b6d6822f3b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_daily_routine_01 -> audio/generated/it-IT/lexical/5769c6d89174a3b2882fd2935bfa42c1e3e4aaf4d488b8138434f0b6d6822f3b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8365935e-4a52-5a58-8bd6-2a51fd5653fa', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_daily_routine_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '117be8d69b16af50728a4a7072d43ae6e3535b4fdc5dc4321534aeec50b20b93'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('21009f59-f6ef-55f5-b85c-a6e685288384', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8365935e-4a52-5a58-8bd6-2a51fd5653fa', 1), '117be8d69b16af50728a4a7072d43ae6e3535b4fdc5dc4321534aeec50b20b93',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/5769c6d89174a3b2882fd2935bfa42c1e3e4aaf4d488b8138434f0b6d6822f3b.mp3', 1071, '2026-09-14 03:09:56.990966', 'e07307117e155803b9681916683cd99de8fcd13a4b9b344919a25e188878bd3d', 'validated', '{"audio_key":"5769c6d89174a3b2882fd2935bfa42c1e3e4aaf4d488b8138434f0b6d6822f3b","entity_key":"wf_daily_routine_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e07307117e155803b9681916683cd99de8fcd13a4b9b344919a25e188878bd3d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/5769c6d89174a3b2882fd2935bfa42c1e3e4aaf4d488b8138434f0b6d6822f3b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_who_i_am_05 -> audio/generated/it-IT/lexical/5acfcae12765a5fdabe17feac42bb1d04ab7cb7455d6732fb5905542342f6a22.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('16e33dae-c93b-52fb-8947-b320a5ebc684', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_who_i_am_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '964afae96bc846c352983383e6ad3981a404a55b05d3241f176129f8b6ff2058'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2583eed8-2eef-516e-8834-9dab66016810', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('16e33dae-c93b-52fb-8947-b320a5ebc684', 1), '964afae96bc846c352983383e6ad3981a404a55b05d3241f176129f8b6ff2058',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/5acfcae12765a5fdabe17feac42bb1d04ab7cb7455d6732fb5905542342f6a22.mp3', 1097, '2026-09-14 03:09:57.541089', 'f1761ee075295b8db3cae24380f06077ec61db1f6becb02d3031401fb433f213', 'validated', '{"audio_key":"5acfcae12765a5fdabe17feac42bb1d04ab7cb7455d6732fb5905542342f6a22","entity_key":"lx_who_i_am_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f1761ee075295b8db3cae24380f06077ec61db1f6becb02d3031401fb433f213","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/5acfcae12765a5fdabe17feac42bb1d04ab7cb7455d6732fb5905542342f6a22.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_who_i_am_05 -> audio/generated/it-IT/lexical/5acfcae12765a5fdabe17feac42bb1d04ab7cb7455d6732fb5905542342f6a22.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2f3265dc-4d5e-55ce-8116-91903b964ceb', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_who_i_am_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '964afae96bc846c352983383e6ad3981a404a55b05d3241f176129f8b6ff2058'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b5baacdf-a432-5647-9400-4025d39d9dfb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2f3265dc-4d5e-55ce-8116-91903b964ceb', 1), '964afae96bc846c352983383e6ad3981a404a55b05d3241f176129f8b6ff2058',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/5acfcae12765a5fdabe17feac42bb1d04ab7cb7455d6732fb5905542342f6a22.mp3', 1097, '2026-09-14 03:09:57.541089', 'f1761ee075295b8db3cae24380f06077ec61db1f6becb02d3031401fb433f213', 'validated', '{"audio_key":"5acfcae12765a5fdabe17feac42bb1d04ab7cb7455d6732fb5905542342f6a22","entity_key":"wf_who_i_am_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f1761ee075295b8db3cae24380f06077ec61db1f6becb02d3031401fb433f213","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/5acfcae12765a5fdabe17feac42bb1d04ab7cb7455d6732fb5905542342f6a22.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_articles_and_objects_02 -> audio/generated/it-IT/lexical/5b0fe55b0c903510e193acb89fb987b8bd2bad1574f65b6cfeba69c8efc209c7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('27a96452-4b08-59be-8b04-2bc012589dcc', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_articles_and_objects_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ecabc70f788ac78e3ea886165231b10af1a37dd4d2c08932379b8dda49180b00'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7aa991fb-09c2-50cd-9316-209626213102', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('27a96452-4b08-59be-8b04-2bc012589dcc', 1), 'ecabc70f788ac78e3ea886165231b10af1a37dd4d2c08932379b8dda49180b00',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/5b0fe55b0c903510e193acb89fb987b8bd2bad1574f65b6cfeba69c8efc209c7.mp3', 966, '2026-09-14 03:09:57.962745', '69fe7865291ac874f4296cdedcb6f81ae61e01b2f623d60808720319271c8a0c', 'validated', '{"audio_key":"5b0fe55b0c903510e193acb89fb987b8bd2bad1574f65b6cfeba69c8efc209c7","entity_key":"lx_articles_and_objects_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"69fe7865291ac874f4296cdedcb6f81ae61e01b2f623d60808720319271c8a0c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/5b0fe55b0c903510e193acb89fb987b8bd2bad1574f65b6cfeba69c8efc209c7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_articles_and_objects_02 -> audio/generated/it-IT/lexical/5b0fe55b0c903510e193acb89fb987b8bd2bad1574f65b6cfeba69c8efc209c7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('47f9ab24-4f2e-5677-a3eb-5a21d55e585e', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_articles_and_objects_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ecabc70f788ac78e3ea886165231b10af1a37dd4d2c08932379b8dda49180b00'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a1206027-4e6c-51cf-8068-6d43760e885b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('47f9ab24-4f2e-5677-a3eb-5a21d55e585e', 1), 'ecabc70f788ac78e3ea886165231b10af1a37dd4d2c08932379b8dda49180b00',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/5b0fe55b0c903510e193acb89fb987b8bd2bad1574f65b6cfeba69c8efc209c7.mp3', 966, '2026-09-14 03:09:57.962745', '69fe7865291ac874f4296cdedcb6f81ae61e01b2f623d60808720319271c8a0c', 'validated', '{"audio_key":"5b0fe55b0c903510e193acb89fb987b8bd2bad1574f65b6cfeba69c8efc209c7","entity_key":"wf_articles_and_objects_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"69fe7865291ac874f4296cdedcb6f81ae61e01b2f623d60808720319271c8a0c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/5b0fe55b0c903510e193acb89fb987b8bd2bad1574f65b6cfeba69c8efc209c7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_at_home_02 -> audio/generated/it-IT/lexical/5b8434d53b51d6413898d367017987f528e6c77c687214e7a21704a8f27ccae2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('96377afa-1075-5f92-a9f8-361ba9d96d8a', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_at_home_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '89e8b9518d92279489bbdee26f3dc646d921d89a15afbd3a3e0ad695328a3da0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('34fdd768-e946-59ac-829c-f772509cdb2d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('96377afa-1075-5f92-a9f8-361ba9d96d8a', 1), '89e8b9518d92279489bbdee26f3dc646d921d89a15afbd3a3e0ad695328a3da0',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/5b8434d53b51d6413898d367017987f528e6c77c687214e7a21704a8f27ccae2.mp3', 966, '2026-09-14 03:09:58.528902', '057c5fbe50fbbc0b85c41571869b4c51c1f2ba5e8e401244f52efe63bd2daea6', 'validated', '{"audio_key":"5b8434d53b51d6413898d367017987f528e6c77c687214e7a21704a8f27ccae2","entity_key":"lx_at_home_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"057c5fbe50fbbc0b85c41571869b4c51c1f2ba5e8e401244f52efe63bd2daea6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/5b8434d53b51d6413898d367017987f528e6c77c687214e7a21704a8f27ccae2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_at_home_02 -> audio/generated/it-IT/lexical/5b8434d53b51d6413898d367017987f528e6c77c687214e7a21704a8f27ccae2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('105ce924-f527-5dce-aa4e-8161a7330f62', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_at_home_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '89e8b9518d92279489bbdee26f3dc646d921d89a15afbd3a3e0ad695328a3da0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f479b040-766d-5c65-8ba5-cf3f9b0ba1a5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('105ce924-f527-5dce-aa4e-8161a7330f62', 1), '89e8b9518d92279489bbdee26f3dc646d921d89a15afbd3a3e0ad695328a3da0',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/5b8434d53b51d6413898d367017987f528e6c77c687214e7a21704a8f27ccae2.mp3', 966, '2026-09-14 03:09:58.528902', '057c5fbe50fbbc0b85c41571869b4c51c1f2ba5e8e401244f52efe63bd2daea6', 'validated', '{"audio_key":"5b8434d53b51d6413898d367017987f528e6c77c687214e7a21704a8f27ccae2","entity_key":"wf_at_home_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"057c5fbe50fbbc0b85c41571869b4c51c1f2ba5e8e401244f52efe63bd2daea6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/5b8434d53b51d6413898d367017987f528e6c77c687214e7a21704a8f27ccae2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_time_and_plans_06 -> audio/generated/it-IT/lexical/5ba1199cb891543618944ccc9b7b3354494b6540d46acad4a6b60a55e2ace040.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('bc8ccc30-ee9d-5ee7-a6a4-ca819000c4dc', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_time_and_plans_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '32e7340636aac4a9543a43f5c4fbb6abed42b5e81db25e38cd5f2ce1cce56c11'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2c65a5c5-8ac8-5d58-bd7c-7ae053b7d313', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('bc8ccc30-ee9d-5ee7-a6a4-ca819000c4dc', 1), '32e7340636aac4a9543a43f5c4fbb6abed42b5e81db25e38cd5f2ce1cce56c11',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/5ba1199cb891543618944ccc9b7b3354494b6540d46acad4a6b60a55e2ace040.mp3', 1071, '2026-09-14 03:09:58.956647', 'c5ece377c8ecd411a23519bee916617afce976c15c2bc564260cb6bff02bf891', 'validated', '{"audio_key":"5ba1199cb891543618944ccc9b7b3354494b6540d46acad4a6b60a55e2ace040","entity_key":"lx_time_and_plans_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c5ece377c8ecd411a23519bee916617afce976c15c2bc564260cb6bff02bf891","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/5ba1199cb891543618944ccc9b7b3354494b6540d46acad4a6b60a55e2ace040.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_time_and_plans_06 -> audio/generated/it-IT/lexical/5ba1199cb891543618944ccc9b7b3354494b6540d46acad4a6b60a55e2ace040.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b4680eba-0629-5a7f-951c-f6f7db701a26', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_time_and_plans_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '32e7340636aac4a9543a43f5c4fbb6abed42b5e81db25e38cd5f2ce1cce56c11'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7047022a-aab8-5002-bc9f-8196e926afb4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b4680eba-0629-5a7f-951c-f6f7db701a26', 1), '32e7340636aac4a9543a43f5c4fbb6abed42b5e81db25e38cd5f2ce1cce56c11',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/5ba1199cb891543618944ccc9b7b3354494b6540d46acad4a6b60a55e2ace040.mp3', 1071, '2026-09-14 03:09:58.956647', 'c5ece377c8ecd411a23519bee916617afce976c15c2bc564260cb6bff02bf891', 'validated', '{"audio_key":"5ba1199cb891543618944ccc9b7b3354494b6540d46acad4a6b60a55e2ace040","entity_key":"wf_time_and_plans_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c5ece377c8ecd411a23519bee916617afce976c15c2bc564260cb6bff02bf891","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/5ba1199cb891543618944ccc9b7b3354494b6540d46acad4a6b60a55e2ace040.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_shopping_basics_03 -> audio/generated/it-IT/lexical/5f30a273504af474ada4086c052894f3c6cb3d682d5d7aa374bcf25a1d29f6fb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3c65113d-afe3-5149-9403-fb867a4a56a2', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_shopping_basics_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0426491043cb32c4e24bf55149f38689536f1ec8c6072167e2091879ce19cd25'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('106600cb-7a18-54fe-a1a1-00b428cad701', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3c65113d-afe3-5149-9403-fb867a4a56a2', 1), '0426491043cb32c4e24bf55149f38689536f1ec8c6072167e2091879ce19cd25',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/5f30a273504af474ada4086c052894f3c6cb3d682d5d7aa374bcf25a1d29f6fb.mp3', 862, '2026-09-14 03:09:59.532131', '96872c81f17dd39b230446c3cd710f82f462edc842454f75ba38772623a8a76d', 'validated', '{"audio_key":"5f30a273504af474ada4086c052894f3c6cb3d682d5d7aa374bcf25a1d29f6fb","entity_key":"lx_shopping_basics_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"96872c81f17dd39b230446c3cd710f82f462edc842454f75ba38772623a8a76d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/5f30a273504af474ada4086c052894f3c6cb3d682d5d7aa374bcf25a1d29f6fb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_shopping_basics_03 -> audio/generated/it-IT/lexical/5f30a273504af474ada4086c052894f3c6cb3d682d5d7aa374bcf25a1d29f6fb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('eb4c5242-98b7-58ee-a726-0d2048c2534d', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_shopping_basics_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0426491043cb32c4e24bf55149f38689536f1ec8c6072167e2091879ce19cd25'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8bcf2296-cc26-51d0-96f7-d101e11eaced', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('eb4c5242-98b7-58ee-a726-0d2048c2534d', 1), '0426491043cb32c4e24bf55149f38689536f1ec8c6072167e2091879ce19cd25',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/5f30a273504af474ada4086c052894f3c6cb3d682d5d7aa374bcf25a1d29f6fb.mp3', 862, '2026-09-14 03:09:59.532131', '96872c81f17dd39b230446c3cd710f82f462edc842454f75ba38772623a8a76d', 'validated', '{"audio_key":"5f30a273504af474ada4086c052894f3c6cb3d682d5d7aa374bcf25a1d29f6fb","entity_key":"wf_shopping_basics_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"96872c81f17dd39b230446c3cd710f82f462edc842454f75ba38772623a8a76d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/5f30a273504af474ada4086c052894f3c6cb3d682d5d7aa374bcf25a1d29f6fb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a1_day_capstone_03 -> audio/generated/it-IT/lexical/67d95ce0e353a0558ed315acadec10f12710e9dcaa57f0baeab4f99aa882a777.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('168ec785-7521-5b71-be9f-e963ab457b45', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a1_day_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a1e9b14294fc5b72077bac91a92c992a10b12729ce320f0f202f8053367f2bc5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fca8d5ba-94a8-5ebf-ae72-4c350e291072', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('168ec785-7521-5b71-be9f-e963ab457b45', 1), 'a1e9b14294fc5b72077bac91a92c992a10b12729ce320f0f202f8053367f2bc5',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/67d95ce0e353a0558ed315acadec10f12710e9dcaa57f0baeab4f99aa882a777.mp3', 1253, '2026-09-14 03:10:00.551111', 'ecd2958f5445e18f331a1fb8de62ca8f3516211f42d2541299fdb5216e88828e', 'validated', '{"audio_key":"67d95ce0e353a0558ed315acadec10f12710e9dcaa57f0baeab4f99aa882a777","entity_key":"lx_a1_day_capstone_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ecd2958f5445e18f331a1fb8de62ca8f3516211f42d2541299fdb5216e88828e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/67d95ce0e353a0558ed315acadec10f12710e9dcaa57f0baeab4f99aa882a777.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a1_day_capstone_03 -> audio/generated/it-IT/lexical/67d95ce0e353a0558ed315acadec10f12710e9dcaa57f0baeab4f99aa882a777.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0da02888-5a15-5c2e-bed4-d5636da92f1f', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a1_day_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a1e9b14294fc5b72077bac91a92c992a10b12729ce320f0f202f8053367f2bc5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3415c887-45e4-50a1-bcea-f321d7d511db', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0da02888-5a15-5c2e-bed4-d5636da92f1f', 1), 'a1e9b14294fc5b72077bac91a92c992a10b12729ce320f0f202f8053367f2bc5',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/67d95ce0e353a0558ed315acadec10f12710e9dcaa57f0baeab4f99aa882a777.mp3', 1253, '2026-09-14 03:10:00.551111', 'ecd2958f5445e18f331a1fb8de62ca8f3516211f42d2541299fdb5216e88828e', 'validated', '{"audio_key":"67d95ce0e353a0558ed315acadec10f12710e9dcaa57f0baeab4f99aa882a777","entity_key":"wf_a1_day_capstone_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ecd2958f5445e18f331a1fb8de62ca8f3516211f42d2541299fdb5216e88828e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/67d95ce0e353a0558ed315acadec10f12710e9dcaa57f0baeab4f99aa882a777.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_shopping_basics_05 -> audio/generated/it-IT/lexical/6930ee88ca8824a6aa91d3910d8e4d27c4e3fe3cb8ba2ae798a482dbbe7a5e3e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a80cb768-5882-59de-af32-44596691ca5b', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_shopping_basics_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cd8d7c61cac43ace7b47bc0df597fcc0c533fe054594d6cdd3caf166a18ab27f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6ed1b160-c741-5f1a-973e-6eab02ec80ce', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a80cb768-5882-59de-af32-44596691ca5b', 1), 'cd8d7c61cac43ace7b47bc0df597fcc0c533fe054594d6cdd3caf166a18ab27f',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/6930ee88ca8824a6aa91d3910d8e4d27c4e3fe3cb8ba2ae798a482dbbe7a5e3e.mp3', 966, '2026-09-14 03:10:00.515504', '60780b3734a461803ef362545c1d0611d55d114cfc67e152eadbfdb374ee9065', 'validated', '{"audio_key":"6930ee88ca8824a6aa91d3910d8e4d27c4e3fe3cb8ba2ae798a482dbbe7a5e3e","entity_key":"lx_shopping_basics_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"60780b3734a461803ef362545c1d0611d55d114cfc67e152eadbfdb374ee9065","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/6930ee88ca8824a6aa91d3910d8e4d27c4e3fe3cb8ba2ae798a482dbbe7a5e3e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_shopping_basics_05 -> audio/generated/it-IT/lexical/6930ee88ca8824a6aa91d3910d8e4d27c4e3fe3cb8ba2ae798a482dbbe7a5e3e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('748b5b10-e3db-5735-a51f-fcb9b7f6c97c', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_shopping_basics_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cd8d7c61cac43ace7b47bc0df597fcc0c533fe054594d6cdd3caf166a18ab27f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ee550078-b941-5f86-b493-5b1eb8f0f278', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('748b5b10-e3db-5735-a51f-fcb9b7f6c97c', 1), 'cd8d7c61cac43ace7b47bc0df597fcc0c533fe054594d6cdd3caf166a18ab27f',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/6930ee88ca8824a6aa91d3910d8e4d27c4e3fe3cb8ba2ae798a482dbbe7a5e3e.mp3', 966, '2026-09-14 03:10:00.515504', '60780b3734a461803ef362545c1d0611d55d114cfc67e152eadbfdb374ee9065', 'validated', '{"audio_key":"6930ee88ca8824a6aa91d3910d8e4d27c4e3fe3cb8ba2ae798a482dbbe7a5e3e","entity_key":"wf_shopping_basics_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"60780b3734a461803ef362545c1d0611d55d114cfc67e152eadbfdb374ee9065","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/6930ee88ca8824a6aa91d3910d8e4d27c4e3fe3cb8ba2ae798a482dbbe7a5e3e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_articles_and_objects_05 -> audio/generated/it-IT/lexical/6b6ad085208bc355c8c24bc6b7851318f77afcb5d16e649a1138effbab3fa654.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9d335c48-8166-51f4-86dd-8da17d2dd126', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_articles_and_objects_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '161f0e5ed45f6d514dc23e22a4a9cadda05a3bb9b2c1661612301c6116141f10'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ad12b83a-0638-5c43-9698-a78f9140cd54', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9d335c48-8166-51f4-86dd-8da17d2dd126', 1), '161f0e5ed45f6d514dc23e22a4a9cadda05a3bb9b2c1661612301c6116141f10',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/6b6ad085208bc355c8c24bc6b7851318f77afcb5d16e649a1138effbab3fa654.mp3', 835, '2026-09-14 03:10:01.493430', '83128ddd51023ffdf8c8d427f0546675db10c3beb99ba0a5e2b8fa18662db5ad', 'validated', '{"audio_key":"6b6ad085208bc355c8c24bc6b7851318f77afcb5d16e649a1138effbab3fa654","entity_key":"lx_articles_and_objects_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"83128ddd51023ffdf8c8d427f0546675db10c3beb99ba0a5e2b8fa18662db5ad","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/6b6ad085208bc355c8c24bc6b7851318f77afcb5d16e649a1138effbab3fa654.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_articles_and_objects_05 -> audio/generated/it-IT/lexical/6b6ad085208bc355c8c24bc6b7851318f77afcb5d16e649a1138effbab3fa654.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ba89f90f-8d12-5dde-a439-167fafe456e9', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_articles_and_objects_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '161f0e5ed45f6d514dc23e22a4a9cadda05a3bb9b2c1661612301c6116141f10'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bd16d610-a3d3-5173-8782-448f64e360d1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ba89f90f-8d12-5dde-a439-167fafe456e9', 1), '161f0e5ed45f6d514dc23e22a4a9cadda05a3bb9b2c1661612301c6116141f10',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/6b6ad085208bc355c8c24bc6b7851318f77afcb5d16e649a1138effbab3fa654.mp3', 835, '2026-09-14 03:10:01.493430', '83128ddd51023ffdf8c8d427f0546675db10c3beb99ba0a5e2b8fa18662db5ad', 'validated', '{"audio_key":"6b6ad085208bc355c8c24bc6b7851318f77afcb5d16e649a1138effbab3fa654","entity_key":"wf_articles_and_objects_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"83128ddd51023ffdf8c8d427f0546675db10c3beb99ba0a5e2b8fa18662db5ad","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/6b6ad085208bc355c8c24bc6b7851318f77afcb5d16e649a1138effbab3fa654.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_time_and_plans_05 -> audio/generated/it-IT/lexical/6b890c9f842202be5aa23a5343fa7091ac70ad291a87c06561d7866e892ec629.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('04ec287b-7958-5afe-9e7e-86719a6aea0b', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_time_and_plans_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a37e923c1338685b6cdb1f13c8a7fbe75b066390f55901449a7263811551a5b1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('31e76c13-08a7-5d80-99a1-a886d9f73195', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('04ec287b-7958-5afe-9e7e-86719a6aea0b', 1), 'a37e923c1338685b6cdb1f13c8a7fbe75b066390f55901449a7263811551a5b1',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/6b890c9f842202be5aa23a5343fa7091ac70ad291a87c06561d7866e892ec629.mp3', 862, '2026-09-14 03:10:01.530072', '91f3628bd8dcd7f587776d6396e7104043542d0e56d75cf4c3b91dd5c7a01d0f', 'validated', '{"audio_key":"6b890c9f842202be5aa23a5343fa7091ac70ad291a87c06561d7866e892ec629","entity_key":"lx_time_and_plans_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"91f3628bd8dcd7f587776d6396e7104043542d0e56d75cf4c3b91dd5c7a01d0f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/6b890c9f842202be5aa23a5343fa7091ac70ad291a87c06561d7866e892ec629.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_time_and_plans_05 -> audio/generated/it-IT/lexical/6b890c9f842202be5aa23a5343fa7091ac70ad291a87c06561d7866e892ec629.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b99eb944-58e7-5c7f-8889-99def2644a8c', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_time_and_plans_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a37e923c1338685b6cdb1f13c8a7fbe75b066390f55901449a7263811551a5b1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('db3f9b9e-02b3-5c63-bc61-6477739c3ea5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b99eb944-58e7-5c7f-8889-99def2644a8c', 1), 'a37e923c1338685b6cdb1f13c8a7fbe75b066390f55901449a7263811551a5b1',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/6b890c9f842202be5aa23a5343fa7091ac70ad291a87c06561d7866e892ec629.mp3', 862, '2026-09-14 03:10:01.530072', '91f3628bd8dcd7f587776d6396e7104043542d0e56d75cf4c3b91dd5c7a01d0f', 'validated', '{"audio_key":"6b890c9f842202be5aa23a5343fa7091ac70ad291a87c06561d7866e892ec629","entity_key":"wf_time_and_plans_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"91f3628bd8dcd7f587776d6396e7104043542d0e56d75cf4c3b91dd5c7a01d0f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/6b890c9f842202be5aa23a5343fa7091ac70ad291a87c06561d7866e892ec629.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_who_i_am_01 -> audio/generated/it-IT/lexical/6c98664c38e5532ae51a06ddb5be81bc60ceb27b7444cb5b309641fdb587cb2e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('46507350-b698-5eea-bc9a-e52854a91479', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_who_i_am_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e4300558861f03033a0c10cb36a326c9a8ed1b8246289f49596f3d596a2694e4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('24539639-babd-5108-9934-8a7c0e0a4081', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('46507350-b698-5eea-bc9a-e52854a91479', 1), 'e4300558861f03033a0c10cb36a326c9a8ed1b8246289f49596f3d596a2694e4',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/6c98664c38e5532ae51a06ddb5be81bc60ceb27b7444cb5b309641fdb587cb2e.mp3', 1097, '2026-09-14 03:10:02.492046', '7e1899db7fcc2ab031df365e6951ec2557b5366ace4d548cd92afd59659c7760', 'validated', '{"audio_key":"6c98664c38e5532ae51a06ddb5be81bc60ceb27b7444cb5b309641fdb587cb2e","entity_key":"lx_who_i_am_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"7e1899db7fcc2ab031df365e6951ec2557b5366ace4d548cd92afd59659c7760","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/6c98664c38e5532ae51a06ddb5be81bc60ceb27b7444cb5b309641fdb587cb2e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_who_i_am_01 -> audio/generated/it-IT/lexical/6c98664c38e5532ae51a06ddb5be81bc60ceb27b7444cb5b309641fdb587cb2e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c31adddc-87e4-5423-9f64-575379f261e7', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_who_i_am_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e4300558861f03033a0c10cb36a326c9a8ed1b8246289f49596f3d596a2694e4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6dea4706-318a-5150-8a0c-17ed6ae21090', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c31adddc-87e4-5423-9f64-575379f261e7', 1), 'e4300558861f03033a0c10cb36a326c9a8ed1b8246289f49596f3d596a2694e4',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/6c98664c38e5532ae51a06ddb5be81bc60ceb27b7444cb5b309641fdb587cb2e.mp3', 1097, '2026-09-14 03:10:02.492046', '7e1899db7fcc2ab031df365e6951ec2557b5366ace4d548cd92afd59659c7760', 'validated', '{"audio_key":"6c98664c38e5532ae51a06ddb5be81bc60ceb27b7444cb5b309641fdb587cb2e","entity_key":"wf_who_i_am_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"7e1899db7fcc2ab031df365e6951ec2557b5366ace4d548cd92afd59659c7760","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/6c98664c38e5532ae51a06ddb5be81bc60ceb27b7444cb5b309641fdb587cb2e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_shopping_basics_02 -> audio/generated/it-IT/lexical/6ce4b0bd88b5252ae8810f2cd0291f051a8a49782fe67fcf6bfe6c07c586a032.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('73ff6010-b9a4-5f6c-b7b3-50b6d6385019', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_shopping_basics_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '59d3a94b2de8f7668de70bb7bcbf5c76e8d46e9634f143b06bcebaa988b27952'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f4ccf0c7-09df-5c86-b201-fce67ecf4c29', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('73ff6010-b9a4-5f6c-b7b3-50b6d6385019', 1), '59d3a94b2de8f7668de70bb7bcbf5c76e8d46e9634f143b06bcebaa988b27952',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/6ce4b0bd88b5252ae8810f2cd0291f051a8a49782fe67fcf6bfe6c07c586a032.mp3', 1097, '2026-09-14 03:10:02.593610', '06321dc110347d8b0ddee507eaac1abc1964793d8c41351fbd686dde24309e71', 'validated', '{"audio_key":"6ce4b0bd88b5252ae8810f2cd0291f051a8a49782fe67fcf6bfe6c07c586a032","entity_key":"lx_shopping_basics_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"06321dc110347d8b0ddee507eaac1abc1964793d8c41351fbd686dde24309e71","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/6ce4b0bd88b5252ae8810f2cd0291f051a8a49782fe67fcf6bfe6c07c586a032.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_shopping_basics_02 -> audio/generated/it-IT/lexical/6ce4b0bd88b5252ae8810f2cd0291f051a8a49782fe67fcf6bfe6c07c586a032.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('83cdf0ee-dc11-51e8-ba11-dc21e1f66426', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_shopping_basics_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '59d3a94b2de8f7668de70bb7bcbf5c76e8d46e9634f143b06bcebaa988b27952'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('32df3f39-7d6c-5650-a7e9-84dda2a44bc5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('83cdf0ee-dc11-51e8-ba11-dc21e1f66426', 1), '59d3a94b2de8f7668de70bb7bcbf5c76e8d46e9634f143b06bcebaa988b27952',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/6ce4b0bd88b5252ae8810f2cd0291f051a8a49782fe67fcf6bfe6c07c586a032.mp3', 1097, '2026-09-14 03:10:02.593610', '06321dc110347d8b0ddee507eaac1abc1964793d8c41351fbd686dde24309e71', 'validated', '{"audio_key":"6ce4b0bd88b5252ae8810f2cd0291f051a8a49782fe67fcf6bfe6c07c586a032","entity_key":"wf_shopping_basics_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"06321dc110347d8b0ddee507eaac1abc1964793d8c41351fbd686dde24309e71","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/6ce4b0bd88b5252ae8810f2cd0291f051a8a49782fe67fcf6bfe6c07c586a032.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_my_family_06 -> audio/generated/it-IT/lexical/7639739badf3c2806bff9e6802c23747aacf5271b611389533468e27e74a66d4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1f15247c-14e1-5d50-bc95-29dda4cb6477', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_my_family_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3eba15fac46d2b620daeb2a3a244be886d5e26c8ee7352a4956dbef8cad78e0d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('69f15c3a-a782-54de-838b-be4237c344ee', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1f15247c-14e1-5d50-bc95-29dda4cb6477', 1), '3eba15fac46d2b620daeb2a3a244be886d5e26c8ee7352a4956dbef8cad78e0d',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/7639739badf3c2806bff9e6802c23747aacf5271b611389533468e27e74a66d4.mp3', 1201, '2026-09-14 03:10:03.482605', '431b14fb9af185b970c0e870aa5993450b0bce770407727deac6086e3e466455', 'validated', '{"audio_key":"7639739badf3c2806bff9e6802c23747aacf5271b611389533468e27e74a66d4","entity_key":"lx_my_family_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"431b14fb9af185b970c0e870aa5993450b0bce770407727deac6086e3e466455","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/7639739badf3c2806bff9e6802c23747aacf5271b611389533468e27e74a66d4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_my_family_06 -> audio/generated/it-IT/lexical/7639739badf3c2806bff9e6802c23747aacf5271b611389533468e27e74a66d4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ba64e152-ad6b-5a62-a685-629a9ee464a4', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_my_family_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3eba15fac46d2b620daeb2a3a244be886d5e26c8ee7352a4956dbef8cad78e0d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('76b43c18-1d10-5a91-9715-3ed717a77a9d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ba64e152-ad6b-5a62-a685-629a9ee464a4', 1), '3eba15fac46d2b620daeb2a3a244be886d5e26c8ee7352a4956dbef8cad78e0d',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/7639739badf3c2806bff9e6802c23747aacf5271b611389533468e27e74a66d4.mp3', 1201, '2026-09-14 03:10:03.482605', '431b14fb9af185b970c0e870aa5993450b0bce770407727deac6086e3e466455', 'validated', '{"audio_key":"7639739badf3c2806bff9e6802c23747aacf5271b611389533468e27e74a66d4","entity_key":"wf_my_family_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"431b14fb9af185b970c0e870aa5993450b0bce770407727deac6086e3e466455","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/7639739badf3c2806bff9e6802c23747aacf5271b611389533468e27e74a66d4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_articles_and_objects_01 -> audio/generated/it-IT/lexical/779793f2da72796b912b79131c85257d1ab5613f56c97575360af72c78189bb8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('411b390f-cb3b-5155-a981-4fa15d9fe8ea', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_articles_and_objects_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4a1e8c16a9623653b40b46e3f682afba9fe2b34cbffa51742a4e1685dc50fd61'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8c9eefbf-13a4-5ece-8852-1e00afe74e66', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('411b390f-cb3b-5155-a981-4fa15d9fe8ea', 1), '4a1e8c16a9623653b40b46e3f682afba9fe2b34cbffa51742a4e1685dc50fd61',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/779793f2da72796b912b79131c85257d1ab5613f56c97575360af72c78189bb8.mp3', 914, '2026-09-14 01:57:19.807012', 'd54a85c1cbd076f27fd386e47f6b2cd08adb4a28a62e71f0c294b5cd33ff6ed0', 'validated', '{"audio_key":"779793f2da72796b912b79131c85257d1ab5613f56c97575360af72c78189bb8","entity_key":"lx_articles_and_objects_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d54a85c1cbd076f27fd386e47f6b2cd08adb4a28a62e71f0c294b5cd33ff6ed0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/779793f2da72796b912b79131c85257d1ab5613f56c97575360af72c78189bb8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_articles_and_objects_01 -> audio/generated/it-IT/lexical/779793f2da72796b912b79131c85257d1ab5613f56c97575360af72c78189bb8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('889b18cd-b5a9-5f03-983b-7f76b9a209ff', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_articles_and_objects_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4a1e8c16a9623653b40b46e3f682afba9fe2b34cbffa51742a4e1685dc50fd61'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2fe70eec-8d83-5792-9083-2abe4e8ff676', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('889b18cd-b5a9-5f03-983b-7f76b9a209ff', 1), '4a1e8c16a9623653b40b46e3f682afba9fe2b34cbffa51742a4e1685dc50fd61',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/779793f2da72796b912b79131c85257d1ab5613f56c97575360af72c78189bb8.mp3', 914, '2026-09-14 01:57:19.807012', 'd54a85c1cbd076f27fd386e47f6b2cd08adb4a28a62e71f0c294b5cd33ff6ed0', 'validated', '{"audio_key":"779793f2da72796b912b79131c85257d1ab5613f56c97575360af72c78189bb8","entity_key":"wf_articles_and_objects_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d54a85c1cbd076f27fd386e47f6b2cd08adb4a28a62e71f0c294b5cd33ff6ed0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/779793f2da72796b912b79131c85257d1ab5613f56c97575360af72c78189bb8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a1_day_capstone_05 -> audio/generated/it-IT/lexical/7e426483a49249eb3d73060ea715a7999217275837b3afcf1d23697f68bbeb69.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c795f3b2-fa52-5dfe-b384-4bd0b7d6a202', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a1_day_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '90f2cb47f3cc944cc5b81efedbd0708b212f63e866322c8cbd73e9b23475cff2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aa2aa99c-a180-553c-a18d-0b6c4703ec13', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c795f3b2-fa52-5dfe-b384-4bd0b7d6a202', 1), '90f2cb47f3cc944cc5b81efedbd0708b212f63e866322c8cbd73e9b23475cff2',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/7e426483a49249eb3d73060ea715a7999217275837b3afcf1d23697f68bbeb69.mp3', 1149, '2026-09-14 01:57:21.063871', '8d0c73aa17144ccaacabb494d4f660e0f88f598f9fe95740033bed2b3158f77f', 'validated', '{"audio_key":"7e426483a49249eb3d73060ea715a7999217275837b3afcf1d23697f68bbeb69","entity_key":"lx_a1_day_capstone_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8d0c73aa17144ccaacabb494d4f660e0f88f598f9fe95740033bed2b3158f77f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/7e426483a49249eb3d73060ea715a7999217275837b3afcf1d23697f68bbeb69.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a1_day_capstone_05 -> audio/generated/it-IT/lexical/7e426483a49249eb3d73060ea715a7999217275837b3afcf1d23697f68bbeb69.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('09339662-3688-56da-a6f6-3ad66068a41b', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a1_day_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '90f2cb47f3cc944cc5b81efedbd0708b212f63e866322c8cbd73e9b23475cff2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('31b12dff-e95e-5eb8-afe0-9f3e56f56827', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('09339662-3688-56da-a6f6-3ad66068a41b', 1), '90f2cb47f3cc944cc5b81efedbd0708b212f63e866322c8cbd73e9b23475cff2',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/7e426483a49249eb3d73060ea715a7999217275837b3afcf1d23697f68bbeb69.mp3', 1149, '2026-09-14 01:57:21.063871', '8d0c73aa17144ccaacabb494d4f660e0f88f598f9fe95740033bed2b3158f77f', 'validated', '{"audio_key":"7e426483a49249eb3d73060ea715a7999217275837b3afcf1d23697f68bbeb69","entity_key":"wf_a1_day_capstone_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8d0c73aa17144ccaacabb494d4f660e0f88f598f9fe95740033bed2b3158f77f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/7e426483a49249eb3d73060ea715a7999217275837b3afcf1d23697f68bbeb69.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_my_family_03 -> audio/generated/it-IT/lexical/81053ec7a7d7cbaabd1d7120aa930e365b4656163c45f08678aff35736a67138.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c8526afb-c5ad-55cf-8b04-72eae8e93ae8', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_my_family_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7ded2c90172ea13a65ef364fb0b35797ea581abb6be2e1c8ec2767b86c63b6a9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ca40ea83-7f8c-5eaf-ba17-2e94a07ed377', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c8526afb-c5ad-55cf-8b04-72eae8e93ae8', 1), '7ded2c90172ea13a65ef364fb0b35797ea581abb6be2e1c8ec2767b86c63b6a9',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/81053ec7a7d7cbaabd1d7120aa930e365b4656163c45f08678aff35736a67138.mp3', 966, '2026-09-14 03:10:03.681835', 'fd0b5dea6c07a105c1a345837f13886f29f92177a31e6a5b0ec8907e091a7e08', 'validated', '{"audio_key":"81053ec7a7d7cbaabd1d7120aa930e365b4656163c45f08678aff35736a67138","entity_key":"lx_my_family_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"fd0b5dea6c07a105c1a345837f13886f29f92177a31e6a5b0ec8907e091a7e08","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/81053ec7a7d7cbaabd1d7120aa930e365b4656163c45f08678aff35736a67138.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_my_family_03 -> audio/generated/it-IT/lexical/81053ec7a7d7cbaabd1d7120aa930e365b4656163c45f08678aff35736a67138.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2006617b-f50e-5782-8b40-06404e788fe1', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_my_family_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7ded2c90172ea13a65ef364fb0b35797ea581abb6be2e1c8ec2767b86c63b6a9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('18448c27-01f8-51df-8de0-ce02829e9167', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2006617b-f50e-5782-8b40-06404e788fe1', 1), '7ded2c90172ea13a65ef364fb0b35797ea581abb6be2e1c8ec2767b86c63b6a9',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/81053ec7a7d7cbaabd1d7120aa930e365b4656163c45f08678aff35736a67138.mp3', 966, '2026-09-14 03:10:03.681835', 'fd0b5dea6c07a105c1a345837f13886f29f92177a31e6a5b0ec8907e091a7e08', 'validated', '{"audio_key":"81053ec7a7d7cbaabd1d7120aa930e365b4656163c45f08678aff35736a67138","entity_key":"wf_my_family_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"fd0b5dea6c07a105c1a345837f13886f29f92177a31e6a5b0ec8907e091a7e08","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/81053ec7a7d7cbaabd1d7120aa930e365b4656163c45f08678aff35736a67138.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a1_day_capstone_06 -> audio/generated/it-IT/lexical/8bf3586285f3b9ea2c52b4976edcc55138a399d0302185e8be944de4440e2ab9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('cd3625dc-5960-571e-a00f-b0e52e3ca5a0', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a1_day_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '447f1b696dbe5cf3b4df7c3fcf6bc718e86f9d445e8b1864465ffeb98151c8fd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a806dd9d-551d-50dd-b147-fdb82be0acb8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('cd3625dc-5960-571e-a00f-b0e52e3ca5a0', 1), '447f1b696dbe5cf3b4df7c3fcf6bc718e86f9d445e8b1864465ffeb98151c8fd',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/8bf3586285f3b9ea2c52b4976edcc55138a399d0302185e8be944de4440e2ab9.mp3', 1018, '2026-09-14 03:10:04.451326', '80c55d35e17deb460c957671412d65768f8999757522e168e572d2f76b38499c', 'validated', '{"audio_key":"8bf3586285f3b9ea2c52b4976edcc55138a399d0302185e8be944de4440e2ab9","entity_key":"lx_a1_day_capstone_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"80c55d35e17deb460c957671412d65768f8999757522e168e572d2f76b38499c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/8bf3586285f3b9ea2c52b4976edcc55138a399d0302185e8be944de4440e2ab9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a1_day_capstone_06 -> audio/generated/it-IT/lexical/8bf3586285f3b9ea2c52b4976edcc55138a399d0302185e8be944de4440e2ab9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3cfa2a5a-eed4-5699-9087-af3dca2e85ce', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a1_day_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '447f1b696dbe5cf3b4df7c3fcf6bc718e86f9d445e8b1864465ffeb98151c8fd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d3d354bc-7150-5fca-a55e-1a9c36ecfcee', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3cfa2a5a-eed4-5699-9087-af3dca2e85ce', 1), '447f1b696dbe5cf3b4df7c3fcf6bc718e86f9d445e8b1864465ffeb98151c8fd',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/8bf3586285f3b9ea2c52b4976edcc55138a399d0302185e8be944de4440e2ab9.mp3', 1018, '2026-09-14 03:10:04.451326', '80c55d35e17deb460c957671412d65768f8999757522e168e572d2f76b38499c', 'validated', '{"audio_key":"8bf3586285f3b9ea2c52b4976edcc55138a399d0302185e8be944de4440e2ab9","entity_key":"wf_a1_day_capstone_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"80c55d35e17deb460c957671412d65768f8999757522e168e572d2f76b38499c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/8bf3586285f3b9ea2c52b4976edcc55138a399d0302185e8be944de4440e2ab9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_who_i_am_06 -> audio/generated/it-IT/lexical/965fdfa23878cd7300b2abe1aa0300c093367d5847d734099a58fd04844d632f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4bbfc1f6-8d57-5050-96cd-e5df8671ac2a', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_who_i_am_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bcee72e6df5d56319125920f6c69d8001e938e122cd14597e547d49cc9126e42'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a61a9d8c-3499-562d-a54b-613a9413d023', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4bbfc1f6-8d57-5050-96cd-e5df8671ac2a', 1), 'bcee72e6df5d56319125920f6c69d8001e938e122cd14597e547d49cc9126e42',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/965fdfa23878cd7300b2abe1aa0300c093367d5847d734099a58fd04844d632f.mp3', 835, '2026-09-14 03:10:04.649903', '31d5481530ed2543295a9d03450c3f0647edeb1174414a932fb3bbc8dc630cd3', 'validated', '{"audio_key":"965fdfa23878cd7300b2abe1aa0300c093367d5847d734099a58fd04844d632f","entity_key":"lx_who_i_am_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"31d5481530ed2543295a9d03450c3f0647edeb1174414a932fb3bbc8dc630cd3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/965fdfa23878cd7300b2abe1aa0300c093367d5847d734099a58fd04844d632f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_who_i_am_06 -> audio/generated/it-IT/lexical/965fdfa23878cd7300b2abe1aa0300c093367d5847d734099a58fd04844d632f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e37816ff-22c6-583d-a62d-5a52b7855cc1', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_who_i_am_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bcee72e6df5d56319125920f6c69d8001e938e122cd14597e547d49cc9126e42'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1522c2aa-1c5b-549f-bd8b-800a819a867a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e37816ff-22c6-583d-a62d-5a52b7855cc1', 1), 'bcee72e6df5d56319125920f6c69d8001e938e122cd14597e547d49cc9126e42',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/965fdfa23878cd7300b2abe1aa0300c093367d5847d734099a58fd04844d632f.mp3', 835, '2026-09-14 03:10:04.649903', '31d5481530ed2543295a9d03450c3f0647edeb1174414a932fb3bbc8dc630cd3', 'validated', '{"audio_key":"965fdfa23878cd7300b2abe1aa0300c093367d5847d734099a58fd04844d632f","entity_key":"wf_who_i_am_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"31d5481530ed2543295a9d03450c3f0647edeb1174414a932fb3bbc8dc630cd3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/965fdfa23878cd7300b2abe1aa0300c093367d5847d734099a58fd04844d632f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_shopping_basics_01 -> audio/generated/it-IT/lexical/9a3904b3577d2186053e4b4982fb8516e45c88656b999368baf1ee4ab10de3a7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fc9301a2-42a7-5169-af9b-7bfcf1ac3f06', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_shopping_basics_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b54124f069a39c825ff04eabd8b8ccbe81264179e1783d4046a9eece93eb8cc7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c442326e-708e-54bf-9b4c-a406a475e50d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fc9301a2-42a7-5169-af9b-7bfcf1ac3f06', 1), 'b54124f069a39c825ff04eabd8b8ccbe81264179e1783d4046a9eece93eb8cc7',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/9a3904b3577d2186053e4b4982fb8516e45c88656b999368baf1ee4ab10de3a7.mp3', 914, '2026-09-14 03:10:05.441569', '9f3436f847da204e6eb459d1399346cd1abcb97c68c266f7546bd210f6945da3', 'validated', '{"audio_key":"9a3904b3577d2186053e4b4982fb8516e45c88656b999368baf1ee4ab10de3a7","entity_key":"lx_shopping_basics_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"9f3436f847da204e6eb459d1399346cd1abcb97c68c266f7546bd210f6945da3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/9a3904b3577d2186053e4b4982fb8516e45c88656b999368baf1ee4ab10de3a7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_shopping_basics_01 -> audio/generated/it-IT/lexical/9a3904b3577d2186053e4b4982fb8516e45c88656b999368baf1ee4ab10de3a7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ec7f941b-bca5-5a68-b0be-442dc2cd376b', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_shopping_basics_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b54124f069a39c825ff04eabd8b8ccbe81264179e1783d4046a9eece93eb8cc7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e725460d-0e3b-5c90-875d-7be20d172f67', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ec7f941b-bca5-5a68-b0be-442dc2cd376b', 1), 'b54124f069a39c825ff04eabd8b8ccbe81264179e1783d4046a9eece93eb8cc7',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/9a3904b3577d2186053e4b4982fb8516e45c88656b999368baf1ee4ab10de3a7.mp3', 914, '2026-09-14 03:10:05.441569', '9f3436f847da204e6eb459d1399346cd1abcb97c68c266f7546bd210f6945da3', 'validated', '{"audio_key":"9a3904b3577d2186053e4b4982fb8516e45c88656b999368baf1ee4ab10de3a7","entity_key":"wf_shopping_basics_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"9f3436f847da204e6eb459d1399346cd1abcb97c68c266f7546bd210f6945da3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/9a3904b3577d2186053e4b4982fb8516e45c88656b999368baf1ee4ab10de3a7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_daily_routine_03 -> audio/generated/it-IT/lexical/ad1c5cc2c1f931d389196b6fb8f337a300da3aa65df4f751f74cc342bf318340.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d57b4146-9d36-56c8-9d61-0435f61318ca', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_daily_routine_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '97b38bdb990efc616e3b2c84d8b929659115c1e1ea29b3aa5b942aa8a37fda93'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b513ed7c-9751-5878-9f18-88b3b415e9de', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d57b4146-9d36-56c8-9d61-0435f61318ca', 1), '97b38bdb990efc616e3b2c84d8b929659115c1e1ea29b3aa5b942aa8a37fda93',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/ad1c5cc2c1f931d389196b6fb8f337a300da3aa65df4f751f74cc342bf318340.mp3', 1071, '2026-09-14 03:10:05.651482', '1ad710b976efdda690fdb3dbf4d13b048a4715ee1cec8e31b867603fc6193295', 'validated', '{"audio_key":"ad1c5cc2c1f931d389196b6fb8f337a300da3aa65df4f751f74cc342bf318340","entity_key":"lx_daily_routine_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1ad710b976efdda690fdb3dbf4d13b048a4715ee1cec8e31b867603fc6193295","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/ad1c5cc2c1f931d389196b6fb8f337a300da3aa65df4f751f74cc342bf318340.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_daily_routine_03 -> audio/generated/it-IT/lexical/ad1c5cc2c1f931d389196b6fb8f337a300da3aa65df4f751f74cc342bf318340.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4929634b-cc45-5b6f-b42a-564d8c7b829c', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_daily_routine_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '97b38bdb990efc616e3b2c84d8b929659115c1e1ea29b3aa5b942aa8a37fda93'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('40bdc280-616c-5fb5-997a-56e613881f37', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4929634b-cc45-5b6f-b42a-564d8c7b829c', 1), '97b38bdb990efc616e3b2c84d8b929659115c1e1ea29b3aa5b942aa8a37fda93',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/ad1c5cc2c1f931d389196b6fb8f337a300da3aa65df4f751f74cc342bf318340.mp3', 1071, '2026-09-14 03:10:05.651482', '1ad710b976efdda690fdb3dbf4d13b048a4715ee1cec8e31b867603fc6193295', 'validated', '{"audio_key":"ad1c5cc2c1f931d389196b6fb8f337a300da3aa65df4f751f74cc342bf318340","entity_key":"wf_daily_routine_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1ad710b976efdda690fdb3dbf4d13b048a4715ee1cec8e31b867603fc6193295","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/ad1c5cc2c1f931d389196b6fb8f337a300da3aa65df4f751f74cc342bf318340.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_at_home_04 -> audio/generated/it-IT/lexical/ae943926f672cfb8069bca917513a007fb1792c31fa20de35811df3744e57368.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a1729178-fdc7-5fff-a56c-bb49b357126e', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_at_home_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '60e9764981a31bf1c2eaf9b6f935a4d572d6aa643ddb8dc25dfae58da3922abe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a6783d81-9951-5b43-ae5a-a735fed1047f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a1729178-fdc7-5fff-a56c-bb49b357126e', 1), '60e9764981a31bf1c2eaf9b6f935a4d572d6aa643ddb8dc25dfae58da3922abe',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/ae943926f672cfb8069bca917513a007fb1792c31fa20de35811df3744e57368.mp3', 966, '2026-09-14 03:10:06.420656', 'de2541032b778f9206d11c90030425396f61c5bb65eb987c047c3a930ac0c93c', 'validated', '{"audio_key":"ae943926f672cfb8069bca917513a007fb1792c31fa20de35811df3744e57368","entity_key":"lx_at_home_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"de2541032b778f9206d11c90030425396f61c5bb65eb987c047c3a930ac0c93c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/ae943926f672cfb8069bca917513a007fb1792c31fa20de35811df3744e57368.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_at_home_04 -> audio/generated/it-IT/lexical/ae943926f672cfb8069bca917513a007fb1792c31fa20de35811df3744e57368.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('89f0e201-7872-59ca-9fdb-548b5a65e5f5', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_at_home_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '60e9764981a31bf1c2eaf9b6f935a4d572d6aa643ddb8dc25dfae58da3922abe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('05066b30-2a89-50d1-bebc-ba772e46df4d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('89f0e201-7872-59ca-9fdb-548b5a65e5f5', 1), '60e9764981a31bf1c2eaf9b6f935a4d572d6aa643ddb8dc25dfae58da3922abe',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/ae943926f672cfb8069bca917513a007fb1792c31fa20de35811df3744e57368.mp3', 966, '2026-09-14 03:10:06.420656', 'de2541032b778f9206d11c90030425396f61c5bb65eb987c047c3a930ac0c93c', 'validated', '{"audio_key":"ae943926f672cfb8069bca917513a007fb1792c31fa20de35811df3744e57368","entity_key":"wf_at_home_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"de2541032b778f9206d11c90030425396f61c5bb65eb987c047c3a930ac0c93c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/ae943926f672cfb8069bca917513a007fb1792c31fa20de35811df3744e57368.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_my_family_01 -> audio/generated/it-IT/lexical/af75b5396c9ebed1a41730c009a212466f641236f454310e4a0be77f5b6598bc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('40cbc214-17c3-582e-8288-b0405ff54447', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_my_family_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd99468a54179e3d803864639c5c22609029ed87dfa11ed0b68b31c446b222844'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('04c36280-af6c-5b98-808f-0b4b2fad0ef9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('40cbc214-17c3-582e-8288-b0405ff54447', 1), 'd99468a54179e3d803864639c5c22609029ed87dfa11ed0b68b31c446b222844',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/af75b5396c9ebed1a41730c009a212466f641236f454310e4a0be77f5b6598bc.mp3', 1018, '2026-09-14 03:10:06.649850', 'd6fb29a5fab14636d02275ce5e0f834ac7ce64e815dbd6670ea9b879a7ac0e0e', 'validated', '{"audio_key":"af75b5396c9ebed1a41730c009a212466f641236f454310e4a0be77f5b6598bc","entity_key":"lx_my_family_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d6fb29a5fab14636d02275ce5e0f834ac7ce64e815dbd6670ea9b879a7ac0e0e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/af75b5396c9ebed1a41730c009a212466f641236f454310e4a0be77f5b6598bc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_my_family_01 -> audio/generated/it-IT/lexical/af75b5396c9ebed1a41730c009a212466f641236f454310e4a0be77f5b6598bc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f491801b-7336-5a45-b56a-5aa77cb083c8', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_my_family_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd99468a54179e3d803864639c5c22609029ed87dfa11ed0b68b31c446b222844'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c47cecf9-0315-53bc-bf8f-505a947c087e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f491801b-7336-5a45-b56a-5aa77cb083c8', 1), 'd99468a54179e3d803864639c5c22609029ed87dfa11ed0b68b31c446b222844',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/af75b5396c9ebed1a41730c009a212466f641236f454310e4a0be77f5b6598bc.mp3', 1018, '2026-09-14 03:10:06.649850', 'd6fb29a5fab14636d02275ce5e0f834ac7ce64e815dbd6670ea9b879a7ac0e0e', 'validated', '{"audio_key":"af75b5396c9ebed1a41730c009a212466f641236f454310e4a0be77f5b6598bc","entity_key":"wf_my_family_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d6fb29a5fab14636d02275ce5e0f834ac7ce64e815dbd6670ea9b879a7ac0e0e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/af75b5396c9ebed1a41730c009a212466f641236f454310e4a0be77f5b6598bc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_getting_around_06 -> audio/generated/it-IT/lexical/b8971dd5be5516b32e97e31b5b07051e57bc186929f48e705c343425373348f2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('dc0514ea-1224-5c6b-b8ed-885732665538', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_getting_around_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a0f2e2f88a4199ec9c7f749d4e8c78695b6dd832534efdc562777e9aadaa877c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c3f4b4e7-55f0-5aed-9f07-93fd18cc6a1b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('dc0514ea-1224-5c6b-b8ed-885732665538', 1), 'a0f2e2f88a4199ec9c7f749d4e8c78695b6dd832534efdc562777e9aadaa877c',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/b8971dd5be5516b32e97e31b5b07051e57bc186929f48e705c343425373348f2.mp3', 1097, '2026-09-14 03:10:07.427248', '586f5cdbac28fece6739757473c7f02a3e304d12d7afb53f11ca6f6a9ea5b5db', 'validated', '{"audio_key":"b8971dd5be5516b32e97e31b5b07051e57bc186929f48e705c343425373348f2","entity_key":"lx_getting_around_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"586f5cdbac28fece6739757473c7f02a3e304d12d7afb53f11ca6f6a9ea5b5db","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/b8971dd5be5516b32e97e31b5b07051e57bc186929f48e705c343425373348f2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_getting_around_06 -> audio/generated/it-IT/lexical/b8971dd5be5516b32e97e31b5b07051e57bc186929f48e705c343425373348f2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9fc35236-5c0b-5362-92d8-131d4f326f8c', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_getting_around_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a0f2e2f88a4199ec9c7f749d4e8c78695b6dd832534efdc562777e9aadaa877c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6b75984d-cb38-500a-b5ae-6afa250783a5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9fc35236-5c0b-5362-92d8-131d4f326f8c', 1), 'a0f2e2f88a4199ec9c7f749d4e8c78695b6dd832534efdc562777e9aadaa877c',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/b8971dd5be5516b32e97e31b5b07051e57bc186929f48e705c343425373348f2.mp3', 1097, '2026-09-14 03:10:07.427248', '586f5cdbac28fece6739757473c7f02a3e304d12d7afb53f11ca6f6a9ea5b5db', 'validated', '{"audio_key":"b8971dd5be5516b32e97e31b5b07051e57bc186929f48e705c343425373348f2","entity_key":"wf_getting_around_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"586f5cdbac28fece6739757473c7f02a3e304d12d7afb53f11ca6f6a9ea5b5db","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/b8971dd5be5516b32e97e31b5b07051e57bc186929f48e705c343425373348f2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_my_family_04 -> audio/generated/it-IT/lexical/c0ad84f5fa7119b48c00edfa4dd8d6a9fb0bfe50dfab714d5c9545fdf7f37862.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e1388a92-bbf1-561e-bb1c-d47713fb7704', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_my_family_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cdb998ea8bb80c18e5e4c2cbd6731c21652fdf8df60d27b671000e927a8e8d26'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f098e009-c595-5ab8-a01b-cfcc558dc5cb', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e1388a92-bbf1-561e-bb1c-d47713fb7704', 1), 'cdb998ea8bb80c18e5e4c2cbd6731c21652fdf8df60d27b671000e927a8e8d26',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/c0ad84f5fa7119b48c00edfa4dd8d6a9fb0bfe50dfab714d5c9545fdf7f37862.mp3', 1097, '2026-09-14 03:10:07.728649', 'bfb5a88f8bd5ef35d69eaa59017c8fda7afdf7079b55952d42a234bde84624ba', 'validated', '{"audio_key":"c0ad84f5fa7119b48c00edfa4dd8d6a9fb0bfe50dfab714d5c9545fdf7f37862","entity_key":"lx_my_family_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"bfb5a88f8bd5ef35d69eaa59017c8fda7afdf7079b55952d42a234bde84624ba","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/c0ad84f5fa7119b48c00edfa4dd8d6a9fb0bfe50dfab714d5c9545fdf7f37862.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_my_family_04 -> audio/generated/it-IT/lexical/c0ad84f5fa7119b48c00edfa4dd8d6a9fb0bfe50dfab714d5c9545fdf7f37862.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('788bfc4a-ad88-5dc9-bd5c-dfda2b04b139', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_my_family_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cdb998ea8bb80c18e5e4c2cbd6731c21652fdf8df60d27b671000e927a8e8d26'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ff4c09dc-6145-568b-b8a4-4a2f0817deda', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('788bfc4a-ad88-5dc9-bd5c-dfda2b04b139', 1), 'cdb998ea8bb80c18e5e4c2cbd6731c21652fdf8df60d27b671000e927a8e8d26',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/c0ad84f5fa7119b48c00edfa4dd8d6a9fb0bfe50dfab714d5c9545fdf7f37862.mp3', 1097, '2026-09-14 03:10:07.728649', 'bfb5a88f8bd5ef35d69eaa59017c8fda7afdf7079b55952d42a234bde84624ba', 'validated', '{"audio_key":"c0ad84f5fa7119b48c00edfa4dd8d6a9fb0bfe50dfab714d5c9545fdf7f37862","entity_key":"wf_my_family_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"bfb5a88f8bd5ef35d69eaa59017c8fda7afdf7079b55952d42a234bde84624ba","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/c0ad84f5fa7119b48c00edfa4dd8d6a9fb0bfe50dfab714d5c9545fdf7f37862.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_getting_around_01 -> audio/generated/it-IT/lexical/c4c5584a3965faa5d9cbc57de5dbaa018cc4a2e1e88ffaa8ce1c6afc3171bbda.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('eda84350-13a3-5e27-9756-7b9f8239eeaa', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_getting_around_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '51133bf30a9724c73cf96e39b917f89ae74b9a8184dd528d2445b79e1402f133'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('44729ba2-a4fc-5b83-804d-775493d23622', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('eda84350-13a3-5e27-9756-7b9f8239eeaa', 1), '51133bf30a9724c73cf96e39b917f89ae74b9a8184dd528d2445b79e1402f133',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/c4c5584a3965faa5d9cbc57de5dbaa018cc4a2e1e88ffaa8ce1c6afc3171bbda.mp3', 1018, '2026-09-14 03:10:08.399835', '97e4a05e129de87bd5931437df68647c3752d64d632f90cc0c1b876c35f22ca3', 'validated', '{"audio_key":"c4c5584a3965faa5d9cbc57de5dbaa018cc4a2e1e88ffaa8ce1c6afc3171bbda","entity_key":"lx_getting_around_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"97e4a05e129de87bd5931437df68647c3752d64d632f90cc0c1b876c35f22ca3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/c4c5584a3965faa5d9cbc57de5dbaa018cc4a2e1e88ffaa8ce1c6afc3171bbda.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_getting_around_01 -> audio/generated/it-IT/lexical/c4c5584a3965faa5d9cbc57de5dbaa018cc4a2e1e88ffaa8ce1c6afc3171bbda.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('829b3351-8aa8-590c-a28e-fdb9d46447b6', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_getting_around_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '51133bf30a9724c73cf96e39b917f89ae74b9a8184dd528d2445b79e1402f133'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('057015f7-6365-5cf7-8c10-5a8b610f7894', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('829b3351-8aa8-590c-a28e-fdb9d46447b6', 1), '51133bf30a9724c73cf96e39b917f89ae74b9a8184dd528d2445b79e1402f133',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/c4c5584a3965faa5d9cbc57de5dbaa018cc4a2e1e88ffaa8ce1c6afc3171bbda.mp3', 1018, '2026-09-14 03:10:08.399835', '97e4a05e129de87bd5931437df68647c3752d64d632f90cc0c1b876c35f22ca3', 'validated', '{"audio_key":"c4c5584a3965faa5d9cbc57de5dbaa018cc4a2e1e88ffaa8ce1c6afc3171bbda","entity_key":"wf_getting_around_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"97e4a05e129de87bd5931437df68647c3752d64d632f90cc0c1b876c35f22ca3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/c4c5584a3965faa5d9cbc57de5dbaa018cc4a2e1e88ffaa8ce1c6afc3171bbda.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_my_family_05 -> audio/generated/it-IT/lexical/c5b4b3c5e4532a1503639d45ccd449554ea95f353faa192c75e037a5bf536e00.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9c643771-6f82-58e2-be07-03db965c320c', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_my_family_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8c76ca5eda6b3343cf5f589731f1b98982b39a8d01612b9d46bfa73f9f8bb550'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('80ffcf3c-0fe9-577b-86a2-1aac2dca6c24', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9c643771-6f82-58e2-be07-03db965c320c', 1), '8c76ca5eda6b3343cf5f589731f1b98982b39a8d01612b9d46bfa73f9f8bb550',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/c5b4b3c5e4532a1503639d45ccd449554ea95f353faa192c75e037a5bf536e00.mp3', 1018, '2026-09-14 03:10:08.721465', '65646f183bae4be7571bc89763fb42a5cb12596dcec62effce81592d436103c8', 'validated', '{"audio_key":"c5b4b3c5e4532a1503639d45ccd449554ea95f353faa192c75e037a5bf536e00","entity_key":"lx_my_family_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"65646f183bae4be7571bc89763fb42a5cb12596dcec62effce81592d436103c8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/c5b4b3c5e4532a1503639d45ccd449554ea95f353faa192c75e037a5bf536e00.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_my_family_05 -> audio/generated/it-IT/lexical/c5b4b3c5e4532a1503639d45ccd449554ea95f353faa192c75e037a5bf536e00.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('90b5f688-d41d-5e5d-b0dc-527db04bce44', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_my_family_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8c76ca5eda6b3343cf5f589731f1b98982b39a8d01612b9d46bfa73f9f8bb550'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d6942fb6-db81-51fb-a8cf-68aa68e3390c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('90b5f688-d41d-5e5d-b0dc-527db04bce44', 1), '8c76ca5eda6b3343cf5f589731f1b98982b39a8d01612b9d46bfa73f9f8bb550',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/c5b4b3c5e4532a1503639d45ccd449554ea95f353faa192c75e037a5bf536e00.mp3', 1018, '2026-09-14 03:10:08.721465', '65646f183bae4be7571bc89763fb42a5cb12596dcec62effce81592d436103c8', 'validated', '{"audio_key":"c5b4b3c5e4532a1503639d45ccd449554ea95f353faa192c75e037a5bf536e00","entity_key":"wf_my_family_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"65646f183bae4be7571bc89763fb42a5cb12596dcec62effce81592d436103c8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/c5b4b3c5e4532a1503639d45ccd449554ea95f353faa192c75e037a5bf536e00.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a1_day_capstone_04 -> audio/generated/it-IT/lexical/c60b251df11d83d89fcab004a202d13d1bdc5bc5581b39b860e2943e2c07993e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7655f651-1550-55f2-b61b-6f139369458c', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a1_day_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fb07166179b1ce3c49dff4b590c44d66119608be403d9be8c43e7372a997ee75'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f159c5c2-74a8-502e-b711-39d52d3adb4c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7655f651-1550-55f2-b61b-6f139369458c', 1), 'fb07166179b1ce3c49dff4b590c44d66119608be403d9be8c43e7372a997ee75',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/c60b251df11d83d89fcab004a202d13d1bdc5bc5581b39b860e2943e2c07993e.mp3', 835, '2026-09-14 03:10:09.372693', '04c6a951b588751831b1ae8bdad0a4af45ea90ade549500028a4aa53921570ca', 'validated', '{"audio_key":"c60b251df11d83d89fcab004a202d13d1bdc5bc5581b39b860e2943e2c07993e","entity_key":"lx_a1_day_capstone_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"04c6a951b588751831b1ae8bdad0a4af45ea90ade549500028a4aa53921570ca","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/c60b251df11d83d89fcab004a202d13d1bdc5bc5581b39b860e2943e2c07993e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a1_day_capstone_04 -> audio/generated/it-IT/lexical/c60b251df11d83d89fcab004a202d13d1bdc5bc5581b39b860e2943e2c07993e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f3c1e777-0db3-57e8-b389-a6048fc90fc8', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a1_day_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fb07166179b1ce3c49dff4b590c44d66119608be403d9be8c43e7372a997ee75'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5d691a30-cd00-5a39-b09f-e5e0e8752357', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f3c1e777-0db3-57e8-b389-a6048fc90fc8', 1), 'fb07166179b1ce3c49dff4b590c44d66119608be403d9be8c43e7372a997ee75',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/c60b251df11d83d89fcab004a202d13d1bdc5bc5581b39b860e2943e2c07993e.mp3', 835, '2026-09-14 03:10:09.372693', '04c6a951b588751831b1ae8bdad0a4af45ea90ade549500028a4aa53921570ca', 'validated', '{"audio_key":"c60b251df11d83d89fcab004a202d13d1bdc5bc5581b39b860e2943e2c07993e","entity_key":"wf_a1_day_capstone_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"04c6a951b588751831b1ae8bdad0a4af45ea90ade549500028a4aa53921570ca","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/c60b251df11d83d89fcab004a202d13d1bdc5bc5581b39b860e2943e2c07993e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_articles_and_objects_06 -> audio/generated/it-IT/lexical/c9396d63f02a2751b4f662faf6bbb1dc1a7014f1a10e8ba21358f0bc171be511.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('991f0bcc-3efa-5a08-848c-51592be66f18', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_articles_and_objects_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '21425924b1a9a5d8768eb48b6ad03d4d4bfb736df6fa8a0164c0aaaed910a8d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('58f76d4c-b6f2-5e54-811b-366cb18aa7ba', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('991f0bcc-3efa-5a08-848c-51592be66f18', 1), '21425924b1a9a5d8768eb48b6ad03d4d4bfb736df6fa8a0164c0aaaed910a8d1',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/c9396d63f02a2751b4f662faf6bbb1dc1a7014f1a10e8ba21358f0bc171be511.mp3', 1071, '2026-09-14 01:57:29.351168', '6d50f11f74498eca4424c33ceaebef81e1825463ec51e97890f933d9a6723f16', 'validated', '{"audio_key":"c9396d63f02a2751b4f662faf6bbb1dc1a7014f1a10e8ba21358f0bc171be511","entity_key":"lx_articles_and_objects_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"6d50f11f74498eca4424c33ceaebef81e1825463ec51e97890f933d9a6723f16","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/c9396d63f02a2751b4f662faf6bbb1dc1a7014f1a10e8ba21358f0bc171be511.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_articles_and_objects_06 -> audio/generated/it-IT/lexical/c9396d63f02a2751b4f662faf6bbb1dc1a7014f1a10e8ba21358f0bc171be511.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5274fa59-f66d-53ec-a9bb-7770801118b9', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_articles_and_objects_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '21425924b1a9a5d8768eb48b6ad03d4d4bfb736df6fa8a0164c0aaaed910a8d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f8b8b3cc-9c35-5c97-8a7b-6572a6cff85a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5274fa59-f66d-53ec-a9bb-7770801118b9', 1), '21425924b1a9a5d8768eb48b6ad03d4d4bfb736df6fa8a0164c0aaaed910a8d1',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/c9396d63f02a2751b4f662faf6bbb1dc1a7014f1a10e8ba21358f0bc171be511.mp3', 1071, '2026-09-14 01:57:29.351168', '6d50f11f74498eca4424c33ceaebef81e1825463ec51e97890f933d9a6723f16', 'validated', '{"audio_key":"c9396d63f02a2751b4f662faf6bbb1dc1a7014f1a10e8ba21358f0bc171be511","entity_key":"wf_articles_and_objects_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"6d50f11f74498eca4424c33ceaebef81e1825463ec51e97890f933d9a6723f16","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/c9396d63f02a2751b4f662faf6bbb1dc1a7014f1a10e8ba21358f0bc171be511.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_at_the_cafe_01 -> audio/generated/it-IT/lexical/cd90d8efcea66b05ee46ddcdb78ad7b95175842e07841b7b252c346ab1c1dbaa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('419e0963-6177-5933-ace9-5cc43841d3be', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_at_the_cafe_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '07f4328075815d92fe80ac02bdfdebcdae3e72964113e430e86f2ac4d4a455c5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dc065a35-a418-5f33-a3c5-e152996fc4fd', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('419e0963-6177-5933-ace9-5cc43841d3be', 1), '07f4328075815d92fe80ac02bdfdebcdae3e72964113e430e86f2ac4d4a455c5',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/cd90d8efcea66b05ee46ddcdb78ad7b95175842e07841b7b252c346ab1c1dbaa.mp3', 914, '2026-09-14 03:10:09.728473', '2d887a0cf56d348b8629adc88012ddd81c217fe9c054dbfce513a07ef9edc64f', 'validated', '{"audio_key":"cd90d8efcea66b05ee46ddcdb78ad7b95175842e07841b7b252c346ab1c1dbaa","entity_key":"lx_at_the_cafe_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2d887a0cf56d348b8629adc88012ddd81c217fe9c054dbfce513a07ef9edc64f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/cd90d8efcea66b05ee46ddcdb78ad7b95175842e07841b7b252c346ab1c1dbaa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_at_the_cafe_01 -> audio/generated/it-IT/lexical/cd90d8efcea66b05ee46ddcdb78ad7b95175842e07841b7b252c346ab1c1dbaa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6c4183f3-c05c-5864-9c9b-0e5f83da671e', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_at_the_cafe_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '07f4328075815d92fe80ac02bdfdebcdae3e72964113e430e86f2ac4d4a455c5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a6411346-46df-5098-94fd-3c4b44706ce7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6c4183f3-c05c-5864-9c9b-0e5f83da671e', 1), '07f4328075815d92fe80ac02bdfdebcdae3e72964113e430e86f2ac4d4a455c5',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/cd90d8efcea66b05ee46ddcdb78ad7b95175842e07841b7b252c346ab1c1dbaa.mp3', 914, '2026-09-14 03:10:09.728473', '2d887a0cf56d348b8629adc88012ddd81c217fe9c054dbfce513a07ef9edc64f', 'validated', '{"audio_key":"cd90d8efcea66b05ee46ddcdb78ad7b95175842e07841b7b252c346ab1c1dbaa","entity_key":"wf_at_the_cafe_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2d887a0cf56d348b8629adc88012ddd81c217fe9c054dbfce513a07ef9edc64f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/cd90d8efcea66b05ee46ddcdb78ad7b95175842e07841b7b252c346ab1c1dbaa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a1_day_capstone_01 -> audio/generated/it-IT/lexical/d1f596a5b21224f5b1d6c88a6923c84f12ce6b91c057165122f5d759daacb0a4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0703b01a-ec99-533f-a44e-1fccc8463736', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a1_day_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1b960dedcef4b6607553497622780d37ccad383117726a25826d6bde5eacae0c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('38ee5764-4d25-5bd5-98a2-becd2a637e04', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0703b01a-ec99-533f-a44e-1fccc8463736', 1), '1b960dedcef4b6607553497622780d37ccad383117726a25826d6bde5eacae0c',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/d1f596a5b21224f5b1d6c88a6923c84f12ce6b91c057165122f5d759daacb0a4.mp3', 1201, '2026-09-14 03:10:10.375137', '3188a69272282b7669cb09253fac63dd7b674ce0a2cc138e091a2ea99923a079', 'validated', '{"audio_key":"d1f596a5b21224f5b1d6c88a6923c84f12ce6b91c057165122f5d759daacb0a4","entity_key":"lx_a1_day_capstone_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"3188a69272282b7669cb09253fac63dd7b674ce0a2cc138e091a2ea99923a079","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/d1f596a5b21224f5b1d6c88a6923c84f12ce6b91c057165122f5d759daacb0a4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a1_day_capstone_01 -> audio/generated/it-IT/lexical/d1f596a5b21224f5b1d6c88a6923c84f12ce6b91c057165122f5d759daacb0a4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b35a146e-a64b-538f-8f95-70c199ed8d55', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a1_day_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1b960dedcef4b6607553497622780d37ccad383117726a25826d6bde5eacae0c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2c115f8a-e300-5971-aa9d-7b36094a1cd6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b35a146e-a64b-538f-8f95-70c199ed8d55', 1), '1b960dedcef4b6607553497622780d37ccad383117726a25826d6bde5eacae0c',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/d1f596a5b21224f5b1d6c88a6923c84f12ce6b91c057165122f5d759daacb0a4.mp3', 1201, '2026-09-14 03:10:10.375137', '3188a69272282b7669cb09253fac63dd7b674ce0a2cc138e091a2ea99923a079', 'validated', '{"audio_key":"d1f596a5b21224f5b1d6c88a6923c84f12ce6b91c057165122f5d759daacb0a4","entity_key":"wf_a1_day_capstone_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"3188a69272282b7669cb09253fac63dd7b674ce0a2cc138e091a2ea99923a079","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/d1f596a5b21224f5b1d6c88a6923c84f12ce6b91c057165122f5d759daacb0a4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_shopping_basics_06 -> audio/generated/it-IT/lexical/d41f44190b7ec112ee66c8ce9bebf8f13fc0fdcc501df7f591e9281addf06848.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fb609dfe-955c-5a00-9acc-3e4403c14479', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_shopping_basics_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c9a13fe181cf7f65ca36139d8f81c0541392327deab718e36f19a373c872f7f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e163d206-d474-58c0-ab73-1bd0b5face15', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fb609dfe-955c-5a00-9acc-3e4403c14479', 1), '2c9a13fe181cf7f65ca36139d8f81c0541392327deab718e36f19a373c872f7f',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/d41f44190b7ec112ee66c8ce9bebf8f13fc0fdcc501df7f591e9281addf06848.mp3', 1332, '2026-09-14 03:10:11.127416', 'f86909230118cb070e1a86e830af24bb42ec211c3656dd0a7d1df165e10e4371', 'validated', '{"audio_key":"d41f44190b7ec112ee66c8ce9bebf8f13fc0fdcc501df7f591e9281addf06848","entity_key":"lx_shopping_basics_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f86909230118cb070e1a86e830af24bb42ec211c3656dd0a7d1df165e10e4371","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/d41f44190b7ec112ee66c8ce9bebf8f13fc0fdcc501df7f591e9281addf06848.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_shopping_basics_06 -> audio/generated/it-IT/lexical/d41f44190b7ec112ee66c8ce9bebf8f13fc0fdcc501df7f591e9281addf06848.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c6f1bdea-87c5-537d-9dcc-719d4f647a2e', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_shopping_basics_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c9a13fe181cf7f65ca36139d8f81c0541392327deab718e36f19a373c872f7f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('70ab8139-9e5d-5832-8620-2f6821a081f0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c6f1bdea-87c5-537d-9dcc-719d4f647a2e', 1), '2c9a13fe181cf7f65ca36139d8f81c0541392327deab718e36f19a373c872f7f',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/d41f44190b7ec112ee66c8ce9bebf8f13fc0fdcc501df7f591e9281addf06848.mp3', 1332, '2026-09-14 03:10:11.127416', 'f86909230118cb070e1a86e830af24bb42ec211c3656dd0a7d1df165e10e4371', 'validated', '{"audio_key":"d41f44190b7ec112ee66c8ce9bebf8f13fc0fdcc501df7f591e9281addf06848","entity_key":"wf_shopping_basics_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f86909230118cb070e1a86e830af24bb42ec211c3656dd0a7d1df165e10e4371","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/d41f44190b7ec112ee66c8ce9bebf8f13fc0fdcc501df7f591e9281addf06848.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_at_the_cafe_03 -> audio/generated/it-IT/lexical/de9839e50cec1b7964938524ff9f02792dcfa4f61b45cd68b24a5c3c5fa36782.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a8d7fb5a-2bc7-5b3f-8d97-381d7b6634c6', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_at_the_cafe_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3b13767a6fdf06127e01895c9e60b504e49324aaedb0e01cecf65010506e01c0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('01080777-391d-5d0f-a587-529ce363613a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a8d7fb5a-2bc7-5b3f-8d97-381d7b6634c6', 1), '3b13767a6fdf06127e01895c9e60b504e49324aaedb0e01cecf65010506e01c0',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/de9839e50cec1b7964938524ff9f02792dcfa4f61b45cd68b24a5c3c5fa36782.mp3', 1149, '2026-09-14 03:10:11.378247', '7524a3497302557abcc78cf5940b14fe4faaa2437e2b0869325562f1e245b5a5', 'validated', '{"audio_key":"de9839e50cec1b7964938524ff9f02792dcfa4f61b45cd68b24a5c3c5fa36782","entity_key":"lx_at_the_cafe_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"7524a3497302557abcc78cf5940b14fe4faaa2437e2b0869325562f1e245b5a5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/de9839e50cec1b7964938524ff9f02792dcfa4f61b45cd68b24a5c3c5fa36782.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_at_the_cafe_03 -> audio/generated/it-IT/lexical/de9839e50cec1b7964938524ff9f02792dcfa4f61b45cd68b24a5c3c5fa36782.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b6218cdb-d30f-5a4f-a0d1-d2e4aebed915', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_at_the_cafe_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3b13767a6fdf06127e01895c9e60b504e49324aaedb0e01cecf65010506e01c0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('64849197-9346-59ed-b8c8-d78b38369d57', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b6218cdb-d30f-5a4f-a0d1-d2e4aebed915', 1), '3b13767a6fdf06127e01895c9e60b504e49324aaedb0e01cecf65010506e01c0',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/de9839e50cec1b7964938524ff9f02792dcfa4f61b45cd68b24a5c3c5fa36782.mp3', 1149, '2026-09-14 03:10:11.378247', '7524a3497302557abcc78cf5940b14fe4faaa2437e2b0869325562f1e245b5a5', 'validated', '{"audio_key":"de9839e50cec1b7964938524ff9f02792dcfa4f61b45cd68b24a5c3c5fa36782","entity_key":"wf_at_the_cafe_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"7524a3497302557abcc78cf5940b14fe4faaa2437e2b0869325562f1e245b5a5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/de9839e50cec1b7964938524ff9f02792dcfa4f61b45cd68b24a5c3c5fa36782.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_at_the_cafe_02 -> audio/generated/it-IT/lexical/e1bd58d4501997bbf7b86374aa84cb716078f2ac5d3753e97391d1e270b30b2d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5c75898f-5eb4-5e50-ad7c-552922f0108e', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_at_the_cafe_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '98fc968d960286acd9d15255d53933e0025eecf95b5787bcf8da54cd469c1608'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4c77886b-2fda-581a-96c9-a5cf228ee981', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5c75898f-5eb4-5e50-ad7c-552922f0108e', 1), '98fc968d960286acd9d15255d53933e0025eecf95b5787bcf8da54cd469c1608',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/e1bd58d4501997bbf7b86374aa84cb716078f2ac5d3753e97391d1e270b30b2d.mp3', 862, '2026-09-14 03:10:12.277306', '22e2f51caa43dae7d5b7f5c5ffbd7b2a063c97a48ed877785301e28ab27ce0c9', 'validated', '{"audio_key":"e1bd58d4501997bbf7b86374aa84cb716078f2ac5d3753e97391d1e270b30b2d","entity_key":"lx_at_the_cafe_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"22e2f51caa43dae7d5b7f5c5ffbd7b2a063c97a48ed877785301e28ab27ce0c9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/e1bd58d4501997bbf7b86374aa84cb716078f2ac5d3753e97391d1e270b30b2d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_at_the_cafe_02 -> audio/generated/it-IT/lexical/e1bd58d4501997bbf7b86374aa84cb716078f2ac5d3753e97391d1e270b30b2d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('82d4e241-a9c0-5828-a5d9-88655f03619a', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_at_the_cafe_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '98fc968d960286acd9d15255d53933e0025eecf95b5787bcf8da54cd469c1608'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b88f81f0-a302-570d-b1c2-9400f627c01c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('82d4e241-a9c0-5828-a5d9-88655f03619a', 1), '98fc968d960286acd9d15255d53933e0025eecf95b5787bcf8da54cd469c1608',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/e1bd58d4501997bbf7b86374aa84cb716078f2ac5d3753e97391d1e270b30b2d.mp3', 862, '2026-09-14 03:10:12.277306', '22e2f51caa43dae7d5b7f5c5ffbd7b2a063c97a48ed877785301e28ab27ce0c9', 'validated', '{"audio_key":"e1bd58d4501997bbf7b86374aa84cb716078f2ac5d3753e97391d1e270b30b2d","entity_key":"wf_at_the_cafe_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"22e2f51caa43dae7d5b7f5c5ffbd7b2a063c97a48ed877785301e28ab27ce0c9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/e1bd58d4501997bbf7b86374aa84cb716078f2ac5d3753e97391d1e270b30b2d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_at_the_cafe_05 -> audio/generated/it-IT/lexical/edd4bec23978317c066d02c03617251f445b6df3e5741ca465e2e3406df3a3a8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('46e4cabc-dcc8-5a70-b934-9f86e669c501', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_at_the_cafe_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '57066c14f9ebab3ba24de819bff23e6cd620a05cbfbc4f5c4232096141d92145'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6084a5eb-367d-5bf0-8f82-08a94c5bab28', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('46e4cabc-dcc8-5a70-b934-9f86e669c501', 1), '57066c14f9ebab3ba24de819bff23e6cd620a05cbfbc4f5c4232096141d92145',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/edd4bec23978317c066d02c03617251f445b6df3e5741ca465e2e3406df3a3a8.mp3', 1018, '2026-09-14 03:10:12.437053', 'cd1d1219038176225904033f984ea2a951414b427760b7c003bf435da3f068a5', 'validated', '{"audio_key":"edd4bec23978317c066d02c03617251f445b6df3e5741ca465e2e3406df3a3a8","entity_key":"lx_at_the_cafe_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"cd1d1219038176225904033f984ea2a951414b427760b7c003bf435da3f068a5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/edd4bec23978317c066d02c03617251f445b6df3e5741ca465e2e3406df3a3a8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_at_the_cafe_05 -> audio/generated/it-IT/lexical/edd4bec23978317c066d02c03617251f445b6df3e5741ca465e2e3406df3a3a8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('569fa010-e349-5032-a21c-249083d7c8bd', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_at_the_cafe_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '57066c14f9ebab3ba24de819bff23e6cd620a05cbfbc4f5c4232096141d92145'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7bdd7cac-e563-5ff3-a325-8ec119e5bc19', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('569fa010-e349-5032-a21c-249083d7c8bd', 1), '57066c14f9ebab3ba24de819bff23e6cd620a05cbfbc4f5c4232096141d92145',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/edd4bec23978317c066d02c03617251f445b6df3e5741ca465e2e3406df3a3a8.mp3', 1018, '2026-09-14 03:10:12.437053', 'cd1d1219038176225904033f984ea2a951414b427760b7c003bf435da3f068a5', 'validated', '{"audio_key":"edd4bec23978317c066d02c03617251f445b6df3e5741ca465e2e3406df3a3a8","entity_key":"wf_at_the_cafe_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"cd1d1219038176225904033f984ea2a951414b427760b7c003bf435da3f068a5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/edd4bec23978317c066d02c03617251f445b6df3e5741ca465e2e3406df3a3a8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_time_and_plans_01 -> audio/generated/it-IT/lexical/efe868f52abc0c3988900113cade3068b19be0dbd6d61e53756a80982dc67572.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('dfe292bc-20c1-57b4-989c-e779f08607a8', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_time_and_plans_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1ec63275753fb19a54e664a8d11e7e1529bcd074375e8e06cee38af6e3a5bb9a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f15d081a-8a48-58f2-aaa9-d57ccab82c16', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('dfe292bc-20c1-57b4-989c-e779f08607a8', 1), '1ec63275753fb19a54e664a8d11e7e1529bcd074375e8e06cee38af6e3a5bb9a',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/efe868f52abc0c3988900113cade3068b19be0dbd6d61e53756a80982dc67572.mp3', 731, '2026-09-14 03:10:13.258174', '357295c8efa06ba6e946e45c814eeb42bf021ab08743ef644a8c9f3e7fe53d16', 'validated', '{"audio_key":"efe868f52abc0c3988900113cade3068b19be0dbd6d61e53756a80982dc67572","entity_key":"lx_time_and_plans_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"357295c8efa06ba6e946e45c814eeb42bf021ab08743ef644a8c9f3e7fe53d16","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/efe868f52abc0c3988900113cade3068b19be0dbd6d61e53756a80982dc67572.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_time_and_plans_01 -> audio/generated/it-IT/lexical/efe868f52abc0c3988900113cade3068b19be0dbd6d61e53756a80982dc67572.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('eb7aa984-3113-5740-9c87-a50b09703d76', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_time_and_plans_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1ec63275753fb19a54e664a8d11e7e1529bcd074375e8e06cee38af6e3a5bb9a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1927b0b0-23d3-5450-96c8-e60058d9b616', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('eb7aa984-3113-5740-9c87-a50b09703d76', 1), '1ec63275753fb19a54e664a8d11e7e1529bcd074375e8e06cee38af6e3a5bb9a',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/efe868f52abc0c3988900113cade3068b19be0dbd6d61e53756a80982dc67572.mp3', 731, '2026-09-14 03:10:13.258174', '357295c8efa06ba6e946e45c814eeb42bf021ab08743ef644a8c9f3e7fe53d16', 'validated', '{"audio_key":"efe868f52abc0c3988900113cade3068b19be0dbd6d61e53756a80982dc67572","entity_key":"wf_time_and_plans_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"357295c8efa06ba6e946e45c814eeb42bf021ab08743ef644a8c9f3e7fe53d16","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/efe868f52abc0c3988900113cade3068b19be0dbd6d61e53756a80982dc67572.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_at_the_cafe_04 -> audio/generated/it-IT/lexical/f2efc03c64f697a244b14af0e09975ad629eada4dd53719eafe05f8ad9718cfe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ebc839da-afc9-5816-a7ba-5400cfa69969', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_at_the_cafe_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7779e4f15bce6879c7798ce62b22dac5cc11c97dd97a2e5ef8a3dc058c84201d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1e83cffa-a4b9-598c-a7ea-339eb599638c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ebc839da-afc9-5816-a7ba-5400cfa69969', 1), '7779e4f15bce6879c7798ce62b22dac5cc11c97dd97a2e5ef8a3dc058c84201d',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/f2efc03c64f697a244b14af0e09975ad629eada4dd53719eafe05f8ad9718cfe.mp3', 914, '2026-09-14 03:10:13.434505', 'fdbae286cca541cd9a4640cd58a7d456249ef1b521d1d96cc3d4c3ead5b60768', 'validated', '{"audio_key":"f2efc03c64f697a244b14af0e09975ad629eada4dd53719eafe05f8ad9718cfe","entity_key":"lx_at_the_cafe_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"fdbae286cca541cd9a4640cd58a7d456249ef1b521d1d96cc3d4c3ead5b60768","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/f2efc03c64f697a244b14af0e09975ad629eada4dd53719eafe05f8ad9718cfe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_at_the_cafe_04 -> audio/generated/it-IT/lexical/f2efc03c64f697a244b14af0e09975ad629eada4dd53719eafe05f8ad9718cfe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4cb28662-695e-557b-a8c3-3c493ef2e8d7', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_at_the_cafe_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7779e4f15bce6879c7798ce62b22dac5cc11c97dd97a2e5ef8a3dc058c84201d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2a934056-931b-5d7e-981d-839769c05cc6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4cb28662-695e-557b-a8c3-3c493ef2e8d7', 1), '7779e4f15bce6879c7798ce62b22dac5cc11c97dd97a2e5ef8a3dc058c84201d',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/f2efc03c64f697a244b14af0e09975ad629eada4dd53719eafe05f8ad9718cfe.mp3', 914, '2026-09-14 03:10:13.434505', 'fdbae286cca541cd9a4640cd58a7d456249ef1b521d1d96cc3d4c3ead5b60768', 'validated', '{"audio_key":"f2efc03c64f697a244b14af0e09975ad629eada4dd53719eafe05f8ad9718cfe","entity_key":"wf_at_the_cafe_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"fdbae286cca541cd9a4640cd58a7d456249ef1b521d1d96cc3d4c3ead5b60768","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/f2efc03c64f697a244b14af0e09975ad629eada4dd53719eafe05f8ad9718cfe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_getting_around_04 -> audio/generated/it-IT/lexical/f6ad8278ebd13c49eafe22f2c89d5da71064591cab988c6f82c55c77c9e4bade.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3a07c772-2603-5290-a670-3c044a55ed06', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_getting_around_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aff4008b1065f606ffaceafd0aea1b8c5ffeb48b920f49a29f42d1b2befa15ac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('caf91ded-fc58-5969-958b-95c9d3838af0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3a07c772-2603-5290-a670-3c044a55ed06', 1), 'aff4008b1065f606ffaceafd0aea1b8c5ffeb48b920f49a29f42d1b2befa15ac',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/f6ad8278ebd13c49eafe22f2c89d5da71064591cab988c6f82c55c77c9e4bade.mp3', 1071, '2026-09-14 03:10:14.288963', 'd6e908b7d39d0cbdeea65f77f4f78866cf8f62348db07a2fe035c0a08b558b89', 'validated', '{"audio_key":"f6ad8278ebd13c49eafe22f2c89d5da71064591cab988c6f82c55c77c9e4bade","entity_key":"lx_getting_around_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d6e908b7d39d0cbdeea65f77f4f78866cf8f62348db07a2fe035c0a08b558b89","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/f6ad8278ebd13c49eafe22f2c89d5da71064591cab988c6f82c55c77c9e4bade.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_getting_around_04 -> audio/generated/it-IT/lexical/f6ad8278ebd13c49eafe22f2c89d5da71064591cab988c6f82c55c77c9e4bade.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b2fc447a-abc4-5f55-8138-a0fc9f2b451d', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_getting_around_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aff4008b1065f606ffaceafd0aea1b8c5ffeb48b920f49a29f42d1b2befa15ac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2ec5db82-e3ae-5da8-8e36-9433aa4e1d96', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b2fc447a-abc4-5f55-8138-a0fc9f2b451d', 1), 'aff4008b1065f606ffaceafd0aea1b8c5ffeb48b920f49a29f42d1b2befa15ac',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/f6ad8278ebd13c49eafe22f2c89d5da71064591cab988c6f82c55c77c9e4bade.mp3', 1071, '2026-09-14 03:10:14.288963', 'd6e908b7d39d0cbdeea65f77f4f78866cf8f62348db07a2fe035c0a08b558b89', 'validated', '{"audio_key":"f6ad8278ebd13c49eafe22f2c89d5da71064591cab988c6f82c55c77c9e4bade","entity_key":"wf_getting_around_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d6e908b7d39d0cbdeea65f77f4f78866cf8f62348db07a2fe035c0a08b558b89","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/f6ad8278ebd13c49eafe22f2c89d5da71064591cab988c6f82c55c77c9e4bade.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_who_i_am_02 -> audio/generated/it-IT/lexical/fc81eba677c416b81f3a1ab47c7ce6af76b0d6cb845701fc19365afe86b8a1a2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('85c01f8a-ead6-548f-918d-065d33047316', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_who_i_am_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b83559379d0bff2c892d60b1785226cb31c04172482f05a15942c2af2b2e8038'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6e125796-bbd8-5f83-ac72-e0254579f6a4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('85c01f8a-ead6-548f-918d-065d33047316', 1), 'b83559379d0bff2c892d60b1785226cb31c04172482f05a15942c2af2b2e8038',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/fc81eba677c416b81f3a1ab47c7ce6af76b0d6cb845701fc19365afe86b8a1a2.mp3', 1332, '2026-09-14 03:10:14.657669', 'd0bae99ed350e57c735c68d9f77e38be9b3e4f1376fa693cb33adcf758644fa5', 'validated', '{"audio_key":"fc81eba677c416b81f3a1ab47c7ce6af76b0d6cb845701fc19365afe86b8a1a2","entity_key":"lx_who_i_am_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d0bae99ed350e57c735c68d9f77e38be9b3e4f1376fa693cb33adcf758644fa5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/fc81eba677c416b81f3a1ab47c7ce6af76b0d6cb845701fc19365afe86b8a1a2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_who_i_am_02 -> audio/generated/it-IT/lexical/fc81eba677c416b81f3a1ab47c7ce6af76b0d6cb845701fc19365afe86b8a1a2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f46640f2-8ff8-51e4-9470-93af989213e7', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_who_i_am_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b83559379d0bff2c892d60b1785226cb31c04172482f05a15942c2af2b2e8038'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2fad3974-efd8-59d8-99e6-deaf4ed318fd', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f46640f2-8ff8-51e4-9470-93af989213e7', 1), 'b83559379d0bff2c892d60b1785226cb31c04172482f05a15942c2af2b2e8038',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/fc81eba677c416b81f3a1ab47c7ce6af76b0d6cb845701fc19365afe86b8a1a2.mp3', 1332, '2026-09-14 03:10:14.657669', 'd0bae99ed350e57c735c68d9f77e38be9b3e4f1376fa693cb33adcf758644fa5', 'validated', '{"audio_key":"fc81eba677c416b81f3a1ab47c7ce6af76b0d6cb845701fc19365afe86b8a1a2","entity_key":"wf_who_i_am_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d0bae99ed350e57c735c68d9f77e38be9b3e4f1376fa693cb33adcf758644fa5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/fc81eba677c416b81f3a1ab47c7ce6af76b0d6cb845701fc19365afe86b8a1a2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_daily_routine_02 -> audio/generated/it-IT/lexical/fd71c02a0af8a312f4b92511f9262449a075a38792e621cd6a1adcd4d87c0d48.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ccdba717-8465-5aaf-a7d5-6ff73b4fd361', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_daily_routine_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '66b6138495b7fb7f03d09f1d60984b239a5f398f573b9dc21bee13deca37ee50'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('996d93c8-eec6-585a-b306-5fc84c4a11fe', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ccdba717-8465-5aaf-a7d5-6ff73b4fd361', 1), '66b6138495b7fb7f03d09f1d60984b239a5f398f573b9dc21bee13deca37ee50',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/fd71c02a0af8a312f4b92511f9262449a075a38792e621cd6a1adcd4d87c0d48.mp3', 1097, '2026-09-14 03:10:15.287313', '8ff5ce9ea00bf67464cfcd9968d0b0bb7bbc73dacfd5cee50f3a4c79e6d854dd', 'validated', '{"audio_key":"fd71c02a0af8a312f4b92511f9262449a075a38792e621cd6a1adcd4d87c0d48","entity_key":"lx_daily_routine_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8ff5ce9ea00bf67464cfcd9968d0b0bb7bbc73dacfd5cee50f3a4c79e6d854dd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/fd71c02a0af8a312f4b92511f9262449a075a38792e621cd6a1adcd4d87c0d48.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_daily_routine_02 -> audio/generated/it-IT/lexical/fd71c02a0af8a312f4b92511f9262449a075a38792e621cd6a1adcd4d87c0d48.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2527e1e8-6510-5c72-a316-d753be4eb9f2', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_daily_routine_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '66b6138495b7fb7f03d09f1d60984b239a5f398f573b9dc21bee13deca37ee50'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f0c81630-b161-510a-9f81-e523d01b3d54', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2527e1e8-6510-5c72-a316-d753be4eb9f2', 1), '66b6138495b7fb7f03d09f1d60984b239a5f398f573b9dc21bee13deca37ee50',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/fd71c02a0af8a312f4b92511f9262449a075a38792e621cd6a1adcd4d87c0d48.mp3', 1097, '2026-09-14 03:10:15.287313', '8ff5ce9ea00bf67464cfcd9968d0b0bb7bbc73dacfd5cee50f3a4c79e6d854dd', 'validated', '{"audio_key":"fd71c02a0af8a312f4b92511f9262449a075a38792e621cd6a1adcd4d87c0d48","entity_key":"wf_daily_routine_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8ff5ce9ea00bf67464cfcd9968d0b0bb7bbc73dacfd5cee50f3a4c79e6d854dd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/fd71c02a0af8a312f4b92511f9262449a075a38792e621cd6a1adcd4d87c0d48.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_who_i_am_02 -> audio/generated/it-IT/utterances/02264e8e7fb49accb9042c6d7d724289c7e80024e0f297fc61cf58fb0ee0d506.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('dde499ad-9795-550c-b442-f4fbe5e18581', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_who_i_am_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '57cd692429e32084e016885c412e0b8fd6811df903d814ea9984a0bc53e3d4ac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5fc90d35-9b0f-59e1-82b2-852bbca411d5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('dde499ad-9795-550c-b442-f4fbe5e18581', 1), '57cd692429e32084e016885c412e0b8fd6811df903d814ea9984a0bc53e3d4ac',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/02264e8e7fb49accb9042c6d7d724289c7e80024e0f297fc61cf58fb0ee0d506.mp3', 1488, '2026-09-14 03:10:15.708516', '62f9750073f4f4a886589399cd597e0ed2709bb11b64d174189952825851db0c', 'validated', '{"audio_key":"02264e8e7fb49accb9042c6d7d724289c7e80024e0f297fc61cf58fb0ee0d506","entity_key":"u_who_i_am_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"62f9750073f4f4a886589399cd597e0ed2709bb11b64d174189952825851db0c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/02264e8e7fb49accb9042c6d7d724289c7e80024e0f297fc61cf58fb0ee0d506.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_who_i_am_01_listen -> audio/generated/it-IT/utterances/02264e8e7fb49accb9042c6d7d724289c7e80024e0f297fc61cf58fb0ee0d506.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('739998fb-582c-553b-8cfb-422746a9562e', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_who_i_am_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '57cd692429e32084e016885c412e0b8fd6811df903d814ea9984a0bc53e3d4ac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eafca666-3ee7-51a7-9db1-3665d411cf45', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('739998fb-582c-553b-8cfb-422746a9562e', 1), '57cd692429e32084e016885c412e0b8fd6811df903d814ea9984a0bc53e3d4ac',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/02264e8e7fb49accb9042c6d7d724289c7e80024e0f297fc61cf58fb0ee0d506.mp3', 1488, '2026-09-14 03:10:15.708516', '62f9750073f4f4a886589399cd597e0ed2709bb11b64d174189952825851db0c', 'validated', '{"audio_key":"02264e8e7fb49accb9042c6d7d724289c7e80024e0f297fc61cf58fb0ee0d506","entity_key":"e_who_i_am_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"62f9750073f4f4a886589399cd597e0ed2709bb11b64d174189952825851db0c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/02264e8e7fb49accb9042c6d7d724289c7e80024e0f297fc61cf58fb0ee0d506.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_time_and_plans_02 -> audio/generated/it-IT/utterances/09764ef68f21b01e79105ccffe2300c5c2054972008545409ab9ab05fdb82da0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0dd8eac8-00e9-5e25-9426-b24112bf838b', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_time_and_plans_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '70a4dd05c7f40e515f45586d70163a9a3acdc11f7e736dba4bcce9d20834e4ff'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f758a964-2f17-5ade-9c05-c7b79eb6a886', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0dd8eac8-00e9-5e25-9426-b24112bf838b', 1), '70a4dd05c7f40e515f45586d70163a9a3acdc11f7e736dba4bcce9d20834e4ff',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/09764ef68f21b01e79105ccffe2300c5c2054972008545409ab9ab05fdb82da0.mp3', 1097, '2026-09-14 03:10:16.311803', '383983eb370d8d5d6556a5522c775fdcc635e081c928f50be9108a4aa697d610', 'validated', '{"audio_key":"09764ef68f21b01e79105ccffe2300c5c2054972008545409ab9ab05fdb82da0","entity_key":"u_time_and_plans_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"383983eb370d8d5d6556a5522c775fdcc635e081c928f50be9108a4aa697d610","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/09764ef68f21b01e79105ccffe2300c5c2054972008545409ab9ab05fdb82da0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_time_and_plans_01_listen -> audio/generated/it-IT/utterances/09764ef68f21b01e79105ccffe2300c5c2054972008545409ab9ab05fdb82da0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('1945383f-6b33-5928-9677-9b853cd55dd4', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_time_and_plans_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '70a4dd05c7f40e515f45586d70163a9a3acdc11f7e736dba4bcce9d20834e4ff'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a5e69d63-5fa2-5af3-95fa-bfef10f030e4', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('1945383f-6b33-5928-9677-9b853cd55dd4', 1), '70a4dd05c7f40e515f45586d70163a9a3acdc11f7e736dba4bcce9d20834e4ff',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/09764ef68f21b01e79105ccffe2300c5c2054972008545409ab9ab05fdb82da0.mp3', 1097, '2026-09-14 03:10:16.311803', '383983eb370d8d5d6556a5522c775fdcc635e081c928f50be9108a4aa697d610', 'validated', '{"audio_key":"09764ef68f21b01e79105ccffe2300c5c2054972008545409ab9ab05fdb82da0","entity_key":"e_time_and_plans_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"383983eb370d8d5d6556a5522c775fdcc635e081c928f50be9108a4aa697d610","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/09764ef68f21b01e79105ccffe2300c5c2054972008545409ab9ab05fdb82da0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_getting_around_02 -> audio/generated/it-IT/utterances/116c648547664104fe744a1a7bb6c1b0283d8393044def6762287e13371e77dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f180f91d-48bf-578d-a156-64b8715cb77e', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_getting_around_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '61e1cecdbbea2dddb11c5f529aa1f8fa30fef473a3bd9205e9c30e0b2e9415d0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('74c3c7b7-9914-5b1d-9b5c-a7a159d2c582', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f180f91d-48bf-578d-a156-64b8715cb77e', 1), '61e1cecdbbea2dddb11c5f529aa1f8fa30fef473a3bd9205e9c30e0b2e9415d0',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/116c648547664104fe744a1a7bb6c1b0283d8393044def6762287e13371e77dd.mp3', 1436, '2026-09-14 03:10:16.746086', 'a60b51e4c601e5e4d0b3f79d750132eb1d960da72c02e891484a88d5113bca60', 'validated', '{"audio_key":"116c648547664104fe744a1a7bb6c1b0283d8393044def6762287e13371e77dd","entity_key":"u_getting_around_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"a60b51e4c601e5e4d0b3f79d750132eb1d960da72c02e891484a88d5113bca60","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/116c648547664104fe744a1a7bb6c1b0283d8393044def6762287e13371e77dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_getting_around_01_listen -> audio/generated/it-IT/utterances/116c648547664104fe744a1a7bb6c1b0283d8393044def6762287e13371e77dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('57e14d27-fc49-53cd-a602-a707ab1d51e5', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_getting_around_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '61e1cecdbbea2dddb11c5f529aa1f8fa30fef473a3bd9205e9c30e0b2e9415d0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2bdb92c7-6ad1-5461-b546-b7761036fde0', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('57e14d27-fc49-53cd-a602-a707ab1d51e5', 1), '61e1cecdbbea2dddb11c5f529aa1f8fa30fef473a3bd9205e9c30e0b2e9415d0',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/116c648547664104fe744a1a7bb6c1b0283d8393044def6762287e13371e77dd.mp3', 1436, '2026-09-14 03:10:16.746086', 'a60b51e4c601e5e4d0b3f79d750132eb1d960da72c02e891484a88d5113bca60', 'validated', '{"audio_key":"116c648547664104fe744a1a7bb6c1b0283d8393044def6762287e13371e77dd","entity_key":"e_getting_around_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"a60b51e4c601e5e4d0b3f79d750132eb1d960da72c02e891484a88d5113bca60","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/116c648547664104fe744a1a7bb6c1b0283d8393044def6762287e13371e77dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_my_family_01 -> audio/generated/it-IT/utterances/17dc8a9d72b5a3abae6783820391ce952329407d1ba22fac3d8d1acb802d1202.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ee56463e-51d4-5371-8db0-5021dc7cce4e', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_my_family_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c2704461f582e4515376d71d9de81606408ed4f873b8cf24a1c34da51ce8cccb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5b8329db-68ab-5994-a205-c814101803a3', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ee56463e-51d4-5371-8db0-5021dc7cce4e', 1), 'c2704461f582e4515376d71d9de81606408ed4f873b8cf24a1c34da51ce8cccb',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/17dc8a9d72b5a3abae6783820391ce952329407d1ba22fac3d8d1acb802d1202.mp3', 1332, '2026-09-14 03:10:17.363442', 'aaf756b2c6a2eb33042b51a13fb6fcc8fbcd798678687006d56d01fab65d9d33', 'validated', '{"audio_key":"17dc8a9d72b5a3abae6783820391ce952329407d1ba22fac3d8d1acb802d1202","entity_key":"u_my_family_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"aaf756b2c6a2eb33042b51a13fb6fcc8fbcd798678687006d56d01fab65d9d33","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/17dc8a9d72b5a3abae6783820391ce952329407d1ba22fac3d8d1acb802d1202.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_who_i_am_03 -> audio/generated/it-IT/utterances/1ab9e5141e146631c0c6330d2ed38fcc9247719784fc14d5c6cc37ae158ca287.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e5da0883-a4c7-5717-b5bb-da2a92b9ddb0', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_who_i_am_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8e155e262a6b13c7ad51e0733daa6ef186be9f0b636ef8f601b949412057e58d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('08bde24a-0db0-5a96-93fd-7f18dc586b9d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e5da0883-a4c7-5717-b5bb-da2a92b9ddb0', 1), '8e155e262a6b13c7ad51e0733daa6ef186be9f0b636ef8f601b949412057e58d',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/1ab9e5141e146631c0c6330d2ed38fcc9247719784fc14d5c6cc37ae158ca287.mp3', 1280, '2026-09-14 03:10:17.768678', 'd1f3e2f9dba53ea929fe7e93a10048dea7401b119987aebfe2e61cdfb416875b', 'validated', '{"audio_key":"1ab9e5141e146631c0c6330d2ed38fcc9247719784fc14d5c6cc37ae158ca287","entity_key":"u_who_i_am_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d1f3e2f9dba53ea929fe7e93a10048dea7401b119987aebfe2e61cdfb416875b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/1ab9e5141e146631c0c6330d2ed38fcc9247719784fc14d5c6cc37ae158ca287.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_articles_and_objects_04 -> audio/generated/it-IT/utterances/1e956b66848049e88995463838b88a5639e5f6925ea35f2b53a3367629073f01.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('66b0a750-0fa8-5a4e-94f4-ff244477096c', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_articles_and_objects_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd473228970b25bf0dc14c65c9bcb9ef6369af7617a6527052281f1ee8958c313'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c3a3645b-7002-5c1e-85dc-0b867177a380', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('66b0a750-0fa8-5a4e-94f4-ff244477096c', 1), 'd473228970b25bf0dc14c65c9bcb9ef6369af7617a6527052281f1ee8958c313',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/1e956b66848049e88995463838b88a5639e5f6925ea35f2b53a3367629073f01.mp3', 1488, '2026-09-14 03:10:18.417955', '162bcc92687ee0dd8c0c7f58409a7f11a539cbfd99d08c610419a0c25f2633fb', 'validated', '{"audio_key":"1e956b66848049e88995463838b88a5639e5f6925ea35f2b53a3367629073f01","entity_key":"u_articles_and_objects_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"162bcc92687ee0dd8c0c7f58409a7f11a539cbfd99d08c610419a0c25f2633fb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/1e956b66848049e88995463838b88a5639e5f6925ea35f2b53a3367629073f01.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_articles_and_objects_02_listen -> audio/generated/it-IT/utterances/1e956b66848049e88995463838b88a5639e5f6925ea35f2b53a3367629073f01.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('a934cb78-4329-5572-8c54-857829c7a470', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_articles_and_objects_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd473228970b25bf0dc14c65c9bcb9ef6369af7617a6527052281f1ee8958c313'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f9f89a3f-cf3a-590f-b76b-cca7f20eaf1d', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('a934cb78-4329-5572-8c54-857829c7a470', 1), 'd473228970b25bf0dc14c65c9bcb9ef6369af7617a6527052281f1ee8958c313',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/1e956b66848049e88995463838b88a5639e5f6925ea35f2b53a3367629073f01.mp3', 1488, '2026-09-14 03:10:18.417955', '162bcc92687ee0dd8c0c7f58409a7f11a539cbfd99d08c610419a0c25f2633fb', 'validated', '{"audio_key":"1e956b66848049e88995463838b88a5639e5f6925ea35f2b53a3367629073f01","entity_key":"e_articles_and_objects_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"162bcc92687ee0dd8c0c7f58409a7f11a539cbfd99d08c610419a0c25f2633fb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/1e956b66848049e88995463838b88a5639e5f6925ea35f2b53a3367629073f01.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_shopping_basics_04 -> audio/generated/it-IT/utterances/2ad2639699ad399ca15b20e5323e64b9fd042342afccc0ae002ce57c6e2a2634.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1ef3959e-7ea5-5675-b40f-c5bd127e6fb1', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_shopping_basics_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4dd842a472d78b47c1052b42bb4018652c0f66cd46d2ae3fd8ae10435b63f239'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cdb84559-1ce5-58fd-b1c2-e260ad7d5c2d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1ef3959e-7ea5-5675-b40f-c5bd127e6fb1', 1), '4dd842a472d78b47c1052b42bb4018652c0f66cd46d2ae3fd8ae10435b63f239',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/2ad2639699ad399ca15b20e5323e64b9fd042342afccc0ae002ce57c6e2a2634.mp3', 1567, '2026-09-14 03:10:18.797564', '96ba0e772429e996d5affb678cafcc43cd8c32dfdba37c0a6d7ecf0d3438fccb', 'validated', '{"audio_key":"2ad2639699ad399ca15b20e5323e64b9fd042342afccc0ae002ce57c6e2a2634","entity_key":"u_shopping_basics_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"96ba0e772429e996d5affb678cafcc43cd8c32dfdba37c0a6d7ecf0d3438fccb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/2ad2639699ad399ca15b20e5323e64b9fd042342afccc0ae002ce57c6e2a2634.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_shopping_basics_02_listen -> audio/generated/it-IT/utterances/2ad2639699ad399ca15b20e5323e64b9fd042342afccc0ae002ce57c6e2a2634.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('f51d7579-eb53-5e2f-82ae-8f8a47860687', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_shopping_basics_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4dd842a472d78b47c1052b42bb4018652c0f66cd46d2ae3fd8ae10435b63f239'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('07f0b0b1-504a-5929-a0c7-0f61a5a5f228', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('f51d7579-eb53-5e2f-82ae-8f8a47860687', 1), '4dd842a472d78b47c1052b42bb4018652c0f66cd46d2ae3fd8ae10435b63f239',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/2ad2639699ad399ca15b20e5323e64b9fd042342afccc0ae002ce57c6e2a2634.mp3', 1567, '2026-09-14 03:10:18.797564', '96ba0e772429e996d5affb678cafcc43cd8c32dfdba37c0a6d7ecf0d3438fccb', 'validated', '{"audio_key":"2ad2639699ad399ca15b20e5323e64b9fd042342afccc0ae002ce57c6e2a2634","entity_key":"e_shopping_basics_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"96ba0e772429e996d5affb678cafcc43cd8c32dfdba37c0a6d7ecf0d3438fccb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/2ad2639699ad399ca15b20e5323e64b9fd042342afccc0ae002ce57c6e2a2634.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_time_and_plans_01 -> audio/generated/it-IT/utterances/323a886a97da71ef650f33e21079e545def92d6a16ba619998fdbfe3713eb22b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6112dbe0-463a-5053-9329-8a164e416981', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_time_and_plans_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '380aae7080f34a3072be7d08ff36d04c4ec0356a2880612c2620013bbc3c86dd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('053bea89-7757-52e4-b725-a7f9ec17c07a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6112dbe0-463a-5053-9329-8a164e416981', 1), '380aae7080f34a3072be7d08ff36d04c4ec0356a2880612c2620013bbc3c86dd',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/323a886a97da71ef650f33e21079e545def92d6a16ba619998fdbfe3713eb22b.mp3', 914, '2026-09-14 03:10:19.421811', '145273dcd7a99e8ea9c9c8c4d313a469d4c01988e8c9d9d7106b459d629aa31e', 'validated', '{"audio_key":"323a886a97da71ef650f33e21079e545def92d6a16ba619998fdbfe3713eb22b","entity_key":"u_time_and_plans_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"145273dcd7a99e8ea9c9c8c4d313a469d4c01988e8c9d9d7106b459d629aa31e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/323a886a97da71ef650f33e21079e545def92d6a16ba619998fdbfe3713eb22b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_my_family_04 -> audio/generated/it-IT/utterances/3493090db1d00e1d00e8e5accb6c4c5963aede965443fc872550dfa8d1bae172.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bfb97c60-8093-51a1-bb02-a61f37415db9', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_my_family_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '90741f805dc312e75da91755ac691244e694dd26eaba3bce7c8afb550c760bfb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('75a99517-77e6-53b3-9ae0-707e1151a653', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bfb97c60-8093-51a1-bb02-a61f37415db9', 1), '90741f805dc312e75da91755ac691244e694dd26eaba3bce7c8afb550c760bfb',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/3493090db1d00e1d00e8e5accb6c4c5963aede965443fc872550dfa8d1bae172.mp3', 1515, '2026-09-14 03:10:19.858257', '265c6efd1304efb0ce5234e703a615b5607e025ddbe7e2d18cf0732f0dc4456d', 'validated', '{"audio_key":"3493090db1d00e1d00e8e5accb6c4c5963aede965443fc872550dfa8d1bae172","entity_key":"u_my_family_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"265c6efd1304efb0ce5234e703a615b5607e025ddbe7e2d18cf0732f0dc4456d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/3493090db1d00e1d00e8e5accb6c4c5963aede965443fc872550dfa8d1bae172.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_my_family_02_listen -> audio/generated/it-IT/utterances/3493090db1d00e1d00e8e5accb6c4c5963aede965443fc872550dfa8d1bae172.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('5642eed2-7541-5c2f-bea9-54235e7b9d3c', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_my_family_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '90741f805dc312e75da91755ac691244e694dd26eaba3bce7c8afb550c760bfb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a04e06dd-1d90-5d83-b48e-7ecd13168eb0', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('5642eed2-7541-5c2f-bea9-54235e7b9d3c', 1), '90741f805dc312e75da91755ac691244e694dd26eaba3bce7c8afb550c760bfb',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/3493090db1d00e1d00e8e5accb6c4c5963aede965443fc872550dfa8d1bae172.mp3', 1515, '2026-09-14 03:10:19.858257', '265c6efd1304efb0ce5234e703a615b5607e025ddbe7e2d18cf0732f0dc4456d', 'validated', '{"audio_key":"3493090db1d00e1d00e8e5accb6c4c5963aede965443fc872550dfa8d1bae172","entity_key":"e_my_family_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"265c6efd1304efb0ce5234e703a615b5607e025ddbe7e2d18cf0732f0dc4456d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/3493090db1d00e1d00e8e5accb6c4c5963aede965443fc872550dfa8d1bae172.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_who_i_am_04 -> audio/generated/it-IT/utterances/47c82b0253bc57b21522a8db196b61b461f82bc5cbcf31b483b8ff6eda7fe1ff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('65afe7d5-f714-5ca1-b99b-f31bcdbb8133', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_who_i_am_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ff09bcef2e1cd089b68b3036ddd2d11abce63f3a243287210066463099b54b6d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7903362e-5223-5b0d-b865-5743600f6e4b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('65afe7d5-f714-5ca1-b99b-f31bcdbb8133', 1), 'ff09bcef2e1cd089b68b3036ddd2d11abce63f3a243287210066463099b54b6d',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/47c82b0253bc57b21522a8db196b61b461f82bc5cbcf31b483b8ff6eda7fe1ff.mp3', 1332, '2026-09-14 03:10:20.487975', 'c2aa7fd2598833038e64be499082b78e8d4d710a2adcd4e3e2355a6061cd335b', 'validated', '{"audio_key":"47c82b0253bc57b21522a8db196b61b461f82bc5cbcf31b483b8ff6eda7fe1ff","entity_key":"u_who_i_am_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c2aa7fd2598833038e64be499082b78e8d4d710a2adcd4e3e2355a6061cd335b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/47c82b0253bc57b21522a8db196b61b461f82bc5cbcf31b483b8ff6eda7fe1ff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_who_i_am_02_listen -> audio/generated/it-IT/utterances/47c82b0253bc57b21522a8db196b61b461f82bc5cbcf31b483b8ff6eda7fe1ff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('db0cc772-2e26-5a61-8f2c-f134b69379db', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_who_i_am_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ff09bcef2e1cd089b68b3036ddd2d11abce63f3a243287210066463099b54b6d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d874cfe1-6681-54f1-bfd8-ea9b9cc74069', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('db0cc772-2e26-5a61-8f2c-f134b69379db', 1), 'ff09bcef2e1cd089b68b3036ddd2d11abce63f3a243287210066463099b54b6d',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/47c82b0253bc57b21522a8db196b61b461f82bc5cbcf31b483b8ff6eda7fe1ff.mp3', 1332, '2026-09-14 03:10:20.487975', 'c2aa7fd2598833038e64be499082b78e8d4d710a2adcd4e3e2355a6061cd335b', 'validated', '{"audio_key":"47c82b0253bc57b21522a8db196b61b461f82bc5cbcf31b483b8ff6eda7fe1ff","entity_key":"e_who_i_am_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c2aa7fd2598833038e64be499082b78e8d4d710a2adcd4e3e2355a6061cd335b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/47c82b0253bc57b21522a8db196b61b461f82bc5cbcf31b483b8ff6eda7fe1ff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_shopping_basics_03 -> audio/generated/it-IT/utterances/48381b82911f16bbbb3054e84169f77333c524b0ce474524810f5f59b13e6cbf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a7274356-d032-576e-9616-eece488b86a8', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_shopping_basics_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ddc0a732d566a85032929491cdcb57ce45259085930e8638f307760f541f0fc9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f49985c5-c908-51bd-9997-5fb259d38ffc', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a7274356-d032-576e-9616-eece488b86a8', 1), 'ddc0a732d566a85032929491cdcb57ce45259085930e8638f307760f541f0fc9',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/48381b82911f16bbbb3054e84169f77333c524b0ce474524810f5f59b13e6cbf.mp3', 1488, '2026-09-14 03:10:20.913399', 'c093153adcfb7f271df11fff21c2224c425599b433cbb45099ec649fcfde597a', 'validated', '{"audio_key":"48381b82911f16bbbb3054e84169f77333c524b0ce474524810f5f59b13e6cbf","entity_key":"u_shopping_basics_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c093153adcfb7f271df11fff21c2224c425599b433cbb45099ec649fcfde597a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/48381b82911f16bbbb3054e84169f77333c524b0ce474524810f5f59b13e6cbf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_at_the_cafe_03 -> audio/generated/it-IT/utterances/501922edec555126cd4280ef24b55b0ca953d14c5200887c24e4504994b35907.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('26be4d6e-8b75-5228-9b41-88d4d02ecb70', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_at_the_cafe_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '86cfca1896ce7797b08f487fd91245ab32fdf6cd472f92eaebbc4815d924202e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ac3be6a7-811d-5a1a-be2e-ac3971b8355a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('26be4d6e-8b75-5228-9b41-88d4d02ecb70', 1), '86cfca1896ce7797b08f487fd91245ab32fdf6cd472f92eaebbc4815d924202e',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/501922edec555126cd4280ef24b55b0ca953d14c5200887c24e4504994b35907.mp3', 1436, '2026-09-14 03:10:21.524297', 'a51e5254759feed999d084a60a638a9c58a74c3527feab391c469e796e5be595', 'validated', '{"audio_key":"501922edec555126cd4280ef24b55b0ca953d14c5200887c24e4504994b35907","entity_key":"u_at_the_cafe_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"a51e5254759feed999d084a60a638a9c58a74c3527feab391c469e796e5be595","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/501922edec555126cd4280ef24b55b0ca953d14c5200887c24e4504994b35907.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_time_and_plans_03 -> audio/generated/it-IT/utterances/516ee304359f4775b944cdf3ac6cf1f3dcac30ff27ca608c6b6e4122cc059922.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b8b2415d-636b-5be4-8303-23e68973346c', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_time_and_plans_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '153632b728e1de500ac9f10365884bc2b0300a7f00b6787988bcf6c680d1e440'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1312ad41-3be7-53b1-845e-1104031f73cf', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b8b2415d-636b-5be4-8303-23e68973346c', 1), '153632b728e1de500ac9f10365884bc2b0300a7f00b6787988bcf6c680d1e440',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/516ee304359f4775b944cdf3ac6cf1f3dcac30ff27ca608c6b6e4122cc059922.mp3', 1567, '2026-09-14 03:10:21.967322', '0b4a90d022ddb28b494ea18bc8a17e3c4d029cda132a579eca006d882dea583f', 'validated', '{"audio_key":"516ee304359f4775b944cdf3ac6cf1f3dcac30ff27ca608c6b6e4122cc059922","entity_key":"u_time_and_plans_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"0b4a90d022ddb28b494ea18bc8a17e3c4d029cda132a579eca006d882dea583f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/516ee304359f4775b944cdf3ac6cf1f3dcac30ff27ca608c6b6e4122cc059922.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_at_home_02 -> audio/generated/it-IT/utterances/53d951c89c8383bad76403f9674caecae0daf63a465ac5630efc2df96474dea6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8fb9e97f-89e3-5e65-8fe5-a347e21b3852', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_at_home_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ddd501d461dde824ee0a6d30c0f028c9aa35eb68e9c051a646ae0df293469a27'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b3730694-5b02-50ba-ad8e-49ab49e93885', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8fb9e97f-89e3-5e65-8fe5-a347e21b3852', 1), 'ddd501d461dde824ee0a6d30c0f028c9aa35eb68e9c051a646ae0df293469a27',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/53d951c89c8383bad76403f9674caecae0daf63a465ac5630efc2df96474dea6.mp3', 1436, '2026-09-14 03:10:22.565599', 'd5f84efb708d116fe8c9479bef772c85e4c5e71b83f609615c99f3f5764816d3', 'validated', '{"audio_key":"53d951c89c8383bad76403f9674caecae0daf63a465ac5630efc2df96474dea6","entity_key":"u_at_home_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d5f84efb708d116fe8c9479bef772c85e4c5e71b83f609615c99f3f5764816d3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/53d951c89c8383bad76403f9674caecae0daf63a465ac5630efc2df96474dea6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_at_home_01_listen -> audio/generated/it-IT/utterances/53d951c89c8383bad76403f9674caecae0daf63a465ac5630efc2df96474dea6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('485117eb-f9e5-5fdb-861f-7fa596bc3ce8', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_at_home_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ddd501d461dde824ee0a6d30c0f028c9aa35eb68e9c051a646ae0df293469a27'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3b31a216-a3f6-5d49-934b-9103550441fe', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('485117eb-f9e5-5fdb-861f-7fa596bc3ce8', 1), 'ddd501d461dde824ee0a6d30c0f028c9aa35eb68e9c051a646ae0df293469a27',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/53d951c89c8383bad76403f9674caecae0daf63a465ac5630efc2df96474dea6.mp3', 1436, '2026-09-14 03:10:22.565599', 'd5f84efb708d116fe8c9479bef772c85e4c5e71b83f609615c99f3f5764816d3', 'validated', '{"audio_key":"53d951c89c8383bad76403f9674caecae0daf63a465ac5630efc2df96474dea6","entity_key":"e_at_home_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d5f84efb708d116fe8c9479bef772c85e4c5e71b83f609615c99f3f5764816d3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/53d951c89c8383bad76403f9674caecae0daf63a465ac5630efc2df96474dea6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_at_the_cafe_01 -> audio/generated/it-IT/utterances/652faa10870470fa95cfd2b1a8e06c91f8e255b90fd97af973bc0c31748c963d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('54c541ea-cf60-5880-8ae5-2dc6b9efa0f0', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_at_the_cafe_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '34bdcb9cd90c3fa9f9f7e1a25deba641d2169a4e6380a30cac7b01181b494c6e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fa1320ea-857e-5e53-9aa5-4b30c3dc796a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('54c541ea-cf60-5880-8ae5-2dc6b9efa0f0', 1), '34bdcb9cd90c3fa9f9f7e1a25deba641d2169a4e6380a30cac7b01181b494c6e',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/652faa10870470fa95cfd2b1a8e06c91f8e255b90fd97af973bc0c31748c963d.mp3', 1697, '2026-09-14 03:10:23.025620', 'b26d743bab535cb11d26bee5532c874d430be9bc5550665b517539accfbaed35', 'validated', '{"audio_key":"652faa10870470fa95cfd2b1a8e06c91f8e255b90fd97af973bc0c31748c963d","entity_key":"u_at_the_cafe_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"b26d743bab535cb11d26bee5532c874d430be9bc5550665b517539accfbaed35","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/652faa10870470fa95cfd2b1a8e06c91f8e255b90fd97af973bc0c31748c963d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_a1_day_capstone_04 -> audio/generated/it-IT/utterances/677ef4686a37b5113ce45c57694a56fc2c0085194ea4175faa09494b13dcb66a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4b101185-23d9-5746-b2c8-7691b98137bb', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_a1_day_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '23ae9b11998c33367ce016f78dc8c8e0d08714fbec1f5eebaa521afe5c74853e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c03e4e10-8bdc-57a9-b084-868bedffebb8', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4b101185-23d9-5746-b2c8-7691b98137bb', 1), '23ae9b11998c33367ce016f78dc8c8e0d08714fbec1f5eebaa521afe5c74853e',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/677ef4686a37b5113ce45c57694a56fc2c0085194ea4175faa09494b13dcb66a.mp3', 1488, '2026-09-14 03:10:23.611743', '91cd969dfecb98ee8a007d7be9f6a5e529058678177e19c1f81a5ac21fef9900', 'validated', '{"audio_key":"677ef4686a37b5113ce45c57694a56fc2c0085194ea4175faa09494b13dcb66a","entity_key":"u_a1_day_capstone_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"91cd969dfecb98ee8a007d7be9f6a5e529058678177e19c1f81a5ac21fef9900","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/677ef4686a37b5113ce45c57694a56fc2c0085194ea4175faa09494b13dcb66a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_a1_day_capstone_02_listen -> audio/generated/it-IT/utterances/677ef4686a37b5113ce45c57694a56fc2c0085194ea4175faa09494b13dcb66a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('f460f77f-3191-5c25-b463-1a956d507aa7', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_a1_day_capstone_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '23ae9b11998c33367ce016f78dc8c8e0d08714fbec1f5eebaa521afe5c74853e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c9811a02-b1f8-57b0-bb54-1fcb952c433a', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('f460f77f-3191-5c25-b463-1a956d507aa7', 1), '23ae9b11998c33367ce016f78dc8c8e0d08714fbec1f5eebaa521afe5c74853e',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/677ef4686a37b5113ce45c57694a56fc2c0085194ea4175faa09494b13dcb66a.mp3', 1488, '2026-09-14 03:10:23.611743', '91cd969dfecb98ee8a007d7be9f6a5e529058678177e19c1f81a5ac21fef9900', 'validated', '{"audio_key":"677ef4686a37b5113ce45c57694a56fc2c0085194ea4175faa09494b13dcb66a","entity_key":"e_a1_day_capstone_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"91cd969dfecb98ee8a007d7be9f6a5e529058678177e19c1f81a5ac21fef9900","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/677ef4686a37b5113ce45c57694a56fc2c0085194ea4175faa09494b13dcb66a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_my_family_03 -> audio/generated/it-IT/utterances/68e8dffce5badd50da2701b95867d83ab1f569aaf900a90764bcfa4912409678.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('38d8f53e-a49f-5de5-9ec8-b1727bc21886', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_my_family_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0418c0b4adc119b6453518b1b6eb62fb207b186ad233f1c181f8fc9a68545b7a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('47a7de50-80db-5c21-a009-eb9b877f6389', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('38d8f53e-a49f-5de5-9ec8-b1727bc21886', 1), '0418c0b4adc119b6453518b1b6eb62fb207b186ad233f1c181f8fc9a68545b7a',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/68e8dffce5badd50da2701b95867d83ab1f569aaf900a90764bcfa4912409678.mp3', 1253, '2026-09-14 03:10:24.026808', '383217f7e19190abcfd2131db5ceb388c4bf0d338036703e3c9a3e5db003c992', 'validated', '{"audio_key":"68e8dffce5badd50da2701b95867d83ab1f569aaf900a90764bcfa4912409678","entity_key":"u_my_family_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"383217f7e19190abcfd2131db5ceb388c4bf0d338036703e3c9a3e5db003c992","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/68e8dffce5badd50da2701b95867d83ab1f569aaf900a90764bcfa4912409678.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_shopping_basics_01 -> audio/generated/it-IT/utterances/72f672d2d55cc74309139323902ff3a069affbb56d0fcd0e883e8439f8ec181a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('18ce1d7d-c0eb-5b86-a824-f0897bb922d0', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_shopping_basics_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a59ec315ae769bd2f1b765753e5935dedfbe5370b1e106f8b07dbd5d92d1e907'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fed13625-94af-5bdd-bcc5-81370f868256', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('18ce1d7d-c0eb-5b86-a824-f0897bb922d0', 1), 'a59ec315ae769bd2f1b765753e5935dedfbe5370b1e106f8b07dbd5d92d1e907',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/72f672d2d55cc74309139323902ff3a069affbb56d0fcd0e883e8439f8ec181a.mp3', 1488, '2026-09-14 03:10:24.646298', '61ad6072e5df5a51ae335bb3658bfe2d96a607c524977caa15645c9aa21c02f6', 'validated', '{"audio_key":"72f672d2d55cc74309139323902ff3a069affbb56d0fcd0e883e8439f8ec181a","entity_key":"u_shopping_basics_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"61ad6072e5df5a51ae335bb3658bfe2d96a607c524977caa15645c9aa21c02f6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/72f672d2d55cc74309139323902ff3a069affbb56d0fcd0e883e8439f8ec181a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_articles_and_objects_01 -> audio/generated/it-IT/utterances/85e683f0fe32ed75c43af62c831ce49d0a2ce0d3069cdca4a70a7f34afd81101.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('93d616f0-a4c6-5b0e-973d-7f14003d0d46', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_articles_and_objects_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '611c91e97a361081a5fb97837e2a5f1673a0461dc5665d359917664b7c1ffb49'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c4900f28-b25f-5352-a1a0-0fac486687ae', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('93d616f0-a4c6-5b0e-973d-7f14003d0d46', 1), '611c91e97a361081a5fb97837e2a5f1673a0461dc5665d359917664b7c1ffb49',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/85e683f0fe32ed75c43af62c831ce49d0a2ce0d3069cdca4a70a7f34afd81101.mp3', 1436, '2026-09-14 01:57:44.690954', '28f8e0f47b47d974310a485f651d706cc60bc6b59f09a2c088c3a2657b142a91', 'validated', '{"audio_key":"85e683f0fe32ed75c43af62c831ce49d0a2ce0d3069cdca4a70a7f34afd81101","entity_key":"u_articles_and_objects_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"28f8e0f47b47d974310a485f651d706cc60bc6b59f09a2c088c3a2657b142a91","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/85e683f0fe32ed75c43af62c831ce49d0a2ce0d3069cdca4a70a7f34afd81101.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_at_the_cafe_04 -> audio/generated/it-IT/utterances/899fe49245e5e08cf17c280dbe630133295115bba20c3336ba5ab6fe8d0499b4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('feeefdb9-3bc1-5e8d-a759-9c57e3aa6739', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_at_the_cafe_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b4e42f572e69ea05aecb9bc59dfae971b5283cd079190f753b776c53c61fac77'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('63064ac0-716e-5925-9ea4-df58109b055c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('feeefdb9-3bc1-5e8d-a759-9c57e3aa6739', 1), 'b4e42f572e69ea05aecb9bc59dfae971b5283cd079190f753b776c53c61fac77',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/899fe49245e5e08cf17c280dbe630133295115bba20c3336ba5ab6fe8d0499b4.mp3', 1436, '2026-09-14 03:10:25.063470', 'e53262b54756cb1e45921f63a0ca83820afa0e36066bec8cf320c49129e246d9', 'validated', '{"audio_key":"899fe49245e5e08cf17c280dbe630133295115bba20c3336ba5ab6fe8d0499b4","entity_key":"u_at_the_cafe_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e53262b54756cb1e45921f63a0ca83820afa0e36066bec8cf320c49129e246d9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/899fe49245e5e08cf17c280dbe630133295115bba20c3336ba5ab6fe8d0499b4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_at_the_cafe_02_listen -> audio/generated/it-IT/utterances/899fe49245e5e08cf17c280dbe630133295115bba20c3336ba5ab6fe8d0499b4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('4fd862c4-fc90-5edb-9f3d-fd9a65dfb2d7', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_at_the_cafe_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b4e42f572e69ea05aecb9bc59dfae971b5283cd079190f753b776c53c61fac77'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('877770a8-6ed1-5f60-8675-b7573a03635e', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('4fd862c4-fc90-5edb-9f3d-fd9a65dfb2d7', 1), 'b4e42f572e69ea05aecb9bc59dfae971b5283cd079190f753b776c53c61fac77',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/899fe49245e5e08cf17c280dbe630133295115bba20c3336ba5ab6fe8d0499b4.mp3', 1436, '2026-09-14 03:10:25.063470', 'e53262b54756cb1e45921f63a0ca83820afa0e36066bec8cf320c49129e246d9', 'validated', '{"audio_key":"899fe49245e5e08cf17c280dbe630133295115bba20c3336ba5ab6fe8d0499b4","entity_key":"e_at_the_cafe_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e53262b54756cb1e45921f63a0ca83820afa0e36066bec8cf320c49129e246d9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/899fe49245e5e08cf17c280dbe630133295115bba20c3336ba5ab6fe8d0499b4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_a1_day_capstone_03 -> audio/generated/it-IT/utterances/919da943d1ee7106b2defd954681ad272c08be277e2a6175807dc57de049374b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5a798c94-4e54-5686-ae5a-7432fa0cb8c0', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_a1_day_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6d0556e22f7a2b96190ddce04a9efd41c2b7c8fb6f12835e1dd04ca6a7eb1957'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ee89d1e1-121e-5b2d-b330-96bce54de3bd', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5a798c94-4e54-5686-ae5a-7432fa0cb8c0', 1), '6d0556e22f7a2b96190ddce04a9efd41c2b7c8fb6f12835e1dd04ca6a7eb1957',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/919da943d1ee7106b2defd954681ad272c08be277e2a6175807dc57de049374b.mp3', 2168, '2026-09-14 03:10:25.722642', 'e4a4f36246550cff98e3ccbeee74706b46c689e9afd0e94a07b077903142ac71', 'validated', '{"audio_key":"919da943d1ee7106b2defd954681ad272c08be277e2a6175807dc57de049374b","entity_key":"u_a1_day_capstone_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e4a4f36246550cff98e3ccbeee74706b46c689e9afd0e94a07b077903142ac71","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/919da943d1ee7106b2defd954681ad272c08be277e2a6175807dc57de049374b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_my_family_02 -> audio/generated/it-IT/utterances/91b2f1d9afbc528c91adb10b87a15dd0459b6b805bdd3969ce57e3c8b3cdd017.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('aede642e-737d-51cd-b04f-fc1f368aa961', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_my_family_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '020e6f2818d96586259eb742a27c9bcc0e3475f69ef64ea8ddf0021646e893bd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('732cfbcf-0e5d-5ab5-ae81-c8efe3403824', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('aede642e-737d-51cd-b04f-fc1f368aa961', 1), '020e6f2818d96586259eb742a27c9bcc0e3475f69ef64ea8ddf0021646e893bd',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/91b2f1d9afbc528c91adb10b87a15dd0459b6b805bdd3969ce57e3c8b3cdd017.mp3', 1384, '2026-09-14 03:10:26.093312', '75d37ef1960fb7bc50831996d4ab5e80e54944dc6638387c08ae40b148bac728', 'validated', '{"audio_key":"91b2f1d9afbc528c91adb10b87a15dd0459b6b805bdd3969ce57e3c8b3cdd017","entity_key":"u_my_family_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"75d37ef1960fb7bc50831996d4ab5e80e54944dc6638387c08ae40b148bac728","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/91b2f1d9afbc528c91adb10b87a15dd0459b6b805bdd3969ce57e3c8b3cdd017.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_my_family_01_listen -> audio/generated/it-IT/utterances/91b2f1d9afbc528c91adb10b87a15dd0459b6b805bdd3969ce57e3c8b3cdd017.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('0ff4820a-6641-5c81-a3cf-edf482b6a648', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_my_family_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '020e6f2818d96586259eb742a27c9bcc0e3475f69ef64ea8ddf0021646e893bd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d7520c2c-d493-5e66-9a07-7804e8066cef', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('0ff4820a-6641-5c81-a3cf-edf482b6a648', 1), '020e6f2818d96586259eb742a27c9bcc0e3475f69ef64ea8ddf0021646e893bd',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/91b2f1d9afbc528c91adb10b87a15dd0459b6b805bdd3969ce57e3c8b3cdd017.mp3', 1384, '2026-09-14 03:10:26.093312', '75d37ef1960fb7bc50831996d4ab5e80e54944dc6638387c08ae40b148bac728', 'validated', '{"audio_key":"91b2f1d9afbc528c91adb10b87a15dd0459b6b805bdd3969ce57e3c8b3cdd017","entity_key":"e_my_family_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"75d37ef1960fb7bc50831996d4ab5e80e54944dc6638387c08ae40b148bac728","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/91b2f1d9afbc528c91adb10b87a15dd0459b6b805bdd3969ce57e3c8b3cdd017.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_a1_day_capstone_02 -> audio/generated/it-IT/utterances/97dd6ffec2d23075bd9e3ff5bf88ed0e49c9b5636fc3c84cced04ea376b7fb32.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4fa93f80-a117-5bd6-a2a2-d1b82db87c99', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_a1_day_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '74f502b1760dc6e1c55203f7bc58f076f7b07ebceb52dfdf45fd26b396c58681'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('208a3d30-02bb-506c-9e43-5ef6a1a77e47', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4fa93f80-a117-5bd6-a2a2-d1b82db87c99', 1), '74f502b1760dc6e1c55203f7bc58f076f7b07ebceb52dfdf45fd26b396c58681',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/97dd6ffec2d23075bd9e3ff5bf88ed0e49c9b5636fc3c84cced04ea376b7fb32.mp3', 1488, '2026-09-14 03:10:26.856269', 'f4ac9263d666046f0305dcc5d5a5664b838ada929fde58cde7c929bdaaf17c32', 'validated', '{"audio_key":"97dd6ffec2d23075bd9e3ff5bf88ed0e49c9b5636fc3c84cced04ea376b7fb32","entity_key":"u_a1_day_capstone_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f4ac9263d666046f0305dcc5d5a5664b838ada929fde58cde7c929bdaaf17c32","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/97dd6ffec2d23075bd9e3ff5bf88ed0e49c9b5636fc3c84cced04ea376b7fb32.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_a1_day_capstone_01_listen -> audio/generated/it-IT/utterances/97dd6ffec2d23075bd9e3ff5bf88ed0e49c9b5636fc3c84cced04ea376b7fb32.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ae7dd2a4-da58-5fa6-9880-97dcf9dd0566', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_a1_day_capstone_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '74f502b1760dc6e1c55203f7bc58f076f7b07ebceb52dfdf45fd26b396c58681'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e4cc8559-7394-5c16-8482-544c3845cd91', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ae7dd2a4-da58-5fa6-9880-97dcf9dd0566', 1), '74f502b1760dc6e1c55203f7bc58f076f7b07ebceb52dfdf45fd26b396c58681',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/97dd6ffec2d23075bd9e3ff5bf88ed0e49c9b5636fc3c84cced04ea376b7fb32.mp3', 1488, '2026-09-14 03:10:26.856269', 'f4ac9263d666046f0305dcc5d5a5664b838ada929fde58cde7c929bdaaf17c32', 'validated', '{"audio_key":"97dd6ffec2d23075bd9e3ff5bf88ed0e49c9b5636fc3c84cced04ea376b7fb32","entity_key":"e_a1_day_capstone_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f4ac9263d666046f0305dcc5d5a5664b838ada929fde58cde7c929bdaaf17c32","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/97dd6ffec2d23075bd9e3ff5bf88ed0e49c9b5636fc3c84cced04ea376b7fb32.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_a1_day_capstone_01 -> audio/generated/it-IT/utterances/a5409af6bd5090b024086c6e2980219aabbc120da65e2829ea1596a0f331d2ba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2e5bc714-717d-5f1b-8dd1-a449e63a9ba0', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_a1_day_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '65b8e471df5edc49b8eb0a2e2fbefd708e40c58fca444244da53f90be81d1f01'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ba97415e-1162-59cd-bcb4-09024187c907', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2e5bc714-717d-5f1b-8dd1-a449e63a9ba0', 1), '65b8e471df5edc49b8eb0a2e2fbefd708e40c58fca444244da53f90be81d1f01',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/a5409af6bd5090b024086c6e2980219aabbc120da65e2829ea1596a0f331d2ba.mp3', 1488, '2026-09-14 03:10:27.120159', '0b5cff7d73a2f3f5b9563797204d240d06670993238d105d12ae64d9b468942b', 'validated', '{"audio_key":"a5409af6bd5090b024086c6e2980219aabbc120da65e2829ea1596a0f331d2ba","entity_key":"u_a1_day_capstone_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"0b5cff7d73a2f3f5b9563797204d240d06670993238d105d12ae64d9b468942b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/a5409af6bd5090b024086c6e2980219aabbc120da65e2829ea1596a0f331d2ba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_articles_and_objects_02 -> audio/generated/it-IT/utterances/a55dfa2b15b8d5612df98aab00fb2195cadd1f1c4484017549d4e6ccc446ed9e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('564e5d7c-be05-5bea-92dc-1f68f7eaaf96', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_articles_and_objects_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9e9b2c1929025f86d84108b3f980d4efd28060d4b8446fff1fc015aafe44a156'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4039ca71-7c2e-5b99-a85f-b51f553610ae', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('564e5d7c-be05-5bea-92dc-1f68f7eaaf96', 1), '9e9b2c1929025f86d84108b3f980d4efd28060d4b8446fff1fc015aafe44a156',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/a55dfa2b15b8d5612df98aab00fb2195cadd1f1c4484017549d4e6ccc446ed9e.mp3', 1149, '2026-09-14 03:10:27.950420', '23d48ab6b0b5cc141f02d3c254f3d91d3579e9886f7533028cfe896c1432223f', 'validated', '{"audio_key":"a55dfa2b15b8d5612df98aab00fb2195cadd1f1c4484017549d4e6ccc446ed9e","entity_key":"u_articles_and_objects_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"23d48ab6b0b5cc141f02d3c254f3d91d3579e9886f7533028cfe896c1432223f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/a55dfa2b15b8d5612df98aab00fb2195cadd1f1c4484017549d4e6ccc446ed9e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_articles_and_objects_01_listen -> audio/generated/it-IT/utterances/a55dfa2b15b8d5612df98aab00fb2195cadd1f1c4484017549d4e6ccc446ed9e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('40a0de41-9101-5105-85d7-69d80ad616ef', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_articles_and_objects_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9e9b2c1929025f86d84108b3f980d4efd28060d4b8446fff1fc015aafe44a156'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0b482c8d-de7d-58d2-b6e7-8898af7699f5', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('40a0de41-9101-5105-85d7-69d80ad616ef', 1), '9e9b2c1929025f86d84108b3f980d4efd28060d4b8446fff1fc015aafe44a156',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/a55dfa2b15b8d5612df98aab00fb2195cadd1f1c4484017549d4e6ccc446ed9e.mp3', 1149, '2026-09-14 03:10:27.950420', '23d48ab6b0b5cc141f02d3c254f3d91d3579e9886f7533028cfe896c1432223f', 'validated', '{"audio_key":"a55dfa2b15b8d5612df98aab00fb2195cadd1f1c4484017549d4e6ccc446ed9e","entity_key":"e_articles_and_objects_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"23d48ab6b0b5cc141f02d3c254f3d91d3579e9886f7533028cfe896c1432223f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/a55dfa2b15b8d5612df98aab00fb2195cadd1f1c4484017549d4e6ccc446ed9e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_shopping_basics_02 -> audio/generated/it-IT/utterances/a5d417119ba3e3c431971670647d5c5b454605430f61480d34f51d3b53694b80.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('51de09c3-7da4-5506-8aef-be288d2c04ce', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_shopping_basics_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e0e147fa0db381ae96412818ca6eb9ced30b35efc5e1d88c38f844041cb6abaf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('88dd2329-15d8-5760-bab8-52365171105c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('51de09c3-7da4-5506-8aef-be288d2c04ce', 1), 'e0e147fa0db381ae96412818ca6eb9ced30b35efc5e1d88c38f844041cb6abaf',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/a5d417119ba3e3c431971670647d5c5b454605430f61480d34f51d3b53694b80.mp3', 1332, '2026-09-14 03:10:28.147767', 'b8b4f2633d8ff46aa1a767110b69d64904b524f879a450ead99f9003a4a81a06', 'validated', '{"audio_key":"a5d417119ba3e3c431971670647d5c5b454605430f61480d34f51d3b53694b80","entity_key":"u_shopping_basics_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"b8b4f2633d8ff46aa1a767110b69d64904b524f879a450ead99f9003a4a81a06","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/a5d417119ba3e3c431971670647d5c5b454605430f61480d34f51d3b53694b80.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_shopping_basics_01_listen -> audio/generated/it-IT/utterances/a5d417119ba3e3c431971670647d5c5b454605430f61480d34f51d3b53694b80.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('61082641-8ae9-5083-8583-cc27277c7a0e', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_shopping_basics_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e0e147fa0db381ae96412818ca6eb9ced30b35efc5e1d88c38f844041cb6abaf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('100db7ea-c11e-5cad-a163-f70d82a45fe7', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('61082641-8ae9-5083-8583-cc27277c7a0e', 1), 'e0e147fa0db381ae96412818ca6eb9ced30b35efc5e1d88c38f844041cb6abaf',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/a5d417119ba3e3c431971670647d5c5b454605430f61480d34f51d3b53694b80.mp3', 1332, '2026-09-14 03:10:28.147767', 'b8b4f2633d8ff46aa1a767110b69d64904b524f879a450ead99f9003a4a81a06', 'validated', '{"audio_key":"a5d417119ba3e3c431971670647d5c5b454605430f61480d34f51d3b53694b80","entity_key":"e_shopping_basics_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"b8b4f2633d8ff46aa1a767110b69d64904b524f879a450ead99f9003a4a81a06","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/a5d417119ba3e3c431971670647d5c5b454605430f61480d34f51d3b53694b80.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_getting_around_01 -> audio/generated/it-IT/utterances/aaff5179c976e301169bbae788f8308e5bff4eed1886ec1321129b484cf92785.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('19cefc0d-f32e-5156-98cd-92b8982c7285', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_getting_around_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e0efcdb0d9d55cdbc18eebe46ab9aa931f94425530a31ce290473e532db9fa69'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e51ebd8b-394b-5fe1-bb1e-8b4bf54246c7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('19cefc0d-f32e-5156-98cd-92b8982c7285', 1), 'e0efcdb0d9d55cdbc18eebe46ab9aa931f94425530a31ce290473e532db9fa69',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/aaff5179c976e301169bbae788f8308e5bff4eed1886ec1321129b484cf92785.mp3', 1436, '2026-09-14 03:10:29.011473', '33a44515b86b851b25ca07c15713a86ae17afe613bf078911a9c6c8843e89130', 'validated', '{"audio_key":"aaff5179c976e301169bbae788f8308e5bff4eed1886ec1321129b484cf92785","entity_key":"u_getting_around_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"33a44515b86b851b25ca07c15713a86ae17afe613bf078911a9c6c8843e89130","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/aaff5179c976e301169bbae788f8308e5bff4eed1886ec1321129b484cf92785.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_at_the_cafe_02 -> audio/generated/it-IT/utterances/ab066bdb9a12cb881d6c05025b60b85d8973405656ca06fa48f1d048f808871b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8522fbc7-b5be-5cee-aba3-5d7948218ca3', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_at_the_cafe_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0f120d63dc0a43c0b72a645af3d711f274323539c2a4f5efbce47f369ff3b868'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f5345255-56e0-5217-87ee-f03db8a95fb5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8522fbc7-b5be-5cee-aba3-5d7948218ca3', 1), '0f120d63dc0a43c0b72a645af3d711f274323539c2a4f5efbce47f369ff3b868',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/ab066bdb9a12cb881d6c05025b60b85d8973405656ca06fa48f1d048f808871b.mp3', 1697, '2026-09-14 03:10:29.206891', '28fc1fb8ca359305fe0a61179bd179bebe2e825661bab3cd12414fd2c583b39c', 'validated', '{"audio_key":"ab066bdb9a12cb881d6c05025b60b85d8973405656ca06fa48f1d048f808871b","entity_key":"u_at_the_cafe_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"28fc1fb8ca359305fe0a61179bd179bebe2e825661bab3cd12414fd2c583b39c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/ab066bdb9a12cb881d6c05025b60b85d8973405656ca06fa48f1d048f808871b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_at_the_cafe_01_listen -> audio/generated/it-IT/utterances/ab066bdb9a12cb881d6c05025b60b85d8973405656ca06fa48f1d048f808871b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('9bc94ffd-e61f-5dd8-abb1-2db95403309c', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_at_the_cafe_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0f120d63dc0a43c0b72a645af3d711f274323539c2a4f5efbce47f369ff3b868'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('33517674-a60a-58cd-8053-800fa90239f5', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('9bc94ffd-e61f-5dd8-abb1-2db95403309c', 1), '0f120d63dc0a43c0b72a645af3d711f274323539c2a4f5efbce47f369ff3b868',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/ab066bdb9a12cb881d6c05025b60b85d8973405656ca06fa48f1d048f808871b.mp3', 1697, '2026-09-14 03:10:29.206891', '28fc1fb8ca359305fe0a61179bd179bebe2e825661bab3cd12414fd2c583b39c', 'validated', '{"audio_key":"ab066bdb9a12cb881d6c05025b60b85d8973405656ca06fa48f1d048f808871b","entity_key":"e_at_the_cafe_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"28fc1fb8ca359305fe0a61179bd179bebe2e825661bab3cd12414fd2c583b39c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/ab066bdb9a12cb881d6c05025b60b85d8973405656ca06fa48f1d048f808871b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_daily_routine_04 -> audio/generated/it-IT/utterances/b7b48e359ce9bc0b28791d81f3635109669f3cc1c1654c913c627553e9dd82c5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a183d53a-b067-54be-93b5-5e33b1b65245', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_daily_routine_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5321340a8f9a838d6f39bed4ca21871bd76fa6d59df195d5623ed60e43c92b0e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0fecfb3f-fa5e-5236-8651-c81023c4d7f4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a183d53a-b067-54be-93b5-5e33b1b65245', 1), '5321340a8f9a838d6f39bed4ca21871bd76fa6d59df195d5623ed60e43c92b0e',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/b7b48e359ce9bc0b28791d81f3635109669f3cc1c1654c913c627553e9dd82c5.mp3', 1253, '2026-09-14 03:10:30.045304', '05e6583a410858b236230886cb65596a515e1ea41a8fc815f121b8303f6ac989', 'validated', '{"audio_key":"b7b48e359ce9bc0b28791d81f3635109669f3cc1c1654c913c627553e9dd82c5","entity_key":"u_daily_routine_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"05e6583a410858b236230886cb65596a515e1ea41a8fc815f121b8303f6ac989","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/b7b48e359ce9bc0b28791d81f3635109669f3cc1c1654c913c627553e9dd82c5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_daily_routine_02_listen -> audio/generated/it-IT/utterances/b7b48e359ce9bc0b28791d81f3635109669f3cc1c1654c913c627553e9dd82c5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e11a32cf-a572-59af-afaf-c4c030da191d', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_daily_routine_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5321340a8f9a838d6f39bed4ca21871bd76fa6d59df195d5623ed60e43c92b0e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7a216515-797a-5b0f-9c93-6ee95892a2f3', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e11a32cf-a572-59af-afaf-c4c030da191d', 1), '5321340a8f9a838d6f39bed4ca21871bd76fa6d59df195d5623ed60e43c92b0e',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/b7b48e359ce9bc0b28791d81f3635109669f3cc1c1654c913c627553e9dd82c5.mp3', 1253, '2026-09-14 03:10:30.045304', '05e6583a410858b236230886cb65596a515e1ea41a8fc815f121b8303f6ac989', 'validated', '{"audio_key":"b7b48e359ce9bc0b28791d81f3635109669f3cc1c1654c913c627553e9dd82c5","entity_key":"e_daily_routine_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"05e6583a410858b236230886cb65596a515e1ea41a8fc815f121b8303f6ac989","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/b7b48e359ce9bc0b28791d81f3635109669f3cc1c1654c913c627553e9dd82c5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_getting_around_03 -> audio/generated/it-IT/utterances/bd3032a00c60795231c541ae8320e4e967f414c7194a731ab2891757ca74f028.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1f527a2d-7139-566e-b24a-bb72af0a5f24', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_getting_around_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9bac2e2ae79ec9e000490efa7428c3f6ef5d2ad0f7ada65a658fe806e560646d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cd5cdad1-4a15-5d37-b1d2-e02c46e635d4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1f527a2d-7139-566e-b24a-bb72af0a5f24', 1), '9bac2e2ae79ec9e000490efa7428c3f6ef5d2ad0f7ada65a658fe806e560646d',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/bd3032a00c60795231c541ae8320e4e967f414c7194a731ab2891757ca74f028.mp3', 1384, '2026-09-14 03:10:30.264702', '7df3f5957008d0be9b2e7b60a607570ef7ce8f34c4403d501d0fa9e568413407', 'validated', '{"audio_key":"bd3032a00c60795231c541ae8320e4e967f414c7194a731ab2891757ca74f028","entity_key":"u_getting_around_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"7df3f5957008d0be9b2e7b60a607570ef7ce8f34c4403d501d0fa9e568413407","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/bd3032a00c60795231c541ae8320e4e967f414c7194a731ab2891757ca74f028.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_getting_around_04 -> audio/generated/it-IT/utterances/c34c538314756b1bd2f9d2a05bcaf957ee312ef9f5811ff92f63b954b12da913.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2a34666e-d53f-508c-a321-75619bb0a75f', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_getting_around_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0c36e51717b2622e11522e99eb47be1b58d1544e1bbb45388829ae41e98ff552'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('be24a00c-1d34-559a-8e61-66d5d0fce5d1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2a34666e-d53f-508c-a321-75619bb0a75f', 1), '0c36e51717b2622e11522e99eb47be1b58d1544e1bbb45388829ae41e98ff552',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/c34c538314756b1bd2f9d2a05bcaf957ee312ef9f5811ff92f63b954b12da913.mp3', 1332, '2026-09-14 03:10:31.069412', 'c0005674a2e0a5c8950e4ade8ccf4b71ab6486214286dc2d9bee65495fffaadc', 'validated', '{"audio_key":"c34c538314756b1bd2f9d2a05bcaf957ee312ef9f5811ff92f63b954b12da913","entity_key":"u_getting_around_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c0005674a2e0a5c8950e4ade8ccf4b71ab6486214286dc2d9bee65495fffaadc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/c34c538314756b1bd2f9d2a05bcaf957ee312ef9f5811ff92f63b954b12da913.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_getting_around_02_listen -> audio/generated/it-IT/utterances/c34c538314756b1bd2f9d2a05bcaf957ee312ef9f5811ff92f63b954b12da913.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('fc5187fc-066d-50f2-b219-6390826b059f', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_getting_around_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0c36e51717b2622e11522e99eb47be1b58d1544e1bbb45388829ae41e98ff552'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9c604a9a-f63f-5d02-8308-356a11908aa4', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('fc5187fc-066d-50f2-b219-6390826b059f', 1), '0c36e51717b2622e11522e99eb47be1b58d1544e1bbb45388829ae41e98ff552',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/c34c538314756b1bd2f9d2a05bcaf957ee312ef9f5811ff92f63b954b12da913.mp3', 1332, '2026-09-14 03:10:31.069412', 'c0005674a2e0a5c8950e4ade8ccf4b71ab6486214286dc2d9bee65495fffaadc', 'validated', '{"audio_key":"c34c538314756b1bd2f9d2a05bcaf957ee312ef9f5811ff92f63b954b12da913","entity_key":"e_getting_around_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c0005674a2e0a5c8950e4ade8ccf4b71ab6486214286dc2d9bee65495fffaadc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/c34c538314756b1bd2f9d2a05bcaf957ee312ef9f5811ff92f63b954b12da913.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_at_home_01 -> audio/generated/it-IT/utterances/ce51a1b720ddbe5d5a746076e29007a9ee03c87556250d4b65153acad3b599cb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e1c25e99-c466-5f1e-845f-29a39a0c2fba', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_at_home_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5518178896f387155c76b1e94344a6dec81483c37e8ca7072a7a978688cfc8ee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('028a0d1f-4014-5908-b437-a8955bbd468e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e1c25e99-c466-5f1e-845f-29a39a0c2fba', 1), '5518178896f387155c76b1e94344a6dec81483c37e8ca7072a7a978688cfc8ee',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/ce51a1b720ddbe5d5a746076e29007a9ee03c87556250d4b65153acad3b599cb.mp3', 1280, '2026-09-14 03:10:31.284676', 'f945f2e73ccdfbb562787b83a0ab39bb248ea6ae3cf66112f87df3fc106827ec', 'validated', '{"audio_key":"ce51a1b720ddbe5d5a746076e29007a9ee03c87556250d4b65153acad3b599cb","entity_key":"u_at_home_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f945f2e73ccdfbb562787b83a0ab39bb248ea6ae3cf66112f87df3fc106827ec","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/ce51a1b720ddbe5d5a746076e29007a9ee03c87556250d4b65153acad3b599cb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_at_home_04 -> audio/generated/it-IT/utterances/d1a22d39444e90468af87f914d4dd8d6cf84f3b4972161c71f98f2a6d33d959e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a7c413a3-139a-5c54-b322-7864fa60cd29', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_at_home_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '14cb706c779e4841ea83580fc699c4c50eb2ee334dfbbfb38686bbc445e5667e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5306bedd-7331-59ca-be6b-983d0ff7b6a3', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a7c413a3-139a-5c54-b322-7864fa60cd29', 1), '14cb706c779e4841ea83580fc699c4c50eb2ee334dfbbfb38686bbc445e5667e',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/d1a22d39444e90468af87f914d4dd8d6cf84f3b4972161c71f98f2a6d33d959e.mp3', 1201, '2026-09-14 03:10:32.065546', '0a117d9d8e0126527e32359e84288047e1e6f20c671629d2ae477beec3e7d67c', 'validated', '{"audio_key":"d1a22d39444e90468af87f914d4dd8d6cf84f3b4972161c71f98f2a6d33d959e","entity_key":"u_at_home_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"0a117d9d8e0126527e32359e84288047e1e6f20c671629d2ae477beec3e7d67c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/d1a22d39444e90468af87f914d4dd8d6cf84f3b4972161c71f98f2a6d33d959e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_at_home_02_listen -> audio/generated/it-IT/utterances/d1a22d39444e90468af87f914d4dd8d6cf84f3b4972161c71f98f2a6d33d959e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('593a4a1b-f8fe-503c-b3a1-20a3cf1c554a', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_at_home_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '14cb706c779e4841ea83580fc699c4c50eb2ee334dfbbfb38686bbc445e5667e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3c746c80-28ed-573f-ae38-ec266c1474df', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('593a4a1b-f8fe-503c-b3a1-20a3cf1c554a', 1), '14cb706c779e4841ea83580fc699c4c50eb2ee334dfbbfb38686bbc445e5667e',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/d1a22d39444e90468af87f914d4dd8d6cf84f3b4972161c71f98f2a6d33d959e.mp3', 1201, '2026-09-14 03:10:32.065546', '0a117d9d8e0126527e32359e84288047e1e6f20c671629d2ae477beec3e7d67c', 'validated', '{"audio_key":"d1a22d39444e90468af87f914d4dd8d6cf84f3b4972161c71f98f2a6d33d959e","entity_key":"e_at_home_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"0a117d9d8e0126527e32359e84288047e1e6f20c671629d2ae477beec3e7d67c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/d1a22d39444e90468af87f914d4dd8d6cf84f3b4972161c71f98f2a6d33d959e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_daily_routine_03 -> audio/generated/it-IT/utterances/d328d9890d26282ba29419465fba452ab7d978f2358f09a26f90cfc75e0bd2d6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1be361bf-2eaa-5c48-8089-266d929a2229', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_daily_routine_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd8d8d1630c7addec623cbaae7b85b59e3423c9574dd86a6d65627f8a20ed358e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('03d50281-21a5-55a4-af14-9334c8a21895', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1be361bf-2eaa-5c48-8089-266d929a2229', 1), 'd8d8d1630c7addec623cbaae7b85b59e3423c9574dd86a6d65627f8a20ed358e',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/d328d9890d26282ba29419465fba452ab7d978f2358f09a26f90cfc75e0bd2d6.mp3', 1567, '2026-09-14 03:10:32.310859', '7dde573a9955b4066b71a80e346c9ed4a1b126c28cb0fa3ddd8e367e80977381', 'validated', '{"audio_key":"d328d9890d26282ba29419465fba452ab7d978f2358f09a26f90cfc75e0bd2d6","entity_key":"u_daily_routine_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"7dde573a9955b4066b71a80e346c9ed4a1b126c28cb0fa3ddd8e367e80977381","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/d328d9890d26282ba29419465fba452ab7d978f2358f09a26f90cfc75e0bd2d6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_who_i_am_01 -> audio/generated/it-IT/utterances/d51a7ab046a7797a72ec22e206307532bab54f7e1507b43c111a7441b19f9b7b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ec796547-08f8-51da-af7b-fffb7edb7e26', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_who_i_am_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a7dab44e814e35f72c2e4061eb5b8d136eeed2db4116e3fad928baa7614dcba3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8a0752b7-7dec-513d-b9ca-f434efb31863', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ec796547-08f8-51da-af7b-fffb7edb7e26', 1), 'a7dab44e814e35f72c2e4061eb5b8d136eeed2db4116e3fad928baa7614dcba3',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/d51a7ab046a7797a72ec22e206307532bab54f7e1507b43c111a7441b19f9b7b.mp3', 1332, '2026-09-14 03:10:33.079430', '022e3443f5ae90b5d9d10a4ea7cc6ff010fd68b60dd1f368294b1aa155c9dfd4', 'validated', '{"audio_key":"d51a7ab046a7797a72ec22e206307532bab54f7e1507b43c111a7441b19f9b7b","entity_key":"u_who_i_am_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"022e3443f5ae90b5d9d10a4ea7cc6ff010fd68b60dd1f368294b1aa155c9dfd4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/d51a7ab046a7797a72ec22e206307532bab54f7e1507b43c111a7441b19f9b7b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_articles_and_objects_03 -> audio/generated/it-IT/utterances/daa923c99e2e58127481ade1ef704436857b5b3f19733d05005a8411d6774696.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2b90381c-05ce-5c7f-9827-94441415038c', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_articles_and_objects_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a178df775840d3d14b6143b01a0aac78579095abb7fc8da971e562f347a6aa2f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c2c4b002-6705-51d9-b3f4-ca068d7c4128', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2b90381c-05ce-5c7f-9827-94441415038c', 1), 'a178df775840d3d14b6143b01a0aac78579095abb7fc8da971e562f347a6aa2f',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/daa923c99e2e58127481ade1ef704436857b5b3f19733d05005a8411d6774696.mp3', 1384, '2026-09-14 03:10:33.380512', '98653e3e845213152e322249fb48e9533d4bff1f2479b2d5c71573bae946bdd4', 'validated', '{"audio_key":"daa923c99e2e58127481ade1ef704436857b5b3f19733d05005a8411d6774696","entity_key":"u_articles_and_objects_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"98653e3e845213152e322249fb48e9533d4bff1f2479b2d5c71573bae946bdd4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/daa923c99e2e58127481ade1ef704436857b5b3f19733d05005a8411d6774696.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_daily_routine_01 -> audio/generated/it-IT/utterances/e2d414cae43c88c2861eddf3b3e4b155560e625701e363b0cd8f42ee89e1f315.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c9de6401-ae20-5800-a8ad-bd6f6df82a70', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_daily_routine_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3fc00e999e868e074fa9e9b1895c9712999470e56b2e108848909728cdf86854'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('381205f6-0df7-5c7c-bcb7-eb639de76a03', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c9de6401-ae20-5800-a8ad-bd6f6df82a70', 1), '3fc00e999e868e074fa9e9b1895c9712999470e56b2e108848909728cdf86854',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/e2d414cae43c88c2861eddf3b3e4b155560e625701e363b0cd8f42ee89e1f315.mp3', 1280, '2026-09-14 03:10:34.092772', '2b8abcf7c25b5b5d599914d36f45ff0444014955f781bbbad991403d95eaa8a1', 'validated', '{"audio_key":"e2d414cae43c88c2861eddf3b3e4b155560e625701e363b0cd8f42ee89e1f315","entity_key":"u_daily_routine_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2b8abcf7c25b5b5d599914d36f45ff0444014955f781bbbad991403d95eaa8a1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/e2d414cae43c88c2861eddf3b3e4b155560e625701e363b0cd8f42ee89e1f315.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_at_home_03 -> audio/generated/it-IT/utterances/e708d9d5007f51c00242ab52c594d61a3cc2f71deb92047057a2b3c99197eb9f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3aade12f-5201-592f-839c-6890a68c96b0', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_at_home_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bca8792d8b8cbd4ea3ffb89ab40976e7f1196200e03d2010d123ea2d247dd203'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5d21a993-f6df-5bc1-8303-b28cd6ffc822', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3aade12f-5201-592f-839c-6890a68c96b0', 1), 'bca8792d8b8cbd4ea3ffb89ab40976e7f1196200e03d2010d123ea2d247dd203',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/e708d9d5007f51c00242ab52c594d61a3cc2f71deb92047057a2b3c99197eb9f.mp3', 1280, '2026-09-14 03:10:34.391701', 'e49c72b6d78ae3f8ed1a411a80bf04eacf66afd7168f9d34875222ecacff1335', 'validated', '{"audio_key":"e708d9d5007f51c00242ab52c594d61a3cc2f71deb92047057a2b3c99197eb9f","entity_key":"u_at_home_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e49c72b6d78ae3f8ed1a411a80bf04eacf66afd7168f9d34875222ecacff1335","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/e708d9d5007f51c00242ab52c594d61a3cc2f71deb92047057a2b3c99197eb9f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_time_and_plans_04 -> audio/generated/it-IT/utterances/fa8f3f598cffcaa1fd8967be5d8ef628657b2319cf62d285c63c2e0c476ad26c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('fcb4bd29-b793-525b-9ffa-be005bc8c9a9', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_time_and_plans_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6a4d8f69e9a01fbdb9537ba5f2d7d13933829d0645d0f89e5778572773b83fa6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('582dfcb1-cba7-5091-8cfc-ab2a1fde314d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('fcb4bd29-b793-525b-9ffa-be005bc8c9a9', 1), '6a4d8f69e9a01fbdb9537ba5f2d7d13933829d0645d0f89e5778572773b83fa6',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/fa8f3f598cffcaa1fd8967be5d8ef628657b2319cf62d285c63c2e0c476ad26c.mp3', 1280, '2026-09-14 03:10:35.127576', '8501140d36689624674b2442937448db59d8cb4b04b391387b363e72d4d96a93', 'validated', '{"audio_key":"fa8f3f598cffcaa1fd8967be5d8ef628657b2319cf62d285c63c2e0c476ad26c","entity_key":"u_time_and_plans_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8501140d36689624674b2442937448db59d8cb4b04b391387b363e72d4d96a93","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/fa8f3f598cffcaa1fd8967be5d8ef628657b2319cf62d285c63c2e0c476ad26c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_time_and_plans_02_listen -> audio/generated/it-IT/utterances/fa8f3f598cffcaa1fd8967be5d8ef628657b2319cf62d285c63c2e0c476ad26c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('2a44ca41-8c2e-5e83-8dc2-e424fb49310f', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_time_and_plans_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6a4d8f69e9a01fbdb9537ba5f2d7d13933829d0645d0f89e5778572773b83fa6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1fd0aa2f-1f17-53ec-ba49-7a0b7456f004', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('2a44ca41-8c2e-5e83-8dc2-e424fb49310f', 1), '6a4d8f69e9a01fbdb9537ba5f2d7d13933829d0645d0f89e5778572773b83fa6',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/fa8f3f598cffcaa1fd8967be5d8ef628657b2319cf62d285c63c2e0c476ad26c.mp3', 1280, '2026-09-14 03:10:35.127576', '8501140d36689624674b2442937448db59d8cb4b04b391387b363e72d4d96a93', 'validated', '{"audio_key":"fa8f3f598cffcaa1fd8967be5d8ef628657b2319cf62d285c63c2e0c476ad26c","entity_key":"e_time_and_plans_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8501140d36689624674b2442937448db59d8cb4b04b391387b363e72d4d96a93","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/fa8f3f598cffcaa1fd8967be5d8ef628657b2319cf62d285c63c2e0c476ad26c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_daily_routine_02 -> audio/generated/it-IT/utterances/ff413995c4891c2a9d9a5bf916c7aed0f96c5eeda06aaf1ebf9faa952d74f14e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1a842135-0e7e-5cfb-9cb6-4c0955cb1b51', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_daily_routine_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e3916fb5fc8abbb38c7c956d260e362b354c19fae5757820ec5bd828692cf573'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('63025903-814c-5c6b-bd7c-6e565c5cd385', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1a842135-0e7e-5cfb-9cb6-4c0955cb1b51', 1), 'e3916fb5fc8abbb38c7c956d260e362b354c19fae5757820ec5bd828692cf573',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/ff413995c4891c2a9d9a5bf916c7aed0f96c5eeda06aaf1ebf9faa952d74f14e.mp3', 1332, '2026-09-14 03:10:35.399723', '058236659723a251695b572cad1ea2686058baf5071fc2fd0d68aa0b7638d720', 'validated', '{"audio_key":"ff413995c4891c2a9d9a5bf916c7aed0f96c5eeda06aaf1ebf9faa952d74f14e","entity_key":"u_daily_routine_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"058236659723a251695b572cad1ea2686058baf5071fc2fd0d68aa0b7638d720","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/ff413995c4891c2a9d9a5bf916c7aed0f96c5eeda06aaf1ebf9faa952d74f14e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_daily_routine_01_listen -> audio/generated/it-IT/utterances/ff413995c4891c2a9d9a5bf916c7aed0f96c5eeda06aaf1ebf9faa952d74f14e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7c5b6e4e-f641-55bb-a85a-c4d9e0f2fdae', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_daily_routine_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e3916fb5fc8abbb38c7c956d260e362b354c19fae5757820ec5bd828692cf573'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('adadc0e9-2df4-5376-aac2-d926db3627a5', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7c5b6e4e-f641-55bb-a85a-c4d9e0f2fdae', 1), 'e3916fb5fc8abbb38c7c956d260e362b354c19fae5757820ec5bd828692cf573',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/ff413995c4891c2a9d9a5bf916c7aed0f96c5eeda06aaf1ebf9faa952d74f14e.mp3', 1332, '2026-09-14 03:10:35.399723', '058236659723a251695b572cad1ea2686058baf5071fc2fd0d68aa0b7638d720', 'validated', '{"audio_key":"ff413995c4891c2a9d9a5bf916c7aed0f96c5eeda06aaf1ebf9faa952d74f14e","entity_key":"e_daily_routine_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"058236659723a251695b572cad1ea2686058baf5071fc2fd0d68aa0b7638d720","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/ff413995c4891c2a9d9a5bf916c7aed0f96c5eeda06aaf1ebf9faa952d74f14e.mp3"}'
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

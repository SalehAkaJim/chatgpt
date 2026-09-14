-- Generated audio link import for it-IT C1
-- Source manifest: audio/manifests/it/C1.json
-- Generated rows: 260
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'it' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'it-IT' LIMIT 1);
START TRANSACTION;

-- d_mediation_and_synthesis_01:2 -> audio/generated/it-IT/dialogues/02164d1f473fd6f9c31c1ff9d34858c529eda7e595da64f4ea959dee73a41db5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e9b68aa5-eb22-506a-af38-52bdfa8b65cf', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_mediation_and_synthesis_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3a21a5e18996dae39fcaaea856d76e7597c069503d225057a520965aca684d76'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b764fa9b-62e5-5b11-a83a-174c6c5f061b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e9b68aa5-eb22-506a-af38-52bdfa8b65cf', 1), '3a21a5e18996dae39fcaaea856d76e7597c069503d225057a520965aca684d76',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/02164d1f473fd6f9c31c1ff9d34858c529eda7e595da64f4ea959dee73a41db5.mp3', 5146, '2026-09-14 06:04:32.546055', 'f1b98c008f16b967f76429ae8cdc88ff15f0efe4a074e39b9460ecae8b6eecc8', 'validated', '{"audio_key":"02164d1f473fd6f9c31c1ff9d34858c529eda7e595da64f4ea959dee73a41db5","entity_key":"d_mediation_and_synthesis_01:2","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"f1b98c008f16b967f76429ae8cdc88ff15f0efe4a074e39b9460ecae8b6eecc8","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/02164d1f473fd6f9c31c1ff9d34858c529eda7e595da64f4ea959dee73a41db5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_flexibility_01:2 -> audio/generated/it-IT/dialogues/024586225a1b2ea125bb1bf60b5c4a7bac0d65a9b269b8dbbfb03497787eda4a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('041fffa3-d5ca-55bb-9425-d0682cf543da', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_flexibility_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3e386a389f48603921348395d76b6bffb83f3f8374ce876c0cfdf447fa65986f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('239d0732-340c-59d8-a273-d19dd1e9e3e5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('041fffa3-d5ca-55bb-9425-d0682cf543da', 1), '3e386a389f48603921348395d76b6bffb83f3f8374ce876c0cfdf447fa65986f',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/024586225a1b2ea125bb1bf60b5c4a7bac0d65a9b269b8dbbfb03497787eda4a.mp3', 3160, '2026-09-14 06:04:32.428677', 'eb811f99808ca351f9bf1bbf1e3e616ba3ddcb287a20b7580e3f280fbebf7527', 'validated', '{"audio_key":"024586225a1b2ea125bb1bf60b5c4a7bac0d65a9b269b8dbbfb03497787eda4a","entity_key":"d_register_flexibility_01:2","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"eb811f99808ca351f9bf1bbf1e3e616ba3ddcb287a20b7580e3f280fbebf7527","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/024586225a1b2ea125bb1bf60b5c4a7bac0d65a9b269b8dbbfb03497787eda4a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_complex_causality_02:2 -> audio/generated/it-IT/dialogues/0302702fe8364ef80530ba877ab1c1489409cb4ed133360ba04e7a7324824ebe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('aa1172e0-698a-5037-b756-2f31ce87aee5', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_complex_causality_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '01093833f8726d59f5c0434dd0b348c6553e1562034f40260f949b28ec6f8bef'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a54efe78-2d48-579f-9487-9e5f60f1c4f9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('aa1172e0-698a-5037-b756-2f31ce87aee5', 1), '01093833f8726d59f5c0434dd0b348c6553e1562034f40260f949b28ec6f8bef',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/0302702fe8364ef80530ba877ab1c1489409cb4ed133360ba04e7a7324824ebe.mp3', 3369, '2026-09-14 06:04:33.673229', '74a6a02aa3aca25418a39eb90f29bc03631a56070f91359b87ef54024462e242', 'validated', '{"audio_key":"0302702fe8364ef80530ba877ab1c1489409cb4ed133360ba04e7a7324824ebe","entity_key":"d_complex_causality_02:2","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"74a6a02aa3aca25418a39eb90f29bc03631a56070f91359b87ef54024462e242","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/0302702fe8364ef80530ba877ab1c1489409cb4ed133360ba04e7a7324824ebe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_complex_causality_01:2 -> audio/generated/it-IT/dialogues/045336dc78e01ea4b59c1c9ceb386999134b40ff95d149c948d0b68c2ed0831b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b626f771-7a96-55bb-8466-b26df890b753', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_complex_causality_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5db9c986fa0bb04fde63e1077daf5e47d4081bc9c525646ebe0b84ebff738e7e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4a6b3f7a-70b8-5948-8b9b-0f6c1350c682', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b626f771-7a96-55bb-8466-b26df890b753', 1), '5db9c986fa0bb04fde63e1077daf5e47d4081bc9c525646ebe0b84ebff738e7e',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/045336dc78e01ea4b59c1c9ceb386999134b40ff95d149c948d0b68c2ed0831b.mp3', 5250, '2026-09-14 06:04:34.075376', 'fdd7607b818ba443e16d28ca4f068b9e53313ace0b47ed743ab33dde157b6671', 'validated', '{"audio_key":"045336dc78e01ea4b59c1c9ceb386999134b40ff95d149c948d0b68c2ed0831b","entity_key":"d_complex_causality_01:2","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fdd7607b818ba443e16d28ca4f068b9e53313ace0b47ed743ab33dde157b6671","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/045336dc78e01ea4b59c1c9ceb386999134b40ff95d149c948d0b68c2ed0831b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_concession_and_reframing_01:3 -> audio/generated/it-IT/dialogues/0f9a11c45d00d36b67949d0dba916dd63dbc802ed43f0d378895888713d147cc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2862728a-215d-57ef-b343-cd130bc24258', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_concession_and_reframing_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '627604b202932f4858eab758e0d9c99511136727a569e78b404dc7335e80afeb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('18ca7b51-1093-538d-8e31-272c161e63ff', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2862728a-215d-57ef-b343-cd130bc24258', 1), '627604b202932f4858eab758e0d9c99511136727a569e78b404dc7335e80afeb',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/0f9a11c45d00d36b67949d0dba916dd63dbc802ed43f0d378895888713d147cc.mp3', 2586, '2026-09-14 06:04:34.974210', '745ccf9b5c3b83be1dabfcaaf9a75b07a43dbac184becbb4cb60caae43fbc60c', 'validated', '{"audio_key":"0f9a11c45d00d36b67949d0dba916dd63dbc802ed43f0d378895888713d147cc","entity_key":"d_concession_and_reframing_01:3","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"745ccf9b5c3b83be1dabfcaaf9a75b07a43dbac184becbb4cb60caae43fbc60c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/0f9a11c45d00d36b67949d0dba916dd63dbc802ed43f0d378895888713d147cc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_mediation_and_synthesis_01:1 -> audio/generated/it-IT/dialogues/18257332bf7f31cea899b96ec42e588e1962440eb06d1daaebddabaaf5599767.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('474fb46f-7ae6-576a-b024-e5a1b0bb8f52', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_mediation_and_synthesis_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2dc48b036d0f3307b8d40b714e49055bcc5b27da5f0de696dae782541b905cb7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8ee851e0-db63-54da-9aa9-9681d8110a06', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('474fb46f-7ae6-576a-b024-e5a1b0bb8f52', 1), '2dc48b036d0f3307b8d40b714e49055bcc5b27da5f0de696dae782541b905cb7',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/18257332bf7f31cea899b96ec42e588e1962440eb06d1daaebddabaaf5599767.mp3', 3892, '2026-09-14 06:04:35.395621', '5da59b4140b84c8d6bf2775229aabe24bea2235a88090ce0e5844b1dc677bf27', 'validated', '{"audio_key":"18257332bf7f31cea899b96ec42e588e1962440eb06d1daaebddabaaf5599767","entity_key":"d_mediation_and_synthesis_01:1","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5da59b4140b84c8d6bf2775229aabe24bea2235a88090ce0e5844b1dc677bf27","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/18257332bf7f31cea899b96ec42e588e1962440eb06d1daaebddabaaf5599767.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_voices_01:1 -> audio/generated/it-IT/dialogues/1bb13eb74c925c53075974a5aec3cfcaa4495c0efbe6811d6f32f7d95ca3242b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0e8ed321-1a44-5bac-9f7d-36ae120ea0ed', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_voices_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f94879fdd608b46ef47a8d12e6fe889b6831f861055fca15adc3291a1e614fa7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1f346622-694c-558b-a1e5-ecf6ade50d83', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0e8ed321-1a44-5bac-9f7d-36ae120ea0ed', 1), 'f94879fdd608b46ef47a8d12e6fe889b6831f861055fca15adc3291a1e614fa7',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/1bb13eb74c925c53075974a5aec3cfcaa4495c0efbe6811d6f32f7d95ca3242b.mp3', 3996, '2026-09-14 06:04:36.298297', '233a76133da64f34d6ee09b864fe4b783bfb92be7c455c2760d339fd75031cff', 'validated', '{"audio_key":"1bb13eb74c925c53075974a5aec3cfcaa4495c0efbe6811d6f32f7d95ca3242b","entity_key":"d_reported_voices_01:1","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"233a76133da64f34d6ee09b864fe4b783bfb92be7c455c2760d339fd75031cff","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/1bb13eb74c925c53075974a5aec3cfcaa4495c0efbe6811d6f32f7d95ca3242b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_nominalization_and_density_02:1 -> audio/generated/it-IT/dialogues/1bb18ecc5844ac357d6effa97dd30fdd9c5c1b1eae137302a75fcd4f0bb155c2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f876d162-de3f-5ecd-812c-ae9c14f24c43', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_nominalization_and_density_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a9016f4bf8aff610c8904462b06614fbe10551835edce034e0aaf49befd4f410'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e237b595-55f2-57af-83ca-d86b07345b3e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f876d162-de3f-5ecd-812c-ae9c14f24c43', 1), 'a9016f4bf8aff610c8904462b06614fbe10551835edce034e0aaf49befd4f410',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/1bb18ecc5844ac357d6effa97dd30fdd9c5c1b1eae137302a75fcd4f0bb155c2.mp3', 2742, '2026-09-14 06:04:36.541471', '98dc85905b7b5f22019fbe9a8235a63ee00ee3490e9bf94c33df3fafca8e1e7f', 'validated', '{"audio_key":"1bb18ecc5844ac357d6effa97dd30fdd9c5c1b1eae137302a75fcd4f0bb155c2","entity_key":"d_nominalization_and_density_02:1","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"98dc85905b7b5f22019fbe9a8235a63ee00ee3490e9bf94c33df3fafca8e1e7f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/1bb18ecc5844ac357d6effa97dd30fdd9c5c1b1eae137302a75fcd4f0bb155c2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_idiomatic_reformulation_01:4 -> audio/generated/it-IT/dialogues/1f3402252a9e23ff488eda6e8c1d7f9d7b621c4b3baa983be1c481403ebc747a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('86693934-4811-57dd-89d5-b07038a89f7f', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_idiomatic_reformulation_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5dd1efdf2d846b374d81553ed05a3187e9989b3cef597805bcb71b76264c2074'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('078d0cec-74b0-5ad1-add7-3dba99201d1f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('86693934-4811-57dd-89d5-b07038a89f7f', 1), '5dd1efdf2d846b374d81553ed05a3187e9989b3cef597805bcb71b76264c2074',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/1f3402252a9e23ff488eda6e8c1d7f9d7b621c4b3baa983be1c481403ebc747a.mp3', 5041, '2026-09-14 06:04:37.650737', '5e6a6a1b4638f9c55e280a40d966ea9cef6fdcc3118c3a4b2678cf3ab7325c35', 'validated', '{"audio_key":"1f3402252a9e23ff488eda6e8c1d7f9d7b621c4b3baa983be1c481403ebc747a","entity_key":"d_idiomatic_reformulation_01:4","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5e6a6a1b4638f9c55e280a40d966ea9cef6fdcc3118c3a4b2678cf3ab7325c35","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/1f3402252a9e23ff488eda6e8c1d7f9d7b621c4b3baa983be1c481403ebc747a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_information_structure_01:2 -> audio/generated/it-IT/dialogues/26446c07cf5b31d0fac4615c6dfa00bb6fc2888bfdbf73153a393e6ce3d8ac08.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('644ad368-d36c-5eec-b8b7-97beb3aa3c19', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_information_structure_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '59cc848e148ac94558ff40b2ae0737b49ee51b0b2bfd3b9fdd567bfe42b25e69'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('667600da-ea03-53a7-b841-04830e6b27a9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('644ad368-d36c-5eec-b8b7-97beb3aa3c19', 1), '59cc848e148ac94558ff40b2ae0737b49ee51b0b2bfd3b9fdd567bfe42b25e69',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/26446c07cf5b31d0fac4615c6dfa00bb6fc2888bfdbf73153a393e6ce3d8ac08.mp3', 5668, '2026-09-14 06:04:37.988863', '4b3f6c8690ae192d9ade595a8dd7eed19fab44c583f3bd071f89452b6abfa327', 'validated', '{"audio_key":"26446c07cf5b31d0fac4615c6dfa00bb6fc2888bfdbf73153a393e6ce3d8ac08","entity_key":"d_information_structure_01:2","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4b3f6c8690ae192d9ade595a8dd7eed19fab44c583f3bd071f89452b6abfa327","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/26446c07cf5b31d0fac4615c6dfa00bb6fc2888bfdbf73153a393e6ce3d8ac08.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_flexibility_01:3 -> audio/generated/it-IT/dialogues/289289644d58ec60c39ec3bd37b5edc8c1e3c7864d3710393f03b62f9c94d556.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bf23dbea-0d73-54bc-a0c3-d83b9c78fc85', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_flexibility_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd3d387ef4d1e7c29c25200bf96e3363e0733c9a8d12ef4bf65c9e7ad6daf5d29'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6a0b5c1a-e23d-5a24-bd73-5a0bfb8f1424', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bf23dbea-0d73-54bc-a0c3-d83b9c78fc85', 1), 'd3d387ef4d1e7c29c25200bf96e3363e0733c9a8d12ef4bf65c9e7ad6daf5d29',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/289289644d58ec60c39ec3bd37b5edc8c1e3c7864d3710393f03b62f9c94d556.mp3', 3422, '2026-09-14 06:04:38.885743', 'ad3a5d120376ed3afdcaba830565d38359522b17eaaa441bb6a4bc13293bf66a', 'validated', '{"audio_key":"289289644d58ec60c39ec3bd37b5edc8c1e3c7864d3710393f03b62f9c94d556","entity_key":"d_register_flexibility_01:3","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"ad3a5d120376ed3afdcaba830565d38359522b17eaaa441bb6a4bc13293bf66a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/289289644d58ec60c39ec3bd37b5edc8c1e3c7864d3710393f03b62f9c94d556.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_mediation_and_synthesis_01:3 -> audio/generated/it-IT/dialogues/2c3eaa7c0f7b9442f4687aebbcd4dee2050b4cc895ea433d0bafd2f82db34567.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4249ee25-6712-51b1-a196-ca1465d3dc6a', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_mediation_and_synthesis_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '10b22dee8d32b25b0c5ae75c6cb9a4ad60b366c78c5eb5d20e42004540a50aa5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('84c5c552-243a-5285-9b90-b71847e10a21', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4249ee25-6712-51b1-a196-ca1465d3dc6a', 1), '10b22dee8d32b25b0c5ae75c6cb9a4ad60b366c78c5eb5d20e42004540a50aa5',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/2c3eaa7c0f7b9442f4687aebbcd4dee2050b4cc895ea433d0bafd2f82db34567.mp3', 2089, '2026-09-14 06:04:39.038855', '6129ad005df676fa5011f88120c37f7adc849b693effa2f489403582d6e1e231', 'validated', '{"audio_key":"2c3eaa7c0f7b9442f4687aebbcd4dee2050b4cc895ea433d0bafd2f82db34567","entity_key":"d_mediation_and_synthesis_01:3","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6129ad005df676fa5011f88120c37f7adc849b693effa2f489403582d6e1e231","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/2c3eaa7c0f7b9442f4687aebbcd4dee2050b4cc895ea433d0bafd2f82db34567.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c1_public_forum_capstone_02:1 -> audio/generated/it-IT/dialogues/2d067628b679c1029082457085b77315378d1665750268878e63675df160aceb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('61d39516-7743-52c9-a597-2aa16f871406', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c1_public_forum_capstone_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'efe0763c64fa6ae533e6f6db51e415adc171acddf6f2a8e37471dcfb0db752d4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3318b14f-1093-5942-8f94-d19fb01bd5b2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('61d39516-7743-52c9-a597-2aa16f871406', 1), 'efe0763c64fa6ae533e6f6db51e415adc171acddf6f2a8e37471dcfb0db752d4',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/2d067628b679c1029082457085b77315378d1665750268878e63675df160aceb.mp3', 3239, '2026-09-14 06:04:40.086110', '023739b496fbeb81ffc59afbf11f44ebb4d8e70f0944ad02df394dedefc2c48c', 'validated', '{"audio_key":"2d067628b679c1029082457085b77315378d1665750268878e63675df160aceb","entity_key":"d_c1_public_forum_capstone_02:1","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"023739b496fbeb81ffc59afbf11f44ebb4d8e70f0944ad02df394dedefc2c48c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/2d067628b679c1029082457085b77315378d1665750268878e63675df160aceb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c1_public_forum_capstone_01:4 -> audio/generated/it-IT/dialogues/306ed4d59bde1b40bb2c861985b05f568366b42157a1f5c9e21a92afb2767d91.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7c43cc55-f714-59af-ba16-e6d3463cd7a9', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c1_public_forum_capstone_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e850dba7390f78c4e87b40d3058f6d5acb61db2b181934b3c6af42736fc6cddd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('856da2c6-618d-5616-b95c-acc86fe8dea5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7c43cc55-f714-59af-ba16-e6d3463cd7a9', 1), 'e850dba7390f78c4e87b40d3058f6d5acb61db2b181934b3c6af42736fc6cddd',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/306ed4d59bde1b40bb2c861985b05f568366b42157a1f5c9e21a92afb2767d91.mp3', 4414, '2026-09-14 06:04:40.389352', 'a35c4a0b1e80eb10012f3fb394aab82cd5fc804068ac3f1df5cabe3e97fd651d', 'validated', '{"audio_key":"306ed4d59bde1b40bb2c861985b05f568366b42157a1f5c9e21a92afb2767d91","entity_key":"d_c1_public_forum_capstone_01:4","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"a35c4a0b1e80eb10012f3fb394aab82cd5fc804068ac3f1df5cabe3e97fd651d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/306ed4d59bde1b40bb2c861985b05f568366b42157a1f5c9e21a92afb2767d91.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_voices_02:2 -> audio/generated/it-IT/dialogues/3109f4a2a4458512c5ff4a46d96a39545b85f9956bc031ed467b45e13302c8c4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2f195dc6-627a-538f-85c5-3ae262eb8099', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_voices_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c4300003d0119794baa0454088956976fe81c3deeeba2bf379e198445c3eed15'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b818379e-b128-569e-b09d-1015f45bb467', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2f195dc6-627a-538f-85c5-3ae262eb8099', 1), 'c4300003d0119794baa0454088956976fe81c3deeeba2bf379e198445c3eed15',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/3109f4a2a4458512c5ff4a46d96a39545b85f9956bc031ed467b45e13302c8c4.mp3', 3239, '2026-09-14 06:04:41.289612', 'd7cdabbb02b199123a417443bdf68c90981342e747445dafb8db8d2b61f81f3e', 'validated', '{"audio_key":"3109f4a2a4458512c5ff4a46d96a39545b85f9956bc031ed467b45e13302c8c4","entity_key":"d_reported_voices_02:2","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"d7cdabbb02b199123a417443bdf68c90981342e747445dafb8db8d2b61f81f3e","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/3109f4a2a4458512c5ff4a46d96a39545b85f9956bc031ed467b45e13302c8c4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_mediation_and_synthesis_02:3 -> audio/generated/it-IT/dialogues/31fac3be93180abd057e3780ebf93d518c694749fee511411cb0cb9e29b58ef9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('46697b77-0973-51a4-b2db-34d93c557501', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_mediation_and_synthesis_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '79a474a09e9f52fb0536a707f0d8615eb6d93e217cd1d8aa8711fc67222bbb0e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e2cf7f7d-b310-5062-aaec-5bf86cef3f1a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('46697b77-0973-51a4-b2db-34d93c557501', 1), '79a474a09e9f52fb0536a707f0d8615eb6d93e217cd1d8aa8711fc67222bbb0e',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/31fac3be93180abd057e3780ebf93d518c694749fee511411cb0cb9e29b58ef9.mp3', 2873, '2026-09-14 06:04:41.510467', 'a0cf42b39633f22c08102c0bac3dcd5b729b993a51a729658e531061802d4b68', 'validated', '{"audio_key":"31fac3be93180abd057e3780ebf93d518c694749fee511411cb0cb9e29b58ef9","entity_key":"d_mediation_and_synthesis_02:3","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"a0cf42b39633f22c08102c0bac3dcd5b729b993a51a729658e531061802d4b68","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/31fac3be93180abd057e3780ebf93d518c694749fee511411cb0cb9e29b58ef9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_voices_01:2 -> audio/generated/it-IT/dialogues/3dbbce281eefecfb8a30bf0f9f29c640ef9f81b6901491ad6e7f04c9c09cede4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8a1bcd6d-d861-5b0c-9e48-aa8609896516', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_voices_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dce2a75967a9997a42748a2a2435d68057acddde7c682731f358504d63cb2aaa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('58318b7a-8cf2-5101-9c52-b0d3dd61c8b8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8a1bcd6d-d861-5b0c-9e48-aa8609896516', 1), 'dce2a75967a9997a42748a2a2435d68057acddde7c682731f358504d63cb2aaa',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/3dbbce281eefecfb8a30bf0f9f29c640ef9f81b6901491ad6e7f04c9c09cede4.mp3', 3761, '2026-09-14 06:04:42.693341', '8c0a4479c02c19dfe50a92662d9d9e1ad70ff3c1ad8659bb15cdb2a8f40e8352', 'validated', '{"audio_key":"3dbbce281eefecfb8a30bf0f9f29c640ef9f81b6901491ad6e7f04c9c09cede4","entity_key":"d_reported_voices_01:2","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8c0a4479c02c19dfe50a92662d9d9e1ad70ff3c1ad8659bb15cdb2a8f40e8352","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/3dbbce281eefecfb8a30bf0f9f29c640ef9f81b6901491ad6e7f04c9c09cede4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_mediation_and_synthesis_02:4 -> audio/generated/it-IT/dialogues/42922913f80c2f819e298b9ccd5013e35743b42c1cdef9738d0d4a527e09f327.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2d578428-9ed6-5341-9933-e8fdb960301b', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_mediation_and_synthesis_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c22cc9c24931864b5471a1a25875dd96daf55e3c1e5a922e5e0104d3b68cee2f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9be9cf33-15ce-583c-b149-0867e4cebdb7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2d578428-9ed6-5341-9933-e8fdb960301b', 1), 'c22cc9c24931864b5471a1a25875dd96daf55e3c1e5a922e5e0104d3b68cee2f',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/42922913f80c2f819e298b9ccd5013e35743b42c1cdef9738d0d4a527e09f327.mp3', 2324, '2026-09-14 06:04:42.605665', '27bc8dcee3478574820321ded8c38efbe02281079475f52af2ef1679cd9d9473', 'validated', '{"audio_key":"42922913f80c2f819e298b9ccd5013e35743b42c1cdef9738d0d4a527e09f327","entity_key":"d_mediation_and_synthesis_02:4","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"27bc8dcee3478574820321ded8c38efbe02281079475f52af2ef1679cd9d9473","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/42922913f80c2f819e298b9ccd5013e35743b42c1cdef9738d0d4a527e09f327.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_calibrated_stance_01:2 -> audio/generated/it-IT/dialogues/44b3969f38fcacb1ab96bbdcf2f834019b9cbd04bd70203ea7be70f1a159da20.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6bdf8675-3ab1-5cb2-82e1-de91f9bd816d', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_calibrated_stance_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '91bf07361d8cb2ee75eabcc7de0bce153ad2c05d87a6e46779fccccd2d8a6a50'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('88fab49c-1fda-541c-a604-e3ae72f42873', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6bdf8675-3ab1-5cb2-82e1-de91f9bd816d', 1), '91bf07361d8cb2ee75eabcc7de0bce153ad2c05d87a6e46779fccccd2d8a6a50',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/44b3969f38fcacb1ab96bbdcf2f834019b9cbd04bd70203ea7be70f1a159da20.mp3', 5877, '2026-09-14 06:04:44.122327', 'f169558857ed1087e589d8a2cc6de18276c19260921553556234e43802f758a3', 'validated', '{"audio_key":"44b3969f38fcacb1ab96bbdcf2f834019b9cbd04bd70203ea7be70f1a159da20","entity_key":"d_calibrated_stance_01:2","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f169558857ed1087e589d8a2cc6de18276c19260921553556234e43802f758a3","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/44b3969f38fcacb1ab96bbdcf2f834019b9cbd04bd70203ea7be70f1a159da20.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_idiomatic_reformulation_02:2 -> audio/generated/it-IT/dialogues/47e4edc27fa8baaa40998054befc696c4862db0d7c4c305d5285cf58e4ef64fe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1ec988c0-e455-5173-bb0d-b19f9e969361', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_idiomatic_reformulation_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a56bcab73a77bf4dc1f6756907a6d32869620c1727e10ecd1aa3eb108918426f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('910116e5-1411-555e-bd00-d1dd50cb6b84', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1ec988c0-e455-5173-bb0d-b19f9e969361', 1), 'a56bcab73a77bf4dc1f6756907a6d32869620c1727e10ecd1aa3eb108918426f',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/47e4edc27fa8baaa40998054befc696c4862db0d7c4c305d5285cf58e4ef64fe.mp3', 2768, '2026-09-14 06:04:43.871361', '147145ad9108feadf3e7d542ea55614e4369f8f5c637a10a34e2a08369e4eaaa', 'validated', '{"audio_key":"47e4edc27fa8baaa40998054befc696c4862db0d7c4c305d5285cf58e4ef64fe","entity_key":"d_idiomatic_reformulation_02:2","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"147145ad9108feadf3e7d542ea55614e4369f8f5c637a10a34e2a08369e4eaaa","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/47e4edc27fa8baaa40998054befc696c4862db0d7c4c305d5285cf58e4ef64fe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_nominalization_and_density_01:4 -> audio/generated/it-IT/dialogues/4a84776433271c82d44c105be5f0aec619c4728ad5f07c67f02093cf44f0e756.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ae16b792-908e-50c2-9340-033abb4d40d6', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_nominalization_and_density_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8a5cf1a405292be128b24969557c95b7894a344fee3e5593bcd752c29032a467'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('754f07f0-9579-5ee5-910c-12f6bd3e3b46', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ae16b792-908e-50c2-9340-033abb4d40d6', 1), '8a5cf1a405292be128b24969557c95b7894a344fee3e5593bcd752c29032a467',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/4a84776433271c82d44c105be5f0aec619c4728ad5f07c67f02093cf44f0e756.mp3', 3160, '2026-09-14 06:04:45.052869', '99da29054cbdf31aafc65b9dcec34f08e794cb6d5b47887fb67e446f5b2b5067', 'validated', '{"audio_key":"4a84776433271c82d44c105be5f0aec619c4728ad5f07c67f02093cf44f0e756","entity_key":"d_nominalization_and_density_01:4","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"99da29054cbdf31aafc65b9dcec34f08e794cb6d5b47887fb67e446f5b2b5067","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/4a84776433271c82d44c105be5f0aec619c4728ad5f07c67f02093cf44f0e756.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_voices_01:4 -> audio/generated/it-IT/dialogues/4fcaff1b89db1003180e3395d2259d9afc2777be74c4299d6f78496bb310b5c3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('18d88091-c701-502b-b1f2-373b2eaaad4f', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_voices_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd998d6567f06b50d1c3a3c7e97d5e6c865c206ebe43fd0251f9a31eb04d85c65'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d402422c-b3ff-5cca-a401-db9b19652fb3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('18d88091-c701-502b-b1f2-373b2eaaad4f', 1), 'd998d6567f06b50d1c3a3c7e97d5e6c865c206ebe43fd0251f9a31eb04d85c65',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/4fcaff1b89db1003180e3395d2259d9afc2777be74c4299d6f78496bb310b5c3.mp3', 5041, '2026-09-14 06:04:45.644345', 'c25bf9ce45058c869feb00c6f5e6697baa60420b5afeaccc1187c0873bbbc326', 'validated', '{"audio_key":"4fcaff1b89db1003180e3395d2259d9afc2777be74c4299d6f78496bb310b5c3","entity_key":"d_reported_voices_01:4","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c25bf9ce45058c869feb00c6f5e6697baa60420b5afeaccc1187c0873bbbc326","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/4fcaff1b89db1003180e3395d2259d9afc2777be74c4299d6f78496bb310b5c3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_idiomatic_reformulation_01:1 -> audio/generated/it-IT/dialogues/50dacc356373ff9af01419e7e476c2b298f8d0dd176471d9696c023a46bcd09c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9e4a5135-cf37-5360-a99e-0a37ae48103a', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_idiomatic_reformulation_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '49ca64444f84089ff068f9e95801d16694b1d56f9bbf8363db121c8fd3036165'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('98e0036c-139c-5791-9621-cab61a84f894', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9e4a5135-cf37-5360-a99e-0a37ae48103a', 1), '49ca64444f84089ff068f9e95801d16694b1d56f9bbf8363db121c8fd3036165',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/50dacc356373ff9af01419e7e476c2b298f8d0dd176471d9696c023a46bcd09c.mp3', 3239, '2026-09-14 06:04:46.211441', 'f022d4927494460b868d648b27955f65adbc5673c47ce0ce47332069286b18bd', 'validated', '{"audio_key":"50dacc356373ff9af01419e7e476c2b298f8d0dd176471d9696c023a46bcd09c","entity_key":"d_idiomatic_reformulation_01:1","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"f022d4927494460b868d648b27955f65adbc5673c47ce0ce47332069286b18bd","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/50dacc356373ff9af01419e7e476c2b298f8d0dd176471d9696c023a46bcd09c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_complex_causality_01:1 -> audio/generated/it-IT/dialogues/5368e7f89e15f0f60ccc92d036911344dcba603ffdbb069d3a22f018d2282144.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b6448e16-4a57-5fce-ae6a-1e887d285cb4', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_complex_causality_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b077de6cb3c72561a82bf644d746350cae48dd6562cfaca5c7c5ffcea83f1856'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4fb157dc-ebfa-5bc2-93a3-68d386812371', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b6448e16-4a57-5fce-ae6a-1e887d285cb4', 1), 'b077de6cb3c72561a82bf644d746350cae48dd6562cfaca5c7c5ffcea83f1856',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/5368e7f89e15f0f60ccc92d036911344dcba603ffdbb069d3a22f018d2282144.mp3', 3578, '2026-09-14 06:04:46.833093', '36faa0831908de3a20e3a93a4a28e28d9d495a515d28b0483ce98cf78048dbb2', 'validated', '{"audio_key":"5368e7f89e15f0f60ccc92d036911344dcba603ffdbb069d3a22f018d2282144","entity_key":"d_complex_causality_01:1","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"36faa0831908de3a20e3a93a4a28e28d9d495a515d28b0483ce98cf78048dbb2","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/5368e7f89e15f0f60ccc92d036911344dcba603ffdbb069d3a22f018d2282144.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_information_structure_02:2 -> audio/generated/it-IT/dialogues/53a5481b1d3e25c3890b666f58c650fbfe0fdfac4c064f94f70b3b479d238ad8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('08c157b8-c691-538e-91c3-37c20e1e2a13', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_information_structure_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '586daa261b2243e780006bd9907b5d4937d91281c218dcbf903f42ebbde6ce0d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f5139456-8474-53c9-8718-4babeb1f8133', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('08c157b8-c691-538e-91c3-37c20e1e2a13', 1), '586daa261b2243e780006bd9907b5d4937d91281c218dcbf903f42ebbde6ce0d',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/53a5481b1d3e25c3890b666f58c650fbfe0fdfac4c064f94f70b3b479d238ad8.mp3', 3186, '2026-09-14 06:04:47.381766', '1a9f4daa2fc859d1c9d714b8d4090370b37be77503b038cf4a85da1dfd681f37', 'validated', '{"audio_key":"53a5481b1d3e25c3890b666f58c650fbfe0fdfac4c064f94f70b3b479d238ad8","entity_key":"d_information_structure_02:2","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1a9f4daa2fc859d1c9d714b8d4090370b37be77503b038cf4a85da1dfd681f37","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/53a5481b1d3e25c3890b666f58c650fbfe0fdfac4c064f94f70b3b479d238ad8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_complex_causality_01:4 -> audio/generated/it-IT/dialogues/546a3fffefaf656fb5707510cff3047916b18c28a2678215e565940599c34bc1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('06185210-fe86-5348-9f90-06f95364a3dd', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_complex_causality_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '070a5f538e950e3ae300c298bcd4d251773bec75d5498e5675280b7c65c3387a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c5dc6032-5a85-51a9-86f0-07e74d678632', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('06185210-fe86-5348-9f90-06f95364a3dd', 1), '070a5f538e950e3ae300c298bcd4d251773bec75d5498e5675280b7c65c3387a',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/546a3fffefaf656fb5707510cff3047916b18c28a2678215e565940599c34bc1.mp3', 6086, '2026-09-14 06:04:48.373792', '63f3ec9a5e93e3f4047f13121c821e7bdcfebe46e2fde237b06d4f0e769b46fc', 'validated', '{"audio_key":"546a3fffefaf656fb5707510cff3047916b18c28a2678215e565940599c34bc1","entity_key":"d_complex_causality_01:4","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"63f3ec9a5e93e3f4047f13121c821e7bdcfebe46e2fde237b06d4f0e769b46fc","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/546a3fffefaf656fb5707510cff3047916b18c28a2678215e565940599c34bc1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_nominalization_and_density_01:3 -> audio/generated/it-IT/dialogues/5bde2d58c5507959eb19a7e70c6f7eab474e8c9a34746dd712c5f2aa2dfc6789.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('06748028-1ff1-585a-81c6-a23459e8cade', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_nominalization_and_density_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '97dddb97894a57f0027121a981f493c6b1d377f71ba3247e990b377aa9e7daca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('564037b2-9d4c-5eb5-b8fa-806bc6f6eb43', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('06748028-1ff1-585a-81c6-a23459e8cade', 1), '97dddb97894a57f0027121a981f493c6b1d377f71ba3247e990b377aa9e7daca',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/5bde2d58c5507959eb19a7e70c6f7eab474e8c9a34746dd712c5f2aa2dfc6789.mp3', 4728, '2026-09-14 06:04:48.843886', '4402ec7054c7505ec82e5b21ca8d37e2d61861377ebd154a38273ddb177dda01', 'validated', '{"audio_key":"5bde2d58c5507959eb19a7e70c6f7eab474e8c9a34746dd712c5f2aa2dfc6789","entity_key":"d_nominalization_and_density_01:3","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"4402ec7054c7505ec82e5b21ca8d37e2d61861377ebd154a38273ddb177dda01","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/5bde2d58c5507959eb19a7e70c6f7eab474e8c9a34746dd712c5f2aa2dfc6789.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_complex_causality_01:3 -> audio/generated/it-IT/dialogues/5e5f815fbf03d7fd489e42fe75ccf7cc8915ea39ceb7d079463eaed1034c995e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9e531a3f-1a59-5a71-b194-ee71bb34df75', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_complex_causality_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '448296fd09c297a811634b62d62154bf1eef2882dd7405e5322c8d874eb69dcb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ed8e76b6-8d84-569a-a6c4-a705d127aac7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9e531a3f-1a59-5a71-b194-ee71bb34df75', 1), '448296fd09c297a811634b62d62154bf1eef2882dd7405e5322c8d874eb69dcb',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/5e5f815fbf03d7fd489e42fe75ccf7cc8915ea39ceb7d079463eaed1034c995e.mp3', 2873, '2026-09-14 06:04:49.519208', 'f958ebfc6e66c7996b92df36d5bba4a4ffcf295b80f6101d3fe5a812edc5fc79', 'validated', '{"audio_key":"5e5f815fbf03d7fd489e42fe75ccf7cc8915ea39ceb7d079463eaed1034c995e","entity_key":"d_complex_causality_01:3","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"f958ebfc6e66c7996b92df36d5bba4a4ffcf295b80f6101d3fe5a812edc5fc79","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/5e5f815fbf03d7fd489e42fe75ccf7cc8915ea39ceb7d079463eaed1034c995e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c1_public_forum_capstone_01:2 -> audio/generated/it-IT/dialogues/5ee94da055a81e7e999898a5d6fe809a0ae0e4fccc316615625c45c9b65af3d5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('93fe8e32-2b83-5cf7-9a15-519ec4b6d0ea', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c1_public_forum_capstone_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '54576f9f2fed34574c52f7613e1a056d52b770d3781dd0fc8630436b68a50b0c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('60108aee-cf7e-579f-8fbc-0bdd8e3ca15c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('93fe8e32-2b83-5cf7-9a15-519ec4b6d0ea', 1), '54576f9f2fed34574c52f7613e1a056d52b770d3781dd0fc8630436b68a50b0c',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/5ee94da055a81e7e999898a5d6fe809a0ae0e4fccc316615625c45c9b65af3d5.mp3', 4728, '2026-09-14 06:04:50.234670', '982f2af019a671932bfcd21dae3a69b3d77877f67fea09803250d454b7f619c2', 'validated', '{"audio_key":"5ee94da055a81e7e999898a5d6fe809a0ae0e4fccc316615625c45c9b65af3d5","entity_key":"d_c1_public_forum_capstone_01:2","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"982f2af019a671932bfcd21dae3a69b3d77877f67fea09803250d454b7f619c2","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/5ee94da055a81e7e999898a5d6fe809a0ae0e4fccc316615625c45c9b65af3d5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c1_public_forum_capstone_02:3 -> audio/generated/it-IT/dialogues/60914a01c003968c64ebc5555616daeeb5e6229ae9d7142b12351010da088000.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('763b19bb-f994-5f4c-8bda-74eb6c0a006f', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c1_public_forum_capstone_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1c5c4e10d266a4a82102b73749141f553c5988b308f9726ea7ef04c417fbd1a4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('16c878e7-3786-5262-aaa8-e1c1f7f386c4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('763b19bb-f994-5f4c-8bda-74eb6c0a006f', 1), '1c5c4e10d266a4a82102b73749141f553c5988b308f9726ea7ef04c417fbd1a4',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/60914a01c003968c64ebc5555616daeeb5e6229ae9d7142b12351010da088000.mp3', 2403, '2026-09-14 06:04:50.581476', '19422abdcffe2d134ee7c6fc649ebacdbd310e872ecf388e01ebb6719f5d7f8e', 'validated', '{"audio_key":"60914a01c003968c64ebc5555616daeeb5e6229ae9d7142b12351010da088000","entity_key":"d_c1_public_forum_capstone_02:3","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"19422abdcffe2d134ee7c6fc649ebacdbd310e872ecf388e01ebb6719f5d7f8e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/60914a01c003968c64ebc5555616daeeb5e6229ae9d7142b12351010da088000.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_flexibility_02:3 -> audio/generated/it-IT/dialogues/62641d85145ff19d13a701d73352608da2d346f7b618d10052420926e2c2ad08.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6af7e63f-835c-5b34-ad48-1445ccf313c0', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_flexibility_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a1fd3d0dce528c3858fc98f69a8dd6a0dd4fb9c0f04a61eae536110c2addab82'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ea531279-2348-599a-9637-37a9f7a34a28', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6af7e63f-835c-5b34-ad48-1445ccf313c0', 1), 'a1fd3d0dce528c3858fc98f69a8dd6a0dd4fb9c0f04a61eae536110c2addab82',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/62641d85145ff19d13a701d73352608da2d346f7b618d10052420926e2c2ad08.mp3', 4440, '2026-09-14 06:04:51.597022', '4c5cbfea04904ed5f57d1f2ab927db6208f44f51dc2e17f68ec7917f1619a109', 'validated', '{"audio_key":"62641d85145ff19d13a701d73352608da2d346f7b618d10052420926e2c2ad08","entity_key":"d_register_flexibility_02:3","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"4c5cbfea04904ed5f57d1f2ab927db6208f44f51dc2e17f68ec7917f1619a109","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/62641d85145ff19d13a701d73352608da2d346f7b618d10052420926e2c2ad08.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_information_structure_01:3 -> audio/generated/it-IT/dialogues/635797c665194c096477c45a3a47d73619b3a67a4e7acab1117e499738f73ced.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fc472313-142d-5553-b6ba-dff33da11fda', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_information_structure_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '370c45aa57f09504ad4e59cfbdca9e63deeb3fdae8ca9018520acb2f09015f96'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('340f6fce-1683-519c-a94e-ae032cd77b28', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fc472313-142d-5553-b6ba-dff33da11fda', 1), '370c45aa57f09504ad4e59cfbdca9e63deeb3fdae8ca9018520acb2f09015f96',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/635797c665194c096477c45a3a47d73619b3a67a4e7acab1117e499738f73ced.mp3', 2873, '2026-09-14 06:04:51.757931', 'c6df2e21a6ecffe1a1eed32b800c2afdd9ea9c4d413aeaa711d3bed9aa357fce', 'validated', '{"audio_key":"635797c665194c096477c45a3a47d73619b3a67a4e7acab1117e499738f73ced","entity_key":"d_information_structure_01:3","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c6df2e21a6ecffe1a1eed32b800c2afdd9ea9c4d413aeaa711d3bed9aa357fce","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/635797c665194c096477c45a3a47d73619b3a67a4e7acab1117e499738f73ced.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_complex_causality_02:3 -> audio/generated/it-IT/dialogues/63d85134a2ab294e8fcb943bf9b1fa36a0db0d8aa3720bd134185b9f5219b471.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c7607ee2-aba8-50d9-95e3-7d338c0f7687', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_complex_causality_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0e10c6951f558db61cacfb131bf56447eb130cd54f2cf452de70ebc8ce935fdf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d1d745cd-d3ac-5855-9ca1-4d40993a0dd6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c7607ee2-aba8-50d9-95e3-7d338c0f7687', 1), '0e10c6951f558db61cacfb131bf56447eb130cd54f2cf452de70ebc8ce935fdf',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/63d85134a2ab294e8fcb943bf9b1fa36a0db0d8aa3720bd134185b9f5219b471.mp3', 1436, '2026-09-14 06:04:52.606496', '29037eebea9cf0be786cf7f8723da29f115e01a4e7d69a27dcda4c2e30a85f12', 'validated', '{"audio_key":"63d85134a2ab294e8fcb943bf9b1fa36a0db0d8aa3720bd134185b9f5219b471","entity_key":"d_complex_causality_02:3","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"29037eebea9cf0be786cf7f8723da29f115e01a4e7d69a27dcda4c2e30a85f12","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/63d85134a2ab294e8fcb943bf9b1fa36a0db0d8aa3720bd134185b9f5219b471.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_voices_01:3 -> audio/generated/it-IT/dialogues/69d50c4e9c063c50bb0e5b043dd1e3bfb2279c3f5e38df7fe78eb1dfc17a8a64.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('89730332-da90-5273-8475-ce251e12bfe0', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_voices_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e8d0a98e1c1e4b618a77ddaa975d4bb5ee0296f605bd849b017683c4619c05af'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d109e53e-904b-5a2a-9e97-d4e1fa2192e2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('89730332-da90-5273-8475-ce251e12bfe0', 1), 'e8d0a98e1c1e4b618a77ddaa975d4bb5ee0296f605bd849b017683c4619c05af',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/69d50c4e9c063c50bb0e5b043dd1e3bfb2279c3f5e38df7fe78eb1dfc17a8a64.mp3', 2403, '2026-09-14 06:04:52.881001', '49c0da398cefeb0d1ae741764d2394e886ade9def56563d161968473740ac65a', 'validated', '{"audio_key":"69d50c4e9c063c50bb0e5b043dd1e3bfb2279c3f5e38df7fe78eb1dfc17a8a64","entity_key":"d_reported_voices_01:3","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"49c0da398cefeb0d1ae741764d2394e886ade9def56563d161968473740ac65a","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/69d50c4e9c063c50bb0e5b043dd1e3bfb2279c3f5e38df7fe78eb1dfc17a8a64.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_flexibility_01:1 -> audio/generated/it-IT/dialogues/6fa21e34ec904797ca4897f8aad8d99bc48edcb0ba6e4a896974136a9992b1a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('82b03d9c-6421-5e6c-9a29-2e282c4ce561', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_flexibility_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '328dde4f4850ebd77eec85363a16f4ada52ea43c6548fa1f00d68f78dab87856'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0a67cd96-24b0-5412-9e61-c7dbd3321d2a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('82b03d9c-6421-5e6c-9a29-2e282c4ce561', 1), '328dde4f4850ebd77eec85363a16f4ada52ea43c6548fa1f00d68f78dab87856',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/6fa21e34ec904797ca4897f8aad8d99bc48edcb0ba6e4a896974136a9992b1a0.mp3', 5198, '2026-09-14 06:04:54.031175', '428ff23e151ebe95691df2cc617900158a012eebf4d1fae06285d2d579bbc777', 'validated', '{"audio_key":"6fa21e34ec904797ca4897f8aad8d99bc48edcb0ba6e4a896974136a9992b1a0","entity_key":"d_register_flexibility_01:1","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"428ff23e151ebe95691df2cc617900158a012eebf4d1fae06285d2d579bbc777","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/6fa21e34ec904797ca4897f8aad8d99bc48edcb0ba6e4a896974136a9992b1a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_information_structure_02:4 -> audio/generated/it-IT/dialogues/6febb1e249946a81ee904b40e0f7350f1b17e706caa7dd1be40cdde7524fd8bc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fe494e2d-7e8d-55b1-aa22-af1eee5bcd6e', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_information_structure_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '70bb73bd36837fe05c5caa61ec67a24027ba2436aeaea4b0456a452d2b36e948'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6cfc11e2-0a26-513c-9928-fba0c2c27a69', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fe494e2d-7e8d-55b1-aa22-af1eee5bcd6e', 1), '70bb73bd36837fe05c5caa61ec67a24027ba2436aeaea4b0456a452d2b36e948',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/6febb1e249946a81ee904b40e0f7350f1b17e706caa7dd1be40cdde7524fd8bc.mp3', 4022, '2026-09-14 06:04:54.139444', 'e84eb4ddfe9288d4fa3a8c0db80cfc124a732c2c54e86838f5fbadd06b5f61cc', 'validated', '{"audio_key":"6febb1e249946a81ee904b40e0f7350f1b17e706caa7dd1be40cdde7524fd8bc","entity_key":"d_information_structure_02:4","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e84eb4ddfe9288d4fa3a8c0db80cfc124a732c2c54e86838f5fbadd06b5f61cc","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/6febb1e249946a81ee904b40e0f7350f1b17e706caa7dd1be40cdde7524fd8bc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_nominalization_and_density_01:2 -> audio/generated/it-IT/dialogues/7165ea2b3a1ef67970f3fd26fb3ba69e2d926ee9290f29694aad30554eaff912.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('25d496b5-b944-503f-b95b-6549babbe12c', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_nominalization_and_density_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0fb21089a7cc3dd3164e6495e68b1694b40e563302fcbb59d7d2b63db61baacb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ceb731ef-a567-5578-9d54-0403fad04559', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('25d496b5-b944-503f-b95b-6549babbe12c', 1), '0fb21089a7cc3dd3164e6495e68b1694b40e563302fcbb59d7d2b63db61baacb',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/7165ea2b3a1ef67970f3fd26fb3ba69e2d926ee9290f29694aad30554eaff912.mp3', 4362, '2026-09-14 06:04:55.294900', '2b4bb28408ae41f90e6f0c8d94980e281bf8268b978e2af8fffd32e3cfefd038', 'validated', '{"audio_key":"7165ea2b3a1ef67970f3fd26fb3ba69e2d926ee9290f29694aad30554eaff912","entity_key":"d_nominalization_and_density_01:2","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2b4bb28408ae41f90e6f0c8d94980e281bf8268b978e2af8fffd32e3cfefd038","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/7165ea2b3a1ef67970f3fd26fb3ba69e2d926ee9290f29694aad30554eaff912.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_voices_02:3 -> audio/generated/it-IT/dialogues/737ff8a26d82d1b371a46b13b9ec7d2b9c97671967726276ab74af003d2f3108.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('22708c57-f01f-5d2c-9843-9faf0475c586', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_voices_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cbcd2ccb5f42724a3c521a213d28b1fefad3592a154fabbea4338e0ca5d140e0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('19a112d9-cad4-5313-bc6d-de010091fcbd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('22708c57-f01f-5d2c-9843-9faf0475c586', 1), 'cbcd2ccb5f42724a3c521a213d28b1fefad3592a154fabbea4338e0ca5d140e0',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/737ff8a26d82d1b371a46b13b9ec7d2b9c97671967726276ab74af003d2f3108.mp3', 3004, '2026-09-14 06:04:55.292154', '8eefe80453171d85fdec8b5aa0face0ecb35ba6a1cbd07e1064471f93d32494a', 'validated', '{"audio_key":"737ff8a26d82d1b371a46b13b9ec7d2b9c97671967726276ab74af003d2f3108","entity_key":"d_reported_voices_02:3","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8eefe80453171d85fdec8b5aa0face0ecb35ba6a1cbd07e1064471f93d32494a","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/737ff8a26d82d1b371a46b13b9ec7d2b9c97671967726276ab74af003d2f3108.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_nominalization_and_density_02:3 -> audio/generated/it-IT/dialogues/73f1dbeb2b20e3861521ea1d3f3c63a0877019bf3efa1fe325cefeaedaf055f7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e986a41f-dc6a-5ea1-9ff4-9f71d7b7bd48', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_nominalization_and_density_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'edc725725e416646f4ac713623aa392ce12bbc9484fc3df9885ff0b9c889163c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b6351e15-db92-5300-b3d2-2a86f2373bb5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e986a41f-dc6a-5ea1-9ff4-9f71d7b7bd48', 1), 'edc725725e416646f4ac713623aa392ce12bbc9484fc3df9885ff0b9c889163c',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/73f1dbeb2b20e3861521ea1d3f3c63a0877019bf3efa1fe325cefeaedaf055f7.mp3', 2455, '2026-09-14 06:04:56.369332', '5c0e3640e54ed5ee49e9c4fb67e89f4be39d924490b40a3c8a67123cd41575a3', 'validated', '{"audio_key":"73f1dbeb2b20e3861521ea1d3f3c63a0877019bf3efa1fe325cefeaedaf055f7","entity_key":"d_nominalization_and_density_02:3","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"5c0e3640e54ed5ee49e9c4fb67e89f4be39d924490b40a3c8a67123cd41575a3","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/73f1dbeb2b20e3861521ea1d3f3c63a0877019bf3efa1fe325cefeaedaf055f7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_nominalization_and_density_02:2 -> audio/generated/it-IT/dialogues/75fec7d3dd95c4e8850421b078d42ebe7643f835d8a6d6ea478d7dd122263296.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a3e4281b-7685-5d29-9198-07eaad79c586', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_nominalization_and_density_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c6a9e0180715acfee055c7f89b60185554b558647371fdf2a6ad640ee08cdba7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cf817ecb-e868-555f-a0bd-349dab5e987b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a3e4281b-7685-5d29-9198-07eaad79c586', 1), 'c6a9e0180715acfee055c7f89b60185554b558647371fdf2a6ad640ee08cdba7',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/75fec7d3dd95c4e8850421b078d42ebe7643f835d8a6d6ea478d7dd122263296.mp3', 4728, '2026-09-14 06:04:56.735401', 'ef30dcb7cebdcad763adb4ff5ee3f1de8c6fadf65263b23f34f9998badb6e2a1', 'validated', '{"audio_key":"75fec7d3dd95c4e8850421b078d42ebe7643f835d8a6d6ea478d7dd122263296","entity_key":"d_nominalization_and_density_02:2","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ef30dcb7cebdcad763adb4ff5ee3f1de8c6fadf65263b23f34f9998badb6e2a1","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/75fec7d3dd95c4e8850421b078d42ebe7643f835d8a6d6ea478d7dd122263296.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c1_public_forum_capstone_02:4 -> audio/generated/it-IT/dialogues/7663a3153d75469cb8f29f67631e18608a562fd8303e538836b672d0b99a693f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('96a8929a-b285-5b6e-aed2-bd1cdf5c911b', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c1_public_forum_capstone_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4482ba8ad8e1ff853be8bc9b4a08ba2a028d0b83b338eada8b433b475aa8774f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('06dec8cc-1e2b-5342-aa19-2cf6eecdcaf7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('96a8929a-b285-5b6e-aed2-bd1cdf5c911b', 1), '4482ba8ad8e1ff853be8bc9b4a08ba2a028d0b83b338eada8b433b475aa8774f',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/7663a3153d75469cb8f29f67631e18608a562fd8303e538836b672d0b99a693f.mp3', 5146, '2026-09-14 06:04:57.835920', '5ee5b9005b9ab07eb7b89a8f6ee04d9cf25b5ffda86d12b3ca7f255010853d82', 'validated', '{"audio_key":"7663a3153d75469cb8f29f67631e18608a562fd8303e538836b672d0b99a693f","entity_key":"d_c1_public_forum_capstone_02:4","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5ee5b9005b9ab07eb7b89a8f6ee04d9cf25b5ffda86d12b3ca7f255010853d82","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/7663a3153d75469cb8f29f67631e18608a562fd8303e538836b672d0b99a693f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_idiomatic_reformulation_01:2 -> audio/generated/it-IT/dialogues/76ad624e986857a7810c549174aab8dc8c3787a8ffc3c0e687b91788d61ba698.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('634f8ca7-14d4-5459-8dc8-9a75bb5fb900', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_idiomatic_reformulation_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '37fce475a157d478a5227d8d3e0cc269da98d45a4fcaddac09fe0fe6f08c1538'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9f6dfeb9-9af6-501c-af64-ff4bb63c8338', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('634f8ca7-14d4-5459-8dc8-9a75bb5fb900', 1), '37fce475a157d478a5227d8d3e0cc269da98d45a4fcaddac09fe0fe6f08c1538',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/76ad624e986857a7810c549174aab8dc8c3787a8ffc3c0e687b91788d61ba698.mp3', 3422, '2026-09-14 06:04:57.929352', 'e8ac6c16ab1510835315cedd03b572b37cfbfb094734ae4ef7eecdc017193b32', 'validated', '{"audio_key":"76ad624e986857a7810c549174aab8dc8c3787a8ffc3c0e687b91788d61ba698","entity_key":"d_idiomatic_reformulation_01:2","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e8ac6c16ab1510835315cedd03b572b37cfbfb094734ae4ef7eecdc017193b32","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/76ad624e986857a7810c549174aab8dc8c3787a8ffc3c0e687b91788d61ba698.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_flexibility_02:4 -> audio/generated/it-IT/dialogues/77f48658f2b01b605153f8dbefba51d557438238acfc5ce59dee769bf63a5a23.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b8ac034c-7275-54b8-ba68-30f7df0849b2', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_flexibility_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '81c4cb97f52960c3d47c76aaaecac49b3f0d21d07ea1ad5083ef3f41fd90c560'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b016c2c0-67a9-5701-9adb-c4c78dc6f55c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b8ac034c-7275-54b8-ba68-30f7df0849b2', 1), '81c4cb97f52960c3d47c76aaaecac49b3f0d21d07ea1ad5083ef3f41fd90c560',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/77f48658f2b01b605153f8dbefba51d557438238acfc5ce59dee769bf63a5a23.mp3', 3343, '2026-09-14 06:04:59.077665', '7c9135f6b75bd71a41e50c87b5a087c5db7cae565685384f4a6e8f68426960ac', 'validated', '{"audio_key":"77f48658f2b01b605153f8dbefba51d557438238acfc5ce59dee769bf63a5a23","entity_key":"d_register_flexibility_02:4","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"7c9135f6b75bd71a41e50c87b5a087c5db7cae565685384f4a6e8f68426960ac","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/77f48658f2b01b605153f8dbefba51d557438238acfc5ce59dee769bf63a5a23.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_complex_causality_02:4 -> audio/generated/it-IT/dialogues/79e30e023a129ab8091be862c88033ae3ab3379a7886d48f57c95dfd1007621d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0feccb78-5b84-58f9-b1e9-e6598a04ffe6', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_complex_causality_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4e24dfc34a7eccec601e13078f65ceef083283000216ad8cd608bcc0c02f7927'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('39f839d2-ad91-5f4c-9a1f-1204e35c177f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0feccb78-5b84-58f9-b1e9-e6598a04ffe6', 1), '4e24dfc34a7eccec601e13078f65ceef083283000216ad8cd608bcc0c02f7927',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/79e30e023a129ab8091be862c88033ae3ab3379a7886d48f57c95dfd1007621d.mp3', 3526, '2026-09-14 06:04:59.168842', '8198fb9dfec6a0de2ebd6f9d0bcc65f8bf64da7c1b19fcb7d50d7caa16c13d02', 'validated', '{"audio_key":"79e30e023a129ab8091be862c88033ae3ab3379a7886d48f57c95dfd1007621d","entity_key":"d_complex_causality_02:4","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8198fb9dfec6a0de2ebd6f9d0bcc65f8bf64da7c1b19fcb7d50d7caa16c13d02","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/79e30e023a129ab8091be862c88033ae3ab3379a7886d48f57c95dfd1007621d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_mediation_and_synthesis_02:1 -> audio/generated/it-IT/dialogues/7b2a95ee4947ff11da98525d99c7a8c398f11d3da203d45713f7965f1a30370a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('055272d7-94ed-565d-8c5b-a390c087d970', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_mediation_and_synthesis_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ded9b3e026e0725624fa1172da7d697cab51155780178e6a2c06602d91cea923'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('380ae1d8-82fa-576e-9255-2429bc4612f8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('055272d7-94ed-565d-8c5b-a390c087d970', 1), 'ded9b3e026e0725624fa1172da7d697cab51155780178e6a2c06602d91cea923',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/7b2a95ee4947ff11da98525d99c7a8c398f11d3da203d45713f7965f1a30370a.mp3', 1933, '2026-09-14 06:05:00.144140', '936fd77c5994adba7555d71a57248d55cae945e581f860eaffe67c1231b3be65', 'validated', '{"audio_key":"7b2a95ee4947ff11da98525d99c7a8c398f11d3da203d45713f7965f1a30370a","entity_key":"d_mediation_and_synthesis_02:1","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"936fd77c5994adba7555d71a57248d55cae945e581f860eaffe67c1231b3be65","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/7b2a95ee4947ff11da98525d99c7a8c398f11d3da203d45713f7965f1a30370a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_calibrated_stance_02:4 -> audio/generated/it-IT/dialogues/7b738832d38627be07b611a4601baf5c33172a3a568f63c1d3946ed4d1ae5488.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3b7a09bd-342d-5f5b-b69c-1fbe81681a59', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_calibrated_stance_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2d1020286bf8bc17e71539a3473b0cb64b688e3c5efe364e8a6b0eb9e6f44f26'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('67e79c6f-a5f9-578e-b49e-d79b40e0eed0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3b7a09bd-342d-5f5b-b69c-1fbe81681a59', 1), '2d1020286bf8bc17e71539a3473b0cb64b688e3c5efe364e8a6b0eb9e6f44f26',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/7b738832d38627be07b611a4601baf5c33172a3a568f63c1d3946ed4d1ae5488.mp3', 2507, '2026-09-14 06:05:00.263957', '725411091b1e9d55ef7339548aa14c0ab238086ddcc62e31c8c65c8e703c2f92', 'validated', '{"audio_key":"7b738832d38627be07b611a4601baf5c33172a3a568f63c1d3946ed4d1ae5488","entity_key":"d_calibrated_stance_02:4","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"725411091b1e9d55ef7339548aa14c0ab238086ddcc62e31c8c65c8e703c2f92","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/7b738832d38627be07b611a4601baf5c33172a3a568f63c1d3946ed4d1ae5488.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_voices_02:4 -> audio/generated/it-IT/dialogues/7db053acd71641a6faf72f419f3db1aa9764d379366375f6e012c1f5a0005fd3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3374f9f2-939e-5bd1-b3a6-2238d7edbded', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_voices_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7535f65af63db26d11ac56390665e9b10d483086b5eb7ef36288e73613daeaab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7111104a-bfdc-5346-b908-bbda35b9f22d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3374f9f2-939e-5bd1-b3a6-2238d7edbded', 1), '7535f65af63db26d11ac56390665e9b10d483086b5eb7ef36288e73613daeaab',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/7db053acd71641a6faf72f419f3db1aa9764d379366375f6e012c1f5a0005fd3.mp3', 6217, '2026-09-14 06:05:01.807946', 'cbc55b979ee66c4d2311a6adfb487c86c60d5e3d9dba9420ccd2fe4a64cecd53', 'validated', '{"audio_key":"7db053acd71641a6faf72f419f3db1aa9764d379366375f6e012c1f5a0005fd3","entity_key":"d_reported_voices_02:4","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"cbc55b979ee66c4d2311a6adfb487c86c60d5e3d9dba9420ccd2fe4a64cecd53","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/7db053acd71641a6faf72f419f3db1aa9764d379366375f6e012c1f5a0005fd3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_concession_and_reframing_02:2 -> audio/generated/it-IT/dialogues/84b6f9e4439331e86b6e534c5d36c2734d561d0aa4ec57e99ef8e3feb8e3dc80.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ded7a77e-4084-5c72-88e2-f973ed40029a', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_concession_and_reframing_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd9a05b6f648cea81b6e354413c2ce7434e30e973db7337813107aae1c03ebcaf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d7367504-2a12-51c3-8e9a-baa1615b114a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ded7a77e-4084-5c72-88e2-f973ed40029a', 1), 'd9a05b6f648cea81b6e354413c2ce7434e30e973db7337813107aae1c03ebcaf',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/84b6f9e4439331e86b6e534c5d36c2734d561d0aa4ec57e99ef8e3feb8e3dc80.mp3', 5041, '2026-09-14 06:05:01.634459', '8944d22f2825244a4abebaacf9c49c09b5d4cd7f4b71f2719f3c762a70fa5f29', 'validated', '{"audio_key":"84b6f9e4439331e86b6e534c5d36c2734d561d0aa4ec57e99ef8e3feb8e3dc80","entity_key":"d_concession_and_reframing_02:2","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8944d22f2825244a4abebaacf9c49c09b5d4cd7f4b71f2719f3c762a70fa5f29","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/84b6f9e4439331e86b6e534c5d36c2734d561d0aa4ec57e99ef8e3feb8e3dc80.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_calibrated_stance_02:2 -> audio/generated/it-IT/dialogues/9127b4f1d639a35d3da1af3094444269c68303b87d322cf1c4e46dc312f4688c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('326a0943-969a-5756-afe8-6ecc98399316', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_calibrated_stance_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4618f22542b253f6c8d0bae6f789f8ceaeecacdf92c7e27d7ebe3bc7d8fc2c0e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('73ae9f12-03d3-53a1-8e65-c49217e54fa3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('326a0943-969a-5756-afe8-6ecc98399316', 1), '4618f22542b253f6c8d0bae6f789f8ceaeecacdf92c7e27d7ebe3bc7d8fc2c0e',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/9127b4f1d639a35d3da1af3094444269c68303b87d322cf1c4e46dc312f4688c.mp3', 4623, '2026-09-14 06:05:03.367849', 'c919265a690a661ddb9b50d98648088a3f48c8f108030b13f154ef8f42ad0e0c', 'validated', '{"audio_key":"9127b4f1d639a35d3da1af3094444269c68303b87d322cf1c4e46dc312f4688c","entity_key":"d_calibrated_stance_02:2","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"c919265a690a661ddb9b50d98648088a3f48c8f108030b13f154ef8f42ad0e0c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/9127b4f1d639a35d3da1af3094444269c68303b87d322cf1c4e46dc312f4688c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_idiomatic_reformulation_02:1 -> audio/generated/it-IT/dialogues/955a9cf307914998ce57b190c36a946500a0452498aadb124f452aa3fc4c3923.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3a2849c5-65ee-55bd-908e-79a36cf410e6', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_idiomatic_reformulation_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bb7db076e2d1c1d429edf38e434a46c18ac477be0c10d3b1f7365353de29fa6a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9674b27d-2545-53e9-bbad-9e6ca3d10491', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3a2849c5-65ee-55bd-908e-79a36cf410e6', 1), 'bb7db076e2d1c1d429edf38e434a46c18ac477be0c10d3b1f7365353de29fa6a',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/955a9cf307914998ce57b190c36a946500a0452498aadb124f452aa3fc4c3923.mp3', 4362, '2026-09-14 06:05:03.086227', 'c17986c4bede115c399862fda5d332a29f4097fb25e7262e41bef764adb737bf', 'validated', '{"audio_key":"955a9cf307914998ce57b190c36a946500a0452498aadb124f452aa3fc4c3923","entity_key":"d_idiomatic_reformulation_02:1","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"c17986c4bede115c399862fda5d332a29f4097fb25e7262e41bef764adb737bf","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/955a9cf307914998ce57b190c36a946500a0452498aadb124f452aa3fc4c3923.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_calibrated_stance_01:4 -> audio/generated/it-IT/dialogues/968318bdc7dfb55a588e5e5ff291c572e4439725b7979499390f63bad186a13d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('216b12e9-be70-5ef7-886b-dbf09394e88d', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_calibrated_stance_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '919638fe90f37ea2455696499c66ac86363a4639dc2d939ca8b5700807318d23'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('508e0bff-09f8-5ca3-ad78-dd6decae7bd3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('216b12e9-be70-5ef7-886b-dbf09394e88d', 1), '919638fe90f37ea2455696499c66ac86363a4639dc2d939ca8b5700807318d23',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/968318bdc7dfb55a588e5e5ff291c572e4439725b7979499390f63bad186a13d.mp3', 3291, '2026-09-14 06:05:04.258058', '175cd9fe749e77b3c04cb240d84d348a233dac645f0ab33cb67427b3802896b5', 'validated', '{"audio_key":"968318bdc7dfb55a588e5e5ff291c572e4439725b7979499390f63bad186a13d","entity_key":"d_calibrated_stance_01:4","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"175cd9fe749e77b3c04cb240d84d348a233dac645f0ab33cb67427b3802896b5","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/968318bdc7dfb55a588e5e5ff291c572e4439725b7979499390f63bad186a13d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_mediation_and_synthesis_01:4 -> audio/generated/it-IT/dialogues/969122c151961749fa9c615007f484b9765a523d185439940f449c8f0c2d5ce8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d9ffe6ff-196e-56b9-ad84-ec3dc19a54c6', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_mediation_and_synthesis_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ded94dbb7380967701469e4583b19c59e0a94a171d5ec9a61c0d1364f2d2a233'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b9d20a1f-85b7-5851-84be-e4e50cf26dc1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d9ffe6ff-196e-56b9-ad84-ec3dc19a54c6', 1), 'ded94dbb7380967701469e4583b19c59e0a94a171d5ec9a61c0d1364f2d2a233',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/969122c151961749fa9c615007f484b9765a523d185439940f449c8f0c2d5ce8.mp3', 4545, '2026-09-14 06:05:04.784213', 'f3cbc3d8433b4c01e5ebc2133dd8b0961c3f358615d177d42f489581cd439184', 'validated', '{"audio_key":"969122c151961749fa9c615007f484b9765a523d185439940f449c8f0c2d5ce8","entity_key":"d_mediation_and_synthesis_01:4","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"f3cbc3d8433b4c01e5ebc2133dd8b0961c3f358615d177d42f489581cd439184","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/969122c151961749fa9c615007f484b9765a523d185439940f449c8f0c2d5ce8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_concession_and_reframing_01:4 -> audio/generated/it-IT/dialogues/a2910a597f56dc0e5345a2305c09fe0b32cea07b23e915663e95529c6e0f3139.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8855f602-b612-5b25-a012-51a6fa8be944', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_concession_and_reframing_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '78185d20978ec7257788ee859249455da7d38ff635588db8201bda0dc978b192'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('37c1f66a-efb9-562c-9078-926a28c7e93b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8855f602-b612-5b25-a012-51a6fa8be944', 1), '78185d20978ec7257788ee859249455da7d38ff635588db8201bda0dc978b192',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/a2910a597f56dc0e5345a2305c09fe0b32cea07b23e915663e95529c6e0f3139.mp3', 2768, '2026-09-14 06:05:05.391059', '1ab55f659678b39196145769c34ae5b44e6e4200ddabca68b5bcc505428a0fa8', 'validated', '{"audio_key":"a2910a597f56dc0e5345a2305c09fe0b32cea07b23e915663e95529c6e0f3139","entity_key":"d_concession_and_reframing_01:4","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"1ab55f659678b39196145769c34ae5b44e6e4200ddabca68b5bcc505428a0fa8","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/a2910a597f56dc0e5345a2305c09fe0b32cea07b23e915663e95529c6e0f3139.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_concession_and_reframing_02:4 -> audio/generated/it-IT/dialogues/a2ed73e452a64ef15ab21cd7d7717b6a86979f88df623c15d2789f2c97544882.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6daa8e92-658e-5d2e-9153-ac3f24e7e885', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_concession_and_reframing_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '08c6f949cdeeb987f9ff0fc1882b35f8bdbf6b62769b9a4be83435d9df30c0cf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2a28f9b1-0abb-539f-be0f-b85dd716abb9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6daa8e92-658e-5d2e-9153-ac3f24e7e885', 1), '08c6f949cdeeb987f9ff0fc1882b35f8bdbf6b62769b9a4be83435d9df30c0cf',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/a2ed73e452a64ef15ab21cd7d7717b6a86979f88df623c15d2789f2c97544882.mp3', 3291, '2026-09-14 06:05:05.988958', '9dda0b9e450333ff92ed22d9aabcb2194235ed29fe69b28c0afcd7a49159bc8e', 'validated', '{"audio_key":"a2ed73e452a64ef15ab21cd7d7717b6a86979f88df623c15d2789f2c97544882","entity_key":"d_concession_and_reframing_02:4","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9dda0b9e450333ff92ed22d9aabcb2194235ed29fe69b28c0afcd7a49159bc8e","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/a2ed73e452a64ef15ab21cd7d7717b6a86979f88df623c15d2789f2c97544882.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_flexibility_02:1 -> audio/generated/it-IT/dialogues/a5fe8cd92d8be0b52fbc40f8c8f6ad405f4825038fb814443d541d87ac011323.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('09435a90-5d59-5347-901d-0da7eb0f9893', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_flexibility_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd2c275789bfe0e3b7959ea08e1bce73ebb791d9dead39b3aa6678635d2d9c964'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('23216ef1-13f7-5038-ac2e-20b09b6064f2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('09435a90-5d59-5347-901d-0da7eb0f9893', 1), 'd2c275789bfe0e3b7959ea08e1bce73ebb791d9dead39b3aa6678635d2d9c964',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/a5fe8cd92d8be0b52fbc40f8c8f6ad405f4825038fb814443d541d87ac011323.mp3', 3108, '2026-09-14 06:05:06.596780', '00c0a72faa95117fc33b9b5c286cc8cf2d211dc5c6935bfeecba570be20c17d4', 'validated', '{"audio_key":"a5fe8cd92d8be0b52fbc40f8c8f6ad405f4825038fb814443d541d87ac011323","entity_key":"d_register_flexibility_02:1","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"00c0a72faa95117fc33b9b5c286cc8cf2d211dc5c6935bfeecba570be20c17d4","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/a5fe8cd92d8be0b52fbc40f8c8f6ad405f4825038fb814443d541d87ac011323.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c1_public_forum_capstone_01:3 -> audio/generated/it-IT/dialogues/a7facc71a6b22e07bf75e16521fb96c3f27b9ee81c3200c96e00ebb5e7795792.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a907e617-be80-5948-bf92-fed0dbfcf3a2', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c1_public_forum_capstone_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'be76568adff7a17c9eec80e7a5e17ac08c5949731a6a2db69d68d3f3932e2486'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('295299d9-792d-584d-bf1e-dccc8f5474d1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a907e617-be80-5948-bf92-fed0dbfcf3a2', 1), 'be76568adff7a17c9eec80e7a5e17ac08c5949731a6a2db69d68d3f3932e2486',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/a7facc71a6b22e07bf75e16521fb96c3f27b9ee81c3200c96e00ebb5e7795792.mp3', 1854, '2026-09-14 06:05:07.004218', '003701541835a0b040ee0d1d618bf0f73df5d050c8aab7028a582610257e6cfa', 'validated', '{"audio_key":"a7facc71a6b22e07bf75e16521fb96c3f27b9ee81c3200c96e00ebb5e7795792","entity_key":"d_c1_public_forum_capstone_01:3","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"003701541835a0b040ee0d1d618bf0f73df5d050c8aab7028a582610257e6cfa","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/a7facc71a6b22e07bf75e16521fb96c3f27b9ee81c3200c96e00ebb5e7795792.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_nominalization_and_density_01:1 -> audio/generated/it-IT/dialogues/adb56b77cc8c3b6640c678566b5892a91a30054c17a3c0d9960ead3697f4f5e1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('85471e71-ba0d-5ab6-bd0e-841641343b8b', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_nominalization_and_density_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '99a3751ca835c8a794434962c9bbfe4604ac047c09dfb1b73ab0ce4130fe5546'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fbc502aa-bdab-5360-9062-1d6e5f4a3d8b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('85471e71-ba0d-5ab6-bd0e-841641343b8b', 1), '99a3751ca835c8a794434962c9bbfe4604ac047c09dfb1b73ab0ce4130fe5546',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/adb56b77cc8c3b6640c678566b5892a91a30054c17a3c0d9960ead3697f4f5e1.mp3', 3526, '2026-09-14 06:05:07.790002', 'ac53a31412d9755a4fe6cc04f119457987cacd6082cbf6b8f5ceacc591b1e082', 'validated', '{"audio_key":"adb56b77cc8c3b6640c678566b5892a91a30054c17a3c0d9960ead3697f4f5e1","entity_key":"d_nominalization_and_density_01:1","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"ac53a31412d9755a4fe6cc04f119457987cacd6082cbf6b8f5ceacc591b1e082","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/adb56b77cc8c3b6640c678566b5892a91a30054c17a3c0d9960ead3697f4f5e1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_complex_causality_02:1 -> audio/generated/it-IT/dialogues/b2a4adf8906b07ba162d641942c0251ee1a1666c7abfb662588a220bdec0957c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('271f05ad-6804-50fe-ae88-f50a3cbcc6cd', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_complex_causality_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'daff4e22bcfb8f14087fd7de0deced42a5103dfbf8bf645c1bc8c6663e17aef1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4ce269d8-488d-5b74-856d-4b4a2f1a1d99', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('271f05ad-6804-50fe-ae88-f50a3cbcc6cd', 1), 'daff4e22bcfb8f14087fd7de0deced42a5103dfbf8bf645c1bc8c6663e17aef1',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/b2a4adf8906b07ba162d641942c0251ee1a1666c7abfb662588a220bdec0957c.mp3', 2533, '2026-09-14 06:05:08.193459', 'cfa06d5fe446ddca68a85a7b9eb5eb7b659656abfb29cc59583b0c0acb39ffeb', 'validated', '{"audio_key":"b2a4adf8906b07ba162d641942c0251ee1a1666c7abfb662588a220bdec0957c","entity_key":"d_complex_causality_02:1","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"cfa06d5fe446ddca68a85a7b9eb5eb7b659656abfb29cc59583b0c0acb39ffeb","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/b2a4adf8906b07ba162d641942c0251ee1a1666c7abfb662588a220bdec0957c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_calibrated_stance_02:3 -> audio/generated/it-IT/dialogues/b3b5d055582dc1f6a75b6286c4db8bddc05cdec1413fb65badd96ce9935cac76.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c9421dd3-1e0e-5b5c-b4ac-29c094755f55', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_calibrated_stance_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f79287246eb85ab9a08673fdfb0f0e9ce92d53b8823ddd2be01f59dbccd81090'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7769f02c-5d3b-5fee-9d05-09f4fc87f392', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c9421dd3-1e0e-5b5c-b4ac-29c094755f55', 1), 'f79287246eb85ab9a08673fdfb0f0e9ce92d53b8823ddd2be01f59dbccd81090',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/b3b5d055582dc1f6a75b6286c4db8bddc05cdec1413fb65badd96ce9935cac76.mp3', 1802, '2026-09-14 06:05:08.789808', '12485670fa70803616f4d9c4ce0a506b3daae4dddfe8e9cb91689ed6f7cff52f', 'validated', '{"audio_key":"b3b5d055582dc1f6a75b6286c4db8bddc05cdec1413fb65badd96ce9935cac76","entity_key":"d_calibrated_stance_02:3","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"12485670fa70803616f4d9c4ce0a506b3daae4dddfe8e9cb91689ed6f7cff52f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/b3b5d055582dc1f6a75b6286c4db8bddc05cdec1413fb65badd96ce9935cac76.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_information_structure_02:3 -> audio/generated/it-IT/dialogues/b5f07a9c2c74d173a0e42d75388992d7d4ec42c95a43d0092d45f82bb5d0aaee.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('51cef328-b380-50b2-a4dd-9e05c6ea6b68', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_information_structure_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '644e92b776a6949c5d247e024d58a53fad2df940a1bb7f717c97a9599740269a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('11b81c6c-9283-52af-8700-1e517185279b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('51cef328-b380-50b2-a4dd-9e05c6ea6b68', 1), '644e92b776a6949c5d247e024d58a53fad2df940a1bb7f717c97a9599740269a',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/b5f07a9c2c74d173a0e42d75388992d7d4ec42c95a43d0092d45f82bb5d0aaee.mp3', 2037, '2026-09-14 06:05:09.256950', '5cea37f03e00bdfed264a84e243792569895fd4657ceb468d7301e0200cfa669', 'validated', '{"audio_key":"b5f07a9c2c74d173a0e42d75388992d7d4ec42c95a43d0092d45f82bb5d0aaee","entity_key":"d_information_structure_02:3","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"5cea37f03e00bdfed264a84e243792569895fd4657ceb468d7301e0200cfa669","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/b5f07a9c2c74d173a0e42d75388992d7d4ec42c95a43d0092d45f82bb5d0aaee.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_concession_and_reframing_02:3 -> audio/generated/it-IT/dialogues/b9f94398d34461daaa76708d103f875a5fe4020294484c6271ed0b62cb129474.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('16693067-28ae-5ae2-b763-f480429c1fd4', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_concession_and_reframing_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '088ea2901080fa77bfdacccee3c7ede6bd9925ef87873e8f00f06b224c4d9ada'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('63be0a59-aec9-5bc2-b502-07a670d7e173', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('16693067-28ae-5ae2-b763-f480429c1fd4', 1), '088ea2901080fa77bfdacccee3c7ede6bd9925ef87873e8f00f06b224c4d9ada',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/b9f94398d34461daaa76708d103f875a5fe4020294484c6271ed0b62cb129474.mp3', 2037, '2026-09-14 06:05:09.821210', '69727ee89330e3417bc31eb3f6f3d0118daef466735708147b6fd4a0894d6891', 'validated', '{"audio_key":"b9f94398d34461daaa76708d103f875a5fe4020294484c6271ed0b62cb129474","entity_key":"d_concession_and_reframing_02:3","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"69727ee89330e3417bc31eb3f6f3d0118daef466735708147b6fd4a0894d6891","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/b9f94398d34461daaa76708d103f875a5fe4020294484c6271ed0b62cb129474.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_idiomatic_reformulation_01:3 -> audio/generated/it-IT/dialogues/c00d9f80ebcb8a2b663009b28d3915da394743c48b50bf115f7fe82221d13f5e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('199d53c7-5eb1-5958-a49c-78dda67c1d72', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_idiomatic_reformulation_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '602476546611056a3ff87444310536d09435f58cc4dd626a4f80de87e1b3f4d2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dc54b3d6-58d1-50b9-962c-adbfc5af14b4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('199d53c7-5eb1-5958-a49c-78dda67c1d72', 1), '602476546611056a3ff87444310536d09435f58cc4dd626a4f80de87e1b3f4d2',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/c00d9f80ebcb8a2b663009b28d3915da394743c48b50bf115f7fe82221d13f5e.mp3', 4127, '2026-09-14 06:05:10.565674', '872f1af1dac22f55dc127f64bfb502190b83cece449590b6f6af8dc0e6a40537', 'validated', '{"audio_key":"c00d9f80ebcb8a2b663009b28d3915da394743c48b50bf115f7fe82221d13f5e","entity_key":"d_idiomatic_reformulation_01:3","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"872f1af1dac22f55dc127f64bfb502190b83cece449590b6f6af8dc0e6a40537","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/c00d9f80ebcb8a2b663009b28d3915da394743c48b50bf115f7fe82221d13f5e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_idiomatic_reformulation_02:4 -> audio/generated/it-IT/dialogues/c35c0dc4738844b997abf72d9ffd105303311bd0f8b54b4089fec34628ac4f67.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1f5b5a3c-e3ca-5fe6-99c9-4ab2fce3ffb9', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_idiomatic_reformulation_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '63c49464fc0fadf6c4bae1779dbddefa157d3f93b44e13fd64a9a3a1975350ef'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0900de08-8926-5a0a-8f5a-32bf909f043f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1f5b5a3c-e3ca-5fe6-99c9-4ab2fce3ffb9', 1), '63c49464fc0fadf6c4bae1779dbddefa157d3f93b44e13fd64a9a3a1975350ef',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/c35c0dc4738844b997abf72d9ffd105303311bd0f8b54b4089fec34628ac4f67.mp3', 3239, '2026-09-14 06:05:11.072288', '40394810779c0401c2ca6db5aa051af0236de94f5e9d2eba708139a76d85e16e', 'validated', '{"audio_key":"c35c0dc4738844b997abf72d9ffd105303311bd0f8b54b4089fec34628ac4f67","entity_key":"d_idiomatic_reformulation_02:4","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"40394810779c0401c2ca6db5aa051af0236de94f5e9d2eba708139a76d85e16e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/c35c0dc4738844b997abf72d9ffd105303311bd0f8b54b4089fec34628ac4f67.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_calibrated_stance_01:3 -> audio/generated/it-IT/dialogues/c49689781bd4846ec93b4c9754fe369dadcdfb5a9f19b48e758da85e15e7e3ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('239d11f5-b4dc-55de-b619-5f6aaf654145', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_calibrated_stance_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e297fefa99fbe76dbb76d781f4eebc9f3624cc030d429336ec06be452e7c6fff'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7b86e434-e130-5658-8496-3630e5315dda', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('239d11f5-b4dc-55de-b619-5f6aaf654145', 1), 'e297fefa99fbe76dbb76d781f4eebc9f3624cc030d429336ec06be452e7c6fff',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/c49689781bd4846ec93b4c9754fe369dadcdfb5a9f19b48e758da85e15e7e3ef.mp3', 2821, '2026-09-14 06:05:11.709225', '2725b84a3ccee26afdd7296c0dd872a956b608d96f6d20df67205d74cf744495', 'validated', '{"audio_key":"c49689781bd4846ec93b4c9754fe369dadcdfb5a9f19b48e758da85e15e7e3ef","entity_key":"d_calibrated_stance_01:3","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"2725b84a3ccee26afdd7296c0dd872a956b608d96f6d20df67205d74cf744495","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/c49689781bd4846ec93b4c9754fe369dadcdfb5a9f19b48e758da85e15e7e3ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_concession_and_reframing_01:1 -> audio/generated/it-IT/dialogues/c5790bd99a312ba52941021fef7ac5506bc412377bdfbadee7cc141e4799aef5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('05af195a-3908-58a1-b93c-66af4c0c1e06', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_concession_and_reframing_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2993f29d438b94cc8b6ed73047aa4bd3529f8f980b467150b92ce740ee67bdbe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f5838680-308c-56a2-9a84-1d45381a9350', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('05af195a-3908-58a1-b93c-66af4c0c1e06', 1), '2993f29d438b94cc8b6ed73047aa4bd3529f8f980b467150b92ce740ee67bdbe',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/c5790bd99a312ba52941021fef7ac5506bc412377bdfbadee7cc141e4799aef5.mp3', 2272, '2026-09-14 06:05:12.161425', '68db83b5267b8ee1293c95f95639e4f6e7c7507cdad5d85ed3ff0d737d4f33ef', 'validated', '{"audio_key":"c5790bd99a312ba52941021fef7ac5506bc412377bdfbadee7cc141e4799aef5","entity_key":"d_concession_and_reframing_01:1","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"68db83b5267b8ee1293c95f95639e4f6e7c7507cdad5d85ed3ff0d737d4f33ef","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/c5790bd99a312ba52941021fef7ac5506bc412377bdfbadee7cc141e4799aef5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_flexibility_01:4 -> audio/generated/it-IT/dialogues/c64dbdb906394fb5ae80544b4aab100194aa97624415f85096f2e121d36cdffa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ec427291-5ac3-5b95-b8c5-0ff0cf0c2917', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_flexibility_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd6bede66ed2b05ae33aaf593082869667531cc1d5e2c80c7e38193fe6939207e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('be6e70ac-33d4-5d5c-afc4-f41b469ee467', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ec427291-5ac3-5b95-b8c5-0ff0cf0c2917', 1), 'd6bede66ed2b05ae33aaf593082869667531cc1d5e2c80c7e38193fe6939207e',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/c64dbdb906394fb5ae80544b4aab100194aa97624415f85096f2e121d36cdffa.mp3', 2507, '2026-09-14 06:05:13.795523', 'ee4adf6e5d3f01da9acfe10a601fb9f16b55a29bc46868f033826a2f187e00cf', 'validated', '{"audio_key":"c64dbdb906394fb5ae80544b4aab100194aa97624415f85096f2e121d36cdffa","entity_key":"d_register_flexibility_01:4","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"ee4adf6e5d3f01da9acfe10a601fb9f16b55a29bc46868f033826a2f187e00cf","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/c64dbdb906394fb5ae80544b4aab100194aa97624415f85096f2e121d36cdffa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_nominalization_and_density_02:4 -> audio/generated/it-IT/dialogues/c67dc2fbd0a5360f28a91e3da693ce1b363a79c7ca6360cbe2f11087f47dd2ec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d0383a56-ceaf-53fb-919c-69e023a5e3a9', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_nominalization_and_density_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bb31146b7787207a578dda3a7d9161e5d365e94308b315f525d9a4c2b046b3a5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('57dfdb91-1008-5448-9a0f-f70eaa9d999c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d0383a56-ceaf-53fb-919c-69e023a5e3a9', 1), 'bb31146b7787207a578dda3a7d9161e5d365e94308b315f525d9a4c2b046b3a5',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/c67dc2fbd0a5360f28a91e3da693ce1b363a79c7ca6360cbe2f11087f47dd2ec.mp3', 3108, '2026-09-14 06:05:13.342104', '90207431bdcbe881685d89bacaf573476b246c9052249e040069944316efcb5a', 'validated', '{"audio_key":"c67dc2fbd0a5360f28a91e3da693ce1b363a79c7ca6360cbe2f11087f47dd2ec","entity_key":"d_nominalization_and_density_02:4","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"90207431bdcbe881685d89bacaf573476b246c9052249e040069944316efcb5a","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/c67dc2fbd0a5360f28a91e3da693ce1b363a79c7ca6360cbe2f11087f47dd2ec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_concession_and_reframing_02:1 -> audio/generated/it-IT/dialogues/cc3deb85975a20bce50f4c9ee16b2b629032d894b757b7cff09c12ba4891ebb6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f9162897-01c0-50b7-bba3-31be0b00a11f', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_concession_and_reframing_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8ff9775d5a92cd4f3e819cbc29d03593c2326b899c70fe53c9e6f612d7f51145'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ca694ddc-f2c6-5a1b-931d-2f286e5bdb76', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f9162897-01c0-50b7-bba3-31be0b00a11f', 1), '8ff9775d5a92cd4f3e819cbc29d03593c2326b899c70fe53c9e6f612d7f51145',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/cc3deb85975a20bce50f4c9ee16b2b629032d894b757b7cff09c12ba4891ebb6.mp3', 2507, '2026-09-14 06:05:14.457507', 'bf9d26393dde02ea7becbfbfa7d82ce13d406694a02488dcf168baba6e9548dd', 'validated', '{"audio_key":"cc3deb85975a20bce50f4c9ee16b2b629032d894b757b7cff09c12ba4891ebb6","entity_key":"d_concession_and_reframing_02:1","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"bf9d26393dde02ea7becbfbfa7d82ce13d406694a02488dcf168baba6e9548dd","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/cc3deb85975a20bce50f4c9ee16b2b629032d894b757b7cff09c12ba4891ebb6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_information_structure_02:1 -> audio/generated/it-IT/dialogues/e0d0c440e731c8d6a26608ebb02acabe21af05f9b1232f3cc9f5ee2e240fba45.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('34ca155d-9e43-58c1-923a-8a73c581f0a9', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_information_structure_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c5f67425371ec2c1170eeba1207b22ac928316e7edda4151d74e58d12d4573a9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('87b58453-316c-55ba-9335-331620ee6e26', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('34ca155d-9e43-58c1-923a-8a73c581f0a9', 1), 'c5f67425371ec2c1170eeba1207b22ac928316e7edda4151d74e58d12d4573a9',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/e0d0c440e731c8d6a26608ebb02acabe21af05f9b1232f3cc9f5ee2e240fba45.mp3', 3108, '2026-09-14 06:05:14.975002', '763ff3bb4b8cda2d704b5cd37520624e990839c0f7f9175df993fc8c7efb3e66', 'validated', '{"audio_key":"e0d0c440e731c8d6a26608ebb02acabe21af05f9b1232f3cc9f5ee2e240fba45","entity_key":"d_information_structure_02:1","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"763ff3bb4b8cda2d704b5cd37520624e990839c0f7f9175df993fc8c7efb3e66","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/e0d0c440e731c8d6a26608ebb02acabe21af05f9b1232f3cc9f5ee2e240fba45.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c1_public_forum_capstone_01:1 -> audio/generated/it-IT/dialogues/e1d90a6e79efcbd351e722ec01b5e739b614b21225cd5a48c0c2b832bfe98610.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ff3845b3-c18e-5437-80a2-a96a0e2ed045', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c1_public_forum_capstone_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3deefe5c443b6e237362ecbee00f9fe44c65738638fd559e8625caee2a5093ce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8bddc4d2-ab6d-5e65-bd45-6d31458d4b89', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ff3845b3-c18e-5437-80a2-a96a0e2ed045', 1), '3deefe5c443b6e237362ecbee00f9fe44c65738638fd559e8625caee2a5093ce',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/e1d90a6e79efcbd351e722ec01b5e739b614b21225cd5a48c0c2b832bfe98610.mp3', 3108, '2026-09-14 06:05:15.647540', 'f3b6f7ab868fec7ef5d50efec70230d038cc2b388ed3f5fda135b8f088bc8abb', 'validated', '{"audio_key":"e1d90a6e79efcbd351e722ec01b5e739b614b21225cd5a48c0c2b832bfe98610","entity_key":"d_c1_public_forum_capstone_01:1","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"f3b6f7ab868fec7ef5d50efec70230d038cc2b388ed3f5fda135b8f088bc8abb","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/e1d90a6e79efcbd351e722ec01b5e739b614b21225cd5a48c0c2b832bfe98610.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_calibrated_stance_02:1 -> audio/generated/it-IT/dialogues/e79c1075cb56b2b2476f87ebca719a22e183177aad17cbcc17ecec5663c05595.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dabbd177-d818-57a5-99cc-2dbff90048dc', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_calibrated_stance_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5237b2e7deeddbc1be41bb735e2db26df9d86e85428a19d88187d88d16158026'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9ad41252-96ce-5a50-884b-e7140f0f41bd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dabbd177-d818-57a5-99cc-2dbff90048dc', 1), '5237b2e7deeddbc1be41bb735e2db26df9d86e85428a19d88187d88d16158026',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/e79c1075cb56b2b2476f87ebca719a22e183177aad17cbcc17ecec5663c05595.mp3', 2690, '2026-09-14 06:05:16.046724', 'aa38c58a6bee6658eda563e69db2fa9724e09e0631bd894916d6cf1f94e32749', 'validated', '{"audio_key":"e79c1075cb56b2b2476f87ebca719a22e183177aad17cbcc17ecec5663c05595","entity_key":"d_calibrated_stance_02:1","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"aa38c58a6bee6658eda563e69db2fa9724e09e0631bd894916d6cf1f94e32749","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/e79c1075cb56b2b2476f87ebca719a22e183177aad17cbcc17ecec5663c05595.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_voices_02:1 -> audio/generated/it-IT/dialogues/ecf1560d84c36b184f638cbb48e7bea2543f3ad52655a47403aee4e14929e2b0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fcdd383d-f294-55cf-ae27-478348d59344', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_voices_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '806e8703db0969ad2d6f945fc10bf41d47d359fd5a8f957c05bbfb05cc01f5c9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1490315f-d002-5ea0-a330-567516d8f364', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fcdd383d-f294-55cf-ae27-478348d59344', 1), '806e8703db0969ad2d6f945fc10bf41d47d359fd5a8f957c05bbfb05cc01f5c9',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/ecf1560d84c36b184f638cbb48e7bea2543f3ad52655a47403aee4e14929e2b0.mp3', 5276, '2026-09-14 06:05:17.067365', 'a5d240402df69d15e317e5e7453f3fc4ca0088fb57ba0409324f4ad3bc5c37b2', 'validated', '{"audio_key":"ecf1560d84c36b184f638cbb48e7bea2543f3ad52655a47403aee4e14929e2b0","entity_key":"d_reported_voices_02:1","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a5d240402df69d15e317e5e7453f3fc4ca0088fb57ba0409324f4ad3bc5c37b2","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/ecf1560d84c36b184f638cbb48e7bea2543f3ad52655a47403aee4e14929e2b0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_concession_and_reframing_01:2 -> audio/generated/it-IT/dialogues/f035bbac0ed58f9d86da6ef3f310d8ac6485b062fcf98663b3eb85ee9b8490b6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8c27cbfb-207b-5be6-896d-c57067b324e9', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_concession_and_reframing_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '531afd7f80484a6bda148ac231427395e5f22017c0c08742850a4d7d1f96e01b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c37357a5-25e6-50f9-aca6-765e441757a8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8c27cbfb-207b-5be6-896d-c57067b324e9', 1), '531afd7f80484a6bda148ac231427395e5f22017c0c08742850a4d7d1f96e01b',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/f035bbac0ed58f9d86da6ef3f310d8ac6485b062fcf98663b3eb85ee9b8490b6.mp3', 5198, '2026-09-14 06:05:17.480161', '9b6187eb524714c8e02bd484ea3624c7fcbf21054d997dde8b9ffe601f865018', 'validated', '{"audio_key":"f035bbac0ed58f9d86da6ef3f310d8ac6485b062fcf98663b3eb85ee9b8490b6","entity_key":"d_concession_and_reframing_01:2","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"9b6187eb524714c8e02bd484ea3624c7fcbf21054d997dde8b9ffe601f865018","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/f035bbac0ed58f9d86da6ef3f310d8ac6485b062fcf98663b3eb85ee9b8490b6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_information_structure_01:4 -> audio/generated/it-IT/dialogues/f4204356555aa7500504a60aff4b152f8036fe5ef8bfdb5122219f3597decd74.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('384e923c-4cfb-5c57-a672-c98b4c77a0ea', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_information_structure_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '47ecfaa425ad1557657713d32ed0372e798daeec5b97bc53dd0c62085ab01d7c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('071e91d1-1bfd-5483-aafb-2566faea537e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('384e923c-4cfb-5c57-a672-c98b4c77a0ea', 1), '47ecfaa425ad1557657713d32ed0372e798daeec5b97bc53dd0c62085ab01d7c',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/f4204356555aa7500504a60aff4b152f8036fe5ef8bfdb5122219f3597decd74.mp3', 4623, '2026-09-14 06:05:18.405806', '352a55daa7332b4ec4c70d38de74a8e7e628cafa84c50e3da8fce85ab3ac32d2', 'validated', '{"audio_key":"f4204356555aa7500504a60aff4b152f8036fe5ef8bfdb5122219f3597decd74","entity_key":"d_information_structure_01:4","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"352a55daa7332b4ec4c70d38de74a8e7e628cafa84c50e3da8fce85ab3ac32d2","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/f4204356555aa7500504a60aff4b152f8036fe5ef8bfdb5122219f3597decd74.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_flexibility_02:2 -> audio/generated/it-IT/dialogues/f537678987753fd72a375d408b8c4a439461b041ea3c28fbe87a88229927b2ce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4308968e-11b0-5a54-ac1c-e90561020655', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_flexibility_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bdf6eba74e0f3c34d34b787f978c949f3018c1e1e70a9e5a4205d9611cf36905'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bf305a0c-41f0-52e1-8174-3f4d85936895', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4308968e-11b0-5a54-ac1c-e90561020655', 1), 'bdf6eba74e0f3c34d34b787f978c949f3018c1e1e70a9e5a4205d9611cf36905',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/f537678987753fd72a375d408b8c4a439461b041ea3c28fbe87a88229927b2ce.mp3', 2168, '2026-09-14 06:05:18.531418', 'baf2979df03e8eeecbf173669be4c4b515b1e2233fc1f0a696b7d1d1689e54d6', 'validated', '{"audio_key":"f537678987753fd72a375d408b8c4a439461b041ea3c28fbe87a88229927b2ce","entity_key":"d_register_flexibility_02:2","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"baf2979df03e8eeecbf173669be4c4b515b1e2233fc1f0a696b7d1d1689e54d6","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/f537678987753fd72a375d408b8c4a439461b041ea3c28fbe87a88229927b2ce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c1_public_forum_capstone_02:2 -> audio/generated/it-IT/dialogues/f6f26e46775c6795830088bc2d0c209a3cd04363717f92c11edd15901f28045c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7d2ba6a8-225f-59d4-ace5-22836074ad51', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c1_public_forum_capstone_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '578b914a1ca18b21cd241cf702c23962b026be729ff43a7e8092fe74d5ac918d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('70167000-8623-5e8b-9345-f86524d666aa', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7d2ba6a8-225f-59d4-ace5-22836074ad51', 1), '578b914a1ca18b21cd241cf702c23962b026be729ff43a7e8092fe74d5ac918d',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/f6f26e46775c6795830088bc2d0c209a3cd04363717f92c11edd15901f28045c.mp3', 4963, '2026-09-14 06:05:19.777187', '991edfd8409c9e7d1cb9a43546cd4ca7c3b6f80d4d4fc6e3468316ff04489045', 'validated', '{"audio_key":"f6f26e46775c6795830088bc2d0c209a3cd04363717f92c11edd15901f28045c","entity_key":"d_c1_public_forum_capstone_02:2","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"991edfd8409c9e7d1cb9a43546cd4ca7c3b6f80d4d4fc6e3468316ff04489045","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/f6f26e46775c6795830088bc2d0c209a3cd04363717f92c11edd15901f28045c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_idiomatic_reformulation_02:3 -> audio/generated/it-IT/dialogues/f73116d196d036986253cf8448fcfaf1033fb3c50d6d5e1db09a4fbcdcb33d29.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('629f142b-6828-5d12-a54d-92492b3f5d34', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_idiomatic_reformulation_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd05dd59f01ff27b53b59af45cca14ac5ff9d60a06579173cdefde10b41e2927f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5bf4b27c-cf92-5f78-bef2-7519b79dca3c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('629f142b-6828-5d12-a54d-92492b3f5d34', 1), 'd05dd59f01ff27b53b59af45cca14ac5ff9d60a06579173cdefde10b41e2927f',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/f73116d196d036986253cf8448fcfaf1033fb3c50d6d5e1db09a4fbcdcb33d29.mp3', 2324, '2026-09-14 06:05:19.591853', 'dbf88702a1ecf99e0be905c8c42f1e3807dee559b550b103e1de37e334932073', 'validated', '{"audio_key":"f73116d196d036986253cf8448fcfaf1033fb3c50d6d5e1db09a4fbcdcb33d29","entity_key":"d_idiomatic_reformulation_02:3","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"dbf88702a1ecf99e0be905c8c42f1e3807dee559b550b103e1de37e334932073","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/f73116d196d036986253cf8448fcfaf1033fb3c50d6d5e1db09a4fbcdcb33d29.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_information_structure_01:1 -> audio/generated/it-IT/dialogues/f75c8db9a381e4e59362426b3948ef65868ac72f48dc36bb6991659bc6eb32d9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9f503e9a-607c-531f-81d7-2606952cb2f5', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_information_structure_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9e48bac5897a6b2a5590fda9a06abbb965dbbbc5f5acef1231971ea96f6b915b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('71dca6f6-fd8e-52e1-985f-66e1906d1d6e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9f503e9a-607c-531f-81d7-2606952cb2f5', 1), '9e48bac5897a6b2a5590fda9a06abbb965dbbbc5f5acef1231971ea96f6b915b',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/f75c8db9a381e4e59362426b3948ef65868ac72f48dc36bb6991659bc6eb32d9.mp3', 3787, '2026-09-14 06:05:20.983640', 'a02ef9a3683e5ad9e2af5aa5b33fe8e4736bcc14a695b35a239ea65225c6ca1e', 'validated', '{"audio_key":"f75c8db9a381e4e59362426b3948ef65868ac72f48dc36bb6991659bc6eb32d9","entity_key":"d_information_structure_01:1","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a02ef9a3683e5ad9e2af5aa5b33fe8e4736bcc14a695b35a239ea65225c6ca1e","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/f75c8db9a381e4e59362426b3948ef65868ac72f48dc36bb6991659bc6eb32d9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_mediation_and_synthesis_02:2 -> audio/generated/it-IT/dialogues/f7e8029a42ce460bb45ade66704f7a7c39cfa9593d038593fc750f68a4eaab2f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2e3a3202-0403-506e-8f44-9605bcd33a02', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_mediation_and_synthesis_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd1dbe6527e0cacf34c3faf6af043c28a4a74d6e540b1453e35a95198ea199bd7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8901f944-98fb-513c-ba9a-26e2787790f1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2e3a3202-0403-506e-8f44-9605bcd33a02', 1), 'd1dbe6527e0cacf34c3faf6af043c28a4a74d6e540b1453e35a95198ea199bd7',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/f7e8029a42ce460bb45ade66704f7a7c39cfa9593d038593fc750f68a4eaab2f.mp3', 2089, '2026-09-14 06:05:20.866614', 'adae0fa40f8c65df3558438f1a4c8f8c25fe246b0c7914359e99a0021688d0d7', 'validated', '{"audio_key":"f7e8029a42ce460bb45ade66704f7a7c39cfa9593d038593fc750f68a4eaab2f","entity_key":"d_mediation_and_synthesis_02:2","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"adae0fa40f8c65df3558438f1a4c8f8c25fe246b0c7914359e99a0021688d0d7","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/f7e8029a42ce460bb45ade66704f7a7c39cfa9593d038593fc750f68a4eaab2f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_calibrated_stance_01:1 -> audio/generated/it-IT/dialogues/f948e9456b0e9157354092360e447c2cff0bfe14374438ad5cba32b6b58d9974.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('aa3804cc-0ce3-5620-a0a9-b678a832a26d', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_calibrated_stance_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '32d12e28bb02bd5523ca0b8afdc22376948951b4def2ca3ec46bde3eee0d9da1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('14475f39-f771-5498-a983-d45ae71de030', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('aa3804cc-0ce3-5620-a0a9-b678a832a26d', 1), '32d12e28bb02bd5523ca0b8afdc22376948951b4def2ca3ec46bde3eee0d9da1',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/f948e9456b0e9157354092360e447c2cff0bfe14374438ad5cba32b6b58d9974.mp3', 2768, '2026-09-14 06:05:22.002497', '5beb73a5226729ed55573e9e218c17e2826c78f0380f8d927be17cf0b6512d58', 'validated', '{"audio_key":"f948e9456b0e9157354092360e447c2cff0bfe14374438ad5cba32b6b58d9974","entity_key":"d_calibrated_stance_01:1","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"5beb73a5226729ed55573e9e218c17e2826c78f0380f8d927be17cf0b6512d58","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/f948e9456b0e9157354092360e447c2cff0bfe14374438ad5cba32b6b58d9974.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_concession_and_reframing_02 -> audio/generated/it-IT/lexical/0311d4c0f013133f2e48a7adcf43f271869c3d6cabc7405f3a75cebd3562c173.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7164bdd2-5f46-5a0d-baf9-8aabd77c5d52', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_concession_and_reframing_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '10c6062341fc71313922b866d6f19ba86dbd8642c7a725c298c801a9b94b8529'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d68dd9ec-16e8-57fd-a64d-955e3138ab4b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7164bdd2-5f46-5a0d-baf9-8aabd77c5d52', 1), '10c6062341fc71313922b866d6f19ba86dbd8642c7a725c298c801a9b94b8529',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/0311d4c0f013133f2e48a7adcf43f271869c3d6cabc7405f3a75cebd3562c173.mp3', 1071, '2026-09-14 06:05:22.146987', '6915d10602c04ecf63a8769547c6bbe5089de7831f754384fee605701fd94619', 'validated', '{"audio_key":"0311d4c0f013133f2e48a7adcf43f271869c3d6cabc7405f3a75cebd3562c173","entity_key":"lx_concession_and_reframing_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"6915d10602c04ecf63a8769547c6bbe5089de7831f754384fee605701fd94619","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/0311d4c0f013133f2e48a7adcf43f271869c3d6cabc7405f3a75cebd3562c173.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_concession_and_reframing_02 -> audio/generated/it-IT/lexical/0311d4c0f013133f2e48a7adcf43f271869c3d6cabc7405f3a75cebd3562c173.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c2e7cc09-3e78-5d23-bf17-07a038a8524b', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_concession_and_reframing_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '10c6062341fc71313922b866d6f19ba86dbd8642c7a725c298c801a9b94b8529'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('26ba41b4-2cfd-56bc-8eb4-2a708ed5d418', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c2e7cc09-3e78-5d23-bf17-07a038a8524b', 1), '10c6062341fc71313922b866d6f19ba86dbd8642c7a725c298c801a9b94b8529',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/0311d4c0f013133f2e48a7adcf43f271869c3d6cabc7405f3a75cebd3562c173.mp3', 1071, '2026-09-14 06:05:22.146987', '6915d10602c04ecf63a8769547c6bbe5089de7831f754384fee605701fd94619', 'validated', '{"audio_key":"0311d4c0f013133f2e48a7adcf43f271869c3d6cabc7405f3a75cebd3562c173","entity_key":"wf_concession_and_reframing_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"6915d10602c04ecf63a8769547c6bbe5089de7831f754384fee605701fd94619","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/0311d4c0f013133f2e48a7adcf43f271869c3d6cabc7405f3a75cebd3562c173.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reported_voices_01 -> audio/generated/it-IT/lexical/065071a3ee7f4f0c2326586ad5341cba8d582a87b7c8ecbd1a1288afaf70799e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('55fb80c4-7074-5402-9ba5-b47289e20c61', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reported_voices_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '334975f170cade8832b0b3fc9a02d7b1be3924e4621fd4b0d5896353935105ce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('44bc9cca-dfbf-5af3-8abf-8f74661ee145', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('55fb80c4-7074-5402-9ba5-b47289e20c61', 1), '334975f170cade8832b0b3fc9a02d7b1be3924e4621fd4b0d5896353935105ce',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/065071a3ee7f4f0c2326586ad5341cba8d582a87b7c8ecbd1a1288afaf70799e.mp3', 1097, '2026-09-14 06:05:23.203213', 'cbe540702d1ecb768bec3543e15051297907508407def4e991bcc3ccaeb4c511', 'validated', '{"audio_key":"065071a3ee7f4f0c2326586ad5341cba8d582a87b7c8ecbd1a1288afaf70799e","entity_key":"lx_reported_voices_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"cbe540702d1ecb768bec3543e15051297907508407def4e991bcc3ccaeb4c511","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/065071a3ee7f4f0c2326586ad5341cba8d582a87b7c8ecbd1a1288afaf70799e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reported_voices_01 -> audio/generated/it-IT/lexical/065071a3ee7f4f0c2326586ad5341cba8d582a87b7c8ecbd1a1288afaf70799e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('83510ad9-9699-507a-9226-742819581d97', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reported_voices_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '334975f170cade8832b0b3fc9a02d7b1be3924e4621fd4b0d5896353935105ce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0cca7cea-e5f5-5ab7-8d3c-c22021599e74', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('83510ad9-9699-507a-9226-742819581d97', 1), '334975f170cade8832b0b3fc9a02d7b1be3924e4621fd4b0d5896353935105ce',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/065071a3ee7f4f0c2326586ad5341cba8d582a87b7c8ecbd1a1288afaf70799e.mp3', 1097, '2026-09-14 06:05:23.203213', 'cbe540702d1ecb768bec3543e15051297907508407def4e991bcc3ccaeb4c511', 'validated', '{"audio_key":"065071a3ee7f4f0c2326586ad5341cba8d582a87b7c8ecbd1a1288afaf70799e","entity_key":"wf_reported_voices_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"cbe540702d1ecb768bec3543e15051297907508407def4e991bcc3ccaeb4c511","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/065071a3ee7f4f0c2326586ad5341cba8d582a87b7c8ecbd1a1288afaf70799e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_nominalization_and_density_02 -> audio/generated/it-IT/lexical/08a57812b33194bc1ecc2042fdd39dc7ee6ffe23679282377f74ff77a484166d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('eed510da-0d08-5c80-b83c-e62fb619ed98', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_nominalization_and_density_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '81b8c83d71be73b0e548304836f2172be6e901f0b09c3ad8c1fc0d9762a5eb04'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4ec9eb3b-38ee-5df4-95b7-85090d710de6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('eed510da-0d08-5c80-b83c-e62fb619ed98', 1), '81b8c83d71be73b0e548304836f2172be6e901f0b09c3ad8c1fc0d9762a5eb04',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/08a57812b33194bc1ecc2042fdd39dc7ee6ffe23679282377f74ff77a484166d.mp3', 1071, '2026-09-14 06:05:23.093675', 'ca4c5fcf1fe7b96ed96f998d7d8bd1d3a2573c710454abab50d5bf5fa1cef106', 'validated', '{"audio_key":"08a57812b33194bc1ecc2042fdd39dc7ee6ffe23679282377f74ff77a484166d","entity_key":"lx_nominalization_and_density_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ca4c5fcf1fe7b96ed96f998d7d8bd1d3a2573c710454abab50d5bf5fa1cef106","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/08a57812b33194bc1ecc2042fdd39dc7ee6ffe23679282377f74ff77a484166d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_nominalization_and_density_02 -> audio/generated/it-IT/lexical/08a57812b33194bc1ecc2042fdd39dc7ee6ffe23679282377f74ff77a484166d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2b4a36e4-7980-5381-85da-48b3e4f2a929', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_nominalization_and_density_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '81b8c83d71be73b0e548304836f2172be6e901f0b09c3ad8c1fc0d9762a5eb04'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('99c4815b-12d8-549b-814f-2df61beefd1b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2b4a36e4-7980-5381-85da-48b3e4f2a929', 1), '81b8c83d71be73b0e548304836f2172be6e901f0b09c3ad8c1fc0d9762a5eb04',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/08a57812b33194bc1ecc2042fdd39dc7ee6ffe23679282377f74ff77a484166d.mp3', 1071, '2026-09-14 06:05:23.093675', 'ca4c5fcf1fe7b96ed96f998d7d8bd1d3a2573c710454abab50d5bf5fa1cef106', 'validated', '{"audio_key":"08a57812b33194bc1ecc2042fdd39dc7ee6ffe23679282377f74ff77a484166d","entity_key":"wf_nominalization_and_density_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ca4c5fcf1fe7b96ed96f998d7d8bd1d3a2573c710454abab50d5bf5fa1cef106","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/08a57812b33194bc1ecc2042fdd39dc7ee6ffe23679282377f74ff77a484166d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_nominalization_and_density_05 -> audio/generated/it-IT/lexical/14db90b18a57d59eda5a226e7582faf8495c485b72b0a597d3a59421e60a5a8a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ddc97026-e3a2-506f-8495-a3676b90139b', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_nominalization_and_density_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '17a649e697f4b1a847e5e8df9b84fe2189ea74db93aade581e81fcee0f956a89'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0b099448-5eb9-5b76-83f3-e45b25ea5fe7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ddc97026-e3a2-506f-8495-a3676b90139b', 1), '17a649e697f4b1a847e5e8df9b84fe2189ea74db93aade581e81fcee0f956a89',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/14db90b18a57d59eda5a226e7582faf8495c485b72b0a597d3a59421e60a5a8a.mp3', 1201, '2026-09-14 06:05:24.039046', '830908419da22c9c47e8bba9fbb4f4778067ccf9bb9df0fcc0d56bc7cb84bd7f', 'validated', '{"audio_key":"14db90b18a57d59eda5a226e7582faf8495c485b72b0a597d3a59421e60a5a8a","entity_key":"lx_nominalization_and_density_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"830908419da22c9c47e8bba9fbb4f4778067ccf9bb9df0fcc0d56bc7cb84bd7f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/14db90b18a57d59eda5a226e7582faf8495c485b72b0a597d3a59421e60a5a8a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_nominalization_and_density_05 -> audio/generated/it-IT/lexical/14db90b18a57d59eda5a226e7582faf8495c485b72b0a597d3a59421e60a5a8a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b1599dd0-c007-570b-a593-767fd60c5bb8', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_nominalization_and_density_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '17a649e697f4b1a847e5e8df9b84fe2189ea74db93aade581e81fcee0f956a89'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0f1ea642-bd3f-50b1-95b1-3753fdd83633', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b1599dd0-c007-570b-a593-767fd60c5bb8', 1), '17a649e697f4b1a847e5e8df9b84fe2189ea74db93aade581e81fcee0f956a89',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/14db90b18a57d59eda5a226e7582faf8495c485b72b0a597d3a59421e60a5a8a.mp3', 1201, '2026-09-14 06:05:24.039046', '830908419da22c9c47e8bba9fbb4f4778067ccf9bb9df0fcc0d56bc7cb84bd7f', 'validated', '{"audio_key":"14db90b18a57d59eda5a226e7582faf8495c485b72b0a597d3a59421e60a5a8a","entity_key":"wf_nominalization_and_density_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"830908419da22c9c47e8bba9fbb4f4778067ccf9bb9df0fcc0d56bc7cb84bd7f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/14db90b18a57d59eda5a226e7582faf8495c485b72b0a597d3a59421e60a5a8a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_calibrated_stance_05 -> audio/generated/it-IT/lexical/15f624fdf199916facfe7ed1904a1dae9a59652b61dd53a53cbb42a76d95798a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7de09fd0-5968-5ffe-a22c-7f7f34cc483f', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_calibrated_stance_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c6b8ad53430aefd4a1faac568ad57123fcc9250306e8b1c61c0d2491c93a7723'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b834ae19-e845-5152-95b5-648ca5297537', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7de09fd0-5968-5ffe-a22c-7f7f34cc483f', 1), 'c6b8ad53430aefd4a1faac568ad57123fcc9250306e8b1c61c0d2491c93a7723',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/15f624fdf199916facfe7ed1904a1dae9a59652b61dd53a53cbb42a76d95798a.mp3', 1097, '2026-09-14 06:05:24.165415', 'e4b35cbcb12178f0de6b1600092ff85e007f1a92f23619919ec25ba7a48e2138', 'validated', '{"audio_key":"15f624fdf199916facfe7ed1904a1dae9a59652b61dd53a53cbb42a76d95798a","entity_key":"lx_calibrated_stance_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e4b35cbcb12178f0de6b1600092ff85e007f1a92f23619919ec25ba7a48e2138","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/15f624fdf199916facfe7ed1904a1dae9a59652b61dd53a53cbb42a76d95798a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_calibrated_stance_05 -> audio/generated/it-IT/lexical/15f624fdf199916facfe7ed1904a1dae9a59652b61dd53a53cbb42a76d95798a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6b52596f-9156-5d96-b495-c85113950861', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_calibrated_stance_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c6b8ad53430aefd4a1faac568ad57123fcc9250306e8b1c61c0d2491c93a7723'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('004738ed-0cd2-5d42-9a79-aed60aa64bc9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6b52596f-9156-5d96-b495-c85113950861', 1), 'c6b8ad53430aefd4a1faac568ad57123fcc9250306e8b1c61c0d2491c93a7723',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/15f624fdf199916facfe7ed1904a1dae9a59652b61dd53a53cbb42a76d95798a.mp3', 1097, '2026-09-14 06:05:24.165415', 'e4b35cbcb12178f0de6b1600092ff85e007f1a92f23619919ec25ba7a48e2138', 'validated', '{"audio_key":"15f624fdf199916facfe7ed1904a1dae9a59652b61dd53a53cbb42a76d95798a","entity_key":"wf_calibrated_stance_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e4b35cbcb12178f0de6b1600092ff85e007f1a92f23619919ec25ba7a48e2138","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/15f624fdf199916facfe7ed1904a1dae9a59652b61dd53a53cbb42a76d95798a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_calibrated_stance_02 -> audio/generated/it-IT/lexical/18c99dd47ef22c89c39a2369f82ef99c07357e5d5e350e9a58feee8aa9dd16d1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d068e604-a61a-5631-8ad0-b5342dcb1335', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_calibrated_stance_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8c95748f2624779a49869d1bb0dbe851fc4e1af13dc51e8bb8f9e4d7f40e04d9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8c53d1b7-711a-5622-ba54-db84220d93d0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d068e604-a61a-5631-8ad0-b5342dcb1335', 1), '8c95748f2624779a49869d1bb0dbe851fc4e1af13dc51e8bb8f9e4d7f40e04d9',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/18c99dd47ef22c89c39a2369f82ef99c07357e5d5e350e9a58feee8aa9dd16d1.mp3', 966, '2026-09-14 06:05:25.001629', '2541ae3b0104e81f5bc9223c5f65f31f155e4c989abc0194a585add8c93990f7', 'validated', '{"audio_key":"18c99dd47ef22c89c39a2369f82ef99c07357e5d5e350e9a58feee8aa9dd16d1","entity_key":"lx_calibrated_stance_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2541ae3b0104e81f5bc9223c5f65f31f155e4c989abc0194a585add8c93990f7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/18c99dd47ef22c89c39a2369f82ef99c07357e5d5e350e9a58feee8aa9dd16d1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_calibrated_stance_02 -> audio/generated/it-IT/lexical/18c99dd47ef22c89c39a2369f82ef99c07357e5d5e350e9a58feee8aa9dd16d1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('dcd79416-287b-565b-9b91-75ad4a582712', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_calibrated_stance_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8c95748f2624779a49869d1bb0dbe851fc4e1af13dc51e8bb8f9e4d7f40e04d9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f8d22de0-8c3a-5382-b2de-8a6ea9d88031', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('dcd79416-287b-565b-9b91-75ad4a582712', 1), '8c95748f2624779a49869d1bb0dbe851fc4e1af13dc51e8bb8f9e4d7f40e04d9',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/18c99dd47ef22c89c39a2369f82ef99c07357e5d5e350e9a58feee8aa9dd16d1.mp3', 966, '2026-09-14 06:05:25.001629', '2541ae3b0104e81f5bc9223c5f65f31f155e4c989abc0194a585add8c93990f7', 'validated', '{"audio_key":"18c99dd47ef22c89c39a2369f82ef99c07357e5d5e350e9a58feee8aa9dd16d1","entity_key":"wf_calibrated_stance_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2541ae3b0104e81f5bc9223c5f65f31f155e4c989abc0194a585add8c93990f7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/18c99dd47ef22c89c39a2369f82ef99c07357e5d5e350e9a58feee8aa9dd16d1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reported_voices_05 -> audio/generated/it-IT/lexical/1a02e3e8269089018ca98fd9254e0c417cc34b19427efae83758cf0ed2ceff7b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c40c9e82-b8c8-5f31-8d99-8b55de93ea63', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reported_voices_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f14de58ef0b0403dcd9ddb8505541dcd188e3dbb24c69f70ba8f598e5c073ef6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('69297dbb-24c3-51ef-8e5b-278e3d885101', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c40c9e82-b8c8-5f31-8d99-8b55de93ea63', 1), 'f14de58ef0b0403dcd9ddb8505541dcd188e3dbb24c69f70ba8f598e5c073ef6',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/1a02e3e8269089018ca98fd9254e0c417cc34b19427efae83758cf0ed2ceff7b.mp3', 1201, '2026-09-14 06:05:25.121381', '2eb482bb0e9b22df3d0ac174dee79dfaecee7e0ba19a31fb2dbf4ebc3a6a2249', 'validated', '{"audio_key":"1a02e3e8269089018ca98fd9254e0c417cc34b19427efae83758cf0ed2ceff7b","entity_key":"lx_reported_voices_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2eb482bb0e9b22df3d0ac174dee79dfaecee7e0ba19a31fb2dbf4ebc3a6a2249","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/1a02e3e8269089018ca98fd9254e0c417cc34b19427efae83758cf0ed2ceff7b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reported_voices_05 -> audio/generated/it-IT/lexical/1a02e3e8269089018ca98fd9254e0c417cc34b19427efae83758cf0ed2ceff7b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d78fc68a-9e50-5037-a286-57457032b4e9', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reported_voices_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f14de58ef0b0403dcd9ddb8505541dcd188e3dbb24c69f70ba8f598e5c073ef6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2f49015f-a8c4-515d-8e4a-8e35d07860ab', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d78fc68a-9e50-5037-a286-57457032b4e9', 1), 'f14de58ef0b0403dcd9ddb8505541dcd188e3dbb24c69f70ba8f598e5c073ef6',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/1a02e3e8269089018ca98fd9254e0c417cc34b19427efae83758cf0ed2ceff7b.mp3', 1201, '2026-09-14 06:05:25.121381', '2eb482bb0e9b22df3d0ac174dee79dfaecee7e0ba19a31fb2dbf4ebc3a6a2249', 'validated', '{"audio_key":"1a02e3e8269089018ca98fd9254e0c417cc34b19427efae83758cf0ed2ceff7b","entity_key":"wf_reported_voices_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2eb482bb0e9b22df3d0ac174dee79dfaecee7e0ba19a31fb2dbf4ebc3a6a2249","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/1a02e3e8269089018ca98fd9254e0c417cc34b19427efae83758cf0ed2ceff7b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_complex_causality_05 -> audio/generated/it-IT/lexical/2d117271fd82c24b799ae10a9410fc23fc17c90e0e75edc13b177d4eec57067f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4971224a-b6e9-5fd0-abd4-698d72ea32ea', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_complex_causality_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '723034bba2141715e41e1dc930e1b1fced34382e17895ed8107539d0752b2787'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c21fd135-121a-5592-861e-aac41d4787de', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4971224a-b6e9-5fd0-abd4-698d72ea32ea', 1), '723034bba2141715e41e1dc930e1b1fced34382e17895ed8107539d0752b2787',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/2d117271fd82c24b799ae10a9410fc23fc17c90e0e75edc13b177d4eec57067f.mp3', 1280, '2026-09-14 06:05:25.971831', 'dae7bdf9f88204bc851aa71b2e35776ffab1b70adcabc74bc225181af1c75f77', 'validated', '{"audio_key":"2d117271fd82c24b799ae10a9410fc23fc17c90e0e75edc13b177d4eec57067f","entity_key":"lx_complex_causality_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"dae7bdf9f88204bc851aa71b2e35776ffab1b70adcabc74bc225181af1c75f77","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/2d117271fd82c24b799ae10a9410fc23fc17c90e0e75edc13b177d4eec57067f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_complex_causality_05 -> audio/generated/it-IT/lexical/2d117271fd82c24b799ae10a9410fc23fc17c90e0e75edc13b177d4eec57067f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('bc6a9c71-9bf9-50dc-83e3-339d069c6a7d', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_complex_causality_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '723034bba2141715e41e1dc930e1b1fced34382e17895ed8107539d0752b2787'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8f94ecc8-54ce-5d02-848e-3e68aab509cf', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('bc6a9c71-9bf9-50dc-83e3-339d069c6a7d', 1), '723034bba2141715e41e1dc930e1b1fced34382e17895ed8107539d0752b2787',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/2d117271fd82c24b799ae10a9410fc23fc17c90e0e75edc13b177d4eec57067f.mp3', 1280, '2026-09-14 06:05:25.971831', 'dae7bdf9f88204bc851aa71b2e35776ffab1b70adcabc74bc225181af1c75f77', 'validated', '{"audio_key":"2d117271fd82c24b799ae10a9410fc23fc17c90e0e75edc13b177d4eec57067f","entity_key":"wf_complex_causality_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"dae7bdf9f88204bc851aa71b2e35776ffab1b70adcabc74bc225181af1c75f77","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/2d117271fd82c24b799ae10a9410fc23fc17c90e0e75edc13b177d4eec57067f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_mediation_and_synthesis_04 -> audio/generated/it-IT/lexical/2e76cfeca4de75f1892f7c0a3d0878a7d7c5ee51811cd95fdf98bcb59fae3e18.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('afb331a1-0b1e-551f-aed2-2c8cfaf4ea3a', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_mediation_and_synthesis_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '57d083f89d443773718871c77292ecc68d6e25ab027f67eb20a3bb3866d4cc8f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2f1451e3-b8fa-5555-822f-73f3c7ff4580', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('afb331a1-0b1e-551f-aed2-2c8cfaf4ea3a', 1), '57d083f89d443773718871c77292ecc68d6e25ab027f67eb20a3bb3866d4cc8f',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/2e76cfeca4de75f1892f7c0a3d0878a7d7c5ee51811cd95fdf98bcb59fae3e18.mp3', 1280, '2026-09-14 06:05:26.090510', 'cedbbab987dea95b4a74e5c3c3beeeb3df275232a69da845fe3ac940c75b5c4b', 'validated', '{"audio_key":"2e76cfeca4de75f1892f7c0a3d0878a7d7c5ee51811cd95fdf98bcb59fae3e18","entity_key":"lx_mediation_and_synthesis_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"cedbbab987dea95b4a74e5c3c3beeeb3df275232a69da845fe3ac940c75b5c4b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/2e76cfeca4de75f1892f7c0a3d0878a7d7c5ee51811cd95fdf98bcb59fae3e18.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_mediation_and_synthesis_04 -> audio/generated/it-IT/lexical/2e76cfeca4de75f1892f7c0a3d0878a7d7c5ee51811cd95fdf98bcb59fae3e18.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('96d230c3-1436-5406-b6d6-b6f6513f1158', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_mediation_and_synthesis_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '57d083f89d443773718871c77292ecc68d6e25ab027f67eb20a3bb3866d4cc8f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e85ed81d-ea8e-56b8-929b-9b765f243738', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('96d230c3-1436-5406-b6d6-b6f6513f1158', 1), '57d083f89d443773718871c77292ecc68d6e25ab027f67eb20a3bb3866d4cc8f',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/2e76cfeca4de75f1892f7c0a3d0878a7d7c5ee51811cd95fdf98bcb59fae3e18.mp3', 1280, '2026-09-14 06:05:26.090510', 'cedbbab987dea95b4a74e5c3c3beeeb3df275232a69da845fe3ac940c75b5c4b', 'validated', '{"audio_key":"2e76cfeca4de75f1892f7c0a3d0878a7d7c5ee51811cd95fdf98bcb59fae3e18","entity_key":"wf_mediation_and_synthesis_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"cedbbab987dea95b4a74e5c3c3beeeb3df275232a69da845fe3ac940c75b5c4b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/2e76cfeca4de75f1892f7c0a3d0878a7d7c5ee51811cd95fdf98bcb59fae3e18.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_c1_public_forum_capstone_03 -> audio/generated/it-IT/lexical/33e084adc9853efd7446331cbc370c3759d3d2c5e446ffea62133c109e5bc974.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3914c6ac-e406-5a5e-9136-f8a83705db49', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_c1_public_forum_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3a2181c366e1858414379979984adb33206a6713879e47787a7bbbb81c6e0d7a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dde3e3cd-e8bb-59d8-8997-fff3258d9015', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3914c6ac-e406-5a5e-9136-f8a83705db49', 1), '3a2181c366e1858414379979984adb33206a6713879e47787a7bbbb81c6e0d7a',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/33e084adc9853efd7446331cbc370c3759d3d2c5e446ffea62133c109e5bc974.mp3', 1253, '2026-09-14 06:05:26.930019', 'ba6c658ebab5ed4e47722084c440c3f36920469d77168cd2339f86f52eed85ac', 'validated', '{"audio_key":"33e084adc9853efd7446331cbc370c3759d3d2c5e446ffea62133c109e5bc974","entity_key":"lx_c1_public_forum_capstone_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ba6c658ebab5ed4e47722084c440c3f36920469d77168cd2339f86f52eed85ac","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/33e084adc9853efd7446331cbc370c3759d3d2c5e446ffea62133c109e5bc974.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_c1_public_forum_capstone_03 -> audio/generated/it-IT/lexical/33e084adc9853efd7446331cbc370c3759d3d2c5e446ffea62133c109e5bc974.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('23d6f3c9-48cf-520b-875e-613165211b44', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_c1_public_forum_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3a2181c366e1858414379979984adb33206a6713879e47787a7bbbb81c6e0d7a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4058682c-3dfc-57fe-b909-6440aa652fc6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('23d6f3c9-48cf-520b-875e-613165211b44', 1), '3a2181c366e1858414379979984adb33206a6713879e47787a7bbbb81c6e0d7a',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/33e084adc9853efd7446331cbc370c3759d3d2c5e446ffea62133c109e5bc974.mp3', 1253, '2026-09-14 06:05:26.930019', 'ba6c658ebab5ed4e47722084c440c3f36920469d77168cd2339f86f52eed85ac', 'validated', '{"audio_key":"33e084adc9853efd7446331cbc370c3759d3d2c5e446ffea62133c109e5bc974","entity_key":"wf_c1_public_forum_capstone_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ba6c658ebab5ed4e47722084c440c3f36920469d77168cd2339f86f52eed85ac","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/33e084adc9853efd7446331cbc370c3759d3d2c5e446ffea62133c109e5bc974.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_flexibility_03 -> audio/generated/it-IT/lexical/36cdaf458668b177287d024f9b2be6afc4292344dc605f03ac819782415d8666.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('afac7fa5-e1b8-5502-a64b-3224f1643dae', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_flexibility_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5a4fc7bca23f977fe646dd387ee306029dbd778140f6763df51b5c6cb759ecf6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9e4d0958-4370-522f-a35e-049b2a54ea4d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('afac7fa5-e1b8-5502-a64b-3224f1643dae', 1), '5a4fc7bca23f977fe646dd387ee306029dbd778140f6763df51b5c6cb759ecf6',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/36cdaf458668b177287d024f9b2be6afc4292344dc605f03ac819782415d8666.mp3', 1253, '2026-09-14 06:05:27.085237', '8018685293de11e68042cd00246a3b5434ad1196b9ed9f36cb8f5a8e19a8da1b', 'validated', '{"audio_key":"36cdaf458668b177287d024f9b2be6afc4292344dc605f03ac819782415d8666","entity_key":"lx_register_flexibility_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8018685293de11e68042cd00246a3b5434ad1196b9ed9f36cb8f5a8e19a8da1b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/36cdaf458668b177287d024f9b2be6afc4292344dc605f03ac819782415d8666.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_flexibility_03 -> audio/generated/it-IT/lexical/36cdaf458668b177287d024f9b2be6afc4292344dc605f03ac819782415d8666.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('750cc87d-e72d-546c-825b-f51bb940932a', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_flexibility_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5a4fc7bca23f977fe646dd387ee306029dbd778140f6763df51b5c6cb759ecf6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ba76eb73-4b49-56da-9557-e3156f2585b5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('750cc87d-e72d-546c-825b-f51bb940932a', 1), '5a4fc7bca23f977fe646dd387ee306029dbd778140f6763df51b5c6cb759ecf6',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/36cdaf458668b177287d024f9b2be6afc4292344dc605f03ac819782415d8666.mp3', 1253, '2026-09-14 06:05:27.085237', '8018685293de11e68042cd00246a3b5434ad1196b9ed9f36cb8f5a8e19a8da1b', 'validated', '{"audio_key":"36cdaf458668b177287d024f9b2be6afc4292344dc605f03ac819782415d8666","entity_key":"wf_register_flexibility_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8018685293de11e68042cd00246a3b5434ad1196b9ed9f36cb8f5a8e19a8da1b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/36cdaf458668b177287d024f9b2be6afc4292344dc605f03ac819782415d8666.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_flexibility_05 -> audio/generated/it-IT/lexical/38e602442d29c7067c411b833752e83a630eb33e984dbe4de9ac3577727c5262.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d95d3939-452b-5d08-a6bf-cad03e2b8402', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_flexibility_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8217da889460813dea589e9bcc5e6b143608085f20ef91b8f14dc819f10c66fc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fde5ac39-2bc2-5a34-b150-aa66753d336e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d95d3939-452b-5d08-a6bf-cad03e2b8402', 1), '8217da889460813dea589e9bcc5e6b143608085f20ef91b8f14dc819f10c66fc',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/38e602442d29c7067c411b833752e83a630eb33e984dbe4de9ac3577727c5262.mp3', 1280, '2026-09-14 06:05:27.906257', 'a9bd1bc75a0c4b19362891454a64874f1a8569b361ce87130dfd38ef59b73cdd', 'validated', '{"audio_key":"38e602442d29c7067c411b833752e83a630eb33e984dbe4de9ac3577727c5262","entity_key":"lx_register_flexibility_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"a9bd1bc75a0c4b19362891454a64874f1a8569b361ce87130dfd38ef59b73cdd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/38e602442d29c7067c411b833752e83a630eb33e984dbe4de9ac3577727c5262.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_flexibility_05 -> audio/generated/it-IT/lexical/38e602442d29c7067c411b833752e83a630eb33e984dbe4de9ac3577727c5262.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('77bf2fbc-df86-515f-9b3d-ebb1a23010ec', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_flexibility_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8217da889460813dea589e9bcc5e6b143608085f20ef91b8f14dc819f10c66fc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('91935dba-cbb9-584d-92db-176fd367e15a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('77bf2fbc-df86-515f-9b3d-ebb1a23010ec', 1), '8217da889460813dea589e9bcc5e6b143608085f20ef91b8f14dc819f10c66fc',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/38e602442d29c7067c411b833752e83a630eb33e984dbe4de9ac3577727c5262.mp3', 1280, '2026-09-14 06:05:27.906257', 'a9bd1bc75a0c4b19362891454a64874f1a8569b361ce87130dfd38ef59b73cdd', 'validated', '{"audio_key":"38e602442d29c7067c411b833752e83a630eb33e984dbe4de9ac3577727c5262","entity_key":"wf_register_flexibility_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"a9bd1bc75a0c4b19362891454a64874f1a8569b361ce87130dfd38ef59b73cdd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/38e602442d29c7067c411b833752e83a630eb33e984dbe4de9ac3577727c5262.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_nominalization_and_density_03 -> audio/generated/it-IT/lexical/3ed2dada7b577e558830cc939a92cd2844972f7a9d701a25d3c1a283eb92de2a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('db081493-0fab-5103-90ae-cf4a621e81c3', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_nominalization_and_density_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '35998dbe54a30130f198a9332f31b4a34120260a68179f5a10a0d98af4bf1f2a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('44422d15-3dd0-55db-b129-b34f0fa3b0ab', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('db081493-0fab-5103-90ae-cf4a621e81c3', 1), '35998dbe54a30130f198a9332f31b4a34120260a68179f5a10a0d98af4bf1f2a',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/3ed2dada7b577e558830cc939a92cd2844972f7a9d701a25d3c1a283eb92de2a.mp3', 1201, '2026-09-14 06:05:28.096154', '71e68145fc1510c632fa921c73b018ad2f15a8b3e5adef9d353897b078ca5524', 'validated', '{"audio_key":"3ed2dada7b577e558830cc939a92cd2844972f7a9d701a25d3c1a283eb92de2a","entity_key":"lx_nominalization_and_density_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"71e68145fc1510c632fa921c73b018ad2f15a8b3e5adef9d353897b078ca5524","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/3ed2dada7b577e558830cc939a92cd2844972f7a9d701a25d3c1a283eb92de2a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_nominalization_and_density_03 -> audio/generated/it-IT/lexical/3ed2dada7b577e558830cc939a92cd2844972f7a9d701a25d3c1a283eb92de2a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3e8612d0-8bce-5ae0-8ced-cb53334addb7', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_nominalization_and_density_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '35998dbe54a30130f198a9332f31b4a34120260a68179f5a10a0d98af4bf1f2a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('38371c5a-5074-5114-a36c-6107b384d805', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3e8612d0-8bce-5ae0-8ced-cb53334addb7', 1), '35998dbe54a30130f198a9332f31b4a34120260a68179f5a10a0d98af4bf1f2a',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/3ed2dada7b577e558830cc939a92cd2844972f7a9d701a25d3c1a283eb92de2a.mp3', 1201, '2026-09-14 06:05:28.096154', '71e68145fc1510c632fa921c73b018ad2f15a8b3e5adef9d353897b078ca5524', 'validated', '{"audio_key":"3ed2dada7b577e558830cc939a92cd2844972f7a9d701a25d3c1a283eb92de2a","entity_key":"wf_nominalization_and_density_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"71e68145fc1510c632fa921c73b018ad2f15a8b3e5adef9d353897b078ca5524","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/3ed2dada7b577e558830cc939a92cd2844972f7a9d701a25d3c1a283eb92de2a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reported_voices_06 -> audio/generated/it-IT/lexical/3efc5494eb1b0906055c31126d7c305d7412ed5e62c53294b1b21365ef1dd5d2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('04f0d6a5-25e6-5bc5-bb48-2a7728566bdc', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reported_voices_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3ef4bde5b0bc560aeb8667d56405ffdd49f58630b7dd42185f7fd7253220c85e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4750bed0-a772-5a96-b552-c01435d4142e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('04f0d6a5-25e6-5bc5-bb48-2a7728566bdc', 1), '3ef4bde5b0bc560aeb8667d56405ffdd49f58630b7dd42185f7fd7253220c85e',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/3efc5494eb1b0906055c31126d7c305d7412ed5e62c53294b1b21365ef1dd5d2.mp3', 1436, '2026-09-14 06:05:28.893897', '8dd7447b000ccfc41bae954bf67b4b3c27171c44e84284b00ea9a55b2ec2cc23', 'validated', '{"audio_key":"3efc5494eb1b0906055c31126d7c305d7412ed5e62c53294b1b21365ef1dd5d2","entity_key":"lx_reported_voices_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8dd7447b000ccfc41bae954bf67b4b3c27171c44e84284b00ea9a55b2ec2cc23","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/3efc5494eb1b0906055c31126d7c305d7412ed5e62c53294b1b21365ef1dd5d2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reported_voices_06 -> audio/generated/it-IT/lexical/3efc5494eb1b0906055c31126d7c305d7412ed5e62c53294b1b21365ef1dd5d2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('16f4e8b6-6e4b-538c-bc88-73231f21175f', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reported_voices_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3ef4bde5b0bc560aeb8667d56405ffdd49f58630b7dd42185f7fd7253220c85e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('843d2a9a-5c27-5bbf-b731-4ddac23d0a87', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('16f4e8b6-6e4b-538c-bc88-73231f21175f', 1), '3ef4bde5b0bc560aeb8667d56405ffdd49f58630b7dd42185f7fd7253220c85e',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/3efc5494eb1b0906055c31126d7c305d7412ed5e62c53294b1b21365ef1dd5d2.mp3', 1436, '2026-09-14 06:05:28.893897', '8dd7447b000ccfc41bae954bf67b4b3c27171c44e84284b00ea9a55b2ec2cc23', 'validated', '{"audio_key":"3efc5494eb1b0906055c31126d7c305d7412ed5e62c53294b1b21365ef1dd5d2","entity_key":"wf_reported_voices_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8dd7447b000ccfc41bae954bf67b4b3c27171c44e84284b00ea9a55b2ec2cc23","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/3efc5494eb1b0906055c31126d7c305d7412ed5e62c53294b1b21365ef1dd5d2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_concession_and_reframing_05 -> audio/generated/it-IT/lexical/44af3593cdcb404f4904c826e22292082ffcaa625a9fa560ac2b4d9efa29d528.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('74f6bbca-3fec-5a29-bde7-a10d0773c23e', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_concession_and_reframing_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4012f246dbfa1cf4641860b243d5988517e8bec99cfc5e70422f965079a562a7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4165cff2-9556-5beb-acf4-dc34d8a195c2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('74f6bbca-3fec-5a29-bde7-a10d0773c23e', 1), '4012f246dbfa1cf4641860b243d5988517e8bec99cfc5e70422f965079a562a7',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/44af3593cdcb404f4904c826e22292082ffcaa625a9fa560ac2b4d9efa29d528.mp3', 1071, '2026-09-14 06:05:29.111060', '398b89f40a39db8f791c519a2c7dabe1e68c9599826534c64ef675b7682af67c', 'validated', '{"audio_key":"44af3593cdcb404f4904c826e22292082ffcaa625a9fa560ac2b4d9efa29d528","entity_key":"lx_concession_and_reframing_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"398b89f40a39db8f791c519a2c7dabe1e68c9599826534c64ef675b7682af67c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/44af3593cdcb404f4904c826e22292082ffcaa625a9fa560ac2b4d9efa29d528.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_concession_and_reframing_05 -> audio/generated/it-IT/lexical/44af3593cdcb404f4904c826e22292082ffcaa625a9fa560ac2b4d9efa29d528.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5a66186c-7347-573f-8130-d5cc9233d3c2', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_concession_and_reframing_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4012f246dbfa1cf4641860b243d5988517e8bec99cfc5e70422f965079a562a7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b432be1a-8edd-5c14-afa3-ec1f856ea8e0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5a66186c-7347-573f-8130-d5cc9233d3c2', 1), '4012f246dbfa1cf4641860b243d5988517e8bec99cfc5e70422f965079a562a7',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/44af3593cdcb404f4904c826e22292082ffcaa625a9fa560ac2b4d9efa29d528.mp3', 1071, '2026-09-14 06:05:29.111060', '398b89f40a39db8f791c519a2c7dabe1e68c9599826534c64ef675b7682af67c', 'validated', '{"audio_key":"44af3593cdcb404f4904c826e22292082ffcaa625a9fa560ac2b4d9efa29d528","entity_key":"wf_concession_and_reframing_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"398b89f40a39db8f791c519a2c7dabe1e68c9599826534c64ef675b7682af67c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/44af3593cdcb404f4904c826e22292082ffcaa625a9fa560ac2b4d9efa29d528.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_complex_causality_03 -> audio/generated/it-IT/lexical/4aeba8be685d344c84b1ec4bce920d8db41d353addaf724072e795f4667abf50.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e0c9cf7f-dc78-51eb-99b0-7edbc8b7e468', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_complex_causality_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4c8057e4b0d3ecb2ce76355df622d6ec1a76fa467320f0af549e53c2fa46fc98'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3d53eb08-ee35-5ae9-b3e4-e6c940145e0c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e0c9cf7f-dc78-51eb-99b0-7edbc8b7e468', 1), '4c8057e4b0d3ecb2ce76355df622d6ec1a76fa467320f0af549e53c2fa46fc98',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/4aeba8be685d344c84b1ec4bce920d8db41d353addaf724072e795f4667abf50.mp3', 1384, '2026-09-14 06:05:29.866216', '4216eb5f625227a0e9303b61ade08c6b2d54090ad76bc74fce1278929c6b63b1', 'validated', '{"audio_key":"4aeba8be685d344c84b1ec4bce920d8db41d353addaf724072e795f4667abf50","entity_key":"lx_complex_causality_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"4216eb5f625227a0e9303b61ade08c6b2d54090ad76bc74fce1278929c6b63b1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/4aeba8be685d344c84b1ec4bce920d8db41d353addaf724072e795f4667abf50.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_complex_causality_03 -> audio/generated/it-IT/lexical/4aeba8be685d344c84b1ec4bce920d8db41d353addaf724072e795f4667abf50.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5a4ec42e-1e0d-5092-b383-08b8d6deb32a', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_complex_causality_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4c8057e4b0d3ecb2ce76355df622d6ec1a76fa467320f0af549e53c2fa46fc98'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4aac5c80-52ad-5844-a19a-fd7ce981fca6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5a4ec42e-1e0d-5092-b383-08b8d6deb32a', 1), '4c8057e4b0d3ecb2ce76355df622d6ec1a76fa467320f0af549e53c2fa46fc98',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/4aeba8be685d344c84b1ec4bce920d8db41d353addaf724072e795f4667abf50.mp3', 1384, '2026-09-14 06:05:29.866216', '4216eb5f625227a0e9303b61ade08c6b2d54090ad76bc74fce1278929c6b63b1', 'validated', '{"audio_key":"4aeba8be685d344c84b1ec4bce920d8db41d353addaf724072e795f4667abf50","entity_key":"wf_complex_causality_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"4216eb5f625227a0e9303b61ade08c6b2d54090ad76bc74fce1278929c6b63b1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/4aeba8be685d344c84b1ec4bce920d8db41d353addaf724072e795f4667abf50.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_idiomatic_reformulation_05 -> audio/generated/it-IT/lexical/4f1a28c41c72c2fb386394e311be7394974f7665f0b13b335e25c3847ace490a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7bd2b2e3-b18d-5ece-8ead-6081d27cb651', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_idiomatic_reformulation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd3afdff80ab99a54d0311b8890c44c61ad86fbb18b5e11d2e689dc25b8239cb8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('57e045e7-e475-510f-971e-539e29eecc23', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7bd2b2e3-b18d-5ece-8ead-6081d27cb651', 1), 'd3afdff80ab99a54d0311b8890c44c61ad86fbb18b5e11d2e689dc25b8239cb8',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/4f1a28c41c72c2fb386394e311be7394974f7665f0b13b335e25c3847ace490a.mp3', 1201, '2026-09-14 06:05:30.060853', 'f00af3693a88011fa446431bcf796b66cf305bc6110ec57c8e0f0ab0ddf51a5a', 'validated', '{"audio_key":"4f1a28c41c72c2fb386394e311be7394974f7665f0b13b335e25c3847ace490a","entity_key":"lx_idiomatic_reformulation_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f00af3693a88011fa446431bcf796b66cf305bc6110ec57c8e0f0ab0ddf51a5a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/4f1a28c41c72c2fb386394e311be7394974f7665f0b13b335e25c3847ace490a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_idiomatic_reformulation_05 -> audio/generated/it-IT/lexical/4f1a28c41c72c2fb386394e311be7394974f7665f0b13b335e25c3847ace490a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fc400048-2302-5246-83a8-c42fa4f525da', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_idiomatic_reformulation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd3afdff80ab99a54d0311b8890c44c61ad86fbb18b5e11d2e689dc25b8239cb8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4432a65b-20a8-5b42-979e-07fcb71531f1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fc400048-2302-5246-83a8-c42fa4f525da', 1), 'd3afdff80ab99a54d0311b8890c44c61ad86fbb18b5e11d2e689dc25b8239cb8',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/4f1a28c41c72c2fb386394e311be7394974f7665f0b13b335e25c3847ace490a.mp3', 1201, '2026-09-14 06:05:30.060853', 'f00af3693a88011fa446431bcf796b66cf305bc6110ec57c8e0f0ab0ddf51a5a', 'validated', '{"audio_key":"4f1a28c41c72c2fb386394e311be7394974f7665f0b13b335e25c3847ace490a","entity_key":"wf_idiomatic_reformulation_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f00af3693a88011fa446431bcf796b66cf305bc6110ec57c8e0f0ab0ddf51a5a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/4f1a28c41c72c2fb386394e311be7394974f7665f0b13b335e25c3847ace490a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_nominalization_and_density_06 -> audio/generated/it-IT/lexical/52c40b985542a2cd216ccd20dabea8c82545ad10f3577bc36d0b98c100ce165e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7e95dce9-a707-5016-94c6-db8e60c1a292', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_nominalization_and_density_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0f5dc8eb38a740198709204622c34bd8c1b411e6ac7bddce1c3871d1c3c05afc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ac64e275-59ee-52b5-b8c0-4a4e96c06aa3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7e95dce9-a707-5016-94c6-db8e60c1a292', 1), '0f5dc8eb38a740198709204622c34bd8c1b411e6ac7bddce1c3871d1c3c05afc',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/52c40b985542a2cd216ccd20dabea8c82545ad10f3577bc36d0b98c100ce165e.mp3', 1071, '2026-09-14 06:05:30.788627', 'a895cc40a6d559e77fb104d99d4fe31a0b774938bc5a79619446d780f64748fb', 'validated', '{"audio_key":"52c40b985542a2cd216ccd20dabea8c82545ad10f3577bc36d0b98c100ce165e","entity_key":"lx_nominalization_and_density_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"a895cc40a6d559e77fb104d99d4fe31a0b774938bc5a79619446d780f64748fb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/52c40b985542a2cd216ccd20dabea8c82545ad10f3577bc36d0b98c100ce165e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_nominalization_and_density_06 -> audio/generated/it-IT/lexical/52c40b985542a2cd216ccd20dabea8c82545ad10f3577bc36d0b98c100ce165e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('71107493-8c0f-55ac-a568-8b53f5beb067', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_nominalization_and_density_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0f5dc8eb38a740198709204622c34bd8c1b411e6ac7bddce1c3871d1c3c05afc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('172824a1-2854-58fd-b101-db463edbf4b2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('71107493-8c0f-55ac-a568-8b53f5beb067', 1), '0f5dc8eb38a740198709204622c34bd8c1b411e6ac7bddce1c3871d1c3c05afc',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/52c40b985542a2cd216ccd20dabea8c82545ad10f3577bc36d0b98c100ce165e.mp3', 1071, '2026-09-14 06:05:30.788627', 'a895cc40a6d559e77fb104d99d4fe31a0b774938bc5a79619446d780f64748fb', 'validated', '{"audio_key":"52c40b985542a2cd216ccd20dabea8c82545ad10f3577bc36d0b98c100ce165e","entity_key":"wf_nominalization_and_density_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"a895cc40a6d559e77fb104d99d4fe31a0b774938bc5a79619446d780f64748fb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/52c40b985542a2cd216ccd20dabea8c82545ad10f3577bc36d0b98c100ce165e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_c1_public_forum_capstone_01 -> audio/generated/it-IT/lexical/57ca1000533268c365cd8f8dc348e50f2ef4bf9b6d187a9d5c9ada6c40eb0b4e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fa266083-71ff-5447-aa9d-5efbd4774a7e', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_c1_public_forum_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9bad57cbd2723d0161bf241e4aad059c46a6ccbe9042cbda1f8b7bd83a71131c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ea1385e4-ad99-52fd-bb99-74b4b7de9baf', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fa266083-71ff-5447-aa9d-5efbd4774a7e', 1), '9bad57cbd2723d0161bf241e4aad059c46a6ccbe9042cbda1f8b7bd83a71131c',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/57ca1000533268c365cd8f8dc348e50f2ef4bf9b6d187a9d5c9ada6c40eb0b4e.mp3', 1149, '2026-09-14 04:59:59.633877', 'e5c37f93d636187bacdcb4ecfc2d8c3db1c229286fb7ab9c819ce1bbffd687f3', 'validated', '{"audio_key":"57ca1000533268c365cd8f8dc348e50f2ef4bf9b6d187a9d5c9ada6c40eb0b4e","entity_key":"lx_c1_public_forum_capstone_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e5c37f93d636187bacdcb4ecfc2d8c3db1c229286fb7ab9c819ce1bbffd687f3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/57ca1000533268c365cd8f8dc348e50f2ef4bf9b6d187a9d5c9ada6c40eb0b4e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_c1_public_forum_capstone_01 -> audio/generated/it-IT/lexical/57ca1000533268c365cd8f8dc348e50f2ef4bf9b6d187a9d5c9ada6c40eb0b4e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5deae194-2195-5016-9c49-3c73171c1166', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_c1_public_forum_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9bad57cbd2723d0161bf241e4aad059c46a6ccbe9042cbda1f8b7bd83a71131c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2d0cd95a-c0e0-52e8-a38b-afec2bdc44f8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5deae194-2195-5016-9c49-3c73171c1166', 1), '9bad57cbd2723d0161bf241e4aad059c46a6ccbe9042cbda1f8b7bd83a71131c',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/57ca1000533268c365cd8f8dc348e50f2ef4bf9b6d187a9d5c9ada6c40eb0b4e.mp3', 1149, '2026-09-14 04:59:59.633877', 'e5c37f93d636187bacdcb4ecfc2d8c3db1c229286fb7ab9c819ce1bbffd687f3', 'validated', '{"audio_key":"57ca1000533268c365cd8f8dc348e50f2ef4bf9b6d187a9d5c9ada6c40eb0b4e","entity_key":"wf_c1_public_forum_capstone_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e5c37f93d636187bacdcb4ecfc2d8c3db1c229286fb7ab9c819ce1bbffd687f3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/57ca1000533268c365cd8f8dc348e50f2ef4bf9b6d187a9d5c9ada6c40eb0b4e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_complex_causality_06 -> audio/generated/it-IT/lexical/5803729dd8e7a4b919cfc7a1cf7ab5987f95e52895b71952a70eae49b04ac73e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('64ba795a-5050-54da-a259-56cc8ecfecc4', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_complex_causality_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '26f57a4cb1d88480d38002f139bf7a56023cd9269f5f2a2e2b3c00f114fd4d1b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ac6124ba-d4cf-5012-942d-bd48c2b03ee1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('64ba795a-5050-54da-a259-56cc8ecfecc4', 1), '26f57a4cb1d88480d38002f139bf7a56023cd9269f5f2a2e2b3c00f114fd4d1b',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/5803729dd8e7a4b919cfc7a1cf7ab5987f95e52895b71952a70eae49b04ac73e.mp3', 1253, '2026-09-14 06:05:31.013900', '224e6aac25c19a0b0e1f882272a8cb3df69043f4effdcc5126714d547934f4e4', 'validated', '{"audio_key":"5803729dd8e7a4b919cfc7a1cf7ab5987f95e52895b71952a70eae49b04ac73e","entity_key":"lx_complex_causality_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"224e6aac25c19a0b0e1f882272a8cb3df69043f4effdcc5126714d547934f4e4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/5803729dd8e7a4b919cfc7a1cf7ab5987f95e52895b71952a70eae49b04ac73e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_complex_causality_06 -> audio/generated/it-IT/lexical/5803729dd8e7a4b919cfc7a1cf7ab5987f95e52895b71952a70eae49b04ac73e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c7e9fc6d-070b-562d-bb92-aa63c21496a0', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_complex_causality_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '26f57a4cb1d88480d38002f139bf7a56023cd9269f5f2a2e2b3c00f114fd4d1b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('952e55b9-456b-597d-8d83-cb4c6d8c5212', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c7e9fc6d-070b-562d-bb92-aa63c21496a0', 1), '26f57a4cb1d88480d38002f139bf7a56023cd9269f5f2a2e2b3c00f114fd4d1b',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/5803729dd8e7a4b919cfc7a1cf7ab5987f95e52895b71952a70eae49b04ac73e.mp3', 1253, '2026-09-14 06:05:31.013900', '224e6aac25c19a0b0e1f882272a8cb3df69043f4effdcc5126714d547934f4e4', 'validated', '{"audio_key":"5803729dd8e7a4b919cfc7a1cf7ab5987f95e52895b71952a70eae49b04ac73e","entity_key":"wf_complex_causality_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"224e6aac25c19a0b0e1f882272a8cb3df69043f4effdcc5126714d547934f4e4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/5803729dd8e7a4b919cfc7a1cf7ab5987f95e52895b71952a70eae49b04ac73e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_calibrated_stance_01 -> audio/generated/it-IT/lexical/58649334dc5a41693383373edae84ea95a72679ba4be6bbba17dd4e8f66f649c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('44d9971b-1031-5034-89bb-1fd15ebbcde5', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_calibrated_stance_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '69534451f31218208cd489f90360e3609fb6afd3c760e5f2892c9c54362ed281'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d1fb996b-3c96-5e31-9b4b-73c7e5ff7b3c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('44d9971b-1031-5034-89bb-1fd15ebbcde5', 1), '69534451f31218208cd489f90360e3609fb6afd3c760e5f2892c9c54362ed281',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/58649334dc5a41693383373edae84ea95a72679ba4be6bbba17dd4e8f66f649c.mp3', 1149, '2026-09-14 04:59:59.971180', '4f501e89f2dec35def2ed7a4d25ab1644fa2aef5e1460ac4e4b66caba1f7537d', 'validated', '{"audio_key":"58649334dc5a41693383373edae84ea95a72679ba4be6bbba17dd4e8f66f649c","entity_key":"lx_calibrated_stance_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"4f501e89f2dec35def2ed7a4d25ab1644fa2aef5e1460ac4e4b66caba1f7537d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/58649334dc5a41693383373edae84ea95a72679ba4be6bbba17dd4e8f66f649c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_calibrated_stance_01 -> audio/generated/it-IT/lexical/58649334dc5a41693383373edae84ea95a72679ba4be6bbba17dd4e8f66f649c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('116952a3-0daa-50a1-938e-a7d816be1236', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_calibrated_stance_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '69534451f31218208cd489f90360e3609fb6afd3c760e5f2892c9c54362ed281'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('03e5daf7-af4e-5300-a313-020820edc787', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('116952a3-0daa-50a1-938e-a7d816be1236', 1), '69534451f31218208cd489f90360e3609fb6afd3c760e5f2892c9c54362ed281',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/58649334dc5a41693383373edae84ea95a72679ba4be6bbba17dd4e8f66f649c.mp3', 1149, '2026-09-14 04:59:59.971180', '4f501e89f2dec35def2ed7a4d25ab1644fa2aef5e1460ac4e4b66caba1f7537d', 'validated', '{"audio_key":"58649334dc5a41693383373edae84ea95a72679ba4be6bbba17dd4e8f66f649c","entity_key":"wf_calibrated_stance_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"4f501e89f2dec35def2ed7a4d25ab1644fa2aef5e1460ac4e4b66caba1f7537d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/58649334dc5a41693383373edae84ea95a72679ba4be6bbba17dd4e8f66f649c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_idiomatic_reformulation_02 -> audio/generated/it-IT/lexical/59ee7ff45efe9f7868bef03d4c7619f2284048b418a3b131b80de2164fa21235.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8e3c9d88-2797-5788-a230-cd08b3792a7e', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_idiomatic_reformulation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '12c1e752df359ded7440a935a2800d28fdb72506194148a9096410cb791f0f6c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3120d071-d7a2-51ee-b6d8-cf7ba7dc4420', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8e3c9d88-2797-5788-a230-cd08b3792a7e', 1), '12c1e752df359ded7440a935a2800d28fdb72506194148a9096410cb791f0f6c',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/59ee7ff45efe9f7868bef03d4c7619f2284048b418a3b131b80de2164fa21235.mp3', 1280, '2026-09-14 06:05:31.771104', 'b1cd0bf058de5e72284d89100e1ef2393bf9b83c60381e140c0310cb0a67e74d', 'validated', '{"audio_key":"59ee7ff45efe9f7868bef03d4c7619f2284048b418a3b131b80de2164fa21235","entity_key":"lx_idiomatic_reformulation_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"b1cd0bf058de5e72284d89100e1ef2393bf9b83c60381e140c0310cb0a67e74d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/59ee7ff45efe9f7868bef03d4c7619f2284048b418a3b131b80de2164fa21235.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_idiomatic_reformulation_02 -> audio/generated/it-IT/lexical/59ee7ff45efe9f7868bef03d4c7619f2284048b418a3b131b80de2164fa21235.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('29fd75d0-8436-5ab8-9a82-a4349927cf4d', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_idiomatic_reformulation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '12c1e752df359ded7440a935a2800d28fdb72506194148a9096410cb791f0f6c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8d021dc5-89e0-59b6-9acb-5130a56db850', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('29fd75d0-8436-5ab8-9a82-a4349927cf4d', 1), '12c1e752df359ded7440a935a2800d28fdb72506194148a9096410cb791f0f6c',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/59ee7ff45efe9f7868bef03d4c7619f2284048b418a3b131b80de2164fa21235.mp3', 1280, '2026-09-14 06:05:31.771104', 'b1cd0bf058de5e72284d89100e1ef2393bf9b83c60381e140c0310cb0a67e74d', 'validated', '{"audio_key":"59ee7ff45efe9f7868bef03d4c7619f2284048b418a3b131b80de2164fa21235","entity_key":"wf_idiomatic_reformulation_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"b1cd0bf058de5e72284d89100e1ef2393bf9b83c60381e140c0310cb0a67e74d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/59ee7ff45efe9f7868bef03d4c7619f2284048b418a3b131b80de2164fa21235.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_complex_causality_01 -> audio/generated/it-IT/lexical/62647187d3967274cd68b692b845bf624aa5f198aea04bda62c0e42f60a5a532.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fd23dda8-e745-5803-9305-34e2d1471783', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_complex_causality_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b0ab865766787ba60395fc7de4f9f73e570785ee56fa7ffb63f586ea7c2b3fe6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c6cae943-8b99-5dfa-8c8c-44b10f411b01', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fd23dda8-e745-5803-9305-34e2d1471783', 1), 'b0ab865766787ba60395fc7de4f9f73e570785ee56fa7ffb63f586ea7c2b3fe6',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/62647187d3967274cd68b692b845bf624aa5f198aea04bda62c0e42f60a5a532.mp3', 1253, '2026-09-14 06:05:31.968455', 'c895bded11a7f4ffdd51b4ea54f6fd34630bf4da0c6abd07f3ee7ccde5081318', 'validated', '{"audio_key":"62647187d3967274cd68b692b845bf624aa5f198aea04bda62c0e42f60a5a532","entity_key":"lx_complex_causality_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c895bded11a7f4ffdd51b4ea54f6fd34630bf4da0c6abd07f3ee7ccde5081318","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/62647187d3967274cd68b692b845bf624aa5f198aea04bda62c0e42f60a5a532.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_complex_causality_01 -> audio/generated/it-IT/lexical/62647187d3967274cd68b692b845bf624aa5f198aea04bda62c0e42f60a5a532.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b9b69294-8fdd-5957-87f1-ae693664d292', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_complex_causality_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b0ab865766787ba60395fc7de4f9f73e570785ee56fa7ffb63f586ea7c2b3fe6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a8f2c9dd-b60e-58b8-a2d1-a1e3b2e68a32', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b9b69294-8fdd-5957-87f1-ae693664d292', 1), 'b0ab865766787ba60395fc7de4f9f73e570785ee56fa7ffb63f586ea7c2b3fe6',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/62647187d3967274cd68b692b845bf624aa5f198aea04bda62c0e42f60a5a532.mp3', 1253, '2026-09-14 06:05:31.968455', 'c895bded11a7f4ffdd51b4ea54f6fd34630bf4da0c6abd07f3ee7ccde5081318', 'validated', '{"audio_key":"62647187d3967274cd68b692b845bf624aa5f198aea04bda62c0e42f60a5a532","entity_key":"wf_complex_causality_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c895bded11a7f4ffdd51b4ea54f6fd34630bf4da0c6abd07f3ee7ccde5081318","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/62647187d3967274cd68b692b845bf624aa5f198aea04bda62c0e42f60a5a532.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_information_structure_03 -> audio/generated/it-IT/lexical/6282faefb13940c26347d71f08445ecc0bf87a24f3401cc144a09724ca7f1344.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('966ed458-cfcc-5e49-90db-1d0120d6f99f', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_information_structure_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c51faa148557a08cbf790156578b7a82b41f22dd01227f7dde057e34c18a365f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dbac189a-eba2-5bb5-8af6-a6926522abe9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('966ed458-cfcc-5e49-90db-1d0120d6f99f', 1), 'c51faa148557a08cbf790156578b7a82b41f22dd01227f7dde057e34c18a365f',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/6282faefb13940c26347d71f08445ecc0bf87a24f3401cc144a09724ca7f1344.mp3', 966, '2026-09-14 06:05:32.711382', '148cefa665a1917a9eef5f77d4798bcac6d224ba3f2c4e033f15cf2304e7a0db', 'validated', '{"audio_key":"6282faefb13940c26347d71f08445ecc0bf87a24f3401cc144a09724ca7f1344","entity_key":"lx_information_structure_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"148cefa665a1917a9eef5f77d4798bcac6d224ba3f2c4e033f15cf2304e7a0db","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/6282faefb13940c26347d71f08445ecc0bf87a24f3401cc144a09724ca7f1344.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_information_structure_03 -> audio/generated/it-IT/lexical/6282faefb13940c26347d71f08445ecc0bf87a24f3401cc144a09724ca7f1344.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d04faf55-0cbb-574d-9e11-c88be2dd281e', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_information_structure_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c51faa148557a08cbf790156578b7a82b41f22dd01227f7dde057e34c18a365f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bc41877a-36de-5449-950c-e230a2c96aec', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d04faf55-0cbb-574d-9e11-c88be2dd281e', 1), 'c51faa148557a08cbf790156578b7a82b41f22dd01227f7dde057e34c18a365f',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/6282faefb13940c26347d71f08445ecc0bf87a24f3401cc144a09724ca7f1344.mp3', 966, '2026-09-14 06:05:32.711382', '148cefa665a1917a9eef5f77d4798bcac6d224ba3f2c4e033f15cf2304e7a0db', 'validated', '{"audio_key":"6282faefb13940c26347d71f08445ecc0bf87a24f3401cc144a09724ca7f1344","entity_key":"wf_information_structure_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"148cefa665a1917a9eef5f77d4798bcac6d224ba3f2c4e033f15cf2304e7a0db","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/6282faefb13940c26347d71f08445ecc0bf87a24f3401cc144a09724ca7f1344.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_idiomatic_reformulation_03 -> audio/generated/it-IT/lexical/70bc0a1f8406a7c767c7d8ddc7c06f04e88abb83b20d662ca92c0620ab4a5458.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d5510657-3363-5f99-8592-cd8186b7e3cd', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_idiomatic_reformulation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'df054a9327e8d483176bc9ba13b5be13c50aa3b0343664bbfd0ad4cf0ed0d330'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0ad8668b-4867-5780-9235-6e2608fcade5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d5510657-3363-5f99-8592-cd8186b7e3cd', 1), 'df054a9327e8d483176bc9ba13b5be13c50aa3b0343664bbfd0ad4cf0ed0d330',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/70bc0a1f8406a7c767c7d8ddc7c06f04e88abb83b20d662ca92c0620ab4a5458.mp3', 1253, '2026-09-14 06:05:32.934647', 'a4b4093942b34236db504e512db38eecb9cdce602a1c957c95761d3100b41787', 'validated', '{"audio_key":"70bc0a1f8406a7c767c7d8ddc7c06f04e88abb83b20d662ca92c0620ab4a5458","entity_key":"lx_idiomatic_reformulation_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"a4b4093942b34236db504e512db38eecb9cdce602a1c957c95761d3100b41787","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/70bc0a1f8406a7c767c7d8ddc7c06f04e88abb83b20d662ca92c0620ab4a5458.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_idiomatic_reformulation_03 -> audio/generated/it-IT/lexical/70bc0a1f8406a7c767c7d8ddc7c06f04e88abb83b20d662ca92c0620ab4a5458.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5a6ca1fc-4189-5b67-8ec8-07843b45e423', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_idiomatic_reformulation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'df054a9327e8d483176bc9ba13b5be13c50aa3b0343664bbfd0ad4cf0ed0d330'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('38545983-6ad8-50ff-bc0f-8ca5c2391217', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5a6ca1fc-4189-5b67-8ec8-07843b45e423', 1), 'df054a9327e8d483176bc9ba13b5be13c50aa3b0343664bbfd0ad4cf0ed0d330',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/70bc0a1f8406a7c767c7d8ddc7c06f04e88abb83b20d662ca92c0620ab4a5458.mp3', 1253, '2026-09-14 06:05:32.934647', 'a4b4093942b34236db504e512db38eecb9cdce602a1c957c95761d3100b41787', 'validated', '{"audio_key":"70bc0a1f8406a7c767c7d8ddc7c06f04e88abb83b20d662ca92c0620ab4a5458","entity_key":"wf_idiomatic_reformulation_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"a4b4093942b34236db504e512db38eecb9cdce602a1c957c95761d3100b41787","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/70bc0a1f8406a7c767c7d8ddc7c06f04e88abb83b20d662ca92c0620ab4a5458.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_information_structure_04 -> audio/generated/it-IT/lexical/764f1894097a393c1c8ef5e0f03565a575b2169a2efeefbe32317a80b91b94a4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('07aa711f-e1a3-57df-855b-7d4eecaee8f2', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_information_structure_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd53814fc05ede4c88ec7258fb55a166d4f06fd2f0f89bb9e6a1ad25165a56347'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a1f72c1a-34f0-539e-ad75-2463459c99ff', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('07aa711f-e1a3-57df-855b-7d4eecaee8f2', 1), 'd53814fc05ede4c88ec7258fb55a166d4f06fd2f0f89bb9e6a1ad25165a56347',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/764f1894097a393c1c8ef5e0f03565a575b2169a2efeefbe32317a80b91b94a4.mp3', 1280, '2026-09-14 06:05:33.685228', 'a813e4f3a901e43668269cd0c11e27e834f7dc85206b802549b73b1be08365b5', 'validated', '{"audio_key":"764f1894097a393c1c8ef5e0f03565a575b2169a2efeefbe32317a80b91b94a4","entity_key":"lx_information_structure_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"a813e4f3a901e43668269cd0c11e27e834f7dc85206b802549b73b1be08365b5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/764f1894097a393c1c8ef5e0f03565a575b2169a2efeefbe32317a80b91b94a4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_information_structure_04 -> audio/generated/it-IT/lexical/764f1894097a393c1c8ef5e0f03565a575b2169a2efeefbe32317a80b91b94a4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('db02800e-c0db-5462-bade-7b25e4842f8b', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_information_structure_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd53814fc05ede4c88ec7258fb55a166d4f06fd2f0f89bb9e6a1ad25165a56347'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b9e8625b-e6be-51c2-92f8-2a740cdd1021', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('db02800e-c0db-5462-bade-7b25e4842f8b', 1), 'd53814fc05ede4c88ec7258fb55a166d4f06fd2f0f89bb9e6a1ad25165a56347',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/764f1894097a393c1c8ef5e0f03565a575b2169a2efeefbe32317a80b91b94a4.mp3', 1280, '2026-09-14 06:05:33.685228', 'a813e4f3a901e43668269cd0c11e27e834f7dc85206b802549b73b1be08365b5', 'validated', '{"audio_key":"764f1894097a393c1c8ef5e0f03565a575b2169a2efeefbe32317a80b91b94a4","entity_key":"wf_information_structure_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"a813e4f3a901e43668269cd0c11e27e834f7dc85206b802549b73b1be08365b5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/764f1894097a393c1c8ef5e0f03565a575b2169a2efeefbe32317a80b91b94a4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reported_voices_03 -> audio/generated/it-IT/lexical/7e16d419aea9220fbef6616b140201d8eeb86b67c35089718e2669071ce31d2c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8b637544-706c-5986-8a52-f4ac0ad9442e', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reported_voices_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cf3625288b81e6864b9a2f67b8acafd2b536db637ab456c0c8a267b6014d0525'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aa163761-7c95-5e2c-a376-0bcf8141745e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8b637544-706c-5986-8a52-f4ac0ad9442e', 1), 'cf3625288b81e6864b9a2f67b8acafd2b536db637ab456c0c8a267b6014d0525',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/7e16d419aea9220fbef6616b140201d8eeb86b67c35089718e2669071ce31d2c.mp3', 1018, '2026-09-14 04:01:28.067878', 'ac2cc54afa63e8cadfe5c7e1f64ae3a9bf34048796d7e3e22eeeb101d20a6dd9', 'validated', '{"audio_key":"7e16d419aea9220fbef6616b140201d8eeb86b67c35089718e2669071ce31d2c","entity_key":"lx_reported_voices_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ac2cc54afa63e8cadfe5c7e1f64ae3a9bf34048796d7e3e22eeeb101d20a6dd9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/7e16d419aea9220fbef6616b140201d8eeb86b67c35089718e2669071ce31d2c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reported_voices_03 -> audio/generated/it-IT/lexical/7e16d419aea9220fbef6616b140201d8eeb86b67c35089718e2669071ce31d2c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('06ebc2cc-9a7f-5fc3-9e5a-e058d408d65f', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reported_voices_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cf3625288b81e6864b9a2f67b8acafd2b536db637ab456c0c8a267b6014d0525'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2bd152c0-1030-5e25-a3ed-228d6464c249', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('06ebc2cc-9a7f-5fc3-9e5a-e058d408d65f', 1), 'cf3625288b81e6864b9a2f67b8acafd2b536db637ab456c0c8a267b6014d0525',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/7e16d419aea9220fbef6616b140201d8eeb86b67c35089718e2669071ce31d2c.mp3', 1018, '2026-09-14 04:01:28.067878', 'ac2cc54afa63e8cadfe5c7e1f64ae3a9bf34048796d7e3e22eeeb101d20a6dd9', 'validated', '{"audio_key":"7e16d419aea9220fbef6616b140201d8eeb86b67c35089718e2669071ce31d2c","entity_key":"wf_reported_voices_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ac2cc54afa63e8cadfe5c7e1f64ae3a9bf34048796d7e3e22eeeb101d20a6dd9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/7e16d419aea9220fbef6616b140201d8eeb86b67c35089718e2669071ce31d2c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_idiomatic_reformulation_06 -> audio/generated/it-IT/lexical/7f09b3117d72f65f9e2b3f0d690805fcf27aa7c5e62237fb682742ce57bede13.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7a174f97-068a-53f5-a1fd-561c269c3272', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_idiomatic_reformulation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f76dfb9d620dfab5ce66ce9b951db67e8cbefbb86245b981bcfde9a94fcf0c42'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('be8635bd-b1f9-5b53-b8e4-ccc80ec330be', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7a174f97-068a-53f5-a1fd-561c269c3272', 1), 'f76dfb9d620dfab5ce66ce9b951db67e8cbefbb86245b981bcfde9a94fcf0c42',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/7f09b3117d72f65f9e2b3f0d690805fcf27aa7c5e62237fb682742ce57bede13.mp3', 1097, '2026-09-14 06:05:33.884718', '44ca4f24af7837407c81d70c8a202e4dd7e5f856576b5f35bafb2f093fc9893c', 'validated', '{"audio_key":"7f09b3117d72f65f9e2b3f0d690805fcf27aa7c5e62237fb682742ce57bede13","entity_key":"lx_idiomatic_reformulation_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"44ca4f24af7837407c81d70c8a202e4dd7e5f856576b5f35bafb2f093fc9893c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/7f09b3117d72f65f9e2b3f0d690805fcf27aa7c5e62237fb682742ce57bede13.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_idiomatic_reformulation_06 -> audio/generated/it-IT/lexical/7f09b3117d72f65f9e2b3f0d690805fcf27aa7c5e62237fb682742ce57bede13.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2d364305-0ef2-52a3-8c5c-8d3126c5ee36', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_idiomatic_reformulation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f76dfb9d620dfab5ce66ce9b951db67e8cbefbb86245b981bcfde9a94fcf0c42'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1b0d7b5f-13b4-57b2-9f6f-473e18bce08c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2d364305-0ef2-52a3-8c5c-8d3126c5ee36', 1), 'f76dfb9d620dfab5ce66ce9b951db67e8cbefbb86245b981bcfde9a94fcf0c42',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/7f09b3117d72f65f9e2b3f0d690805fcf27aa7c5e62237fb682742ce57bede13.mp3', 1097, '2026-09-14 06:05:33.884718', '44ca4f24af7837407c81d70c8a202e4dd7e5f856576b5f35bafb2f093fc9893c', 'validated', '{"audio_key":"7f09b3117d72f65f9e2b3f0d690805fcf27aa7c5e62237fb682742ce57bede13","entity_key":"wf_idiomatic_reformulation_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"44ca4f24af7837407c81d70c8a202e4dd7e5f856576b5f35bafb2f093fc9893c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/7f09b3117d72f65f9e2b3f0d690805fcf27aa7c5e62237fb682742ce57bede13.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_complex_causality_04 -> audio/generated/it-IT/lexical/84f292eca90d0150b80c9c1c4eba31c19f258f7790d7021ef1a94a5b02182a28.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7033eb6f-fd39-5220-9274-be7b1214980e', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_complex_causality_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '30cf3d806792c750f76ea69439fdb08efa266e117f783c5cd32a1d8e30ea5f19'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('35e31efb-3330-5343-9bee-d7bb2e490f40', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7033eb6f-fd39-5220-9274-be7b1214980e', 1), '30cf3d806792c750f76ea69439fdb08efa266e117f783c5cd32a1d8e30ea5f19',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/84f292eca90d0150b80c9c1c4eba31c19f258f7790d7021ef1a94a5b02182a28.mp3', 1018, '2026-09-14 06:05:34.684119', '022f1b2d752871b7840eb371aee935526efe0bb03ccc5e2c38a40c2246ca5b83', 'validated', '{"audio_key":"84f292eca90d0150b80c9c1c4eba31c19f258f7790d7021ef1a94a5b02182a28","entity_key":"lx_complex_causality_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"022f1b2d752871b7840eb371aee935526efe0bb03ccc5e2c38a40c2246ca5b83","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/84f292eca90d0150b80c9c1c4eba31c19f258f7790d7021ef1a94a5b02182a28.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_complex_causality_04 -> audio/generated/it-IT/lexical/84f292eca90d0150b80c9c1c4eba31c19f258f7790d7021ef1a94a5b02182a28.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5025863b-92cf-51d8-a32d-65903b8c637f', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_complex_causality_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '30cf3d806792c750f76ea69439fdb08efa266e117f783c5cd32a1d8e30ea5f19'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('34d38751-bb90-510f-92fc-a5e02989c20a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5025863b-92cf-51d8-a32d-65903b8c637f', 1), '30cf3d806792c750f76ea69439fdb08efa266e117f783c5cd32a1d8e30ea5f19',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/84f292eca90d0150b80c9c1c4eba31c19f258f7790d7021ef1a94a5b02182a28.mp3', 1018, '2026-09-14 06:05:34.684119', '022f1b2d752871b7840eb371aee935526efe0bb03ccc5e2c38a40c2246ca5b83', 'validated', '{"audio_key":"84f292eca90d0150b80c9c1c4eba31c19f258f7790d7021ef1a94a5b02182a28","entity_key":"wf_complex_causality_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"022f1b2d752871b7840eb371aee935526efe0bb03ccc5e2c38a40c2246ca5b83","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/84f292eca90d0150b80c9c1c4eba31c19f258f7790d7021ef1a94a5b02182a28.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_information_structure_05 -> audio/generated/it-IT/lexical/8cc3515c75af2c80efaee4f8581a1f3e84885443cedd49d4e53af94dc7704421.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fda8bb00-483e-53f6-8c53-372c32926e6d', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_information_structure_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd715c62463e5f13b1e0c38b8009ff5fff32a4eda0bef955338b6e21762689830'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0e1d1ecc-f6a4-5a91-8079-85201de0f70b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fda8bb00-483e-53f6-8c53-372c32926e6d', 1), 'd715c62463e5f13b1e0c38b8009ff5fff32a4eda0bef955338b6e21762689830',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/8cc3515c75af2c80efaee4f8581a1f3e84885443cedd49d4e53af94dc7704421.mp3', 1071, '2026-09-14 05:00:07.428257', '113c796a2cd6fdfc8801e6fcffdf2a75f5e704b3fe6eee51d9dfd409908f6532', 'validated', '{"audio_key":"8cc3515c75af2c80efaee4f8581a1f3e84885443cedd49d4e53af94dc7704421","entity_key":"lx_information_structure_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"113c796a2cd6fdfc8801e6fcffdf2a75f5e704b3fe6eee51d9dfd409908f6532","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/8cc3515c75af2c80efaee4f8581a1f3e84885443cedd49d4e53af94dc7704421.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_information_structure_05 -> audio/generated/it-IT/lexical/8cc3515c75af2c80efaee4f8581a1f3e84885443cedd49d4e53af94dc7704421.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9f9b6107-91a2-5464-9cf4-ef6aa25afcfa', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_information_structure_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd715c62463e5f13b1e0c38b8009ff5fff32a4eda0bef955338b6e21762689830'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d072b906-32bf-586c-86b6-ecd3b231b881', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9f9b6107-91a2-5464-9cf4-ef6aa25afcfa', 1), 'd715c62463e5f13b1e0c38b8009ff5fff32a4eda0bef955338b6e21762689830',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/8cc3515c75af2c80efaee4f8581a1f3e84885443cedd49d4e53af94dc7704421.mp3', 1071, '2026-09-14 05:00:07.428257', '113c796a2cd6fdfc8801e6fcffdf2a75f5e704b3fe6eee51d9dfd409908f6532', 'validated', '{"audio_key":"8cc3515c75af2c80efaee4f8581a1f3e84885443cedd49d4e53af94dc7704421","entity_key":"wf_information_structure_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"113c796a2cd6fdfc8801e6fcffdf2a75f5e704b3fe6eee51d9dfd409908f6532","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/8cc3515c75af2c80efaee4f8581a1f3e84885443cedd49d4e53af94dc7704421.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_flexibility_04 -> audio/generated/it-IT/lexical/912c2bc423781213ce2433f9dde714016ad793863eed7eecca517455f41189ec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7964b0bb-0887-50a6-a85b-e87f1ef60df6', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_flexibility_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '53fcd1d006bfd74c7caea5145bdfa6604b1f7e502eb4361c450bdb0f2c439a3a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4d3ee635-8bc5-5a31-926c-ac9ce15d4b95', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7964b0bb-0887-50a6-a85b-e87f1ef60df6', 1), '53fcd1d006bfd74c7caea5145bdfa6604b1f7e502eb4361c450bdb0f2c439a3a',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/912c2bc423781213ce2433f9dde714016ad793863eed7eecca517455f41189ec.mp3', 1280, '2026-09-14 06:05:34.846069', '02c0ed01526286a75eb072b22643ef83b7391b6ce342d72986ae5e70e6c9518e', 'validated', '{"audio_key":"912c2bc423781213ce2433f9dde714016ad793863eed7eecca517455f41189ec","entity_key":"lx_register_flexibility_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"02c0ed01526286a75eb072b22643ef83b7391b6ce342d72986ae5e70e6c9518e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/912c2bc423781213ce2433f9dde714016ad793863eed7eecca517455f41189ec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_flexibility_04 -> audio/generated/it-IT/lexical/912c2bc423781213ce2433f9dde714016ad793863eed7eecca517455f41189ec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('510d7488-7bc5-5b9a-bd02-1c0684314505', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_flexibility_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '53fcd1d006bfd74c7caea5145bdfa6604b1f7e502eb4361c450bdb0f2c439a3a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5d6e84a8-f89c-59a4-977d-b5e8ba69a320', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('510d7488-7bc5-5b9a-bd02-1c0684314505', 1), '53fcd1d006bfd74c7caea5145bdfa6604b1f7e502eb4361c450bdb0f2c439a3a',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/912c2bc423781213ce2433f9dde714016ad793863eed7eecca517455f41189ec.mp3', 1280, '2026-09-14 06:05:34.846069', '02c0ed01526286a75eb072b22643ef83b7391b6ce342d72986ae5e70e6c9518e', 'validated', '{"audio_key":"912c2bc423781213ce2433f9dde714016ad793863eed7eecca517455f41189ec","entity_key":"wf_register_flexibility_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"02c0ed01526286a75eb072b22643ef83b7391b6ce342d72986ae5e70e6c9518e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/912c2bc423781213ce2433f9dde714016ad793863eed7eecca517455f41189ec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_concession_and_reframing_06 -> audio/generated/it-IT/lexical/95ea4ee22cd99113675d5dc6056fbe63f93622e4910aa04486acebed99eb6250.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('551b6a54-778e-5999-a301-b57a49c03c3b', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_concession_and_reframing_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3f9fbc03880fe22e2cea227bfae130447931e2b265484394fc98a26705b40f03'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1b3e713c-e4c6-50c0-aaea-ee938fd14529', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('551b6a54-778e-5999-a301-b57a49c03c3b', 1), '3f9fbc03880fe22e2cea227bfae130447931e2b265484394fc98a26705b40f03',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/95ea4ee22cd99113675d5dc6056fbe63f93622e4910aa04486acebed99eb6250.mp3', 1097, '2026-09-14 06:05:35.772896', '1090e8e8185b1be284689ea7b98c5752dc5fee654a648002aa8f1793c5ab6c51', 'validated', '{"audio_key":"95ea4ee22cd99113675d5dc6056fbe63f93622e4910aa04486acebed99eb6250","entity_key":"lx_concession_and_reframing_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1090e8e8185b1be284689ea7b98c5752dc5fee654a648002aa8f1793c5ab6c51","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/95ea4ee22cd99113675d5dc6056fbe63f93622e4910aa04486acebed99eb6250.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_concession_and_reframing_06 -> audio/generated/it-IT/lexical/95ea4ee22cd99113675d5dc6056fbe63f93622e4910aa04486acebed99eb6250.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0ff9c04b-20a3-5519-891c-88e68d24f508', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_concession_and_reframing_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3f9fbc03880fe22e2cea227bfae130447931e2b265484394fc98a26705b40f03'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b404970c-ffe9-5dee-945d-270421c0fcd4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0ff9c04b-20a3-5519-891c-88e68d24f508', 1), '3f9fbc03880fe22e2cea227bfae130447931e2b265484394fc98a26705b40f03',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/95ea4ee22cd99113675d5dc6056fbe63f93622e4910aa04486acebed99eb6250.mp3', 1097, '2026-09-14 06:05:35.772896', '1090e8e8185b1be284689ea7b98c5752dc5fee654a648002aa8f1793c5ab6c51', 'validated', '{"audio_key":"95ea4ee22cd99113675d5dc6056fbe63f93622e4910aa04486acebed99eb6250","entity_key":"wf_concession_and_reframing_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1090e8e8185b1be284689ea7b98c5752dc5fee654a648002aa8f1793c5ab6c51","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/95ea4ee22cd99113675d5dc6056fbe63f93622e4910aa04486acebed99eb6250.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_mediation_and_synthesis_02 -> audio/generated/it-IT/lexical/9997a0da20a454c3f72cc5b6caad3af94908a94452c1ffae1944040f4e28a660.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2727d2e6-2afa-5196-b84b-3120f43b9f10', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_mediation_and_synthesis_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cbaaed9b630a2e3a60833dba42b8f2e1e094e0de50fd652d670db56683aea718'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('72c875c8-fde1-5ab7-ab9e-9412427aa9e5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2727d2e6-2afa-5196-b84b-3120f43b9f10', 1), 'cbaaed9b630a2e3a60833dba42b8f2e1e094e0de50fd652d670db56683aea718',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/9997a0da20a454c3f72cc5b6caad3af94908a94452c1ffae1944040f4e28a660.mp3', 1280, '2026-09-14 06:05:35.819346', '63fd8e06276b31775b4b2e9a73133b2b9380df8e11404e0acd24a2d9e5cfc73b', 'validated', '{"audio_key":"9997a0da20a454c3f72cc5b6caad3af94908a94452c1ffae1944040f4e28a660","entity_key":"lx_mediation_and_synthesis_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"63fd8e06276b31775b4b2e9a73133b2b9380df8e11404e0acd24a2d9e5cfc73b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/9997a0da20a454c3f72cc5b6caad3af94908a94452c1ffae1944040f4e28a660.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_mediation_and_synthesis_02 -> audio/generated/it-IT/lexical/9997a0da20a454c3f72cc5b6caad3af94908a94452c1ffae1944040f4e28a660.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8b4ce4c9-ad0c-52f6-90b8-a4ea4ee0c705', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_mediation_and_synthesis_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cbaaed9b630a2e3a60833dba42b8f2e1e094e0de50fd652d670db56683aea718'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('75a10e4c-98f8-5728-9ec8-b13df44e2558', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8b4ce4c9-ad0c-52f6-90b8-a4ea4ee0c705', 1), 'cbaaed9b630a2e3a60833dba42b8f2e1e094e0de50fd652d670db56683aea718',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/9997a0da20a454c3f72cc5b6caad3af94908a94452c1ffae1944040f4e28a660.mp3', 1280, '2026-09-14 06:05:35.819346', '63fd8e06276b31775b4b2e9a73133b2b9380df8e11404e0acd24a2d9e5cfc73b', 'validated', '{"audio_key":"9997a0da20a454c3f72cc5b6caad3af94908a94452c1ffae1944040f4e28a660","entity_key":"wf_mediation_and_synthesis_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"63fd8e06276b31775b4b2e9a73133b2b9380df8e11404e0acd24a2d9e5cfc73b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/9997a0da20a454c3f72cc5b6caad3af94908a94452c1ffae1944040f4e28a660.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_calibrated_stance_03 -> audio/generated/it-IT/lexical/9f30f6ad161081ea817467e76d0e3f61f79e62684de30b6b4bb616ffd3ff9542.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('337ab5e3-b7f5-5c14-87af-3dfe84f5e6c6', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_calibrated_stance_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fab8a0378cc5ae29cf329209852b359be90bd6dc5994c058618e60115a9f0c67'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7eb81599-6fc5-57b5-8fa5-c55a958f799e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('337ab5e3-b7f5-5c14-87af-3dfe84f5e6c6', 1), 'fab8a0378cc5ae29cf329209852b359be90bd6dc5994c058618e60115a9f0c67',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/9f30f6ad161081ea817467e76d0e3f61f79e62684de30b6b4bb616ffd3ff9542.mp3', 1097, '2026-09-14 06:05:36.770122', '8a71a9060580b9294836a45c00ff3b662e3d1f65376fd27abec24d10b84cdded', 'validated', '{"audio_key":"9f30f6ad161081ea817467e76d0e3f61f79e62684de30b6b4bb616ffd3ff9542","entity_key":"lx_calibrated_stance_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8a71a9060580b9294836a45c00ff3b662e3d1f65376fd27abec24d10b84cdded","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/9f30f6ad161081ea817467e76d0e3f61f79e62684de30b6b4bb616ffd3ff9542.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_calibrated_stance_03 -> audio/generated/it-IT/lexical/9f30f6ad161081ea817467e76d0e3f61f79e62684de30b6b4bb616ffd3ff9542.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f59d4b60-a5c1-5103-bee4-5cb45fb8c411', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_calibrated_stance_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fab8a0378cc5ae29cf329209852b359be90bd6dc5994c058618e60115a9f0c67'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a0f33a46-83c1-557e-a388-d567137fb24d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f59d4b60-a5c1-5103-bee4-5cb45fb8c411', 1), 'fab8a0378cc5ae29cf329209852b359be90bd6dc5994c058618e60115a9f0c67',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/9f30f6ad161081ea817467e76d0e3f61f79e62684de30b6b4bb616ffd3ff9542.mp3', 1097, '2026-09-14 06:05:36.770122', '8a71a9060580b9294836a45c00ff3b662e3d1f65376fd27abec24d10b84cdded', 'validated', '{"audio_key":"9f30f6ad161081ea817467e76d0e3f61f79e62684de30b6b4bb616ffd3ff9542","entity_key":"wf_calibrated_stance_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8a71a9060580b9294836a45c00ff3b662e3d1f65376fd27abec24d10b84cdded","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/9f30f6ad161081ea817467e76d0e3f61f79e62684de30b6b4bb616ffd3ff9542.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_calibrated_stance_06 -> audio/generated/it-IT/lexical/a02d7208742524949ed9195c5396479714e189a19412543d16845d29810ac206.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8a56f6e1-fa20-5c9e-bb96-41532a2c0517', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_calibrated_stance_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e0b883290ac97e82a5854d7818e100dc532aae295195cff68c685b002deaae08'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ccf42946-9762-550d-942a-09f5943dfa89', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8a56f6e1-fa20-5c9e-bb96-41532a2c0517', 1), 'e0b883290ac97e82a5854d7818e100dc532aae295195cff68c685b002deaae08',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/a02d7208742524949ed9195c5396479714e189a19412543d16845d29810ac206.mp3', 1097, '2026-09-14 06:05:36.762196', '56737e6e16ea15941f831471f7441bffaa0492eb15159293d0674dc517315442', 'validated', '{"audio_key":"a02d7208742524949ed9195c5396479714e189a19412543d16845d29810ac206","entity_key":"lx_calibrated_stance_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"56737e6e16ea15941f831471f7441bffaa0492eb15159293d0674dc517315442","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/a02d7208742524949ed9195c5396479714e189a19412543d16845d29810ac206.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_calibrated_stance_06 -> audio/generated/it-IT/lexical/a02d7208742524949ed9195c5396479714e189a19412543d16845d29810ac206.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c9ae4f54-a055-53d7-87ef-37627ab6f7b3', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_calibrated_stance_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e0b883290ac97e82a5854d7818e100dc532aae295195cff68c685b002deaae08'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0fa0d8b6-c028-5b63-b3fa-e5a0ffd0485f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c9ae4f54-a055-53d7-87ef-37627ab6f7b3', 1), 'e0b883290ac97e82a5854d7818e100dc532aae295195cff68c685b002deaae08',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/a02d7208742524949ed9195c5396479714e189a19412543d16845d29810ac206.mp3', 1097, '2026-09-14 06:05:36.762196', '56737e6e16ea15941f831471f7441bffaa0492eb15159293d0674dc517315442', 'validated', '{"audio_key":"a02d7208742524949ed9195c5396479714e189a19412543d16845d29810ac206","entity_key":"wf_calibrated_stance_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"56737e6e16ea15941f831471f7441bffaa0492eb15159293d0674dc517315442","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/a02d7208742524949ed9195c5396479714e189a19412543d16845d29810ac206.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_c1_public_forum_capstone_02 -> audio/generated/it-IT/lexical/af70f7d12affd5d677520d12c749e2f94f00918a4282d82213be438a6587d6e5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fb44ac91-1cfd-5e99-8bd4-7d10143e530a', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_c1_public_forum_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '79f8fd5de70ffc339dfef3bdd75560bff01398f568a613b336d8cabcb2395f27'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6edb7da9-8b41-53dc-850e-12dcf07dae8c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fb44ac91-1cfd-5e99-8bd4-7d10143e530a', 1), '79f8fd5de70ffc339dfef3bdd75560bff01398f568a613b336d8cabcb2395f27',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/af70f7d12affd5d677520d12c749e2f94f00918a4282d82213be438a6587d6e5.mp3', 1018, '2026-09-14 06:05:37.714493', '9de90d7d443291beb98c966e7aec27e37788a4ea245cfe4d6422bf1a1d0c6e9e', 'validated', '{"audio_key":"af70f7d12affd5d677520d12c749e2f94f00918a4282d82213be438a6587d6e5","entity_key":"lx_c1_public_forum_capstone_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"9de90d7d443291beb98c966e7aec27e37788a4ea245cfe4d6422bf1a1d0c6e9e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/af70f7d12affd5d677520d12c749e2f94f00918a4282d82213be438a6587d6e5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_c1_public_forum_capstone_02 -> audio/generated/it-IT/lexical/af70f7d12affd5d677520d12c749e2f94f00918a4282d82213be438a6587d6e5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fa75bb80-0c9d-595f-b4b3-5ee4c06785ab', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_c1_public_forum_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '79f8fd5de70ffc339dfef3bdd75560bff01398f568a613b336d8cabcb2395f27'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dd8c04b2-9312-5d63-af9d-f22b2b26bbb0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fa75bb80-0c9d-595f-b4b3-5ee4c06785ab', 1), '79f8fd5de70ffc339dfef3bdd75560bff01398f568a613b336d8cabcb2395f27',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/af70f7d12affd5d677520d12c749e2f94f00918a4282d82213be438a6587d6e5.mp3', 1018, '2026-09-14 06:05:37.714493', '9de90d7d443291beb98c966e7aec27e37788a4ea245cfe4d6422bf1a1d0c6e9e', 'validated', '{"audio_key":"af70f7d12affd5d677520d12c749e2f94f00918a4282d82213be438a6587d6e5","entity_key":"wf_c1_public_forum_capstone_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"9de90d7d443291beb98c966e7aec27e37788a4ea245cfe4d6422bf1a1d0c6e9e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/af70f7d12affd5d677520d12c749e2f94f00918a4282d82213be438a6587d6e5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_concession_and_reframing_04 -> audio/generated/it-IT/lexical/b709ff3550549a2da9d742adbb497132f0d0ad587b857b43e390b9200a8a1094.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5dd57b07-1ca2-51f4-bfb0-d50b4197bc41', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_concession_and_reframing_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b070c3a43c2486772226dd36e346310acab8d046eac20ec91f237e407d735bd9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('45542181-707a-5a84-96ad-3fd202e9e66b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5dd57b07-1ca2-51f4-bfb0-d50b4197bc41', 1), 'b070c3a43c2486772226dd36e346310acab8d046eac20ec91f237e407d735bd9',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/b709ff3550549a2da9d742adbb497132f0d0ad587b857b43e390b9200a8a1094.mp3', 1253, '2026-09-14 06:05:37.863608', '2e59733d7d3daa455ef5fd7dd793a4dcd95c167160a1a152c9342920f7f4ff0b', 'validated', '{"audio_key":"b709ff3550549a2da9d742adbb497132f0d0ad587b857b43e390b9200a8a1094","entity_key":"lx_concession_and_reframing_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2e59733d7d3daa455ef5fd7dd793a4dcd95c167160a1a152c9342920f7f4ff0b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/b709ff3550549a2da9d742adbb497132f0d0ad587b857b43e390b9200a8a1094.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_concession_and_reframing_04 -> audio/generated/it-IT/lexical/b709ff3550549a2da9d742adbb497132f0d0ad587b857b43e390b9200a8a1094.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b6a70510-0b0f-514e-98b7-d4d8eeeddf76', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_concession_and_reframing_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b070c3a43c2486772226dd36e346310acab8d046eac20ec91f237e407d735bd9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4401ffbf-029e-5785-8411-890808941ef9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b6a70510-0b0f-514e-98b7-d4d8eeeddf76', 1), 'b070c3a43c2486772226dd36e346310acab8d046eac20ec91f237e407d735bd9',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/b709ff3550549a2da9d742adbb497132f0d0ad587b857b43e390b9200a8a1094.mp3', 1253, '2026-09-14 06:05:37.863608', '2e59733d7d3daa455ef5fd7dd793a4dcd95c167160a1a152c9342920f7f4ff0b', 'validated', '{"audio_key":"b709ff3550549a2da9d742adbb497132f0d0ad587b857b43e390b9200a8a1094","entity_key":"wf_concession_and_reframing_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2e59733d7d3daa455ef5fd7dd793a4dcd95c167160a1a152c9342920f7f4ff0b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/b709ff3550549a2da9d742adbb497132f0d0ad587b857b43e390b9200a8a1094.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_mediation_and_synthesis_03 -> audio/generated/it-IT/lexical/b718545c70ed46a4ff10222a1a38d284e8672df0746e737aca121128ffa55e79.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c625c878-5ffa-50a8-b8af-49a1f0bb56a4', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_mediation_and_synthesis_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f569ea552054d81a353ae2eeab044aab35118d272bbd847bbacd1863b93efff8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('df63e295-b7a0-519f-8ccb-5b623e0ed86d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c625c878-5ffa-50a8-b8af-49a1f0bb56a4', 1), 'f569ea552054d81a353ae2eeab044aab35118d272bbd847bbacd1863b93efff8',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/b718545c70ed46a4ff10222a1a38d284e8672df0746e737aca121128ffa55e79.mp3', 1384, '2026-09-14 06:05:38.689522', '98a49d3908cde98410cb496e3ac643e1a10cd4c8328b4dd1a4a79a6cb086249a', 'validated', '{"audio_key":"b718545c70ed46a4ff10222a1a38d284e8672df0746e737aca121128ffa55e79","entity_key":"lx_mediation_and_synthesis_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"98a49d3908cde98410cb496e3ac643e1a10cd4c8328b4dd1a4a79a6cb086249a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/b718545c70ed46a4ff10222a1a38d284e8672df0746e737aca121128ffa55e79.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_mediation_and_synthesis_03 -> audio/generated/it-IT/lexical/b718545c70ed46a4ff10222a1a38d284e8672df0746e737aca121128ffa55e79.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('aef5076c-7ec2-58dd-a54b-f93b7f316cfe', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_mediation_and_synthesis_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f569ea552054d81a353ae2eeab044aab35118d272bbd847bbacd1863b93efff8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('08f1bf15-a01c-5c2f-95c5-bdf96e172bcb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('aef5076c-7ec2-58dd-a54b-f93b7f316cfe', 1), 'f569ea552054d81a353ae2eeab044aab35118d272bbd847bbacd1863b93efff8',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/b718545c70ed46a4ff10222a1a38d284e8672df0746e737aca121128ffa55e79.mp3', 1384, '2026-09-14 06:05:38.689522', '98a49d3908cde98410cb496e3ac643e1a10cd4c8328b4dd1a4a79a6cb086249a', 'validated', '{"audio_key":"b718545c70ed46a4ff10222a1a38d284e8672df0746e737aca121128ffa55e79","entity_key":"wf_mediation_and_synthesis_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"98a49d3908cde98410cb496e3ac643e1a10cd4c8328b4dd1a4a79a6cb086249a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/b718545c70ed46a4ff10222a1a38d284e8672df0746e737aca121128ffa55e79.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_concession_and_reframing_01 -> audio/generated/it-IT/lexical/b81f68b7351fe65d1b3bed7cd3487cba3da568eecf34a51a1b97867d8d21aefe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('02487e22-9ad7-5f38-9639-fe8d7428aad7', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_concession_and_reframing_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bf1ee86f5da632ca57c117356fe34cea78b73a9534ab77daf48d81d8a05402f2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('691c6321-a1c3-5499-8c07-cd1f301375f6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('02487e22-9ad7-5f38-9639-fe8d7428aad7', 1), 'bf1ee86f5da632ca57c117356fe34cea78b73a9534ab77daf48d81d8a05402f2',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/b81f68b7351fe65d1b3bed7cd3487cba3da568eecf34a51a1b97867d8d21aefe.mp3', 1097, '2026-09-14 05:00:12.664555', '8b3e414394bf466916f70b23f57fd17bd54966b5fd5454ca53d411b0ed7e3159', 'validated', '{"audio_key":"b81f68b7351fe65d1b3bed7cd3487cba3da568eecf34a51a1b97867d8d21aefe","entity_key":"lx_concession_and_reframing_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8b3e414394bf466916f70b23f57fd17bd54966b5fd5454ca53d411b0ed7e3159","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/b81f68b7351fe65d1b3bed7cd3487cba3da568eecf34a51a1b97867d8d21aefe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_concession_and_reframing_01 -> audio/generated/it-IT/lexical/b81f68b7351fe65d1b3bed7cd3487cba3da568eecf34a51a1b97867d8d21aefe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3a31ebe1-50b7-57d5-814d-d42566502224', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_concession_and_reframing_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bf1ee86f5da632ca57c117356fe34cea78b73a9534ab77daf48d81d8a05402f2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('90a2222e-220f-5b18-95e2-a3b6ef81e1b0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3a31ebe1-50b7-57d5-814d-d42566502224', 1), 'bf1ee86f5da632ca57c117356fe34cea78b73a9534ab77daf48d81d8a05402f2',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/b81f68b7351fe65d1b3bed7cd3487cba3da568eecf34a51a1b97867d8d21aefe.mp3', 1097, '2026-09-14 05:00:12.664555', '8b3e414394bf466916f70b23f57fd17bd54966b5fd5454ca53d411b0ed7e3159', 'validated', '{"audio_key":"b81f68b7351fe65d1b3bed7cd3487cba3da568eecf34a51a1b97867d8d21aefe","entity_key":"wf_concession_and_reframing_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8b3e414394bf466916f70b23f57fd17bd54966b5fd5454ca53d411b0ed7e3159","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/b81f68b7351fe65d1b3bed7cd3487cba3da568eecf34a51a1b97867d8d21aefe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_calibrated_stance_04 -> audio/generated/it-IT/lexical/c84e1c517375af22f8e309b5d8574c510541ebeade3b0f8d24a307343a5ac1f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6e6bde56-0e49-5b39-b223-ed2dee601755', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_calibrated_stance_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fbceac6b3245e05a237d1b63c38eafea4433ef760cf9de90554cc3f74d953fa9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('65ed0b7b-da3f-5663-8bbc-ca8507436515', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6e6bde56-0e49-5b39-b223-ed2dee601755', 1), 'fbceac6b3245e05a237d1b63c38eafea4433ef760cf9de90554cc3f74d953fa9',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/c84e1c517375af22f8e309b5d8574c510541ebeade3b0f8d24a307343a5ac1f9.mp3', 1384, '2026-09-14 06:05:38.838709', 'b8eb3411728d9e08c232dffc29b81e49198e291e3fbe6f66f2253ef0d45c5a80', 'validated', '{"audio_key":"c84e1c517375af22f8e309b5d8574c510541ebeade3b0f8d24a307343a5ac1f9","entity_key":"lx_calibrated_stance_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"b8eb3411728d9e08c232dffc29b81e49198e291e3fbe6f66f2253ef0d45c5a80","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/c84e1c517375af22f8e309b5d8574c510541ebeade3b0f8d24a307343a5ac1f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_calibrated_stance_04 -> audio/generated/it-IT/lexical/c84e1c517375af22f8e309b5d8574c510541ebeade3b0f8d24a307343a5ac1f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('eafea991-fb70-5661-9c81-62a90f30324f', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_calibrated_stance_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fbceac6b3245e05a237d1b63c38eafea4433ef760cf9de90554cc3f74d953fa9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2e97d054-bdec-58ab-a5f4-06419cf6f543', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('eafea991-fb70-5661-9c81-62a90f30324f', 1), 'fbceac6b3245e05a237d1b63c38eafea4433ef760cf9de90554cc3f74d953fa9',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/c84e1c517375af22f8e309b5d8574c510541ebeade3b0f8d24a307343a5ac1f9.mp3', 1384, '2026-09-14 06:05:38.838709', 'b8eb3411728d9e08c232dffc29b81e49198e291e3fbe6f66f2253ef0d45c5a80', 'validated', '{"audio_key":"c84e1c517375af22f8e309b5d8574c510541ebeade3b0f8d24a307343a5ac1f9","entity_key":"wf_calibrated_stance_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"b8eb3411728d9e08c232dffc29b81e49198e291e3fbe6f66f2253ef0d45c5a80","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/c84e1c517375af22f8e309b5d8574c510541ebeade3b0f8d24a307343a5ac1f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_c1_public_forum_capstone_06 -> audio/generated/it-IT/lexical/c88fc42271870a493d7eae9a3909f3af5de50a55b53988f4a675636f0ed37337.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3f6b8124-7ab5-5692-8b8f-2a542a33af35', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_c1_public_forum_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b1d7e2be1d9d42bb70cf8dafc4bfcd5265de7fd641d1bf3f863b29b83d5e7e35'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bf83ae18-5053-5cf4-a4bb-d6fc40678153', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3f6b8124-7ab5-5692-8b8f-2a542a33af35', 1), 'b1d7e2be1d9d42bb70cf8dafc4bfcd5265de7fd641d1bf3f863b29b83d5e7e35',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/c88fc42271870a493d7eae9a3909f3af5de50a55b53988f4a675636f0ed37337.mp3', 1280, '2026-09-14 05:00:14.801134', 'ee158983050b46d87a03d88901101fea243b0b19fa1c3ecaae36644718183f71', 'validated', '{"audio_key":"c88fc42271870a493d7eae9a3909f3af5de50a55b53988f4a675636f0ed37337","entity_key":"lx_c1_public_forum_capstone_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ee158983050b46d87a03d88901101fea243b0b19fa1c3ecaae36644718183f71","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/c88fc42271870a493d7eae9a3909f3af5de50a55b53988f4a675636f0ed37337.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_c1_public_forum_capstone_06 -> audio/generated/it-IT/lexical/c88fc42271870a493d7eae9a3909f3af5de50a55b53988f4a675636f0ed37337.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('68fc49a7-3e4b-5964-b248-799fc9c9f611', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_c1_public_forum_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b1d7e2be1d9d42bb70cf8dafc4bfcd5265de7fd641d1bf3f863b29b83d5e7e35'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f312dd65-3739-546b-a2b5-f2754cb24e24', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('68fc49a7-3e4b-5964-b248-799fc9c9f611', 1), 'b1d7e2be1d9d42bb70cf8dafc4bfcd5265de7fd641d1bf3f863b29b83d5e7e35',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/c88fc42271870a493d7eae9a3909f3af5de50a55b53988f4a675636f0ed37337.mp3', 1280, '2026-09-14 05:00:14.801134', 'ee158983050b46d87a03d88901101fea243b0b19fa1c3ecaae36644718183f71', 'validated', '{"audio_key":"c88fc42271870a493d7eae9a3909f3af5de50a55b53988f4a675636f0ed37337","entity_key":"wf_c1_public_forum_capstone_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ee158983050b46d87a03d88901101fea243b0b19fa1c3ecaae36644718183f71","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/c88fc42271870a493d7eae9a3909f3af5de50a55b53988f4a675636f0ed37337.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_concession_and_reframing_03 -> audio/generated/it-IT/lexical/c908094c6bbbd35f44cdd9b417d88096ae683003f01f661752d1b97d00063719.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fd96b372-1ba7-515c-9a14-0d82c63d2a4c', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_concession_and_reframing_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '03c280cc1019c675f0111a756791de71914180ff35d998a999516386170ccbcf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d12acfa9-f1cc-5124-afc2-4f9ee7d11136', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fd96b372-1ba7-515c-9a14-0d82c63d2a4c', 1), '03c280cc1019c675f0111a756791de71914180ff35d998a999516386170ccbcf',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/c908094c6bbbd35f44cdd9b417d88096ae683003f01f661752d1b97d00063719.mp3', 1201, '2026-09-14 06:05:39.671372', '1850099b9316d406d72005b2366d081e0261299aef12ba9375e176740a4cc507', 'validated', '{"audio_key":"c908094c6bbbd35f44cdd9b417d88096ae683003f01f661752d1b97d00063719","entity_key":"lx_concession_and_reframing_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1850099b9316d406d72005b2366d081e0261299aef12ba9375e176740a4cc507","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/c908094c6bbbd35f44cdd9b417d88096ae683003f01f661752d1b97d00063719.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_concession_and_reframing_03 -> audio/generated/it-IT/lexical/c908094c6bbbd35f44cdd9b417d88096ae683003f01f661752d1b97d00063719.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e6bf3a59-aaf8-557c-85b0-e133bd95893f', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_concession_and_reframing_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '03c280cc1019c675f0111a756791de71914180ff35d998a999516386170ccbcf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6358cbb8-a080-5679-a8c0-2fa542acac0c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e6bf3a59-aaf8-557c-85b0-e133bd95893f', 1), '03c280cc1019c675f0111a756791de71914180ff35d998a999516386170ccbcf',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/c908094c6bbbd35f44cdd9b417d88096ae683003f01f661752d1b97d00063719.mp3', 1201, '2026-09-14 06:05:39.671372', '1850099b9316d406d72005b2366d081e0261299aef12ba9375e176740a4cc507', 'validated', '{"audio_key":"c908094c6bbbd35f44cdd9b417d88096ae683003f01f661752d1b97d00063719","entity_key":"wf_concession_and_reframing_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1850099b9316d406d72005b2366d081e0261299aef12ba9375e176740a4cc507","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/c908094c6bbbd35f44cdd9b417d88096ae683003f01f661752d1b97d00063719.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reported_voices_04 -> audio/generated/it-IT/lexical/cb69a7f7ac9162357764b33bff7c5f734af4c73ec3e497314e54890d0c1673ba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('890606de-6421-5e47-8838-d6361d6066d1', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reported_voices_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '700fb03ea4f63628db2e082ef28429f3b4a40a920bfaddc7b70e5db89cb25a2b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ce58fa87-9a5e-5c79-8219-6b6149fed86e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('890606de-6421-5e47-8838-d6361d6066d1', 1), '700fb03ea4f63628db2e082ef28429f3b4a40a920bfaddc7b70e5db89cb25a2b',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/cb69a7f7ac9162357764b33bff7c5f734af4c73ec3e497314e54890d0c1673ba.mp3', 1201, '2026-09-14 06:05:39.791675', '8cf852a89bf6611f36d2ba8a21d4334ac192af6277331ce1ed4f5ae0dd17ea0c', 'validated', '{"audio_key":"cb69a7f7ac9162357764b33bff7c5f734af4c73ec3e497314e54890d0c1673ba","entity_key":"lx_reported_voices_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8cf852a89bf6611f36d2ba8a21d4334ac192af6277331ce1ed4f5ae0dd17ea0c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/cb69a7f7ac9162357764b33bff7c5f734af4c73ec3e497314e54890d0c1673ba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reported_voices_04 -> audio/generated/it-IT/lexical/cb69a7f7ac9162357764b33bff7c5f734af4c73ec3e497314e54890d0c1673ba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('622fe38d-d186-58b3-8662-82a690ea684f', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reported_voices_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '700fb03ea4f63628db2e082ef28429f3b4a40a920bfaddc7b70e5db89cb25a2b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1b3d95cd-fc87-5c19-9c18-7d668b249c56', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('622fe38d-d186-58b3-8662-82a690ea684f', 1), '700fb03ea4f63628db2e082ef28429f3b4a40a920bfaddc7b70e5db89cb25a2b',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/cb69a7f7ac9162357764b33bff7c5f734af4c73ec3e497314e54890d0c1673ba.mp3', 1201, '2026-09-14 06:05:39.791675', '8cf852a89bf6611f36d2ba8a21d4334ac192af6277331ce1ed4f5ae0dd17ea0c', 'validated', '{"audio_key":"cb69a7f7ac9162357764b33bff7c5f734af4c73ec3e497314e54890d0c1673ba","entity_key":"wf_reported_voices_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8cf852a89bf6611f36d2ba8a21d4334ac192af6277331ce1ed4f5ae0dd17ea0c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/cb69a7f7ac9162357764b33bff7c5f734af4c73ec3e497314e54890d0c1673ba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_flexibility_06 -> audio/generated/it-IT/lexical/cb6ce6b7439bb4cdd90248ce22942b0af9059423aaf16a65c097e08cc991f400.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9b9b62af-9619-54f1-8d9b-5b1a80a13a16', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_flexibility_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b31ad64b18f7741b8db3a5704a48291209401c045fd23e3903ecd7457382b495'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4d0a6a51-c032-5784-9047-2143be4a005b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9b9b62af-9619-54f1-8d9b-5b1a80a13a16', 1), 'b31ad64b18f7741b8db3a5704a48291209401c045fd23e3903ecd7457382b495',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/cb6ce6b7439bb4cdd90248ce22942b0af9059423aaf16a65c097e08cc991f400.mp3', 1384, '2026-09-14 06:05:40.719190', '6daa14cf8a7ed80a3d29bb9736275f0c366e51f23a58bca36341b1b827b85f35', 'validated', '{"audio_key":"cb6ce6b7439bb4cdd90248ce22942b0af9059423aaf16a65c097e08cc991f400","entity_key":"lx_register_flexibility_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"6daa14cf8a7ed80a3d29bb9736275f0c366e51f23a58bca36341b1b827b85f35","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/cb6ce6b7439bb4cdd90248ce22942b0af9059423aaf16a65c097e08cc991f400.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_flexibility_06 -> audio/generated/it-IT/lexical/cb6ce6b7439bb4cdd90248ce22942b0af9059423aaf16a65c097e08cc991f400.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8836e5b2-c179-5b48-9b41-160fdb4050fc', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_flexibility_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b31ad64b18f7741b8db3a5704a48291209401c045fd23e3903ecd7457382b495'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('38ae8772-cb16-57e2-912a-37f34b9b4b0c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8836e5b2-c179-5b48-9b41-160fdb4050fc', 1), 'b31ad64b18f7741b8db3a5704a48291209401c045fd23e3903ecd7457382b495',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/cb6ce6b7439bb4cdd90248ce22942b0af9059423aaf16a65c097e08cc991f400.mp3', 1384, '2026-09-14 06:05:40.719190', '6daa14cf8a7ed80a3d29bb9736275f0c366e51f23a58bca36341b1b827b85f35', 'validated', '{"audio_key":"cb6ce6b7439bb4cdd90248ce22942b0af9059423aaf16a65c097e08cc991f400","entity_key":"wf_register_flexibility_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"6daa14cf8a7ed80a3d29bb9736275f0c366e51f23a58bca36341b1b827b85f35","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/cb6ce6b7439bb4cdd90248ce22942b0af9059423aaf16a65c097e08cc991f400.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_flexibility_01 -> audio/generated/it-IT/lexical/cc17a8338f2a6ffba48a5a911a5a44009e66c9a265524e158ad5384dfea523cc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('bb379206-cc36-53e2-a079-55b8aca3f4ba', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_flexibility_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e6fe287e180e2e5d88bdbce935985b65f06a33c7b51d39490120def82cb955f4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4eff3cba-e1f6-5995-819d-23edfffcaa95', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('bb379206-cc36-53e2-a079-55b8aca3f4ba', 1), 'e6fe287e180e2e5d88bdbce935985b65f06a33c7b51d39490120def82cb955f4',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/cc17a8338f2a6ffba48a5a911a5a44009e66c9a265524e158ad5384dfea523cc.mp3', 1201, '2026-09-14 05:00:15.289488', '4a9a95eb253714acfa971409bc2a8a71b1a1b73ba87436f2c597771d17d2706a', 'validated', '{"audio_key":"cc17a8338f2a6ffba48a5a911a5a44009e66c9a265524e158ad5384dfea523cc","entity_key":"lx_register_flexibility_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"4a9a95eb253714acfa971409bc2a8a71b1a1b73ba87436f2c597771d17d2706a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/cc17a8338f2a6ffba48a5a911a5a44009e66c9a265524e158ad5384dfea523cc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_flexibility_01 -> audio/generated/it-IT/lexical/cc17a8338f2a6ffba48a5a911a5a44009e66c9a265524e158ad5384dfea523cc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3905c772-5a3d-583b-be5d-abc40661edc6', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_flexibility_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e6fe287e180e2e5d88bdbce935985b65f06a33c7b51d39490120def82cb955f4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bfff32a3-aae7-5f6a-9ac7-046590dec13a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3905c772-5a3d-583b-be5d-abc40661edc6', 1), 'e6fe287e180e2e5d88bdbce935985b65f06a33c7b51d39490120def82cb955f4',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/cc17a8338f2a6ffba48a5a911a5a44009e66c9a265524e158ad5384dfea523cc.mp3', 1201, '2026-09-14 05:00:15.289488', '4a9a95eb253714acfa971409bc2a8a71b1a1b73ba87436f2c597771d17d2706a', 'validated', '{"audio_key":"cc17a8338f2a6ffba48a5a911a5a44009e66c9a265524e158ad5384dfea523cc","entity_key":"wf_register_flexibility_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"4a9a95eb253714acfa971409bc2a8a71b1a1b73ba87436f2c597771d17d2706a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/cc17a8338f2a6ffba48a5a911a5a44009e66c9a265524e158ad5384dfea523cc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_c1_public_forum_capstone_04 -> audio/generated/it-IT/lexical/cc8d88b870381be7bc5fdbda6e8e5de9a5cbdf718440ae331b2ff83efee418dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('be48214b-2c7d-577e-80af-e1626e07f682', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_c1_public_forum_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '60ee222962c90aa660aa4b461988b89cec1939d7d76c0496ea9921dce046bf01'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1549bf40-66bf-5ff7-83dd-fc27b6ccc557', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('be48214b-2c7d-577e-80af-e1626e07f682', 1), '60ee222962c90aa660aa4b461988b89cec1939d7d76c0496ea9921dce046bf01',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/cc8d88b870381be7bc5fdbda6e8e5de9a5cbdf718440ae331b2ff83efee418dd.mp3', 1097, '2026-09-14 06:05:40.961291', '28d8dd09f6b8d7eee1463e9b3b1878f673764a29087bf1f4b76530abdc56bccb', 'validated', '{"audio_key":"cc8d88b870381be7bc5fdbda6e8e5de9a5cbdf718440ae331b2ff83efee418dd","entity_key":"lx_c1_public_forum_capstone_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"28d8dd09f6b8d7eee1463e9b3b1878f673764a29087bf1f4b76530abdc56bccb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/cc8d88b870381be7bc5fdbda6e8e5de9a5cbdf718440ae331b2ff83efee418dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_c1_public_forum_capstone_04 -> audio/generated/it-IT/lexical/cc8d88b870381be7bc5fdbda6e8e5de9a5cbdf718440ae331b2ff83efee418dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('56077a1d-fd65-52ae-9b6c-48074f971335', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_c1_public_forum_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '60ee222962c90aa660aa4b461988b89cec1939d7d76c0496ea9921dce046bf01'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('60477cb1-4827-5b02-980f-e1472b86359a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('56077a1d-fd65-52ae-9b6c-48074f971335', 1), '60ee222962c90aa660aa4b461988b89cec1939d7d76c0496ea9921dce046bf01',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/cc8d88b870381be7bc5fdbda6e8e5de9a5cbdf718440ae331b2ff83efee418dd.mp3', 1097, '2026-09-14 06:05:40.961291', '28d8dd09f6b8d7eee1463e9b3b1878f673764a29087bf1f4b76530abdc56bccb', 'validated', '{"audio_key":"cc8d88b870381be7bc5fdbda6e8e5de9a5cbdf718440ae331b2ff83efee418dd","entity_key":"wf_c1_public_forum_capstone_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"28d8dd09f6b8d7eee1463e9b3b1878f673764a29087bf1f4b76530abdc56bccb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/cc8d88b870381be7bc5fdbda6e8e5de9a5cbdf718440ae331b2ff83efee418dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_mediation_and_synthesis_05 -> audio/generated/it-IT/lexical/ce35a1238580b31a2a4a5cbbd554e857129b42a53a745a6d6de1f771f6fe2190.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0b1763ef-f3c3-5c65-9167-168c0cf374bb', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_mediation_and_synthesis_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2bbf714735fe9ed51774e6ebfaf4506e1411e69380dea040295dae7f50f87ea6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7de23556-e92a-5a64-99ac-313a1d312e0d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0b1763ef-f3c3-5c65-9167-168c0cf374bb', 1), '2bbf714735fe9ed51774e6ebfaf4506e1411e69380dea040295dae7f50f87ea6',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/ce35a1238580b31a2a4a5cbbd554e857129b42a53a745a6d6de1f771f6fe2190.mp3', 1253, '2026-09-14 06:05:41.694632', '37f5696190f8193253d86198996bfb9368ca91829b1b21fb3ee1e7ee2e3c3ea9', 'validated', '{"audio_key":"ce35a1238580b31a2a4a5cbbd554e857129b42a53a745a6d6de1f771f6fe2190","entity_key":"lx_mediation_and_synthesis_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"37f5696190f8193253d86198996bfb9368ca91829b1b21fb3ee1e7ee2e3c3ea9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/ce35a1238580b31a2a4a5cbbd554e857129b42a53a745a6d6de1f771f6fe2190.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_mediation_and_synthesis_05 -> audio/generated/it-IT/lexical/ce35a1238580b31a2a4a5cbbd554e857129b42a53a745a6d6de1f771f6fe2190.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1118b8ca-239d-555a-a32e-2e286e0d8a14', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_mediation_and_synthesis_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2bbf714735fe9ed51774e6ebfaf4506e1411e69380dea040295dae7f50f87ea6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ceda1030-8dc5-5386-b304-15864dd194a5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1118b8ca-239d-555a-a32e-2e286e0d8a14', 1), '2bbf714735fe9ed51774e6ebfaf4506e1411e69380dea040295dae7f50f87ea6',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/ce35a1238580b31a2a4a5cbbd554e857129b42a53a745a6d6de1f771f6fe2190.mp3', 1253, '2026-09-14 06:05:41.694632', '37f5696190f8193253d86198996bfb9368ca91829b1b21fb3ee1e7ee2e3c3ea9', 'validated', '{"audio_key":"ce35a1238580b31a2a4a5cbbd554e857129b42a53a745a6d6de1f771f6fe2190","entity_key":"wf_mediation_and_synthesis_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"37f5696190f8193253d86198996bfb9368ca91829b1b21fb3ee1e7ee2e3c3ea9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/ce35a1238580b31a2a4a5cbbd554e857129b42a53a745a6d6de1f771f6fe2190.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reported_voices_02 -> audio/generated/it-IT/lexical/d0e478d0753aca1684b5f566d1694726594065cc9ca0331e86206f574660e085.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a5329a75-e0fa-5185-bb22-cee7156f4fd5', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reported_voices_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3e303c336a58c084f16e8e7c55f0bbeab90b1777ba08d44f8b116e8f674658af'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7f007229-64a8-5383-8ad0-3d8751adc9f9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a5329a75-e0fa-5185-bb22-cee7156f4fd5', 1), '3e303c336a58c084f16e8e7c55f0bbeab90b1777ba08d44f8b116e8f674658af',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/d0e478d0753aca1684b5f566d1694726594065cc9ca0331e86206f574660e085.mp3', 1018, '2026-09-14 04:01:38.183318', '2302c25e48b5a1e47b00b26f5da08034b70c8800eea7ac0cd202ff34b43e7354', 'validated', '{"audio_key":"d0e478d0753aca1684b5f566d1694726594065cc9ca0331e86206f574660e085","entity_key":"lx_reported_voices_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2302c25e48b5a1e47b00b26f5da08034b70c8800eea7ac0cd202ff34b43e7354","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/d0e478d0753aca1684b5f566d1694726594065cc9ca0331e86206f574660e085.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reported_voices_02 -> audio/generated/it-IT/lexical/d0e478d0753aca1684b5f566d1694726594065cc9ca0331e86206f574660e085.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('37c8ade0-02f4-5ed6-b39c-68514ab2631d', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reported_voices_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3e303c336a58c084f16e8e7c55f0bbeab90b1777ba08d44f8b116e8f674658af'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0757d236-b09d-538b-9f88-b45c9620a6b9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('37c8ade0-02f4-5ed6-b39c-68514ab2631d', 1), '3e303c336a58c084f16e8e7c55f0bbeab90b1777ba08d44f8b116e8f674658af',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/d0e478d0753aca1684b5f566d1694726594065cc9ca0331e86206f574660e085.mp3', 1018, '2026-09-14 04:01:38.183318', '2302c25e48b5a1e47b00b26f5da08034b70c8800eea7ac0cd202ff34b43e7354', 'validated', '{"audio_key":"d0e478d0753aca1684b5f566d1694726594065cc9ca0331e86206f574660e085","entity_key":"wf_reported_voices_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2302c25e48b5a1e47b00b26f5da08034b70c8800eea7ac0cd202ff34b43e7354","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/d0e478d0753aca1684b5f566d1694726594065cc9ca0331e86206f574660e085.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_nominalization_and_density_01 -> audio/generated/it-IT/lexical/d721e158ffbb2833b75fb335694ff5320dd62c3ca34c3eaacd40ced51ebf879b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3ad1f07c-7a2c-5791-b17e-837b11154759', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_nominalization_and_density_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bbc0ef268fa3347569d978ba13b1960f4c4625d26563525e1e26b55600ad86bc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d334d731-a59d-541e-91b0-ccff410dec3e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3ad1f07c-7a2c-5791-b17e-837b11154759', 1), 'bbc0ef268fa3347569d978ba13b1960f4c4625d26563525e1e26b55600ad86bc',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/d721e158ffbb2833b75fb335694ff5320dd62c3ca34c3eaacd40ced51ebf879b.mp3', 1515, '2026-09-14 06:05:41.956928', '2de642b940914877af985a99cc5c63a1cb5f5727e6d3f09b6deb16284bad3427', 'validated', '{"audio_key":"d721e158ffbb2833b75fb335694ff5320dd62c3ca34c3eaacd40ced51ebf879b","entity_key":"lx_nominalization_and_density_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2de642b940914877af985a99cc5c63a1cb5f5727e6d3f09b6deb16284bad3427","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/d721e158ffbb2833b75fb335694ff5320dd62c3ca34c3eaacd40ced51ebf879b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_nominalization_and_density_01 -> audio/generated/it-IT/lexical/d721e158ffbb2833b75fb335694ff5320dd62c3ca34c3eaacd40ced51ebf879b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4b79fa21-83f7-55ac-8d1d-d4a884c8d8a6', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_nominalization_and_density_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bbc0ef268fa3347569d978ba13b1960f4c4625d26563525e1e26b55600ad86bc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ea08d33c-6829-5588-9460-fe57379165e1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4b79fa21-83f7-55ac-8d1d-d4a884c8d8a6', 1), 'bbc0ef268fa3347569d978ba13b1960f4c4625d26563525e1e26b55600ad86bc',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/d721e158ffbb2833b75fb335694ff5320dd62c3ca34c3eaacd40ced51ebf879b.mp3', 1515, '2026-09-14 06:05:41.956928', '2de642b940914877af985a99cc5c63a1cb5f5727e6d3f09b6deb16284bad3427', 'validated', '{"audio_key":"d721e158ffbb2833b75fb335694ff5320dd62c3ca34c3eaacd40ced51ebf879b","entity_key":"wf_nominalization_and_density_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2de642b940914877af985a99cc5c63a1cb5f5727e6d3f09b6deb16284bad3427","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/d721e158ffbb2833b75fb335694ff5320dd62c3ca34c3eaacd40ced51ebf879b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_nominalization_and_density_04 -> audio/generated/it-IT/lexical/d9c8065e43b57bb793acaa1b5e86b7ed7118f05f3e1f96bfc9477fdd192a558f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c86ee415-9572-586e-be5b-087c9c235bd2', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_nominalization_and_density_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4c6f4015315105f68a1a628a07e9b925b6fcafbd773fe1c59cfa05a431faaa3c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8eb24c2a-ac94-5d11-98a0-8cbe9b48e4b6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c86ee415-9572-586e-be5b-087c9c235bd2', 1), '4c6f4015315105f68a1a628a07e9b925b6fcafbd773fe1c59cfa05a431faaa3c',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/d9c8065e43b57bb793acaa1b5e86b7ed7118f05f3e1f96bfc9477fdd192a558f.mp3', 1201, '2026-09-14 06:05:42.660513', '71502b0e788af18f95cdab537181ce03dcf8515d53c2706c77e5d906ea9da021', 'validated', '{"audio_key":"d9c8065e43b57bb793acaa1b5e86b7ed7118f05f3e1f96bfc9477fdd192a558f","entity_key":"lx_nominalization_and_density_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"71502b0e788af18f95cdab537181ce03dcf8515d53c2706c77e5d906ea9da021","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/d9c8065e43b57bb793acaa1b5e86b7ed7118f05f3e1f96bfc9477fdd192a558f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_nominalization_and_density_04 -> audio/generated/it-IT/lexical/d9c8065e43b57bb793acaa1b5e86b7ed7118f05f3e1f96bfc9477fdd192a558f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9501d25e-3889-5b19-94b2-45c5ac1849a9', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_nominalization_and_density_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4c6f4015315105f68a1a628a07e9b925b6fcafbd773fe1c59cfa05a431faaa3c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d491bfc7-8804-5a5e-b0c0-f967fb92e22f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9501d25e-3889-5b19-94b2-45c5ac1849a9', 1), '4c6f4015315105f68a1a628a07e9b925b6fcafbd773fe1c59cfa05a431faaa3c',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/d9c8065e43b57bb793acaa1b5e86b7ed7118f05f3e1f96bfc9477fdd192a558f.mp3', 1201, '2026-09-14 06:05:42.660513', '71502b0e788af18f95cdab537181ce03dcf8515d53c2706c77e5d906ea9da021', 'validated', '{"audio_key":"d9c8065e43b57bb793acaa1b5e86b7ed7118f05f3e1f96bfc9477fdd192a558f","entity_key":"wf_nominalization_and_density_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"71502b0e788af18f95cdab537181ce03dcf8515d53c2706c77e5d906ea9da021","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/d9c8065e43b57bb793acaa1b5e86b7ed7118f05f3e1f96bfc9477fdd192a558f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_information_structure_01 -> audio/generated/it-IT/lexical/db88c97a08cf29463870ead2b6b4254fd68523297f770399b00194bffd2049d2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('78a98d54-1d03-56d4-bb53-6cb1b688f1fb', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_information_structure_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0019b6d3cd793cf76a96f491f3bcd75d9491d07bb528e78c8cc9d9b1ca35c0f7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4c0a0028-1e92-532a-a6cb-97ca8621055c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('78a98d54-1d03-56d4-bb53-6cb1b688f1fb', 1), '0019b6d3cd793cf76a96f491f3bcd75d9491d07bb528e78c8cc9d9b1ca35c0f7',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/db88c97a08cf29463870ead2b6b4254fd68523297f770399b00194bffd2049d2.mp3', 1436, '2026-09-14 06:05:42.909453', '42dbc31f73c5167d60952ef6a110e0d123ebb4c4bc2d45741a5e7bcff5e39d72', 'validated', '{"audio_key":"db88c97a08cf29463870ead2b6b4254fd68523297f770399b00194bffd2049d2","entity_key":"lx_information_structure_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"42dbc31f73c5167d60952ef6a110e0d123ebb4c4bc2d45741a5e7bcff5e39d72","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/db88c97a08cf29463870ead2b6b4254fd68523297f770399b00194bffd2049d2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_information_structure_01 -> audio/generated/it-IT/lexical/db88c97a08cf29463870ead2b6b4254fd68523297f770399b00194bffd2049d2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4c985a2d-edd3-5220-b3db-379236130735', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_information_structure_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0019b6d3cd793cf76a96f491f3bcd75d9491d07bb528e78c8cc9d9b1ca35c0f7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('af890856-2522-5519-9ac6-c8f75b4e14ea', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4c985a2d-edd3-5220-b3db-379236130735', 1), '0019b6d3cd793cf76a96f491f3bcd75d9491d07bb528e78c8cc9d9b1ca35c0f7',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/db88c97a08cf29463870ead2b6b4254fd68523297f770399b00194bffd2049d2.mp3', 1436, '2026-09-14 06:05:42.909453', '42dbc31f73c5167d60952ef6a110e0d123ebb4c4bc2d45741a5e7bcff5e39d72', 'validated', '{"audio_key":"db88c97a08cf29463870ead2b6b4254fd68523297f770399b00194bffd2049d2","entity_key":"wf_information_structure_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"42dbc31f73c5167d60952ef6a110e0d123ebb4c4bc2d45741a5e7bcff5e39d72","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/db88c97a08cf29463870ead2b6b4254fd68523297f770399b00194bffd2049d2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_complex_causality_02 -> audio/generated/it-IT/lexical/dce54f415ae61f1f88df989da6d6c6ab492c5938a543403b2db934d9712d395c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('51b678b7-157e-5364-a3ae-769409efd03a', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_complex_causality_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '54953e4aa66cda270037113239f3dfe4cd651bae2f1c12224a4fc4ad0b1a286e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('44d4a430-25c4-5ef6-8b17-4472f70bb894', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('51b678b7-157e-5364-a3ae-769409efd03a', 1), '54953e4aa66cda270037113239f3dfe4cd651bae2f1c12224a4fc4ad0b1a286e',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/dce54f415ae61f1f88df989da6d6c6ab492c5938a543403b2db934d9712d395c.mp3', 1332, '2026-09-14 06:05:43.637052', '693ac45570727bb05bbc60d96c42391c659a34c353fcb6461d3599cb8250199a', 'validated', '{"audio_key":"dce54f415ae61f1f88df989da6d6c6ab492c5938a543403b2db934d9712d395c","entity_key":"lx_complex_causality_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"693ac45570727bb05bbc60d96c42391c659a34c353fcb6461d3599cb8250199a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/dce54f415ae61f1f88df989da6d6c6ab492c5938a543403b2db934d9712d395c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_complex_causality_02 -> audio/generated/it-IT/lexical/dce54f415ae61f1f88df989da6d6c6ab492c5938a543403b2db934d9712d395c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('838f2533-abd8-5455-969d-9cf09ffcbfac', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_complex_causality_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '54953e4aa66cda270037113239f3dfe4cd651bae2f1c12224a4fc4ad0b1a286e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4666ae25-20f7-51a9-b189-9db3546ab1f0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('838f2533-abd8-5455-969d-9cf09ffcbfac', 1), '54953e4aa66cda270037113239f3dfe4cd651bae2f1c12224a4fc4ad0b1a286e',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/dce54f415ae61f1f88df989da6d6c6ab492c5938a543403b2db934d9712d395c.mp3', 1332, '2026-09-14 06:05:43.637052', '693ac45570727bb05bbc60d96c42391c659a34c353fcb6461d3599cb8250199a', 'validated', '{"audio_key":"dce54f415ae61f1f88df989da6d6c6ab492c5938a543403b2db934d9712d395c","entity_key":"wf_complex_causality_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"693ac45570727bb05bbc60d96c42391c659a34c353fcb6461d3599cb8250199a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/dce54f415ae61f1f88df989da6d6c6ab492c5938a543403b2db934d9712d395c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_mediation_and_synthesis_01 -> audio/generated/it-IT/lexical/e3b7f6a11c8f281f264d12fc0fb14e8900ffe429f5d1c4ccbc4e8775f6f284da.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0ba59c9c-9bca-5a45-8ac5-1ce65c1ab00e', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_mediation_and_synthesis_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aa21b13b42589baeeaf445069e6e5275079efb01eb60177690e81aa76264ef21'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ae865a1f-edb9-574b-bc05-c012889225e1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0ba59c9c-9bca-5a45-8ac5-1ce65c1ab00e', 1), 'aa21b13b42589baeeaf445069e6e5275079efb01eb60177690e81aa76264ef21',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/e3b7f6a11c8f281f264d12fc0fb14e8900ffe429f5d1c4ccbc4e8775f6f284da.mp3', 1018, '2026-09-14 06:05:43.836443', '4922c80733a03ae547f28f4502bfe32ebac686224c806445c32eac4e51cda546', 'validated', '{"audio_key":"e3b7f6a11c8f281f264d12fc0fb14e8900ffe429f5d1c4ccbc4e8775f6f284da","entity_key":"lx_mediation_and_synthesis_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"4922c80733a03ae547f28f4502bfe32ebac686224c806445c32eac4e51cda546","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/e3b7f6a11c8f281f264d12fc0fb14e8900ffe429f5d1c4ccbc4e8775f6f284da.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_mediation_and_synthesis_01 -> audio/generated/it-IT/lexical/e3b7f6a11c8f281f264d12fc0fb14e8900ffe429f5d1c4ccbc4e8775f6f284da.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ccace30f-a966-5773-96ab-4a71a73ebb4b', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_mediation_and_synthesis_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aa21b13b42589baeeaf445069e6e5275079efb01eb60177690e81aa76264ef21'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bf0f0995-5c22-5736-9ee5-e2ab07736b45', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ccace30f-a966-5773-96ab-4a71a73ebb4b', 1), 'aa21b13b42589baeeaf445069e6e5275079efb01eb60177690e81aa76264ef21',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/e3b7f6a11c8f281f264d12fc0fb14e8900ffe429f5d1c4ccbc4e8775f6f284da.mp3', 1018, '2026-09-14 06:05:43.836443', '4922c80733a03ae547f28f4502bfe32ebac686224c806445c32eac4e51cda546', 'validated', '{"audio_key":"e3b7f6a11c8f281f264d12fc0fb14e8900ffe429f5d1c4ccbc4e8775f6f284da","entity_key":"wf_mediation_and_synthesis_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"4922c80733a03ae547f28f4502bfe32ebac686224c806445c32eac4e51cda546","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/e3b7f6a11c8f281f264d12fc0fb14e8900ffe429f5d1c4ccbc4e8775f6f284da.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_mediation_and_synthesis_06 -> audio/generated/it-IT/lexical/e9734189ac844b74da876b02292864e31f2864fdc8390b9eb776f524cfdc2371.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8403f89f-c9fc-536a-8877-53d2c2f51159', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_mediation_and_synthesis_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2f987dd9db503acbf8afd30f8ec0e3d93c9b71c9d20849aae5d65aba74646510'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c0addf79-7619-531d-a97d-a8e7d7292015', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8403f89f-c9fc-536a-8877-53d2c2f51159', 1), '2f987dd9db503acbf8afd30f8ec0e3d93c9b71c9d20849aae5d65aba74646510',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/e9734189ac844b74da876b02292864e31f2864fdc8390b9eb776f524cfdc2371.mp3', 1253, '2026-09-14 06:05:44.714559', '7204aa5e874e1894793c6ff0dbc3412d7b8470423cda3cc92b3a2db5a8b6d27e', 'validated', '{"audio_key":"e9734189ac844b74da876b02292864e31f2864fdc8390b9eb776f524cfdc2371","entity_key":"lx_mediation_and_synthesis_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"7204aa5e874e1894793c6ff0dbc3412d7b8470423cda3cc92b3a2db5a8b6d27e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/e9734189ac844b74da876b02292864e31f2864fdc8390b9eb776f524cfdc2371.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_mediation_and_synthesis_06 -> audio/generated/it-IT/lexical/e9734189ac844b74da876b02292864e31f2864fdc8390b9eb776f524cfdc2371.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d36f2c98-130a-55ce-812a-902e74e37672', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_mediation_and_synthesis_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2f987dd9db503acbf8afd30f8ec0e3d93c9b71c9d20849aae5d65aba74646510'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('263e38bf-5bec-5a61-bad2-010ee9397838', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d36f2c98-130a-55ce-812a-902e74e37672', 1), '2f987dd9db503acbf8afd30f8ec0e3d93c9b71c9d20849aae5d65aba74646510',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/e9734189ac844b74da876b02292864e31f2864fdc8390b9eb776f524cfdc2371.mp3', 1253, '2026-09-14 06:05:44.714559', '7204aa5e874e1894793c6ff0dbc3412d7b8470423cda3cc92b3a2db5a8b6d27e', 'validated', '{"audio_key":"e9734189ac844b74da876b02292864e31f2864fdc8390b9eb776f524cfdc2371","entity_key":"wf_mediation_and_synthesis_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"7204aa5e874e1894793c6ff0dbc3412d7b8470423cda3cc92b3a2db5a8b6d27e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/e9734189ac844b74da876b02292864e31f2864fdc8390b9eb776f524cfdc2371.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_flexibility_02 -> audio/generated/it-IT/lexical/ee387213f36c945d2d0a69c5e0776c07f778a06bdad4101aab6a76cb7b94f6c4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('dca80594-ea01-5e6f-9820-bd86007506b5', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_flexibility_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'baed32daf4cee0578ef0a459ced08ea743f537cba5e64a900a2471fbd4d845a8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b9fcc311-e0a7-56df-9dd2-58a78dfdff86', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('dca80594-ea01-5e6f-9820-bd86007506b5', 1), 'baed32daf4cee0578ef0a459ced08ea743f537cba5e64a900a2471fbd4d845a8',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/ee387213f36c945d2d0a69c5e0776c07f778a06bdad4101aab6a76cb7b94f6c4.mp3', 1071, '2026-09-14 06:05:44.767418', 'a3226156e37160d45bed5d9ebda0da9043fc6b1110657a1ccb62c41f11771935', 'validated', '{"audio_key":"ee387213f36c945d2d0a69c5e0776c07f778a06bdad4101aab6a76cb7b94f6c4","entity_key":"lx_register_flexibility_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"a3226156e37160d45bed5d9ebda0da9043fc6b1110657a1ccb62c41f11771935","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/ee387213f36c945d2d0a69c5e0776c07f778a06bdad4101aab6a76cb7b94f6c4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_flexibility_02 -> audio/generated/it-IT/lexical/ee387213f36c945d2d0a69c5e0776c07f778a06bdad4101aab6a76cb7b94f6c4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('726711cc-2546-5959-953d-20454dd93279', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_flexibility_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'baed32daf4cee0578ef0a459ced08ea743f537cba5e64a900a2471fbd4d845a8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('05292df0-32e2-5788-ae9f-da79b7c6e4b6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('726711cc-2546-5959-953d-20454dd93279', 1), 'baed32daf4cee0578ef0a459ced08ea743f537cba5e64a900a2471fbd4d845a8',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/ee387213f36c945d2d0a69c5e0776c07f778a06bdad4101aab6a76cb7b94f6c4.mp3', 1071, '2026-09-14 06:05:44.767418', 'a3226156e37160d45bed5d9ebda0da9043fc6b1110657a1ccb62c41f11771935', 'validated', '{"audio_key":"ee387213f36c945d2d0a69c5e0776c07f778a06bdad4101aab6a76cb7b94f6c4","entity_key":"wf_register_flexibility_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"a3226156e37160d45bed5d9ebda0da9043fc6b1110657a1ccb62c41f11771935","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/ee387213f36c945d2d0a69c5e0776c07f778a06bdad4101aab6a76cb7b94f6c4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_idiomatic_reformulation_01 -> audio/generated/it-IT/lexical/ef9eea811b0a4b6d40655799a375e307d7a51f1ce9ef9dd271925ae96022f98c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('dab1a5d0-c868-5e52-ae10-c391cc786d9e', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_idiomatic_reformulation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ee40e5e451d7985b70ab10b8ce738da97c58d6fee4d50ac4a1f384bf256862f3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8b5dbf24-8f3f-5a05-b43b-2ed8d4842bf5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('dab1a5d0-c868-5e52-ae10-c391cc786d9e', 1), 'ee40e5e451d7985b70ab10b8ce738da97c58d6fee4d50ac4a1f384bf256862f3',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/ef9eea811b0a4b6d40655799a375e307d7a51f1ce9ef9dd271925ae96022f98c.mp3', 1332, '2026-09-14 06:05:45.669506', 'd274185ea1cfed9a36fd0439add43182fc298ed868051e55cdec649f9a589571', 'validated', '{"audio_key":"ef9eea811b0a4b6d40655799a375e307d7a51f1ce9ef9dd271925ae96022f98c","entity_key":"lx_idiomatic_reformulation_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d274185ea1cfed9a36fd0439add43182fc298ed868051e55cdec649f9a589571","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/ef9eea811b0a4b6d40655799a375e307d7a51f1ce9ef9dd271925ae96022f98c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_idiomatic_reformulation_01 -> audio/generated/it-IT/lexical/ef9eea811b0a4b6d40655799a375e307d7a51f1ce9ef9dd271925ae96022f98c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5c9aff58-86a9-57f8-853d-94d205ab1e04', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_idiomatic_reformulation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ee40e5e451d7985b70ab10b8ce738da97c58d6fee4d50ac4a1f384bf256862f3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f9f86eb8-c294-5d4a-8515-7b753793e63f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5c9aff58-86a9-57f8-853d-94d205ab1e04', 1), 'ee40e5e451d7985b70ab10b8ce738da97c58d6fee4d50ac4a1f384bf256862f3',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/ef9eea811b0a4b6d40655799a375e307d7a51f1ce9ef9dd271925ae96022f98c.mp3', 1332, '2026-09-14 06:05:45.669506', 'd274185ea1cfed9a36fd0439add43182fc298ed868051e55cdec649f9a589571', 'validated', '{"audio_key":"ef9eea811b0a4b6d40655799a375e307d7a51f1ce9ef9dd271925ae96022f98c","entity_key":"wf_idiomatic_reformulation_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d274185ea1cfed9a36fd0439add43182fc298ed868051e55cdec649f9a589571","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/ef9eea811b0a4b6d40655799a375e307d7a51f1ce9ef9dd271925ae96022f98c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_c1_public_forum_capstone_05 -> audio/generated/it-IT/lexical/f2979a5a045415f073895c5b2c2d6a7455201eb206a25520cfeb8efa4be69082.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('729e8c41-fac4-5f26-90b7-509ddb0e4106', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_c1_public_forum_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '716cdcd8c66d7211873fb210fb812aece131a9bf4edf0c217f7a5e0a2eb14b3a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('22ca7b28-804a-58d4-811a-41ea776d62b4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('729e8c41-fac4-5f26-90b7-509ddb0e4106', 1), '716cdcd8c66d7211873fb210fb812aece131a9bf4edf0c217f7a5e0a2eb14b3a',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/f2979a5a045415f073895c5b2c2d6a7455201eb206a25520cfeb8efa4be69082.mp3', 1253, '2026-09-14 06:05:45.704288', '63440a37801b9f18c83e4d5321530cf200f5d86db4203592292bfc460f5d7b0c', 'validated', '{"audio_key":"f2979a5a045415f073895c5b2c2d6a7455201eb206a25520cfeb8efa4be69082","entity_key":"lx_c1_public_forum_capstone_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"63440a37801b9f18c83e4d5321530cf200f5d86db4203592292bfc460f5d7b0c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/f2979a5a045415f073895c5b2c2d6a7455201eb206a25520cfeb8efa4be69082.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_c1_public_forum_capstone_05 -> audio/generated/it-IT/lexical/f2979a5a045415f073895c5b2c2d6a7455201eb206a25520cfeb8efa4be69082.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('441a9a4f-641a-5cdd-ab92-57e4055e6eeb', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_c1_public_forum_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '716cdcd8c66d7211873fb210fb812aece131a9bf4edf0c217f7a5e0a2eb14b3a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6a165658-a71e-5f51-b959-70730a1ab957', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('441a9a4f-641a-5cdd-ab92-57e4055e6eeb', 1), '716cdcd8c66d7211873fb210fb812aece131a9bf4edf0c217f7a5e0a2eb14b3a',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/f2979a5a045415f073895c5b2c2d6a7455201eb206a25520cfeb8efa4be69082.mp3', 1253, '2026-09-14 06:05:45.704288', '63440a37801b9f18c83e4d5321530cf200f5d86db4203592292bfc460f5d7b0c', 'validated', '{"audio_key":"f2979a5a045415f073895c5b2c2d6a7455201eb206a25520cfeb8efa4be69082","entity_key":"wf_c1_public_forum_capstone_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"63440a37801b9f18c83e4d5321530cf200f5d86db4203592292bfc460f5d7b0c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/f2979a5a045415f073895c5b2c2d6a7455201eb206a25520cfeb8efa4be69082.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_idiomatic_reformulation_04 -> audio/generated/it-IT/lexical/f7a0f72761e0ef77291af57a1fa65249b6d86174473e5aa300604cfa3f89e5eb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('78b4cad5-21d6-53ca-a3c8-4288fba3f593', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_idiomatic_reformulation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd70dbb6cc8bd7dd56ee51880da7e776c830d992b8ffcccc526cf333ac7631635'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c1e51496-2a88-505c-bd86-55eb242d35b0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('78b4cad5-21d6-53ca-a3c8-4288fba3f593', 1), 'd70dbb6cc8bd7dd56ee51880da7e776c830d992b8ffcccc526cf333ac7631635',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/f7a0f72761e0ef77291af57a1fa65249b6d86174473e5aa300604cfa3f89e5eb.mp3', 1097, '2026-09-14 06:05:46.625160', '4fb235cfa54a0ea5758a4e04964bca084cfc4cb242f07712347b3f193ee58e4d', 'validated', '{"audio_key":"f7a0f72761e0ef77291af57a1fa65249b6d86174473e5aa300604cfa3f89e5eb","entity_key":"lx_idiomatic_reformulation_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"4fb235cfa54a0ea5758a4e04964bca084cfc4cb242f07712347b3f193ee58e4d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/f7a0f72761e0ef77291af57a1fa65249b6d86174473e5aa300604cfa3f89e5eb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_idiomatic_reformulation_04 -> audio/generated/it-IT/lexical/f7a0f72761e0ef77291af57a1fa65249b6d86174473e5aa300604cfa3f89e5eb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('cc0654b0-3566-5911-ad65-618d110331f4', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_idiomatic_reformulation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd70dbb6cc8bd7dd56ee51880da7e776c830d992b8ffcccc526cf333ac7631635'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('05fbc76c-9b72-538c-b2ae-26b117bb57d7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('cc0654b0-3566-5911-ad65-618d110331f4', 1), 'd70dbb6cc8bd7dd56ee51880da7e776c830d992b8ffcccc526cf333ac7631635',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/f7a0f72761e0ef77291af57a1fa65249b6d86174473e5aa300604cfa3f89e5eb.mp3', 1097, '2026-09-14 06:05:46.625160', '4fb235cfa54a0ea5758a4e04964bca084cfc4cb242f07712347b3f193ee58e4d', 'validated', '{"audio_key":"f7a0f72761e0ef77291af57a1fa65249b6d86174473e5aa300604cfa3f89e5eb","entity_key":"wf_idiomatic_reformulation_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"4fb235cfa54a0ea5758a4e04964bca084cfc4cb242f07712347b3f193ee58e4d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/f7a0f72761e0ef77291af57a1fa65249b6d86174473e5aa300604cfa3f89e5eb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_information_structure_06 -> audio/generated/it-IT/lexical/f860ee5492311933a8e922158be81c600bba4c62b48d998162e4ae1622966024.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f50ade52-c520-56f6-813b-1570ab541d4f', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_information_structure_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bd02c6ec7ed68fc97e9da3d5532ee646601122555194a19b41e34b03ba8d776a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a184cdb7-0843-57db-a247-1dd69a439be5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f50ade52-c520-56f6-813b-1570ab541d4f', 1), 'bd02c6ec7ed68fc97e9da3d5532ee646601122555194a19b41e34b03ba8d776a',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/f860ee5492311933a8e922158be81c600bba4c62b48d998162e4ae1622966024.mp3', 1149, '2026-09-14 06:05:46.658268', '536fe73753f028e6529a5dccf84fa0f8f9ff697a40288d6c13e7f43be1068339', 'validated', '{"audio_key":"f860ee5492311933a8e922158be81c600bba4c62b48d998162e4ae1622966024","entity_key":"lx_information_structure_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"536fe73753f028e6529a5dccf84fa0f8f9ff697a40288d6c13e7f43be1068339","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/f860ee5492311933a8e922158be81c600bba4c62b48d998162e4ae1622966024.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_information_structure_06 -> audio/generated/it-IT/lexical/f860ee5492311933a8e922158be81c600bba4c62b48d998162e4ae1622966024.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('605e73af-0930-5fda-a5e4-7775cbadd112', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_information_structure_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bd02c6ec7ed68fc97e9da3d5532ee646601122555194a19b41e34b03ba8d776a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('36a106e4-0646-5d5f-95a5-e045afd80c7e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('605e73af-0930-5fda-a5e4-7775cbadd112', 1), 'bd02c6ec7ed68fc97e9da3d5532ee646601122555194a19b41e34b03ba8d776a',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/f860ee5492311933a8e922158be81c600bba4c62b48d998162e4ae1622966024.mp3', 1149, '2026-09-14 06:05:46.658268', '536fe73753f028e6529a5dccf84fa0f8f9ff697a40288d6c13e7f43be1068339', 'validated', '{"audio_key":"f860ee5492311933a8e922158be81c600bba4c62b48d998162e4ae1622966024","entity_key":"wf_information_structure_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"536fe73753f028e6529a5dccf84fa0f8f9ff697a40288d6c13e7f43be1068339","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/f860ee5492311933a8e922158be81c600bba4c62b48d998162e4ae1622966024.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_information_structure_02 -> audio/generated/it-IT/lexical/fc8a513a1a5fb2985c0816e2296e0f47f1d987f90d4f174b46b5336f262bf339.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3b9588ff-d4b0-5df0-a556-1fc33c34767a', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_information_structure_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fa7a619ebf282460aa26256dc4d22a2bbb83aa788f1a8d41c0088ffe411bab00'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('da079274-5450-588e-a62f-6402b72266d2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3b9588ff-d4b0-5df0-a556-1fc33c34767a', 1), 'fa7a619ebf282460aa26256dc4d22a2bbb83aa788f1a8d41c0088ffe411bab00',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/fc8a513a1a5fb2985c0816e2296e0f47f1d987f90d4f174b46b5336f262bf339.mp3', 1201, '2026-09-14 06:05:47.610995', '1e0be41a81b95cdf68c75d38f53b9b50ee32b34aae854b8da381af7a46504367', 'validated', '{"audio_key":"fc8a513a1a5fb2985c0816e2296e0f47f1d987f90d4f174b46b5336f262bf339","entity_key":"lx_information_structure_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1e0be41a81b95cdf68c75d38f53b9b50ee32b34aae854b8da381af7a46504367","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/fc8a513a1a5fb2985c0816e2296e0f47f1d987f90d4f174b46b5336f262bf339.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_information_structure_02 -> audio/generated/it-IT/lexical/fc8a513a1a5fb2985c0816e2296e0f47f1d987f90d4f174b46b5336f262bf339.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('27ab3004-9a7f-5eee-884e-6c0a95cf4bac', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_information_structure_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fa7a619ebf282460aa26256dc4d22a2bbb83aa788f1a8d41c0088ffe411bab00'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('029df191-4c14-5509-adf5-b919c991d754', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('27ab3004-9a7f-5eee-884e-6c0a95cf4bac', 1), 'fa7a619ebf282460aa26256dc4d22a2bbb83aa788f1a8d41c0088ffe411bab00',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/fc8a513a1a5fb2985c0816e2296e0f47f1d987f90d4f174b46b5336f262bf339.mp3', 1201, '2026-09-14 06:05:47.610995', '1e0be41a81b95cdf68c75d38f53b9b50ee32b34aae854b8da381af7a46504367', 'validated', '{"audio_key":"fc8a513a1a5fb2985c0816e2296e0f47f1d987f90d4f174b46b5336f262bf339","entity_key":"wf_information_structure_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1e0be41a81b95cdf68c75d38f53b9b50ee32b34aae854b8da381af7a46504367","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/fc8a513a1a5fb2985c0816e2296e0f47f1d987f90d4f174b46b5336f262bf339.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_nominalization_and_density_02 -> audio/generated/it-IT/utterances/052797e02cd7e55efce8dc9d752c5766c5e72fba0d75a0e16556804bc6afe62f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6a48f322-ac94-5b5d-8006-e430b4e34b1f', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_nominalization_and_density_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '998a39618a771191a943296ef3db5226bba75e0707dd226feb325d23afc6f62a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c5c651cc-0c26-5313-a1d7-34e24cfdcd25', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6a48f322-ac94-5b5d-8006-e430b4e34b1f', 1), '998a39618a771191a943296ef3db5226bba75e0707dd226feb325d23afc6f62a',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/052797e02cd7e55efce8dc9d752c5766c5e72fba0d75a0e16556804bc6afe62f.mp3', 6034, '2026-09-14 06:05:48.230877', '177452cdcba35d54d05a328e896616c9035240a40d42e1c69d0711d35887c87d', 'validated', '{"audio_key":"052797e02cd7e55efce8dc9d752c5766c5e72fba0d75a0e16556804bc6afe62f","entity_key":"u_nominalization_and_density_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"177452cdcba35d54d05a328e896616c9035240a40d42e1c69d0711d35887c87d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/052797e02cd7e55efce8dc9d752c5766c5e72fba0d75a0e16556804bc6afe62f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_nominalization_and_density_01_listen -> audio/generated/it-IT/utterances/052797e02cd7e55efce8dc9d752c5766c5e72fba0d75a0e16556804bc6afe62f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('42c1a640-aae8-5885-bd31-36d4674f02aa', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_nominalization_and_density_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '998a39618a771191a943296ef3db5226bba75e0707dd226feb325d23afc6f62a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c572e0b4-cf1c-5285-ae98-70605c359726', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('42c1a640-aae8-5885-bd31-36d4674f02aa', 1), '998a39618a771191a943296ef3db5226bba75e0707dd226feb325d23afc6f62a',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/052797e02cd7e55efce8dc9d752c5766c5e72fba0d75a0e16556804bc6afe62f.mp3', 6034, '2026-09-14 06:05:48.230877', '177452cdcba35d54d05a328e896616c9035240a40d42e1c69d0711d35887c87d', 'validated', '{"audio_key":"052797e02cd7e55efce8dc9d752c5766c5e72fba0d75a0e16556804bc6afe62f","entity_key":"e_nominalization_and_density_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"177452cdcba35d54d05a328e896616c9035240a40d42e1c69d0711d35887c87d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/052797e02cd7e55efce8dc9d752c5766c5e72fba0d75a0e16556804bc6afe62f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_register_flexibility_02 -> audio/generated/it-IT/utterances/074b392c97483804f8acce6986776f428126a605fb886414ff3ac40a3dc746f6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('959b4004-2ed1-5396-80b0-3f413772e884', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_register_flexibility_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0e2c8f4b1d35647b0f6afc25e81a4847d04fb62bfee63f619f7723b79938edf0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('79b63f82-f9e8-5a87-957e-6c5b295fbf40', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('959b4004-2ed1-5396-80b0-3f413772e884', 1), '0e2c8f4b1d35647b0f6afc25e81a4847d04fb62bfee63f619f7723b79938edf0',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/074b392c97483804f8acce6986776f428126a605fb886414ff3ac40a3dc746f6.mp3', 3840, '2026-09-14 06:05:48.821144', 'd5323af917c8a1be1a0ae622029f0e136c391ab58aaabdd1c2f34c190e0da2e5', 'validated', '{"audio_key":"074b392c97483804f8acce6986776f428126a605fb886414ff3ac40a3dc746f6","entity_key":"u_register_flexibility_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d5323af917c8a1be1a0ae622029f0e136c391ab58aaabdd1c2f34c190e0da2e5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/074b392c97483804f8acce6986776f428126a605fb886414ff3ac40a3dc746f6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_register_flexibility_01_listen -> audio/generated/it-IT/utterances/074b392c97483804f8acce6986776f428126a605fb886414ff3ac40a3dc746f6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('602831f4-099f-5967-aa50-e32fb406288f', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_register_flexibility_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0e2c8f4b1d35647b0f6afc25e81a4847d04fb62bfee63f619f7723b79938edf0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6c9695c9-5f95-5cce-b0ba-e82ae2f450b5', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('602831f4-099f-5967-aa50-e32fb406288f', 1), '0e2c8f4b1d35647b0f6afc25e81a4847d04fb62bfee63f619f7723b79938edf0',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/074b392c97483804f8acce6986776f428126a605fb886414ff3ac40a3dc746f6.mp3', 3840, '2026-09-14 06:05:48.821144', 'd5323af917c8a1be1a0ae622029f0e136c391ab58aaabdd1c2f34c190e0da2e5', 'validated', '{"audio_key":"074b392c97483804f8acce6986776f428126a605fb886414ff3ac40a3dc746f6","entity_key":"e_register_flexibility_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d5323af917c8a1be1a0ae622029f0e136c391ab58aaabdd1c2f34c190e0da2e5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/074b392c97483804f8acce6986776f428126a605fb886414ff3ac40a3dc746f6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_idiomatic_reformulation_04 -> audio/generated/it-IT/utterances/0a807ebc269db06e61b34ccd5ca0563f85abe5ae6615a0e8568369a31be044f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e7b85945-0ea5-5850-9f2a-72b91652007c', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_idiomatic_reformulation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '11a01bd1f3430db646a0b49d32407dc5471d4ead42ed9406b17e4e1a5bddfb3b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('16b89a88-e136-5f7e-9ffc-1868ec8897d5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e7b85945-0ea5-5850-9f2a-72b91652007c', 1), '11a01bd1f3430db646a0b49d32407dc5471d4ead42ed9406b17e4e1a5bddfb3b',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/0a807ebc269db06e61b34ccd5ca0563f85abe5ae6615a0e8568369a31be044f9.mp3', 4205, '2026-09-14 06:05:49.544018', '40b63292683640d952a39dfc7cacbe676033b6e66947c2c5a137bd56a0b3d3e3', 'validated', '{"audio_key":"0a807ebc269db06e61b34ccd5ca0563f85abe5ae6615a0e8568369a31be044f9","entity_key":"u_idiomatic_reformulation_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"40b63292683640d952a39dfc7cacbe676033b6e66947c2c5a137bd56a0b3d3e3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/0a807ebc269db06e61b34ccd5ca0563f85abe5ae6615a0e8568369a31be044f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_idiomatic_reformulation_02_listen -> audio/generated/it-IT/utterances/0a807ebc269db06e61b34ccd5ca0563f85abe5ae6615a0e8568369a31be044f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('a7ee841d-b3e5-57f4-aaea-e56e6cac47ec', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_idiomatic_reformulation_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '11a01bd1f3430db646a0b49d32407dc5471d4ead42ed9406b17e4e1a5bddfb3b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d409bc18-8ba8-5f95-94ca-89b9d89a5d0c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('a7ee841d-b3e5-57f4-aaea-e56e6cac47ec', 1), '11a01bd1f3430db646a0b49d32407dc5471d4ead42ed9406b17e4e1a5bddfb3b',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/0a807ebc269db06e61b34ccd5ca0563f85abe5ae6615a0e8568369a31be044f9.mp3', 4205, '2026-09-14 06:05:49.544018', '40b63292683640d952a39dfc7cacbe676033b6e66947c2c5a137bd56a0b3d3e3', 'validated', '{"audio_key":"0a807ebc269db06e61b34ccd5ca0563f85abe5ae6615a0e8568369a31be044f9","entity_key":"e_idiomatic_reformulation_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"40b63292683640d952a39dfc7cacbe676033b6e66947c2c5a137bd56a0b3d3e3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/0a807ebc269db06e61b34ccd5ca0563f85abe5ae6615a0e8568369a31be044f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_c1_public_forum_capstone_02 -> audio/generated/it-IT/utterances/1235b9a32ec2147bae95c8de6581628af99b1485df4f12c140198bb369b6e367.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('904c0f41-b9d0-51a4-8103-368bac70b9fd', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_c1_public_forum_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9314e7c21d38129d43ef336c2f9af416d152950688e8717983d870618ed64c71'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b0be737e-3ae5-5b0e-9715-41cf252a89fb', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('904c0f41-b9d0-51a4-8103-368bac70b9fd', 1), '9314e7c21d38129d43ef336c2f9af416d152950688e8717983d870618ed64c71',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/1235b9a32ec2147bae95c8de6581628af99b1485df4f12c140198bb369b6e367.mp3', 4179, '2026-09-14 06:05:50.094932', '6c06c409d5dc4e9e96e1c75857fb1110eab0673d5e784f488be2e1487e40b1a8', 'validated', '{"audio_key":"1235b9a32ec2147bae95c8de6581628af99b1485df4f12c140198bb369b6e367","entity_key":"u_c1_public_forum_capstone_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"6c06c409d5dc4e9e96e1c75857fb1110eab0673d5e784f488be2e1487e40b1a8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/1235b9a32ec2147bae95c8de6581628af99b1485df4f12c140198bb369b6e367.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_c1_public_forum_capstone_01_listen -> audio/generated/it-IT/utterances/1235b9a32ec2147bae95c8de6581628af99b1485df4f12c140198bb369b6e367.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c666b2aa-ea5d-5a77-9aef-89079f3cd2d3', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_c1_public_forum_capstone_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9314e7c21d38129d43ef336c2f9af416d152950688e8717983d870618ed64c71'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ec70c440-36ab-538e-bcc9-56c62ab6059c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c666b2aa-ea5d-5a77-9aef-89079f3cd2d3', 1), '9314e7c21d38129d43ef336c2f9af416d152950688e8717983d870618ed64c71',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/1235b9a32ec2147bae95c8de6581628af99b1485df4f12c140198bb369b6e367.mp3', 4179, '2026-09-14 06:05:50.094932', '6c06c409d5dc4e9e96e1c75857fb1110eab0673d5e784f488be2e1487e40b1a8', 'validated', '{"audio_key":"1235b9a32ec2147bae95c8de6581628af99b1485df4f12c140198bb369b6e367","entity_key":"e_c1_public_forum_capstone_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"6c06c409d5dc4e9e96e1c75857fb1110eab0673d5e784f488be2e1487e40b1a8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/1235b9a32ec2147bae95c8de6581628af99b1485df4f12c140198bb369b6e367.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_reported_voices_02 -> audio/generated/it-IT/utterances/1711a2e14c4ebf151ad271f0968766ac9b76332bb13a3b55300b76fd41a130ab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f196e2b3-86b6-5659-b28c-d6fbcd7c28e5', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_reported_voices_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e9175a65626b475705978905cc9116cbc777cb0a1ff752aa0998668f65c88456'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('788ddfd3-82b4-5fd6-8aee-7cf51c7efeeb', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f196e2b3-86b6-5659-b28c-d6fbcd7c28e5', 1), 'e9175a65626b475705978905cc9116cbc777cb0a1ff752aa0998668f65c88456',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/1711a2e14c4ebf151ad271f0968766ac9b76332bb13a3b55300b76fd41a130ab.mp3', 3892, '2026-09-14 06:05:50.797387', '4b92c5a79ea654439dd43c06a215ba8f586be3af78296850d759e13aee932fad', 'validated', '{"audio_key":"1711a2e14c4ebf151ad271f0968766ac9b76332bb13a3b55300b76fd41a130ab","entity_key":"u_reported_voices_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"4b92c5a79ea654439dd43c06a215ba8f586be3af78296850d759e13aee932fad","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/1711a2e14c4ebf151ad271f0968766ac9b76332bb13a3b55300b76fd41a130ab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_reported_voices_01_listen -> audio/generated/it-IT/utterances/1711a2e14c4ebf151ad271f0968766ac9b76332bb13a3b55300b76fd41a130ab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('77d0a5a5-be3b-56bc-ade6-dc16e4c0e23f', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_reported_voices_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e9175a65626b475705978905cc9116cbc777cb0a1ff752aa0998668f65c88456'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c58d49ac-2339-5bd2-805e-31e552250af5', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('77d0a5a5-be3b-56bc-ade6-dc16e4c0e23f', 1), 'e9175a65626b475705978905cc9116cbc777cb0a1ff752aa0998668f65c88456',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/1711a2e14c4ebf151ad271f0968766ac9b76332bb13a3b55300b76fd41a130ab.mp3', 3892, '2026-09-14 06:05:50.797387', '4b92c5a79ea654439dd43c06a215ba8f586be3af78296850d759e13aee932fad', 'validated', '{"audio_key":"1711a2e14c4ebf151ad271f0968766ac9b76332bb13a3b55300b76fd41a130ab","entity_key":"e_reported_voices_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"4b92c5a79ea654439dd43c06a215ba8f586be3af78296850d759e13aee932fad","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/1711a2e14c4ebf151ad271f0968766ac9b76332bb13a3b55300b76fd41a130ab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_register_flexibility_04 -> audio/generated/it-IT/utterances/19498ca69df11f96dbbaa583be2c153cff52b78761c76b4c1e66cad9ac492d4f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7ab0192a-d308-5157-afa2-362cced72b99', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_register_flexibility_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1d786bb57dffa28e35df0af811a960616938d6a768f1cffa56a191cdaf9248f1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d9db23aa-e5b2-5692-93ea-904057e8d90c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7ab0192a-d308-5157-afa2-362cced72b99', 1), '1d786bb57dffa28e35df0af811a960616938d6a768f1cffa56a191cdaf9248f1',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/19498ca69df11f96dbbaa583be2c153cff52b78761c76b4c1e66cad9ac492d4f.mp3', 4858, '2026-09-14 06:05:51.507282', 'd288a2e3fc0e719b2ed33cb755c55a490ae036f73f3fcada32cc22216b7d6b32', 'validated', '{"audio_key":"19498ca69df11f96dbbaa583be2c153cff52b78761c76b4c1e66cad9ac492d4f","entity_key":"u_register_flexibility_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d288a2e3fc0e719b2ed33cb755c55a490ae036f73f3fcada32cc22216b7d6b32","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/19498ca69df11f96dbbaa583be2c153cff52b78761c76b4c1e66cad9ac492d4f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_register_flexibility_02_listen -> audio/generated/it-IT/utterances/19498ca69df11f96dbbaa583be2c153cff52b78761c76b4c1e66cad9ac492d4f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('fba71b89-1708-5b99-9f3d-0f183ea30ea1', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_register_flexibility_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1d786bb57dffa28e35df0af811a960616938d6a768f1cffa56a191cdaf9248f1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('129c1c6b-2c72-5106-9c2a-198e0b158fe0', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('fba71b89-1708-5b99-9f3d-0f183ea30ea1', 1), '1d786bb57dffa28e35df0af811a960616938d6a768f1cffa56a191cdaf9248f1',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/19498ca69df11f96dbbaa583be2c153cff52b78761c76b4c1e66cad9ac492d4f.mp3', 4858, '2026-09-14 06:05:51.507282', 'd288a2e3fc0e719b2ed33cb755c55a490ae036f73f3fcada32cc22216b7d6b32', 'validated', '{"audio_key":"19498ca69df11f96dbbaa583be2c153cff52b78761c76b4c1e66cad9ac492d4f","entity_key":"e_register_flexibility_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d288a2e3fc0e719b2ed33cb755c55a490ae036f73f3fcada32cc22216b7d6b32","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/19498ca69df11f96dbbaa583be2c153cff52b78761c76b4c1e66cad9ac492d4f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_mediation_and_synthesis_03 -> audio/generated/it-IT/utterances/22eb8ba63061659b316460359aeff7f9f15a1f4a38dc6bad7aa0306aed538478.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('44c06535-26d6-585d-a367-b5e6956d6f8d', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_mediation_and_synthesis_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f398ff8122417630e49cd56a7cb4270b2491783752b9afeca94b9dcc0cd3a72b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7b07a3ff-4d07-502b-8bfd-63c30f28abdd', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('44c06535-26d6-585d-a367-b5e6956d6f8d', 1), 'f398ff8122417630e49cd56a7cb4270b2491783752b9afeca94b9dcc0cd3a72b',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/22eb8ba63061659b316460359aeff7f9f15a1f4a38dc6bad7aa0306aed538478.mp3', 4179, '2026-09-14 06:05:52.053773', '965c91163667bff69ef76b7fc7ed85f285ee324beff1650cb7a1dbbae15b0203', 'validated', '{"audio_key":"22eb8ba63061659b316460359aeff7f9f15a1f4a38dc6bad7aa0306aed538478","entity_key":"u_mediation_and_synthesis_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"965c91163667bff69ef76b7fc7ed85f285ee324beff1650cb7a1dbbae15b0203","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/22eb8ba63061659b316460359aeff7f9f15a1f4a38dc6bad7aa0306aed538478.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_calibrated_stance_03 -> audio/generated/it-IT/utterances/2582d9c33f2a2496570faec19713e6ea408f34037c38fdd64f9f40700d2ca91d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2c6d8c18-7779-5e7a-ac93-ad617f43ed86', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_calibrated_stance_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ac7389e0a60bc23b97ea01757231dfe7fac91be6e0e93113b51e1e3d7d661c12'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('da442de2-69fe-5774-84ea-ecbccfd70b85', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2c6d8c18-7779-5e7a-ac93-ad617f43ed86', 1), 'ac7389e0a60bc23b97ea01757231dfe7fac91be6e0e93113b51e1e3d7d661c12',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/2582d9c33f2a2496570faec19713e6ea408f34037c38fdd64f9f40700d2ca91d.mp3', 4022, '2026-09-14 06:05:52.764238', '769a00f28adb3a32aa98d5489546a6051a5ee403049fecbb24c4a9a83b2dbee6', 'validated', '{"audio_key":"2582d9c33f2a2496570faec19713e6ea408f34037c38fdd64f9f40700d2ca91d","entity_key":"u_calibrated_stance_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"769a00f28adb3a32aa98d5489546a6051a5ee403049fecbb24c4a9a83b2dbee6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/2582d9c33f2a2496570faec19713e6ea408f34037c38fdd64f9f40700d2ca91d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_information_structure_04 -> audio/generated/it-IT/utterances/2f9bf89ceebc0a0d19a55e7042185d7d3f9fe6af324a7e7778bed50c828c4877.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f40bbb53-1048-5e96-8fd5-4db9b1fcd0a3', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_information_structure_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd0f96418006286e2a9b71073831a55d12e80ff0571c347f38fb2208140693159'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('957b492d-babe-534e-a5a3-eec30ef34218', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f40bbb53-1048-5e96-8fd5-4db9b1fcd0a3', 1), 'd0f96418006286e2a9b71073831a55d12e80ff0571c347f38fb2208140693159',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/2f9bf89ceebc0a0d19a55e7042185d7d3f9fe6af324a7e7778bed50c828c4877.mp3', 4545, '2026-09-14 06:05:53.432782', '27b5b92e6f01f76026a385bb58443dcbae212de2319852c1e8b33935efbcc183', 'validated', '{"audio_key":"2f9bf89ceebc0a0d19a55e7042185d7d3f9fe6af324a7e7778bed50c828c4877","entity_key":"u_information_structure_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"27b5b92e6f01f76026a385bb58443dcbae212de2319852c1e8b33935efbcc183","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/2f9bf89ceebc0a0d19a55e7042185d7d3f9fe6af324a7e7778bed50c828c4877.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_information_structure_02_listen -> audio/generated/it-IT/utterances/2f9bf89ceebc0a0d19a55e7042185d7d3f9fe6af324a7e7778bed50c828c4877.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('17140818-3d0e-5936-9f85-565efeedcd78', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_information_structure_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd0f96418006286e2a9b71073831a55d12e80ff0571c347f38fb2208140693159'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fa29f426-3f53-558e-a7e1-b46d65853654', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('17140818-3d0e-5936-9f85-565efeedcd78', 1), 'd0f96418006286e2a9b71073831a55d12e80ff0571c347f38fb2208140693159',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/2f9bf89ceebc0a0d19a55e7042185d7d3f9fe6af324a7e7778bed50c828c4877.mp3', 4545, '2026-09-14 06:05:53.432782', '27b5b92e6f01f76026a385bb58443dcbae212de2319852c1e8b33935efbcc183', 'validated', '{"audio_key":"2f9bf89ceebc0a0d19a55e7042185d7d3f9fe6af324a7e7778bed50c828c4877","entity_key":"e_information_structure_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"27b5b92e6f01f76026a385bb58443dcbae212de2319852c1e8b33935efbcc183","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/2f9bf89ceebc0a0d19a55e7042185d7d3f9fe6af324a7e7778bed50c828c4877.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_information_structure_02 -> audio/generated/it-IT/utterances/31ee5dcc522c9a83e4476720e013999ecf4cdd458cd3d1048b3c552185e6d2ab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f0956c0f-8049-53ab-8727-1c0eda17ce7d', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_information_structure_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4a793755741ee8dc672a5e3ac10e4b1ee8547ab4fe3b9c02714c2197910527f3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('782e0973-dd85-5085-ab23-7b9974f26c0b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f0956c0f-8049-53ab-8727-1c0eda17ce7d', 1), '4a793755741ee8dc672a5e3ac10e4b1ee8547ab4fe3b9c02714c2197910527f3',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/31ee5dcc522c9a83e4476720e013999ecf4cdd458cd3d1048b3c552185e6d2ab.mp3', 3108, '2026-09-14 06:05:53.929079', '7e0b7eddac84fbbd531768b6a06ea419663c4f97c6d307f46518a20c6f666b45', 'validated', '{"audio_key":"31ee5dcc522c9a83e4476720e013999ecf4cdd458cd3d1048b3c552185e6d2ab","entity_key":"u_information_structure_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"7e0b7eddac84fbbd531768b6a06ea419663c4f97c6d307f46518a20c6f666b45","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/31ee5dcc522c9a83e4476720e013999ecf4cdd458cd3d1048b3c552185e6d2ab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_information_structure_01_listen -> audio/generated/it-IT/utterances/31ee5dcc522c9a83e4476720e013999ecf4cdd458cd3d1048b3c552185e6d2ab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('f5f083c0-446f-589b-b0b6-aa8d9d7e94bd', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_information_structure_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4a793755741ee8dc672a5e3ac10e4b1ee8547ab4fe3b9c02714c2197910527f3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a92f4a7a-bbb7-5785-8c8a-85e1fd3cf851', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('f5f083c0-446f-589b-b0b6-aa8d9d7e94bd', 1), '4a793755741ee8dc672a5e3ac10e4b1ee8547ab4fe3b9c02714c2197910527f3',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/31ee5dcc522c9a83e4476720e013999ecf4cdd458cd3d1048b3c552185e6d2ab.mp3', 3108, '2026-09-14 06:05:53.929079', '7e0b7eddac84fbbd531768b6a06ea419663c4f97c6d307f46518a20c6f666b45', 'validated', '{"audio_key":"31ee5dcc522c9a83e4476720e013999ecf4cdd458cd3d1048b3c552185e6d2ab","entity_key":"e_information_structure_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"7e0b7eddac84fbbd531768b6a06ea419663c4f97c6d307f46518a20c6f666b45","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/31ee5dcc522c9a83e4476720e013999ecf4cdd458cd3d1048b3c552185e6d2ab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_concession_and_reframing_04 -> audio/generated/it-IT/utterances/4042fdd7512a1f76464a259bf90c42885ca70896aac925ea084f5b0b7d9d7027.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5c05c927-702d-5f94-822b-5662b588e2f4', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_concession_and_reframing_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8ddddbc73d28db2aa009faaec46b814b0b37f7c61909d9117bb93aa5285d6517'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('63554177-2d9c-5029-96d5-0a9bfd839584', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5c05c927-702d-5f94-822b-5662b588e2f4', 1), '8ddddbc73d28db2aa009faaec46b814b0b37f7c61909d9117bb93aa5285d6517',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/4042fdd7512a1f76464a259bf90c42885ca70896aac925ea084f5b0b7d9d7027.mp3', 4675, '2026-09-14 06:05:54.760103', '8e40b41d0643537474f2c0965e63ed2dba172c977ae561640cb95c63d5c70c76', 'validated', '{"audio_key":"4042fdd7512a1f76464a259bf90c42885ca70896aac925ea084f5b0b7d9d7027","entity_key":"u_concession_and_reframing_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8e40b41d0643537474f2c0965e63ed2dba172c977ae561640cb95c63d5c70c76","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/4042fdd7512a1f76464a259bf90c42885ca70896aac925ea084f5b0b7d9d7027.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_concession_and_reframing_02_listen -> audio/generated/it-IT/utterances/4042fdd7512a1f76464a259bf90c42885ca70896aac925ea084f5b0b7d9d7027.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('78781229-917b-5412-a1fa-1ddae21e92bd', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_concession_and_reframing_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8ddddbc73d28db2aa009faaec46b814b0b37f7c61909d9117bb93aa5285d6517'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('762663ef-2c73-500e-8960-16a0228bd5fa', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('78781229-917b-5412-a1fa-1ddae21e92bd', 1), '8ddddbc73d28db2aa009faaec46b814b0b37f7c61909d9117bb93aa5285d6517',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/4042fdd7512a1f76464a259bf90c42885ca70896aac925ea084f5b0b7d9d7027.mp3', 4675, '2026-09-14 06:05:54.760103', '8e40b41d0643537474f2c0965e63ed2dba172c977ae561640cb95c63d5c70c76', 'validated', '{"audio_key":"4042fdd7512a1f76464a259bf90c42885ca70896aac925ea084f5b0b7d9d7027","entity_key":"e_concession_and_reframing_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8e40b41d0643537474f2c0965e63ed2dba172c977ae561640cb95c63d5c70c76","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/4042fdd7512a1f76464a259bf90c42885ca70896aac925ea084f5b0b7d9d7027.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_c1_public_forum_capstone_01 -> audio/generated/it-IT/utterances/419c95080beba08ab2c5b901536838da3ce9acba24411fd166e84605706f0ceb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('fd0b2a9f-3a51-583f-acb4-af52d47f7017', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_c1_public_forum_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7baa97b00614d079ecea972d1ee8ae53c7febd5a0e11f4ce770c8aa85c35b062'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e45a7cc7-f409-5738-ab85-0c14f1ae0430', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('fd0b2a9f-3a51-583f-acb4-af52d47f7017', 1), '7baa97b00614d079ecea972d1ee8ae53c7febd5a0e11f4ce770c8aa85c35b062',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/419c95080beba08ab2c5b901536838da3ce9acba24411fd166e84605706f0ceb.mp3', 5250, '2026-09-14 06:05:55.355436', '41081a8e87718bef0f9a25ef195d8980b99aa88d2706dd8ce9492e8ce24b0c4b', 'validated', '{"audio_key":"419c95080beba08ab2c5b901536838da3ce9acba24411fd166e84605706f0ceb","entity_key":"u_c1_public_forum_capstone_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"41081a8e87718bef0f9a25ef195d8980b99aa88d2706dd8ce9492e8ce24b0c4b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/419c95080beba08ab2c5b901536838da3ce9acba24411fd166e84605706f0ceb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_information_structure_01 -> audio/generated/it-IT/utterances/42cadea02fde8bcff9abdd9bafa879722d9e87b5bcd01bbd457718ac982274fd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('88a82a88-b936-56f1-b487-7a61a5ce684f', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_information_structure_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '74465a72792651c2126013e4eb9519f8da2d9eaaf459b4642e4bfe6c1d141c68'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9c71bd46-dc6b-5e32-ac87-e78a72fe8ab6', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('88a82a88-b936-56f1-b487-7a61a5ce684f', 1), '74465a72792651c2126013e4eb9519f8da2d9eaaf459b4642e4bfe6c1d141c68',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/42cadea02fde8bcff9abdd9bafa879722d9e87b5bcd01bbd457718ac982274fd.mp3', 3291, '2026-09-14 06:05:55.959206', '126793da349b3e33dcb19f918a487eea58d01c055696a1648372946f8f3a2b9d', 'validated', '{"audio_key":"42cadea02fde8bcff9abdd9bafa879722d9e87b5bcd01bbd457718ac982274fd","entity_key":"u_information_structure_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"126793da349b3e33dcb19f918a487eea58d01c055696a1648372946f8f3a2b9d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/42cadea02fde8bcff9abdd9bafa879722d9e87b5bcd01bbd457718ac982274fd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_reported_voices_03 -> audio/generated/it-IT/utterances/5ad867ace291cb7ac3e9efeae1478e07ca8c838b23c108cacf0043c15759fbc7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6bff72b9-7145-526b-9056-c1e868c39340', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_reported_voices_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '39989c03863c6960cdea48085bb8681123dfc4cab7c97ea6c3791b66ed76b7cb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1d6e85c0-2db5-53e1-a8bd-f9a7e1ff1df2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6bff72b9-7145-526b-9056-c1e868c39340', 1), '39989c03863c6960cdea48085bb8681123dfc4cab7c97ea6c3791b66ed76b7cb',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/5ad867ace291cb7ac3e9efeae1478e07ca8c838b23c108cacf0043c15759fbc7.mp3', 4728, '2026-09-14 06:05:56.735715', '4d61b9099170da6d8f7f725f9f90502f4fb894d7ebe52f75e26e829886ea1e3d', 'validated', '{"audio_key":"5ad867ace291cb7ac3e9efeae1478e07ca8c838b23c108cacf0043c15759fbc7","entity_key":"u_reported_voices_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"4d61b9099170da6d8f7f725f9f90502f4fb894d7ebe52f75e26e829886ea1e3d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/5ad867ace291cb7ac3e9efeae1478e07ca8c838b23c108cacf0043c15759fbc7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_complex_causality_02 -> audio/generated/it-IT/utterances/623a576bc63fe2341dd6bb44739e0b4846782e09889cee597521d621243d3037.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1d79ae6d-6d67-5c95-97bb-0034036735e6', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_complex_causality_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f5453acd74971ad67d13fd7c24dbbf80bba84e338523e9cd14a1fbd3e50cf35e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2f7d9aa0-2714-5d51-8432-48b26f5c2c3f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1d79ae6d-6d67-5c95-97bb-0034036735e6', 1), 'f5453acd74971ad67d13fd7c24dbbf80bba84e338523e9cd14a1fbd3e50cf35e',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/623a576bc63fe2341dd6bb44739e0b4846782e09889cee597521d621243d3037.mp3', 5093, '2026-09-14 06:05:57.346680', 'a4112d6bf214562a5dcfbb8a7d0c1c03a69ab1d3d35f82bd6394cb18d2615853', 'validated', '{"audio_key":"623a576bc63fe2341dd6bb44739e0b4846782e09889cee597521d621243d3037","entity_key":"u_complex_causality_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"a4112d6bf214562a5dcfbb8a7d0c1c03a69ab1d3d35f82bd6394cb18d2615853","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/623a576bc63fe2341dd6bb44739e0b4846782e09889cee597521d621243d3037.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_complex_causality_01_listen -> audio/generated/it-IT/utterances/623a576bc63fe2341dd6bb44739e0b4846782e09889cee597521d621243d3037.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('4c8ea4c6-059c-51a6-a266-a97566c16c0b', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_complex_causality_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f5453acd74971ad67d13fd7c24dbbf80bba84e338523e9cd14a1fbd3e50cf35e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e6490ae8-0765-58b4-864d-fe99fe8e3a50', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('4c8ea4c6-059c-51a6-a266-a97566c16c0b', 1), 'f5453acd74971ad67d13fd7c24dbbf80bba84e338523e9cd14a1fbd3e50cf35e',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/623a576bc63fe2341dd6bb44739e0b4846782e09889cee597521d621243d3037.mp3', 5093, '2026-09-14 06:05:57.346680', 'a4112d6bf214562a5dcfbb8a7d0c1c03a69ab1d3d35f82bd6394cb18d2615853', 'validated', '{"audio_key":"623a576bc63fe2341dd6bb44739e0b4846782e09889cee597521d621243d3037","entity_key":"e_complex_causality_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"a4112d6bf214562a5dcfbb8a7d0c1c03a69ab1d3d35f82bd6394cb18d2615853","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/623a576bc63fe2341dd6bb44739e0b4846782e09889cee597521d621243d3037.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_c1_public_forum_capstone_03 -> audio/generated/it-IT/utterances/628ba22a751fe97fe7331bb7bc6d8acf0b09c8bc90db08be1928c5b30a553982.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f29719fa-f12f-50a9-8a2c-bdd62fbb4129', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_c1_public_forum_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1d9e3090ee399b5154cf14f9db6e2acaa58946b40143cc0b2da7f8db53d3b884'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1be4796e-7fa0-520b-b58e-e1252759600d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f29719fa-f12f-50a9-8a2c-bdd62fbb4129', 1), '1d9e3090ee399b5154cf14f9db6e2acaa58946b40143cc0b2da7f8db53d3b884',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/628ba22a751fe97fe7331bb7bc6d8acf0b09c8bc90db08be1928c5b30a553982.mp3', 3578, '2026-09-14 06:05:57.964347', '2c7d959000e304c805cc9344e1d303ffcde6da1c2fcdaae185361c80077e084f', 'validated', '{"audio_key":"628ba22a751fe97fe7331bb7bc6d8acf0b09c8bc90db08be1928c5b30a553982","entity_key":"u_c1_public_forum_capstone_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2c7d959000e304c805cc9344e1d303ffcde6da1c2fcdaae185361c80077e084f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/628ba22a751fe97fe7331bb7bc6d8acf0b09c8bc90db08be1928c5b30a553982.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_concession_and_reframing_01 -> audio/generated/it-IT/utterances/65a42b5e71c6a2a8e4023df9e39fe87eba45adb9b8eec0310c577cf14f3c7436.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('05e03dd1-e36c-580d-bb2d-748c95631f2f', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_concession_and_reframing_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '455b007acb15035fe2b90c26dd05b81958d597e267b2ceaef6ed65ed8a818521'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('70cc82f2-727a-5dae-bf29-08ecb19b5955', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('05e03dd1-e36c-580d-bb2d-748c95631f2f', 1), '455b007acb15035fe2b90c26dd05b81958d597e267b2ceaef6ed65ed8a818521',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/65a42b5e71c6a2a8e4023df9e39fe87eba45adb9b8eec0310c577cf14f3c7436.mp3', 4440, '2026-09-14 06:05:58.638139', 'b8d57ff96433a352084207cabf94c4792a6057a4a8811e3860714d4f7d185f41', 'validated', '{"audio_key":"65a42b5e71c6a2a8e4023df9e39fe87eba45adb9b8eec0310c577cf14f3c7436","entity_key":"u_concession_and_reframing_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"b8d57ff96433a352084207cabf94c4792a6057a4a8811e3860714d4f7d185f41","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/65a42b5e71c6a2a8e4023df9e39fe87eba45adb9b8eec0310c577cf14f3c7436.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_complex_causality_04 -> audio/generated/it-IT/utterances/66bee054fbbfdc18dc01a7b4adc09112049b6eac8e61aae1cd7ac19de11b947d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c465153c-7686-534b-b1d1-5ff77fa1c540', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_complex_causality_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5e7792f2626a5bdc7ae31caadfc8f5c9b8f05a404f4163977a311e5c76ab7537'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7f1908dd-b438-5d48-ac3c-2296232a815d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c465153c-7686-534b-b1d1-5ff77fa1c540', 1), '5e7792f2626a5bdc7ae31caadfc8f5c9b8f05a404f4163977a311e5c76ab7537',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/66bee054fbbfdc18dc01a7b4adc09112049b6eac8e61aae1cd7ac19de11b947d.mp3', 3996, '2026-09-14 06:05:59.208665', '2f74e72b88cc67b06d34d6511abf29c1fcd870cfa70ec5ae9e8ee9e394adc2f5', 'validated', '{"audio_key":"66bee054fbbfdc18dc01a7b4adc09112049b6eac8e61aae1cd7ac19de11b947d","entity_key":"u_complex_causality_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2f74e72b88cc67b06d34d6511abf29c1fcd870cfa70ec5ae9e8ee9e394adc2f5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/66bee054fbbfdc18dc01a7b4adc09112049b6eac8e61aae1cd7ac19de11b947d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_complex_causality_02_listen -> audio/generated/it-IT/utterances/66bee054fbbfdc18dc01a7b4adc09112049b6eac8e61aae1cd7ac19de11b947d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('fe7c2c5c-066b-5cf9-aa76-d530c94c84d5', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_complex_causality_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5e7792f2626a5bdc7ae31caadfc8f5c9b8f05a404f4163977a311e5c76ab7537'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9c69d527-7688-5b24-aef9-a5b9e18f10a2', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('fe7c2c5c-066b-5cf9-aa76-d530c94c84d5', 1), '5e7792f2626a5bdc7ae31caadfc8f5c9b8f05a404f4163977a311e5c76ab7537',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/66bee054fbbfdc18dc01a7b4adc09112049b6eac8e61aae1cd7ac19de11b947d.mp3', 3996, '2026-09-14 06:05:59.208665', '2f74e72b88cc67b06d34d6511abf29c1fcd870cfa70ec5ae9e8ee9e394adc2f5', 'validated', '{"audio_key":"66bee054fbbfdc18dc01a7b4adc09112049b6eac8e61aae1cd7ac19de11b947d","entity_key":"e_complex_causality_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2f74e72b88cc67b06d34d6511abf29c1fcd870cfa70ec5ae9e8ee9e394adc2f5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/66bee054fbbfdc18dc01a7b4adc09112049b6eac8e61aae1cd7ac19de11b947d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_complex_causality_01 -> audio/generated/it-IT/utterances/67cde2934703b90218363c59dce3b120df79b433144031b2c3082326a8ec76f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f683bd45-ec36-5981-822d-eb9dc82c9e79', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_complex_causality_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fccbc0312dfacc1c295476ae8fe985dc3d21c6deb8c7b978a9a3a04bed212b4b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('11b4a37b-b99f-5cdb-8993-b3ce66a2a825', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f683bd45-ec36-5981-822d-eb9dc82c9e79', 1), 'fccbc0312dfacc1c295476ae8fe985dc3d21c6deb8c7b978a9a3a04bed212b4b',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/67cde2934703b90218363c59dce3b120df79b433144031b2c3082326a8ec76f9.mp3', 5276, '2026-09-14 06:06:00.089508', '5626f15e324b04f2d042fc44a3075a25e4131c781a1648b8728693dd624a3c12', 'validated', '{"audio_key":"67cde2934703b90218363c59dce3b120df79b433144031b2c3082326a8ec76f9","entity_key":"u_complex_causality_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"5626f15e324b04f2d042fc44a3075a25e4131c781a1648b8728693dd624a3c12","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/67cde2934703b90218363c59dce3b120df79b433144031b2c3082326a8ec76f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_reported_voices_01 -> audio/generated/it-IT/utterances/6ae21565ffdb0317de8a9bfa5b8f0c2fcffbba9d9970483ca524d5c56c101d8a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('537dd604-78c6-5104-82a8-d885b58e9016', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_reported_voices_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c1eff7e413867a7aaba22168104a2012ad6ae3cfc1f5ae540fe452ff9754977e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('560750dc-5b29-5d8a-9b2c-99ac8231d930', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('537dd604-78c6-5104-82a8-d885b58e9016', 1), 'c1eff7e413867a7aaba22168104a2012ad6ae3cfc1f5ae540fe452ff9754977e',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/6ae21565ffdb0317de8a9bfa5b8f0c2fcffbba9d9970483ca524d5c56c101d8a.mp3', 6765, '2026-09-14 06:06:00.828125', '905f34fec3fd2d40fca6f47dde5a1e446be93269c7391a104b6e9115f0ffe806', 'validated', '{"audio_key":"6ae21565ffdb0317de8a9bfa5b8f0c2fcffbba9d9970483ca524d5c56c101d8a","entity_key":"u_reported_voices_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"905f34fec3fd2d40fca6f47dde5a1e446be93269c7391a104b6e9115f0ffe806","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/6ae21565ffdb0317de8a9bfa5b8f0c2fcffbba9d9970483ca524d5c56c101d8a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_nominalization_and_density_04 -> audio/generated/it-IT/utterances/74482710defa6beb8f01411b14001b4b00f07310ed8ff6cf2bc77a0cd30a57ff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e8664802-c2d1-5ac0-86cc-775a592bcb2d', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_nominalization_and_density_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9305a772c2d2777c44148022aaec773f5af94a212566e245c2b36171ee97eec2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b0abd8df-63d5-5b05-9ae7-3e206f851210', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e8664802-c2d1-5ac0-86cc-775a592bcb2d', 1), '9305a772c2d2777c44148022aaec773f5af94a212566e245c2b36171ee97eec2',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/74482710defa6beb8f01411b14001b4b00f07310ed8ff6cf2bc77a0cd30a57ff.mp3', 5746, '2026-09-14 06:06:01.553962', '2bfc00b82a60ff38788a1f1dd854786849c4369853e208582aaee5745f7b3f45', 'validated', '{"audio_key":"74482710defa6beb8f01411b14001b4b00f07310ed8ff6cf2bc77a0cd30a57ff","entity_key":"u_nominalization_and_density_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2bfc00b82a60ff38788a1f1dd854786849c4369853e208582aaee5745f7b3f45","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/74482710defa6beb8f01411b14001b4b00f07310ed8ff6cf2bc77a0cd30a57ff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_nominalization_and_density_02_listen -> audio/generated/it-IT/utterances/74482710defa6beb8f01411b14001b4b00f07310ed8ff6cf2bc77a0cd30a57ff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ad2336eb-65eb-5f07-bba5-79842a8b0e7b', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_nominalization_and_density_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9305a772c2d2777c44148022aaec773f5af94a212566e245c2b36171ee97eec2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('34bd7b06-eff3-5961-81e9-278abdeccbbd', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ad2336eb-65eb-5f07-bba5-79842a8b0e7b', 1), '9305a772c2d2777c44148022aaec773f5af94a212566e245c2b36171ee97eec2',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/74482710defa6beb8f01411b14001b4b00f07310ed8ff6cf2bc77a0cd30a57ff.mp3', 5746, '2026-09-14 06:06:01.553962', '2bfc00b82a60ff38788a1f1dd854786849c4369853e208582aaee5745f7b3f45', 'validated', '{"audio_key":"74482710defa6beb8f01411b14001b4b00f07310ed8ff6cf2bc77a0cd30a57ff","entity_key":"e_nominalization_and_density_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2bfc00b82a60ff38788a1f1dd854786849c4369853e208582aaee5745f7b3f45","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/74482710defa6beb8f01411b14001b4b00f07310ed8ff6cf2bc77a0cd30a57ff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_complex_causality_03 -> audio/generated/it-IT/utterances/7f8aa18fe147ecf2959aa46e9a8c2a41c137829db6a04ec8d7e729dfb566d625.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3cfb61f7-a9f3-5506-825b-7f7caf813f7c', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_complex_causality_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4e96218f4212624785342f73b9d48d73624cedc50d2af11ab2ba2aa0a41345e8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c067d547-3f7f-54ba-b2c7-c7406ee9863d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3cfb61f7-a9f3-5506-825b-7f7caf813f7c', 1), '4e96218f4212624785342f73b9d48d73624cedc50d2af11ab2ba2aa0a41345e8',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/7f8aa18fe147ecf2959aa46e9a8c2a41c137829db6a04ec8d7e729dfb566d625.mp3', 5276, '2026-09-14 06:06:02.274111', 'dca1743905a7ed8e7c657551d18a541fc466a4fe626a4c2da6e4576e905d3bee', 'validated', '{"audio_key":"7f8aa18fe147ecf2959aa46e9a8c2a41c137829db6a04ec8d7e729dfb566d625","entity_key":"u_complex_causality_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"dca1743905a7ed8e7c657551d18a541fc466a4fe626a4c2da6e4576e905d3bee","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/7f8aa18fe147ecf2959aa46e9a8c2a41c137829db6a04ec8d7e729dfb566d625.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_concession_and_reframing_03 -> audio/generated/it-IT/utterances/86df799780793772a27fc8d7578735cd41bd8c562b70985ca8016875689ebf9b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('444fc692-3144-5736-bf3b-b6804693e6be', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_concession_and_reframing_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9697e6b08de405cda32d554a8d6390a545e7364855b6991e72a4163138f6c3d3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d75cff3f-f261-52ee-8782-c2f46b992221', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('444fc692-3144-5736-bf3b-b6804693e6be', 1), '9697e6b08de405cda32d554a8d6390a545e7364855b6991e72a4163138f6c3d3',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/86df799780793772a27fc8d7578735cd41bd8c562b70985ca8016875689ebf9b.mp3', 4858, '2026-09-14 06:06:02.936479', 'e58ef8560cad02733f4b476ff2f1b8845fde333e066e76c0683ae7ecd51ac09d', 'validated', '{"audio_key":"86df799780793772a27fc8d7578735cd41bd8c562b70985ca8016875689ebf9b","entity_key":"u_concession_and_reframing_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e58ef8560cad02733f4b476ff2f1b8845fde333e066e76c0683ae7ecd51ac09d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/86df799780793772a27fc8d7578735cd41bd8c562b70985ca8016875689ebf9b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_mediation_and_synthesis_02 -> audio/generated/it-IT/utterances/96b45489e6a7bc3502363fdd7cd3b592df5382f90f5de127e0718a7eb64e2236.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('648f9f4d-63e4-505d-abbc-54ea62542f76', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_mediation_and_synthesis_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b7e922dd8181fc64d262549e8606261354b8251f96f5e2fa964965752559ca2b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0b89280c-776b-54e4-b93c-b7fafab4679b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('648f9f4d-63e4-505d-abbc-54ea62542f76', 1), 'b7e922dd8181fc64d262549e8606261354b8251f96f5e2fa964965752559ca2b',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/96b45489e6a7bc3502363fdd7cd3b592df5382f90f5de127e0718a7eb64e2236.mp3', 3840, '2026-09-14 06:06:03.547981', '1159757f5bdf05d39df79e1fc0351515113654a3e15c4558b8813803c11b580b', 'validated', '{"audio_key":"96b45489e6a7bc3502363fdd7cd3b592df5382f90f5de127e0718a7eb64e2236","entity_key":"u_mediation_and_synthesis_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1159757f5bdf05d39df79e1fc0351515113654a3e15c4558b8813803c11b580b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/96b45489e6a7bc3502363fdd7cd3b592df5382f90f5de127e0718a7eb64e2236.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_mediation_and_synthesis_01_listen -> audio/generated/it-IT/utterances/96b45489e6a7bc3502363fdd7cd3b592df5382f90f5de127e0718a7eb64e2236.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('96509bcd-4d28-578a-96d9-f818505b7c7f', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_mediation_and_synthesis_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b7e922dd8181fc64d262549e8606261354b8251f96f5e2fa964965752559ca2b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7c79e1e5-894c-50fa-bea7-058b25e3a1b3', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('96509bcd-4d28-578a-96d9-f818505b7c7f', 1), 'b7e922dd8181fc64d262549e8606261354b8251f96f5e2fa964965752559ca2b',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/96b45489e6a7bc3502363fdd7cd3b592df5382f90f5de127e0718a7eb64e2236.mp3', 3840, '2026-09-14 06:06:03.547981', '1159757f5bdf05d39df79e1fc0351515113654a3e15c4558b8813803c11b580b', 'validated', '{"audio_key":"96b45489e6a7bc3502363fdd7cd3b592df5382f90f5de127e0718a7eb64e2236","entity_key":"e_mediation_and_synthesis_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1159757f5bdf05d39df79e1fc0351515113654a3e15c4558b8813803c11b580b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/96b45489e6a7bc3502363fdd7cd3b592df5382f90f5de127e0718a7eb64e2236.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_calibrated_stance_02 -> audio/generated/it-IT/utterances/97d61225c9e2710832f6678284b6d32e93c3fd9651149172df387c662fb16c90.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('80c961de-aad9-5c37-8f7e-4ff31de82319', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_calibrated_stance_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e9374c2a2f7ec2e3a47606f46031164cafd059056722810c760b9d191f50c4e0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b502e848-b95a-5d98-b02f-070c21dae2a1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('80c961de-aad9-5c37-8f7e-4ff31de82319', 1), 'e9374c2a2f7ec2e3a47606f46031164cafd059056722810c760b9d191f50c4e0',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/97d61225c9e2710832f6678284b6d32e93c3fd9651149172df387c662fb16c90.mp3', 4493, '2026-09-14 06:06:04.249678', '645cd986cc7db671756af35611ca9bed7feb6f30afed4e937948416d1cdc408c', 'validated', '{"audio_key":"97d61225c9e2710832f6678284b6d32e93c3fd9651149172df387c662fb16c90","entity_key":"u_calibrated_stance_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"645cd986cc7db671756af35611ca9bed7feb6f30afed4e937948416d1cdc408c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/97d61225c9e2710832f6678284b6d32e93c3fd9651149172df387c662fb16c90.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_calibrated_stance_01_listen -> audio/generated/it-IT/utterances/97d61225c9e2710832f6678284b6d32e93c3fd9651149172df387c662fb16c90.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('8fb9aa92-e986-5980-8080-08583b25c7e5', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_calibrated_stance_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e9374c2a2f7ec2e3a47606f46031164cafd059056722810c760b9d191f50c4e0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3027cddc-ada5-538e-a39e-ec82d6a02f4f', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('8fb9aa92-e986-5980-8080-08583b25c7e5', 1), 'e9374c2a2f7ec2e3a47606f46031164cafd059056722810c760b9d191f50c4e0',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/97d61225c9e2710832f6678284b6d32e93c3fd9651149172df387c662fb16c90.mp3', 4493, '2026-09-14 06:06:04.249678', '645cd986cc7db671756af35611ca9bed7feb6f30afed4e937948416d1cdc408c', 'validated', '{"audio_key":"97d61225c9e2710832f6678284b6d32e93c3fd9651149172df387c662fb16c90","entity_key":"e_calibrated_stance_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"645cd986cc7db671756af35611ca9bed7feb6f30afed4e937948416d1cdc408c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/97d61225c9e2710832f6678284b6d32e93c3fd9651149172df387c662fb16c90.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_mediation_and_synthesis_01 -> audio/generated/it-IT/utterances/a1680b81f47b342cf92ce243410d5f2714dfd176e5dab8cddaefae0c34ddef91.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0e995c16-04b6-51fc-9444-70c24cba2686', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_mediation_and_synthesis_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fc028e5660fcb6693428ec4a6fc9956084e258b34ba5516dfe6f0122cfa8f50d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1e512ca9-2cda-55bc-be28-d4e570886c40', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0e995c16-04b6-51fc-9444-70c24cba2686', 1), 'fc028e5660fcb6693428ec4a6fc9956084e258b34ba5516dfe6f0122cfa8f50d',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/a1680b81f47b342cf92ce243410d5f2714dfd176e5dab8cddaefae0c34ddef91.mp3', 5328, '2026-09-14 06:06:04.979275', '8e69559b8c0763eed81a6a40d897b6bdc4bb606481aef285fa0b711ad5dd9d1c', 'validated', '{"audio_key":"a1680b81f47b342cf92ce243410d5f2714dfd176e5dab8cddaefae0c34ddef91","entity_key":"u_mediation_and_synthesis_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8e69559b8c0763eed81a6a40d897b6bdc4bb606481aef285fa0b711ad5dd9d1c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/a1680b81f47b342cf92ce243410d5f2714dfd176e5dab8cddaefae0c34ddef91.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_idiomatic_reformulation_03 -> audio/generated/it-IT/utterances/a43d2a64ed15bac9b9595cd2893d09aeb573fcb5ad90e1acd462c1064ccf0df0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c7428a1f-e9dc-55f6-9492-f0fcd5340cfc', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_idiomatic_reformulation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b46e5bb8fcc7c0c7fcbf26af266647ac1aeffd49af817e64e4222e97bb12c3fb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5945d4a6-31d6-5405-8795-ce9f175b16b5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c7428a1f-e9dc-55f6-9492-f0fcd5340cfc', 1), 'b46e5bb8fcc7c0c7fcbf26af266647ac1aeffd49af817e64e4222e97bb12c3fb',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/a43d2a64ed15bac9b9595cd2893d09aeb573fcb5ad90e1acd462c1064ccf0df0.mp3', 4414, '2026-09-14 06:06:05.552193', '242b86127556c8b65e71871f110d1d7f5a336891798a3bad774eb55e96ee5757', 'validated', '{"audio_key":"a43d2a64ed15bac9b9595cd2893d09aeb573fcb5ad90e1acd462c1064ccf0df0","entity_key":"u_idiomatic_reformulation_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"242b86127556c8b65e71871f110d1d7f5a336891798a3bad774eb55e96ee5757","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/a43d2a64ed15bac9b9595cd2893d09aeb573fcb5ad90e1acd462c1064ccf0df0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_c1_public_forum_capstone_04 -> audio/generated/it-IT/utterances/a9e7b9eb56ab549c5b2f9b007e06cc895600c280d81ced0a99ebf448e7089d49.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3b98025f-d2e0-5d9e-a12a-c388331c900f', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_c1_public_forum_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3cfce7f13189fd44d6e207e6da1c2066639ed6b6413759fd242682abbceb7407'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4c7b4c76-a3ea-545a-8fbf-20fbac242962', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3b98025f-d2e0-5d9e-a12a-c388331c900f', 1), '3cfce7f13189fd44d6e207e6da1c2066639ed6b6413759fd242682abbceb7407',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/a9e7b9eb56ab549c5b2f9b007e06cc895600c280d81ced0a99ebf448e7089d49.mp3', 5198, '2026-09-14 06:06:06.366344', '7de188e685cb1c97cd092a7ca875c6816c68d1c5c597a290a03e22149fdd9920', 'validated', '{"audio_key":"a9e7b9eb56ab549c5b2f9b007e06cc895600c280d81ced0a99ebf448e7089d49","entity_key":"u_c1_public_forum_capstone_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"7de188e685cb1c97cd092a7ca875c6816c68d1c5c597a290a03e22149fdd9920","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/a9e7b9eb56ab549c5b2f9b007e06cc895600c280d81ced0a99ebf448e7089d49.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_c1_public_forum_capstone_02_listen -> audio/generated/it-IT/utterances/a9e7b9eb56ab549c5b2f9b007e06cc895600c280d81ced0a99ebf448e7089d49.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('8dacd5f1-76ba-5348-b3bc-fd56174c426e', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_c1_public_forum_capstone_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3cfce7f13189fd44d6e207e6da1c2066639ed6b6413759fd242682abbceb7407'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('473e683e-5f4a-5086-99ef-e15a37c49b3e', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('8dacd5f1-76ba-5348-b3bc-fd56174c426e', 1), '3cfce7f13189fd44d6e207e6da1c2066639ed6b6413759fd242682abbceb7407',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/a9e7b9eb56ab549c5b2f9b007e06cc895600c280d81ced0a99ebf448e7089d49.mp3', 5198, '2026-09-14 06:06:06.366344', '7de188e685cb1c97cd092a7ca875c6816c68d1c5c597a290a03e22149fdd9920', 'validated', '{"audio_key":"a9e7b9eb56ab549c5b2f9b007e06cc895600c280d81ced0a99ebf448e7089d49","entity_key":"e_c1_public_forum_capstone_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"7de188e685cb1c97cd092a7ca875c6816c68d1c5c597a290a03e22149fdd9920","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/a9e7b9eb56ab549c5b2f9b007e06cc895600c280d81ced0a99ebf448e7089d49.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_mediation_and_synthesis_04 -> audio/generated/it-IT/utterances/ac255c2740322c465abb9130faba89949fda9de527d7726640ac3de0ad891ffa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('97dccbf5-e906-51f2-89ac-6565eed2ad49', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_mediation_and_synthesis_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fd6bbd92dd71308ab90ed65c534563100ae65f3d77c53c73d81c7a40b6d1381b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c5276e2c-f41e-5e1b-aa9f-dde14ebb9d37', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('97dccbf5-e906-51f2-89ac-6565eed2ad49', 1), 'fd6bbd92dd71308ab90ed65c534563100ae65f3d77c53c73d81c7a40b6d1381b',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/ac255c2740322c465abb9130faba89949fda9de527d7726640ac3de0ad891ffa.mp3', 4728, '2026-09-14 06:06:06.952600', '43d0dbe5159ed44791206a6638b32d193454fdae6a37119618b8aa0093b8bebb', 'validated', '{"audio_key":"ac255c2740322c465abb9130faba89949fda9de527d7726640ac3de0ad891ffa","entity_key":"u_mediation_and_synthesis_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"43d0dbe5159ed44791206a6638b32d193454fdae6a37119618b8aa0093b8bebb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/ac255c2740322c465abb9130faba89949fda9de527d7726640ac3de0ad891ffa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_mediation_and_synthesis_02_listen -> audio/generated/it-IT/utterances/ac255c2740322c465abb9130faba89949fda9de527d7726640ac3de0ad891ffa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('d1ae656b-3883-54e4-8b77-ce1c523ad43a', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_mediation_and_synthesis_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fd6bbd92dd71308ab90ed65c534563100ae65f3d77c53c73d81c7a40b6d1381b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fd2d0d73-07f7-5db1-b0d6-f5d37b0b3e1c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('d1ae656b-3883-54e4-8b77-ce1c523ad43a', 1), 'fd6bbd92dd71308ab90ed65c534563100ae65f3d77c53c73d81c7a40b6d1381b',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/ac255c2740322c465abb9130faba89949fda9de527d7726640ac3de0ad891ffa.mp3', 4728, '2026-09-14 06:06:06.952600', '43d0dbe5159ed44791206a6638b32d193454fdae6a37119618b8aa0093b8bebb', 'validated', '{"audio_key":"ac255c2740322c465abb9130faba89949fda9de527d7726640ac3de0ad891ffa","entity_key":"e_mediation_and_synthesis_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"43d0dbe5159ed44791206a6638b32d193454fdae6a37119618b8aa0093b8bebb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/ac255c2740322c465abb9130faba89949fda9de527d7726640ac3de0ad891ffa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_nominalization_and_density_01 -> audio/generated/it-IT/utterances/adfe417151a76b7103478e466fca3dd88a23d66301fb3826ce1a9294e0a14323.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5f3537d9-b73e-533f-b9ef-8c78a80086ba', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_nominalization_and_density_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c2230d605cbfb54bfa6d909cf42562da15e2041b38db0a3b52acd9ab8e66e53b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('04c4a30a-64a1-51e7-944b-7735d0722489', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5f3537d9-b73e-533f-b9ef-8c78a80086ba', 1), 'c2230d605cbfb54bfa6d909cf42562da15e2041b38db0a3b52acd9ab8e66e53b',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/adfe417151a76b7103478e466fca3dd88a23d66301fb3826ce1a9294e0a14323.mp3', 4257, '2026-09-14 06:06:07.628135', '5523ff1d725d787cb68a6a8c68380ef17c1a17bf5a1a0e38cb6077d7c8901b93', 'validated', '{"audio_key":"adfe417151a76b7103478e466fca3dd88a23d66301fb3826ce1a9294e0a14323","entity_key":"u_nominalization_and_density_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"5523ff1d725d787cb68a6a8c68380ef17c1a17bf5a1a0e38cb6077d7c8901b93","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/adfe417151a76b7103478e466fca3dd88a23d66301fb3826ce1a9294e0a14323.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_calibrated_stance_04 -> audio/generated/it-IT/utterances/ae35ea6c1c1a080d4386769d4b10ca2e7bccaecb48268cf371790b22ed15d9d4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3c687e50-c0b9-5122-b2fa-42370be7ec7c', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_calibrated_stance_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '109e269618a2cc32b02182b6547554586dab5da910021088e5b629ac7483152f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a7dd913c-5dce-585e-8860-162050f08d0c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3c687e50-c0b9-5122-b2fa-42370be7ec7c', 1), '109e269618a2cc32b02182b6547554586dab5da910021088e5b629ac7483152f',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/ae35ea6c1c1a080d4386769d4b10ca2e7bccaecb48268cf371790b22ed15d9d4.mp3', 4022, '2026-09-14 06:06:08.181731', 'd1ff1dad2ff30076e3b7765f86d1633e8d4adc35ad63118ec7d5c2eceb226455', 'validated', '{"audio_key":"ae35ea6c1c1a080d4386769d4b10ca2e7bccaecb48268cf371790b22ed15d9d4","entity_key":"u_calibrated_stance_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d1ff1dad2ff30076e3b7765f86d1633e8d4adc35ad63118ec7d5c2eceb226455","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/ae35ea6c1c1a080d4386769d4b10ca2e7bccaecb48268cf371790b22ed15d9d4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_calibrated_stance_02_listen -> audio/generated/it-IT/utterances/ae35ea6c1c1a080d4386769d4b10ca2e7bccaecb48268cf371790b22ed15d9d4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('85e7e82a-c029-5a20-b38b-01fef670823e', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_calibrated_stance_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '109e269618a2cc32b02182b6547554586dab5da910021088e5b629ac7483152f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d7a1ec15-942a-5312-b3ff-e0d17291dee8', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('85e7e82a-c029-5a20-b38b-01fef670823e', 1), '109e269618a2cc32b02182b6547554586dab5da910021088e5b629ac7483152f',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/ae35ea6c1c1a080d4386769d4b10ca2e7bccaecb48268cf371790b22ed15d9d4.mp3', 4022, '2026-09-14 06:06:08.181731', 'd1ff1dad2ff30076e3b7765f86d1633e8d4adc35ad63118ec7d5c2eceb226455', 'validated', '{"audio_key":"ae35ea6c1c1a080d4386769d4b10ca2e7bccaecb48268cf371790b22ed15d9d4","entity_key":"e_calibrated_stance_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d1ff1dad2ff30076e3b7765f86d1633e8d4adc35ad63118ec7d5c2eceb226455","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/ae35ea6c1c1a080d4386769d4b10ca2e7bccaecb48268cf371790b22ed15d9d4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_reported_voices_04 -> audio/generated/it-IT/utterances/d663cb05c5149cf26dfb539fcb7884ab30eec009e82747d02e9e235a45369043.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('cbfaed69-4168-5b9d-af21-70a333d6aa07', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_reported_voices_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '28ed5ebefec61990b1556220cae711865d535a2334bdff6a8a2f718de62f683c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ed4a7f7b-46da-5e4d-b11c-51f8bf370fef', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('cbfaed69-4168-5b9d-af21-70a333d6aa07', 1), '28ed5ebefec61990b1556220cae711865d535a2334bdff6a8a2f718de62f683c',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/d663cb05c5149cf26dfb539fcb7884ab30eec009e82747d02e9e235a45369043.mp3', 4858, '2026-09-14 06:06:09.006038', 'fc83e1e4e37c705ed12559253d834295c901fb34b51732eea27e486141ece366', 'validated', '{"audio_key":"d663cb05c5149cf26dfb539fcb7884ab30eec009e82747d02e9e235a45369043","entity_key":"u_reported_voices_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"fc83e1e4e37c705ed12559253d834295c901fb34b51732eea27e486141ece366","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/d663cb05c5149cf26dfb539fcb7884ab30eec009e82747d02e9e235a45369043.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_reported_voices_02_listen -> audio/generated/it-IT/utterances/d663cb05c5149cf26dfb539fcb7884ab30eec009e82747d02e9e235a45369043.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('a96953be-76cf-55a2-8ceb-b46db21d8606', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_reported_voices_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '28ed5ebefec61990b1556220cae711865d535a2334bdff6a8a2f718de62f683c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1c73c81f-fb2f-56d6-86ce-ce4b579a30d4', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('a96953be-76cf-55a2-8ceb-b46db21d8606', 1), '28ed5ebefec61990b1556220cae711865d535a2334bdff6a8a2f718de62f683c',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/d663cb05c5149cf26dfb539fcb7884ab30eec009e82747d02e9e235a45369043.mp3', 4858, '2026-09-14 06:06:09.006038', 'fc83e1e4e37c705ed12559253d834295c901fb34b51732eea27e486141ece366', 'validated', '{"audio_key":"d663cb05c5149cf26dfb539fcb7884ab30eec009e82747d02e9e235a45369043","entity_key":"e_reported_voices_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"fc83e1e4e37c705ed12559253d834295c901fb34b51732eea27e486141ece366","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/d663cb05c5149cf26dfb539fcb7884ab30eec009e82747d02e9e235a45369043.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_register_flexibility_03 -> audio/generated/it-IT/utterances/e7ab71c4139a5f45bc7abcd7d6c4e9e2efa4f861ae157a174e3c3b5b93dd93c3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2c8bc4b4-a573-5fc0-b31d-bce8b97432c0', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_register_flexibility_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2209100b212779939000d67ece01a90d96e53dab5192bb3c6f7cce90885786f7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7acaf643-73f0-5fb2-8f60-99d5637c6b51', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2c8bc4b4-a573-5fc0-b31d-bce8b97432c0', 1), '2209100b212779939000d67ece01a90d96e53dab5192bb3c6f7cce90885786f7',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/e7ab71c4139a5f45bc7abcd7d6c4e9e2efa4f861ae157a174e3c3b5b93dd93c3.mp3', 3004, '2026-09-14 06:06:09.292417', '231772db81dde8b2179c221c7e9ae84f845ed400df4f4ed5a54ad2e5d1642615', 'validated', '{"audio_key":"e7ab71c4139a5f45bc7abcd7d6c4e9e2efa4f861ae157a174e3c3b5b93dd93c3","entity_key":"u_register_flexibility_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"231772db81dde8b2179c221c7e9ae84f845ed400df4f4ed5a54ad2e5d1642615","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/e7ab71c4139a5f45bc7abcd7d6c4e9e2efa4f861ae157a174e3c3b5b93dd93c3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_register_flexibility_01 -> audio/generated/it-IT/utterances/eb931d9aba6fec61ad1b80cde3108f78ded487f87d29fd251f974f6504082544.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f7860d27-0897-53a3-97e5-ab1e6762001b', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_register_flexibility_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aca560ffa9e30e97d865d80e8300c45fe18803e92821a4daefb7f80ad2609565'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8d6f5833-0f11-5a17-afeb-0ff88a141135', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f7860d27-0897-53a3-97e5-ab1e6762001b', 1), 'aca560ffa9e30e97d865d80e8300c45fe18803e92821a4daefb7f80ad2609565',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/eb931d9aba6fec61ad1b80cde3108f78ded487f87d29fd251f974f6504082544.mp3', 5433, '2026-09-14 06:06:10.469977', 'e612fa96a09a3e58f537198a89c83c9f3af0e3f053406b5c64f00ece9354267d', 'validated', '{"audio_key":"eb931d9aba6fec61ad1b80cde3108f78ded487f87d29fd251f974f6504082544","entity_key":"u_register_flexibility_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e612fa96a09a3e58f537198a89c83c9f3af0e3f053406b5c64f00ece9354267d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/eb931d9aba6fec61ad1b80cde3108f78ded487f87d29fd251f974f6504082544.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_nominalization_and_density_03 -> audio/generated/it-IT/utterances/ef60f6625efc04ea67565fd0de575412f8c2171dff548283c1e1634cc0d3dc38.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('532e2cae-d924-52e1-9737-3844c231480b', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_nominalization_and_density_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da748db2372c15ed9b2421b3cbb1660e8a5eca18d86c4b83ea279ff794919c68'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eaa36b70-1939-5b2e-b966-3604a64e4c6e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('532e2cae-d924-52e1-9737-3844c231480b', 1), 'da748db2372c15ed9b2421b3cbb1660e8a5eca18d86c4b83ea279ff794919c68',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/ef60f6625efc04ea67565fd0de575412f8c2171dff548283c1e1634cc0d3dc38.mp3', 4545, '2026-09-14 06:06:10.618216', 'fc51070a0b785b887cd2091521412c1546b26598e1bf6305f9b3b8c6131ebd65', 'validated', '{"audio_key":"ef60f6625efc04ea67565fd0de575412f8c2171dff548283c1e1634cc0d3dc38","entity_key":"u_nominalization_and_density_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"fc51070a0b785b887cd2091521412c1546b26598e1bf6305f9b3b8c6131ebd65","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/ef60f6625efc04ea67565fd0de575412f8c2171dff548283c1e1634cc0d3dc38.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_calibrated_stance_01 -> audio/generated/it-IT/utterances/f19ae84a24fbec986c54e4c03e967b3edef2302dad75cdf41da5e124fa77091f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ac4099f5-91cf-547c-aeb3-039ff192ff85', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_calibrated_stance_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5ea57784554738f8ee79551c3a064879362313dbfa4e2e5bfaa79a4df7503f83'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d8101ac0-225f-5bb7-89ec-21b3ca8e4f67', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ac4099f5-91cf-547c-aeb3-039ff192ff85', 1), '5ea57784554738f8ee79551c3a064879362313dbfa4e2e5bfaa79a4df7503f83',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/f19ae84a24fbec986c54e4c03e967b3edef2302dad75cdf41da5e124fa77091f.mp3', 4780, '2026-09-14 06:06:11.853839', '704678ccc7cb12891043ce0da553506c9beb6c30aff2f8ad2014ae3888982a20', 'validated', '{"audio_key":"f19ae84a24fbec986c54e4c03e967b3edef2302dad75cdf41da5e124fa77091f","entity_key":"u_calibrated_stance_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"704678ccc7cb12891043ce0da553506c9beb6c30aff2f8ad2014ae3888982a20","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/f19ae84a24fbec986c54e4c03e967b3edef2302dad75cdf41da5e124fa77091f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_idiomatic_reformulation_02 -> audio/generated/it-IT/utterances/f1f9e1ed82c6f6774f0a06a578e10be48353fac748556167aed1c258cdb87be1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6f400eee-dd8c-5bb4-8415-fe1ad6b3975d', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_idiomatic_reformulation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '81d11b820742db585c20c4ff7c2998d629235a982b9ae76b6f888202bc41bdd0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f9fbb29e-3403-5c42-a7f7-36df22e02786', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6f400eee-dd8c-5bb4-8415-fe1ad6b3975d', 1), '81d11b820742db585c20c4ff7c2998d629235a982b9ae76b6f888202bc41bdd0',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/f1f9e1ed82c6f6774f0a06a578e10be48353fac748556167aed1c258cdb87be1.mp3', 4832, '2026-09-14 06:06:12.058539', 'f5b1b43ab3a431ce0bb6cfd34a6ef930026af002c1d627b2356ff728ff69c2e2', 'validated', '{"audio_key":"f1f9e1ed82c6f6774f0a06a578e10be48353fac748556167aed1c258cdb87be1","entity_key":"u_idiomatic_reformulation_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f5b1b43ab3a431ce0bb6cfd34a6ef930026af002c1d627b2356ff728ff69c2e2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/f1f9e1ed82c6f6774f0a06a578e10be48353fac748556167aed1c258cdb87be1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_idiomatic_reformulation_01_listen -> audio/generated/it-IT/utterances/f1f9e1ed82c6f6774f0a06a578e10be48353fac748556167aed1c258cdb87be1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('f4087b43-ad3d-5073-aaa1-8c11752d8593', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_idiomatic_reformulation_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '81d11b820742db585c20c4ff7c2998d629235a982b9ae76b6f888202bc41bdd0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9e043e0a-c55e-5b92-b206-bf87d23ddba2', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('f4087b43-ad3d-5073-aaa1-8c11752d8593', 1), '81d11b820742db585c20c4ff7c2998d629235a982b9ae76b6f888202bc41bdd0',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/f1f9e1ed82c6f6774f0a06a578e10be48353fac748556167aed1c258cdb87be1.mp3', 4832, '2026-09-14 06:06:12.058539', 'f5b1b43ab3a431ce0bb6cfd34a6ef930026af002c1d627b2356ff728ff69c2e2', 'validated', '{"audio_key":"f1f9e1ed82c6f6774f0a06a578e10be48353fac748556167aed1c258cdb87be1","entity_key":"e_idiomatic_reformulation_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f5b1b43ab3a431ce0bb6cfd34a6ef930026af002c1d627b2356ff728ff69c2e2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/f1f9e1ed82c6f6774f0a06a578e10be48353fac748556167aed1c258cdb87be1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_information_structure_03 -> audio/generated/it-IT/utterances/f65b0858b055599519377c1cd994b912facf3178bef6913b3cdaca3fc8d0474e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b5e3ea1f-cd97-5eb5-99e1-89581f2755ae', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_information_structure_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '93ca21edb36a42c5027c5f5718f16a145385e3f0d65633709583c1a1fd8450aa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fd97e7ec-e143-5645-836b-dd7da8d23be5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b5e3ea1f-cd97-5eb5-99e1-89581f2755ae', 1), '93ca21edb36a42c5027c5f5718f16a145385e3f0d65633709583c1a1fd8450aa',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/f65b0858b055599519377c1cd994b912facf3178bef6913b3cdaca3fc8d0474e.mp3', 4440, '2026-09-14 06:06:13.144662', '9290d043d5c7cea01017cc435de2c09ec67108e46d08bd8e4364cbe9be6316e9', 'validated', '{"audio_key":"f65b0858b055599519377c1cd994b912facf3178bef6913b3cdaca3fc8d0474e","entity_key":"u_information_structure_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"9290d043d5c7cea01017cc435de2c09ec67108e46d08bd8e4364cbe9be6316e9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/f65b0858b055599519377c1cd994b912facf3178bef6913b3cdaca3fc8d0474e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_concession_and_reframing_02 -> audio/generated/it-IT/utterances/fd9e8ee2b0e675694be6a504b2e10b916d67230bb64fe6dce5a79122f3a1c988.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('171472b7-256d-541e-b525-ca330abf3e2d', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_concession_and_reframing_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c3758654df03cf8a7eae02df6e821a3e2e9a823395c25c5a3a2a52910276f32b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('869d554d-acc2-5782-a56d-a120028c0e47', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('171472b7-256d-541e-b525-ca330abf3e2d', 1), 'c3758654df03cf8a7eae02df6e821a3e2e9a823395c25c5a3a2a52910276f32b',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/fd9e8ee2b0e675694be6a504b2e10b916d67230bb64fe6dce5a79122f3a1c988.mp3', 4858, '2026-09-14 06:06:13.396291', '4eab861fde03cf176173df776bcb011f719f5d3631825df178818d181c765712', 'validated', '{"audio_key":"fd9e8ee2b0e675694be6a504b2e10b916d67230bb64fe6dce5a79122f3a1c988","entity_key":"u_concession_and_reframing_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"4eab861fde03cf176173df776bcb011f719f5d3631825df178818d181c765712","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/fd9e8ee2b0e675694be6a504b2e10b916d67230bb64fe6dce5a79122f3a1c988.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_concession_and_reframing_01_listen -> audio/generated/it-IT/utterances/fd9e8ee2b0e675694be6a504b2e10b916d67230bb64fe6dce5a79122f3a1c988.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('df695f0e-f741-59b6-9d8e-61ff59e3f8dd', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_concession_and_reframing_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c3758654df03cf8a7eae02df6e821a3e2e9a823395c25c5a3a2a52910276f32b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2ec09852-a177-5e1c-937d-42c36766375a', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('df695f0e-f741-59b6-9d8e-61ff59e3f8dd', 1), 'c3758654df03cf8a7eae02df6e821a3e2e9a823395c25c5a3a2a52910276f32b',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/fd9e8ee2b0e675694be6a504b2e10b916d67230bb64fe6dce5a79122f3a1c988.mp3', 4858, '2026-09-14 06:06:13.396291', '4eab861fde03cf176173df776bcb011f719f5d3631825df178818d181c765712', 'validated', '{"audio_key":"fd9e8ee2b0e675694be6a504b2e10b916d67230bb64fe6dce5a79122f3a1c988","entity_key":"e_concession_and_reframing_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"4eab861fde03cf176173df776bcb011f719f5d3631825df178818d181c765712","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/fd9e8ee2b0e675694be6a504b2e10b916d67230bb64fe6dce5a79122f3a1c988.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_idiomatic_reformulation_01 -> audio/generated/it-IT/utterances/fe28f7d301c3742ed615c891415ace3db41d66580ee162e934e0185b2c5a43c4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c881c5d5-f6c0-5ffa-91be-c178708e309a', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_idiomatic_reformulation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2e370db4ffcab199a8fdf2bf0b22b86745ee551f579a41fd31478919f3141c15'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8b670358-4218-545a-9d00-feb5a228abf4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c881c5d5-f6c0-5ffa-91be-c178708e309a', 1), '2e370db4ffcab199a8fdf2bf0b22b86745ee551f579a41fd31478919f3141c15',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/fe28f7d301c3742ed615c891415ace3db41d66580ee162e934e0185b2c5a43c4.mp3', 5015, '2026-09-14 06:06:14.565109', 'f5d4f5e88688b5c78cb0f6a02e95161a97b179b4064d3baae63dbf15a710888b', 'validated', '{"audio_key":"fe28f7d301c3742ed615c891415ace3db41d66580ee162e934e0185b2c5a43c4","entity_key":"u_idiomatic_reformulation_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f5d4f5e88688b5c78cb0f6a02e95161a97b179b4064d3baae63dbf15a710888b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/fe28f7d301c3742ed615c891415ace3db41d66580ee162e934e0185b2c5a43c4.mp3"}'
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

-- Generated audio link import for de-DE B1
-- Source manifest: audio/manifests/de/B1-batch-1.json
-- Generated rows: 330
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'de' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'de-DE' LIMIT 1);
START TRANSACTION;

-- d_work_experience_02:1 -> audio/generated/de-DE/dialogues/002ae852426f49bdc7515cb9512fc861aba014013ff2d6e50ca6f65a9c29993f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('36894277-15f7-50d6-8358-f24f4cc65500', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_work_experience_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '706a37ec65b5e85851f3b91ea740b923ef02d3d8f49f7130fe3148d86923213f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('12979133-85bd-5fca-b229-fa48a3c5d438', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('36894277-15f7-50d6-8358-f24f4cc65500', 1), '706a37ec65b5e85851f3b91ea740b923ef02d3d8f49f7130fe3148d86923213f',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/002ae852426f49bdc7515cb9512fc861aba014013ff2d6e50ca6f65a9c29993f.mp3', 1933, '2026-09-13 05:53:28.525269', '0f6469020d5179a9baffd3d328aa8c832e0cbe911cfe48be00ee2a05ff558b04', 'validated', '{"audio_key":"002ae852426f49bdc7515cb9512fc861aba014013ff2d6e50ca6f65a9c29993f","entity_key":"d_work_experience_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"0f6469020d5179a9baffd3d328aa8c832e0cbe911cfe48be00ee2a05ff558b04","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/002ae852426f49bdc7515cb9512fc861aba014013ff2d6e50ca6f65a9c29993f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_study_goals_03:1 -> audio/generated/de-DE/dialogues/00e0b87b14bb7413cb356daf6b4cba5c6c9c93cb48f086b0ccd23c708d10abe8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c34bc8dc-c939-56ba-8560-ce0c6c63373a', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_study_goals_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '16193f2d8137f277f8d33b6f103ef6b49d4512cce3c135a82eb9799a4006aa8b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0b4b0605-6ded-57ef-8a5d-b57b9e53c647', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c34bc8dc-c939-56ba-8560-ce0c6c63373a', 1), '16193f2d8137f277f8d33b6f103ef6b49d4512cce3c135a82eb9799a4006aa8b',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/00e0b87b14bb7413cb356daf6b4cba5c6c9c93cb48f086b0ccd23c708d10abe8.mp3', 2220, '2026-09-13 05:53:28.580092', 'a4e9e45e98d2fc3d5ac072a1a01ae5835b671796cc07cf1c656a41ef84b20537', 'validated', '{"audio_key":"00e0b87b14bb7413cb356daf6b4cba5c6c9c93cb48f086b0ccd23c708d10abe8","entity_key":"d_study_goals_03:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"a4e9e45e98d2fc3d5ac072a1a01ae5835b671796cc07cf1c656a41ef84b20537","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/00e0b87b14bb7413cb356daf6b4cba5c6c9c93cb48f086b0ccd23c708d10abe8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_experiences_03:4 -> audio/generated/de-DE/dialogues/02184c1cdc49698cacada0bffc51c14f47300f8710e173739c0975d71bda76e4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('51f665fe-bb05-5504-98b6-de3deed1bf51', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_experiences_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7d3ff015423365cad677d6163261fda41ccaccd4b4936f975f68f38f0c996e75'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('62e079b7-6d81-599b-8dc1-f8ddcc41aabd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('51f665fe-bb05-5504-98b6-de3deed1bf51', 1), '7d3ff015423365cad677d6163261fda41ccaccd4b4936f975f68f38f0c996e75',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/02184c1cdc49698cacada0bffc51c14f47300f8710e173739c0975d71bda76e4.mp3', 4623, '2026-09-13 05:53:29.904763', 'cb596baf0391419e7b6cdd44f3cfdfbcd66c30c23cc604b8e55fe6d295450129', 'validated', '{"audio_key":"02184c1cdc49698cacada0bffc51c14f47300f8710e173739c0975d71bda76e4","entity_key":"d_travel_experiences_03:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"cb596baf0391419e7b6cdd44f3cfdfbcd66c30c23cc604b8e55fe6d295450129","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/02184c1cdc49698cacada0bffc51c14f47300f8710e173739c0975d71bda76e4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_experiences_02:1 -> audio/generated/de-DE/dialogues/033de8c78dc4cb39471eb15d335bd63cb62c767de441dfb3770a471175ecd87d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e6710c05-db2d-5f9f-85a5-0849fa052941', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_experiences_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ae80006ab216f5b8440642e553d73a0564f0a5691dfde6e346d48314f937d2d3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('be3a5fc2-5ece-53e0-b16f-c91dda477c59', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e6710c05-db2d-5f9f-85a5-0849fa052941', 1), 'ae80006ab216f5b8440642e553d73a0564f0a5691dfde6e346d48314f937d2d3',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/033de8c78dc4cb39471eb15d335bd63cb62c767de441dfb3770a471175ecd87d.mp3', 3186, '2026-09-13 05:53:30.046940', '715666962c5b102b53e8534eedf3eb61daa855f6461503a077b785d1d622136d', 'validated', '{"audio_key":"033de8c78dc4cb39471eb15d335bd63cb62c767de441dfb3770a471175ecd87d","entity_key":"d_travel_experiences_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"715666962c5b102b53e8534eedf3eb61daa855f6461503a077b785d1d622136d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/033de8c78dc4cb39471eb15d335bd63cb62c767de441dfb3770a471175ecd87d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_technology_02:4 -> audio/generated/de-DE/dialogues/048eeae7334fd6693eb19372c720c191742caa87c4ac4f85faab10f30b0baacb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e47c2290-c946-5863-a61a-5b1ca7b84c7d', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_technology_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0a0f931aa594ccf72ff1a454e16dc21074d8ab255a705068b91d08bdf2a481f5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6a66d4ca-9063-53f6-ac3e-cfdb1cdfa7af', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e47c2290-c946-5863-a61a-5b1ca7b84c7d', 1), '0a0f931aa594ccf72ff1a454e16dc21074d8ab255a705068b91d08bdf2a481f5',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/048eeae7334fd6693eb19372c720c191742caa87c4ac4f85faab10f30b0baacb.mp3', 4205, '2026-09-13 05:53:31.162578', '39c6d432e000da2d0de3bbfc3c669e14a1679e70c98ff631449aed1d67ba5eb5', 'validated', '{"audio_key":"048eeae7334fd6693eb19372c720c191742caa87c4ac4f85faab10f30b0baacb","entity_key":"d_media_technology_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"39c6d432e000da2d0de3bbfc3c669e14a1679e70c98ff631449aed1d67ba5eb5","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/048eeae7334fd6693eb19372c720c191742caa87c4ac4f85faab10f30b0baacb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_neighborhood_community_03:3 -> audio/generated/de-DE/dialogues/0543c06dcfc03202473c1d44dd8c15e4510808893b33ccf363795a18fb37ebdd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('96e6cbb7-e3c7-5ece-8081-df41d8c9feba', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_neighborhood_community_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f9051da3f64db1f0c6accc44a3f0b044f2db492af4de391047270dee0dfe2ab1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('de409ce1-358e-5217-8761-0db206a35618', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('96e6cbb7-e3c7-5ece-8081-df41d8c9feba', 1), 'f9051da3f64db1f0c6accc44a3f0b044f2db492af4de391047270dee0dfe2ab1',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0543c06dcfc03202473c1d44dd8c15e4510808893b33ccf363795a18fb37ebdd.mp3', 3422, '2026-09-13 05:53:31.238550', '85a11affc30687ed814172995535e7982015726c5cd77d6fc05c5fe56abf4d62', 'validated', '{"audio_key":"0543c06dcfc03202473c1d44dd8c15e4510808893b33ccf363795a18fb37ebdd","entity_key":"d_neighborhood_community_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"85a11affc30687ed814172995535e7982015726c5cd77d6fc05c5fe56abf4d62","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/0543c06dcfc03202473c1d44dd8c15e4510808893b33ccf363795a18fb37ebdd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_agree_disagree_01:2 -> audio/generated/de-DE/dialogues/05633e58a7a1c91d55bff48a5a0953857185cbca954e141a53f345f8b2f5cb4d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f59ad618-09b2-5e9d-9204-d1d2de36d53b', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_agree_disagree_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6bcd232601274ee4db64f27675d224758f098fe71c13a99d69a36d11250fbe21'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('70e28062-ade3-5a70-b326-18ee5b8bd2a9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f59ad618-09b2-5e9d-9204-d1d2de36d53b', 1), '6bcd232601274ee4db64f27675d224758f098fe71c13a99d69a36d11250fbe21',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/05633e58a7a1c91d55bff48a5a0953857185cbca954e141a53f345f8b2f5cb4d.mp3', 3578, '2026-09-13 05:53:32.590453', 'a979b99e270977bb4617845c65574dc7cf7cd3aee0e0e0882bca85799cf4d45e', 'validated', '{"audio_key":"05633e58a7a1c91d55bff48a5a0953857185cbca954e141a53f345f8b2f5cb4d","entity_key":"d_agree_disagree_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"a979b99e270977bb4617845c65574dc7cf7cd3aee0e0e0882bca85799cf4d45e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/05633e58a7a1c91d55bff48a5a0953857185cbca954e141a53f345f8b2f5cb4d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_telling_stories_02:1 -> audio/generated/de-DE/dialogues/07e3b8b49d395e99f34d9dcf6f3d8a72cabd8a8e10b29112bdd7575b4fa6618a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e29b33f9-5884-533d-897d-77e284a20101', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_telling_stories_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '63aff7c9984276007e417b546ade9bc137fe39e75d4796c57f6e522c399bd687'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d59c3642-ec9f-585e-8d72-aabcf37f4d7a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e29b33f9-5884-533d-897d-77e284a20101', 1), '63aff7c9984276007e417b546ade9bc137fe39e75d4796c57f6e522c399bd687',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/07e3b8b49d395e99f34d9dcf6f3d8a72cabd8a8e10b29112bdd7575b4fa6618a.mp3', 2638, '2026-09-13 05:53:32.349111', '5914aba9106d81346b411ee4098644fcf62976b34115cd10ce0772b9b7bad879', 'validated', '{"audio_key":"07e3b8b49d395e99f34d9dcf6f3d8a72cabd8a8e10b29112bdd7575b4fa6618a","entity_key":"d_telling_stories_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5914aba9106d81346b411ee4098644fcf62976b34115cd10ce0772b9b7bad879","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/07e3b8b49d395e99f34d9dcf6f3d8a72cabd8a8e10b29112bdd7575b4fa6618a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_experiences_01:2 -> audio/generated/de-DE/dialogues/083501fe5a072a8c38cae9b02c66b26a76aae6c18431ad2bd86ede6d5eb34cee.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6ea0ec53-b691-563b-86fc-be30d51cd312', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_experiences_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b6e0e97333c86fc6d679b2ef1af02ccdc6b016dd0d844390004718702f875755'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('41f59e31-4d24-5992-80e1-20846490eaf0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6ea0ec53-b691-563b-86fc-be30d51cd312', 1), 'b6e0e97333c86fc6d679b2ef1af02ccdc6b016dd0d844390004718702f875755',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/083501fe5a072a8c38cae9b02c66b26a76aae6c18431ad2bd86ede6d5eb34cee.mp3', 2272, '2026-09-13 05:53:33.513924', '3e09f153884621ad80a44413dc739f9e8f299ddff64a491403af8e460a0792db', 'validated', '{"audio_key":"083501fe5a072a8c38cae9b02c66b26a76aae6c18431ad2bd86ede6d5eb34cee","entity_key":"d_travel_experiences_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"3e09f153884621ad80a44413dc739f9e8f299ddff64a491403af8e460a0792db","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/083501fe5a072a8c38cae9b02c66b26a76aae6c18431ad2bd86ede6d5eb34cee.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_neighborhood_community_02:3 -> audio/generated/de-DE/dialogues/0ab82949bf3e9e5de9dee434f3872795fb1c3e4188333e651c82e425320a7362.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('85d14873-d47f-5da5-83a1-e00989da2011', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_neighborhood_community_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8938975170254b6174da54b5f9e7da44b0bab1753e5d7c13c65af4096b3fe502'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('23e1d1c9-2f23-5064-88bf-a1bb740dd2e3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('85d14873-d47f-5da5-83a1-e00989da2011', 1), '8938975170254b6174da54b5f9e7da44b0bab1753e5d7c13c65af4096b3fe502',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0ab82949bf3e9e5de9dee434f3872795fb1c3e4188333e651c82e425320a7362.mp3', 3840, '2026-09-13 05:53:33.915916', '792c75a90e204bae3a6fc2751b104d5ff8ec62b979f98c6b91943be8e435b708', 'validated', '{"audio_key":"0ab82949bf3e9e5de9dee434f3872795fb1c3e4188333e651c82e425320a7362","entity_key":"d_neighborhood_community_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"792c75a90e204bae3a6fc2751b104d5ff8ec62b979f98c6b91943be8e435b708","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/0ab82949bf3e9e5de9dee434f3872795fb1c3e4188333e651c82e425320a7362.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_telling_stories_03:2 -> audio/generated/de-DE/dialogues/0ec5eac7b367062b87c203f46867c494f6b5e5ef98fdd690463058dd0b7b95ff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8bb0def3-5033-5a1f-8883-7ec10585dec3', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_telling_stories_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '807d709e5937361c3a9fd73f8a4131a819b74fc6c18312f2d433ca350bbe4266'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3b15b391-272c-5111-ae7d-7990dffa7467', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8bb0def3-5033-5a1f-8883-7ec10585dec3', 1), '807d709e5937361c3a9fd73f8a4131a819b74fc6c18312f2d433ca350bbe4266',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0ec5eac7b367062b87c203f46867c494f6b5e5ef98fdd690463058dd0b7b95ff.mp3', 2586, '2026-09-13 05:53:34.644179', 'c3768d2204ece0ac0094f048e7d50680e085806e80e8da794b173b720ad89a6a', 'validated', '{"audio_key":"0ec5eac7b367062b87c203f46867c494f6b5e5ef98fdd690463058dd0b7b95ff","entity_key":"d_telling_stories_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c3768d2204ece0ac0094f048e7d50680e085806e80e8da794b173b720ad89a6a","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/0ec5eac7b367062b87c203f46867c494f6b5e5ef98fdd690463058dd0b7b95ff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_work_experience_02:2 -> audio/generated/de-DE/dialogues/0fd587ab0b8396ff293db79c46baab2c842663a36ed097f4ea9683753d952471.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f19fc69f-9d79-580a-8d4b-73fc44917478', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_work_experience_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0bdf21a0142508743680063c7521d1a50bfa9e4e402f4e1ee3fbaddc61c0a856'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4423f98f-3da4-51e6-9f6a-0c0d699fc91b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f19fc69f-9d79-580a-8d4b-73fc44917478', 1), '0bdf21a0142508743680063c7521d1a50bfa9e4e402f4e1ee3fbaddc61c0a856',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0fd587ab0b8396ff293db79c46baab2c842663a36ed097f4ea9683753d952471.mp3', 2351, '2026-09-13 05:53:35.026356', 'dc977a54c68b0fd39b372090d7391379660f7524c4a8d3430eac317b3d8358ac', 'validated', '{"audio_key":"0fd587ab0b8396ff293db79c46baab2c842663a36ed097f4ea9683753d952471","entity_key":"d_work_experience_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"dc977a54c68b0fd39b372090d7391379660f7524c4a8d3430eac317b3d8358ac","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/0fd587ab0b8396ff293db79c46baab2c842663a36ed097f4ea9683753d952471.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_experiences_01:1 -> audio/generated/de-DE/dialogues/102d8cae7829eaeab5f40b530d324897be385714342a7744718f889652703b85.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('50d0ee19-cf86-5106-b129-fab492af9df3', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_experiences_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '279f8eeee46c10a63ad514d15ab78cf7e83ad345e205984031bed8a3ccce99d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7a99eb0f-62c9-56dc-a52e-0d081beb2e33', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('50d0ee19-cf86-5106-b129-fab492af9df3', 1), '279f8eeee46c10a63ad514d15ab78cf7e83ad345e205984031bed8a3ccce99d1',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/102d8cae7829eaeab5f40b530d324897be385714342a7744718f889652703b85.mp3', 1567, '2026-09-13 05:53:35.642085', '567060a0ccf8ef1e50fc1ccf47113b23af0576c2a6eb194671ec2f3f0cc96f15', 'validated', '{"audio_key":"102d8cae7829eaeab5f40b530d324897be385714342a7744718f889652703b85","entity_key":"d_travel_experiences_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"567060a0ccf8ef1e50fc1ccf47113b23af0576c2a6eb194671ec2f3f0cc96f15","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/102d8cae7829eaeab5f40b530d324897be385714342a7744718f889652703b85.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_agree_disagree_02:3 -> audio/generated/de-DE/dialogues/117bd7bcc3bba94cab80485b71616e745db40c59525baaf08f563e41f1f06ab6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1abfd667-461a-5ddd-8bb9-9005f497a922', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_agree_disagree_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '99981a4b6b35b014ba69b0fbf0a7fd37982ee79af0f559a20f25677c5e145dbc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('18f28614-9e81-5853-a9dd-5af3914b4509', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1abfd667-461a-5ddd-8bb9-9005f497a922', 1), '99981a4b6b35b014ba69b0fbf0a7fd37982ee79af0f559a20f25677c5e145dbc',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/117bd7bcc3bba94cab80485b71616e745db40c59525baaf08f563e41f1f06ab6.mp3', 3604, '2026-09-13 05:53:36.354307', '94bb6015dba13d24ace9823ba77a629ea784e17ecf69a4daf71b7de62bd9933b', 'validated', '{"audio_key":"117bd7bcc3bba94cab80485b71616e745db40c59525baaf08f563e41f1f06ab6","entity_key":"d_agree_disagree_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"94bb6015dba13d24ace9823ba77a629ea784e17ecf69a4daf71b7de62bd9933b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/117bd7bcc3bba94cab80485b71616e745db40c59525baaf08f563e41f1f06ab6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_experiences_02:4 -> audio/generated/de-DE/dialogues/124a03da9ad5ff740c64c057105773bd804faba09bf2191ddb9ccb8d64e09ac4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('11af3232-ca17-563d-81d3-0715b0856265', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_experiences_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e31b22cc9ea208360e3413aef345fc58539b62b31a63a444644f99f20bd81062'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('50ed63ed-9f2c-5a49-acfe-e4225d1e8669', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('11af3232-ca17-563d-81d3-0715b0856265', 1), 'e31b22cc9ea208360e3413aef345fc58539b62b31a63a444644f99f20bd81062',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/124a03da9ad5ff740c64c057105773bd804faba09bf2191ddb9ccb8d64e09ac4.mp3', 2951, '2026-09-13 05:53:36.782324', '817771215bcc93f880e101b32b64d263d769856c1f39c956817599c0cd285684', 'validated', '{"audio_key":"124a03da9ad5ff740c64c057105773bd804faba09bf2191ddb9ccb8d64e09ac4","entity_key":"d_travel_experiences_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"817771215bcc93f880e101b32b64d263d769856c1f39c956817599c0cd285684","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/124a03da9ad5ff740c64c057105773bd804faba09bf2191ddb9ccb8d64e09ac4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_health_habits_03:2 -> audio/generated/de-DE/dialogues/12b8984cee5a270ea4b5e4a4011243034b7aee190d30ab20c6384d1c0c34ede2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('39bd656c-22b7-5f56-b9e0-9796417a72ca', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_health_habits_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '01e55721825dfd90246cc7e042e362c3009bb473b454a28cf1b09f8391035be3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7059607a-f7f3-59c6-9ad3-6c81670a060c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('39bd656c-22b7-5f56-b9e0-9796417a72ca', 1), '01e55721825dfd90246cc7e042e362c3009bb473b454a28cf1b09f8391035be3',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/12b8984cee5a270ea4b5e4a4011243034b7aee190d30ab20c6384d1c0c34ede2.mp3', 2768, '2026-09-13 05:53:37.515874', 'd3f738e1fd65fd2115bc9515dafdb657938b9d4046c4853c617be01ada9af422', 'validated', '{"audio_key":"12b8984cee5a270ea4b5e4a4011243034b7aee190d30ab20c6384d1c0c34ede2","entity_key":"d_health_habits_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d3f738e1fd65fd2115bc9515dafdb657938b9d4046c4853c617be01ada9af422","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/12b8984cee5a270ea4b5e4a4011243034b7aee190d30ab20c6384d1c0c34ede2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_agree_disagree_01:1 -> audio/generated/de-DE/dialogues/17369680c6751644776644a71f015789d135e43a7cc1e6de3f5a9abd8ea7f1ad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('09311ef6-9f2b-554e-a18a-ea8a2975b500', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_agree_disagree_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c56a9ac751b1cc8b5d76e203ecccef770f9370dc9783063bc382a167493f4cd7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c805247a-f723-52b9-9d5f-ddc019347577', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('09311ef6-9f2b-554e-a18a-ea8a2975b500', 1), 'c56a9ac751b1cc8b5d76e203ecccef770f9370dc9783063bc382a167493f4cd7',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/17369680c6751644776644a71f015789d135e43a7cc1e6de3f5a9abd8ea7f1ad.mp3', 2351, '2026-09-13 05:53:37.918190', '28fa08cebe646635e1d945cf0b621a4f024e486da4f5362567bf5bfd7ffe30c6', 'validated', '{"audio_key":"17369680c6751644776644a71f015789d135e43a7cc1e6de3f5a9abd8ea7f1ad","entity_key":"d_agree_disagree_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"28fa08cebe646635e1d945cf0b621a4f024e486da4f5362567bf5bfd7ffe30c6","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/17369680c6751644776644a71f015789d135e43a7cc1e6de3f5a9abd8ea7f1ad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_telling_stories_02:4 -> audio/generated/de-DE/dialogues/1c5abc4b0c54de87c380e1f276504d1ded5706967074c551ac19b3076dcc4020.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f7d77c04-531f-59a9-ad47-8485eaae7b9e', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_telling_stories_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '85905ba860ea8af5323b43436e61eb0594e20a13f17ec8461fb02f6b4540cfb0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b3f03d0d-b13f-5575-940f-15481ddb764e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f7d77c04-531f-59a9-ad47-8485eaae7b9e', 1), '85905ba860ea8af5323b43436e61eb0594e20a13f17ec8461fb02f6b4540cfb0',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1c5abc4b0c54de87c380e1f276504d1ded5706967074c551ac19b3076dcc4020.mp3', 2507, '2026-09-13 05:53:38.609212', '03edd4b2582706ab900f46c98c40582c883fb92d14e9060a47fdb04fbfb1cf00', 'validated', '{"audio_key":"1c5abc4b0c54de87c380e1f276504d1ded5706967074c551ac19b3076dcc4020","entity_key":"d_telling_stories_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"03edd4b2582706ab900f46c98c40582c883fb92d14e9060a47fdb04fbfb1cf00","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/1c5abc4b0c54de87c380e1f276504d1ded5706967074c551ac19b3076dcc4020.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_neighborhood_community_01:4 -> audio/generated/de-DE/dialogues/1c94d723857668deeb2c22219f87ea71cf23acaa3e5dbee8447a2cf48031a136.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8b58d0be-17cb-5b6c-b30c-63df7cd01597', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_neighborhood_community_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '86b7871085c8f66b766c070fe4cbf71345e0fdb93121bfcced3b51a4c97f2c45'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6dc8d2d2-3ecd-5460-b377-1af83b89d202', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8b58d0be-17cb-5b6c-b30c-63df7cd01597', 1), '86b7871085c8f66b766c070fe4cbf71345e0fdb93121bfcced3b51a4c97f2c45',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1c94d723857668deeb2c22219f87ea71cf23acaa3e5dbee8447a2cf48031a136.mp3', 3422, '2026-09-13 05:53:39.120042', 'c772655374faa4da74283722563fc667e54ce48512d978669cde62abdeef670e', 'validated', '{"audio_key":"1c94d723857668deeb2c22219f87ea71cf23acaa3e5dbee8447a2cf48031a136","entity_key":"d_neighborhood_community_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"c772655374faa4da74283722563fc667e54ce48512d978669cde62abdeef670e","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/1c94d723857668deeb2c22219f87ea71cf23acaa3e5dbee8447a2cf48031a136.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_work_experience_01:2 -> audio/generated/de-DE/dialogues/21d555be5fcad228469685d9ad79aac3e18d5affd0275e327b843fee88efba34.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('760e94d8-715b-59a5-b716-c619708412cf', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_work_experience_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '08f3757a5c5793750e706c88bbdcf2b488247537b0876c4a2610d6b45bea84ca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5c98eec1-ea0d-5150-86de-1410d9bdf6f1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('760e94d8-715b-59a5-b716-c619708412cf', 1), '08f3757a5c5793750e706c88bbdcf2b488247537b0876c4a2610d6b45bea84ca',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/21d555be5fcad228469685d9ad79aac3e18d5affd0275e327b843fee88efba34.mp3', 2586, '2026-09-13 05:53:39.715610', 'cbaf78f8aafe53728b42998f3fd7da5366788d1e4fb923dbb0a2c2d7d66b53b8', 'validated', '{"audio_key":"21d555be5fcad228469685d9ad79aac3e18d5affd0275e327b843fee88efba34","entity_key":"d_work_experience_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"cbaf78f8aafe53728b42998f3fd7da5366788d1e4fb923dbb0a2c2d7d66b53b8","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/21d555be5fcad228469685d9ad79aac3e18d5affd0275e327b843fee88efba34.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_agree_disagree_01:3 -> audio/generated/de-DE/dialogues/23c6e4bec3abb95d8dd96ccb3d85b17e40034b095159bcbe582d8c78eed6ef0d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2f752554-a0af-503c-8514-e46d158f8661', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_agree_disagree_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8cce99cdaf4e3db57ab8d876b59102cbcf0ba0913cf3f062a4be0225bd8a9ada'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5c916b7c-1b5d-5bad-a71f-02b5a8d2ea4e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2f752554-a0af-503c-8514-e46d158f8661', 1), '8cce99cdaf4e3db57ab8d876b59102cbcf0ba0913cf3f062a4be0225bd8a9ada',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/23c6e4bec3abb95d8dd96ccb3d85b17e40034b095159bcbe582d8c78eed6ef0d.mp3', 1619, '2026-09-13 05:53:40.111853', '0942ec7ac63d71089b707a4cc0ec480a9edd62ad098efada5e74feb634dbfc80', 'validated', '{"audio_key":"23c6e4bec3abb95d8dd96ccb3d85b17e40034b095159bcbe582d8c78eed6ef0d","entity_key":"d_agree_disagree_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"0942ec7ac63d71089b707a4cc0ec480a9edd62ad098efada5e74feb634dbfc80","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/23c6e4bec3abb95d8dd96ccb3d85b17e40034b095159bcbe582d8c78eed6ef0d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_work_experience_01:4 -> audio/generated/de-DE/dialogues/23f5331cc4c3489beb4585d094216c792b70c992623a96442dffb2cf3485e856.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('be72a825-1cfb-52f7-b6de-c1b01cfe508b', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_work_experience_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7c3b5568d1f87c300722d47ee4eeb468f1fe93cfca272198832143a4b5056153'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2411e720-bcec-5ce2-8866-974a87c16ad7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('be72a825-1cfb-52f7-b6de-c1b01cfe508b', 1), '7c3b5568d1f87c300722d47ee4eeb468f1fe93cfca272198832143a4b5056153',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/23f5331cc4c3489beb4585d094216c792b70c992623a96442dffb2cf3485e856.mp3', 3578, '2026-09-13 05:53:40.951160', '92125a762a7b59d6a41539342b3e0ef35b9dcd843c0d1aa34e2b538c3e74e2ba', 'validated', '{"audio_key":"23f5331cc4c3489beb4585d094216c792b70c992623a96442dffb2cf3485e856","entity_key":"d_work_experience_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"92125a762a7b59d6a41539342b3e0ef35b9dcd843c0d1aa34e2b538c3e74e2ba","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/23f5331cc4c3489beb4585d094216c792b70c992623a96442dffb2cf3485e856.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_study_goals_01:2 -> audio/generated/de-DE/dialogues/24b4504a4b3208d2a4860ac7684383b78438058b624fe393269fdd2b77238b04.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7ca9ec8c-aa5e-51b2-b220-b6f4e44200ca', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_study_goals_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5bf812f09de43a50ebf9fe823f9ce83f16635110f46ca72068cfad78b8e918fa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f40af39b-ce6a-5539-9356-201924f1a54a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7ca9ec8c-aa5e-51b2-b220-b6f4e44200ca', 1), '5bf812f09de43a50ebf9fe823f9ce83f16635110f46ca72068cfad78b8e918fa',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/24b4504a4b3208d2a4860ac7684383b78438058b624fe393269fdd2b77238b04.mp3', 2821, '2026-09-13 05:53:41.213816', '39ede894f741f9e4a248815a66273af43dd5de85d43c49bdee1d83d23002e69a', 'validated', '{"audio_key":"24b4504a4b3208d2a4860ac7684383b78438058b624fe393269fdd2b77238b04","entity_key":"d_study_goals_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"39ede894f741f9e4a248815a66273af43dd5de85d43c49bdee1d83d23002e69a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/24b4504a4b3208d2a4860ac7684383b78438058b624fe393269fdd2b77238b04.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_experiences_01:4 -> audio/generated/de-DE/dialogues/2832849dd67993e216e0994f1386bed4e31b2559a7d679650cc354e55278647d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9872a1d0-d01d-5384-9927-6d400bc19a16', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_experiences_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '360e85a74a33c961427e614bf5d325a4996e47ec98e96b81124f7b6a7cf001e2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4274546e-af28-5718-93fe-1eed7bdf924b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9872a1d0-d01d-5384-9927-6d400bc19a16', 1), '360e85a74a33c961427e614bf5d325a4996e47ec98e96b81124f7b6a7cf001e2',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2832849dd67993e216e0994f1386bed4e31b2559a7d679650cc354e55278647d.mp3', 3056, '2026-09-13 05:53:42.155552', '213e6c67195c300465964f7eacc53cbe7215458ff1b1d421c3b5d8d2c2638263', 'validated', '{"audio_key":"2832849dd67993e216e0994f1386bed4e31b2559a7d679650cc354e55278647d","entity_key":"d_travel_experiences_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"213e6c67195c300465964f7eacc53cbe7215458ff1b1d421c3b5d8d2c2638263","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/2832849dd67993e216e0994f1386bed4e31b2559a7d679650cc354e55278647d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_work_experience_01:3 -> audio/generated/de-DE/dialogues/2a5131aa703722113c8e7cb16aefe566378a2db0ba0b968ad4a5101d240d83bd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3c68e150-a927-5c71-bae2-640797706adb', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_work_experience_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e0ac1ad598e08a813fdb338d6daf35b495679c879346f5fc52409d5a4b26a902'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5947bcb3-8a40-552f-90a5-b79181d41f17', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3c68e150-a927-5c71-bae2-640797706adb', 1), 'e0ac1ad598e08a813fdb338d6daf35b495679c879346f5fc52409d5a4b26a902',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2a5131aa703722113c8e7cb16aefe566378a2db0ba0b968ad4a5101d240d83bd.mp3', 2037, '2026-09-13 05:53:42.301478', '36e1cbcf908a39b5b0620899c86fd5302a547e821c87246605b4b54a10b9aa0c', 'validated', '{"audio_key":"2a5131aa703722113c8e7cb16aefe566378a2db0ba0b968ad4a5101d240d83bd","entity_key":"d_work_experience_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"36e1cbcf908a39b5b0620899c86fd5302a547e821c87246605b4b54a10b9aa0c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/2a5131aa703722113c8e7cb16aefe566378a2db0ba0b968ad4a5101d240d83bd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_study_goals_01:1 -> audio/generated/de-DE/dialogues/2c4e22b775833699b2efb4593365bfa16013312db535cfde11b4ca728fd3f176.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('83771ecf-745a-5c03-8038-c42f3a4ff10d', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_study_goals_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3e83bed8289a9ffc370d3d60ce8421a17f84afd118e8f6cd19aa4a5dfeb01541'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d03cb095-cbf7-5e1f-af5c-80f736ec566b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('83771ecf-745a-5c03-8038-c42f3a4ff10d', 1), '3e83bed8289a9ffc370d3d60ce8421a17f84afd118e8f6cd19aa4a5dfeb01541',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2c4e22b775833699b2efb4593365bfa16013312db535cfde11b4ca728fd3f176.mp3', 2351, '2026-09-13 05:53:43.272037', '58f315e9e08e520a161276c9513108e20fae33e7eb8af96c3c6ab48aea256048', 'validated', '{"audio_key":"2c4e22b775833699b2efb4593365bfa16013312db535cfde11b4ca728fd3f176","entity_key":"d_study_goals_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"58f315e9e08e520a161276c9513108e20fae33e7eb8af96c3c6ab48aea256048","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/2c4e22b775833699b2efb4593365bfa16013312db535cfde11b4ca728fd3f176.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_problems_solutions_01:2 -> audio/generated/de-DE/dialogues/2e45c3042988135e0e7f4ec4f48fe36493928df2cf0d8dbb2482e7af971af608.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3b0ae262-483c-5d78-a710-020ebfc98098', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_problems_solutions_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0c115f01328f2fd2b6f10d9c7db4e8bda3a2a9588a9a87175c25d8ac8667498a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e391c9d2-f4c3-5b87-a08a-c1be9cc984af', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3b0ae262-483c-5d78-a710-020ebfc98098', 1), '0c115f01328f2fd2b6f10d9c7db4e8bda3a2a9588a9a87175c25d8ac8667498a',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2e45c3042988135e0e7f4ec4f48fe36493928df2cf0d8dbb2482e7af971af608.mp3', 1384, '2026-09-13 05:53:43.342141', 'ba968d93dce61dc9d7f07366f4ccab7b8f6af60c525902784a755c3deb529d7c', 'validated', '{"audio_key":"2e45c3042988135e0e7f4ec4f48fe36493928df2cf0d8dbb2482e7af971af608","entity_key":"d_problems_solutions_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"ba968d93dce61dc9d7f07366f4ccab7b8f6af60c525902784a755c3deb529d7c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/2e45c3042988135e0e7f4ec4f48fe36493928df2cf0d8dbb2482e7af971af608.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_problems_solutions_01:4 -> audio/generated/de-DE/dialogues/2f28bf53f1dbbb8d63935b459584f5eca0c4ffe988b4ae10b88a7855505f9661.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3b2e7a58-9126-5e73-9a33-d8c570b7efc8', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_problems_solutions_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '17c581c172bddb007e526dc8d395eb268dc9d2657ab55737f8252dc727e21b8d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fe46fe3d-d9ff-59e9-8864-ea3444302a17', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3b2e7a58-9126-5e73-9a33-d8c570b7efc8', 1), '17c581c172bddb007e526dc8d395eb268dc9d2657ab55737f8252dc727e21b8d',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2f28bf53f1dbbb8d63935b459584f5eca0c4ffe988b4ae10b88a7855505f9661.mp3', 2742, '2026-09-13 05:53:44.637764', '2146044e540fda696c5b05188f7c51f315f8d0f21b2f77a71bd6dc3f6be7d87b', 'validated', '{"audio_key":"2f28bf53f1dbbb8d63935b459584f5eca0c4ffe988b4ae10b88a7855505f9661","entity_key":"d_problems_solutions_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"2146044e540fda696c5b05188f7c51f315f8d0f21b2f77a71bd6dc3f6be7d87b","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/2f28bf53f1dbbb8d63935b459584f5eca0c4ffe988b4ae10b88a7855505f9661.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_health_habits_01:4 -> audio/generated/de-DE/dialogues/3186f4e5fb954f83a9b7d70b3eb62ab4d9e4d336ed04f0ecdad9b592bf8a1b13.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('eeb273c5-997f-530e-87e2-2635a16b3643', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_health_habits_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ed061d8d8a137dfc1c3e8669b741ee0f75bc97adb009da726e14a23498238388'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b25a1373-1de0-5f8b-9bb4-10ad61e5c8d1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('eeb273c5-997f-530e-87e2-2635a16b3643', 1), 'ed061d8d8a137dfc1c3e8669b741ee0f75bc97adb009da726e14a23498238388',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3186f4e5fb954f83a9b7d70b3eb62ab4d9e4d336ed04f0ecdad9b592bf8a1b13.mp3', 3004, '2026-09-13 05:53:44.614900', 'd63cb2e978b70bfa1e70a7d813a7bacb2f883f008a0393f29112e922d5c6988f', 'validated', '{"audio_key":"3186f4e5fb954f83a9b7d70b3eb62ab4d9e4d336ed04f0ecdad9b592bf8a1b13","entity_key":"d_health_habits_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d63cb2e978b70bfa1e70a7d813a7bacb2f883f008a0393f29112e922d5c6988f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/3186f4e5fb954f83a9b7d70b3eb62ab4d9e4d336ed04f0ecdad9b592bf8a1b13.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_health_habits_02:3 -> audio/generated/de-DE/dialogues/3215d86e31f69a6699436eedf001fa63d2f11c3b0c36876808c15bc8aea47cb3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c4bf78ff-5680-5729-a934-1b899812eb6d', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_health_habits_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1f6f2ecfec60b25f2288e79ea3d512c314131cfa88a8a7ab8c3988155183ffb5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e585640b-2a43-5e95-bcd2-8344d85a3ab5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c4bf78ff-5680-5729-a934-1b899812eb6d', 1), '1f6f2ecfec60b25f2288e79ea3d512c314131cfa88a8a7ab8c3988155183ffb5',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3215d86e31f69a6699436eedf001fa63d2f11c3b0c36876808c15bc8aea47cb3.mp3', 1515, '2026-09-13 05:53:45.623721', 'ccac608885c99ab53835a7b6488249c6452d53ab42d3c5bdb622b656345c9a19', 'validated', '{"audio_key":"3215d86e31f69a6699436eedf001fa63d2f11c3b0c36876808c15bc8aea47cb3","entity_key":"d_health_habits_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ccac608885c99ab53835a7b6488249c6452d53ab42d3c5bdb622b656345c9a19","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/3215d86e31f69a6699436eedf001fa63d2f11c3b0c36876808c15bc8aea47cb3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_reasons_03:3 -> audio/generated/de-DE/dialogues/3397598bd5ee49b8d5ec0058ab3288b7ce0de888fdea412b0281a92447bc50a3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e511cfe8-f1bb-5824-8c10-17d8596f732b', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_reasons_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bf2b81e4bc32f2ebf7740277649f8ce7d3a1e4acf796464e42114e0cfc4a234c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('174dc684-3177-5cc8-87a7-fa3a5b3dcb3d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e511cfe8-f1bb-5824-8c10-17d8596f732b', 1), 'bf2b81e4bc32f2ebf7740277649f8ce7d3a1e4acf796464e42114e0cfc4a234c',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3397598bd5ee49b8d5ec0058ab3288b7ce0de888fdea412b0281a92447bc50a3.mp3', 1750, '2026-09-13 05:53:45.658406', 'f2742cf7e3a133ff100149a8f3b1c4662c6ef3cdafac94b0010539cfd78f6670', 'validated', '{"audio_key":"3397598bd5ee49b8d5ec0058ab3288b7ce0de888fdea412b0281a92447bc50a3","entity_key":"d_opinions_reasons_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"f2742cf7e3a133ff100149a8f3b1c4662c6ef3cdafac94b0010539cfd78f6670","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/3397598bd5ee49b8d5ec0058ab3288b7ce0de888fdea412b0281a92447bc50a3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_technology_03:3 -> audio/generated/de-DE/dialogues/353fccab867dd8099a18c916829c7b2f8c49f3e6ea0dcf1568743b23f3de72c2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dd688600-bec4-5c65-9f1b-ad22bca8c4f4', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_technology_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a992c8bd5b2692a1dc62277cc189eedc286d390b5de5620bf07a6ca193ef76de'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('07bc8c66-a0b7-51fc-8252-12226e6ee118', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dd688600-bec4-5c65-9f1b-ad22bca8c4f4', 1), 'a992c8bd5b2692a1dc62277cc189eedc286d390b5de5620bf07a6ca193ef76de',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/353fccab867dd8099a18c916829c7b2f8c49f3e6ea0dcf1568743b23f3de72c2.mp3', 2586, '2026-09-13 05:53:46.726304', 'b015e064a4f11d003652e6acbbe6d739638989473116567bc98a133815979d1f', 'validated', '{"audio_key":"353fccab867dd8099a18c916829c7b2f8c49f3e6ea0dcf1568743b23f3de72c2","entity_key":"d_media_technology_03:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b015e064a4f11d003652e6acbbe6d739638989473116567bc98a133815979d1f","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/353fccab867dd8099a18c916829c7b2f8c49f3e6ea0dcf1568743b23f3de72c2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_reasons_02:3 -> audio/generated/de-DE/dialogues/37bc5cab197d81bc43c256857b17527ddaf8a646d19ff16c5aa73c6b6cdc6d92.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('223d7500-5c13-50b7-b4b0-86c0382d3c30', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_reasons_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0eddcb4d52687117c6790543a314ce789ba0a505b5fc57dcaf545602b79743c7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('af31eebc-d23b-5266-9888-0790c84fd96d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('223d7500-5c13-50b7-b4b0-86c0382d3c30', 1), '0eddcb4d52687117c6790543a314ce789ba0a505b5fc57dcaf545602b79743c7',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/37bc5cab197d81bc43c256857b17527ddaf8a646d19ff16c5aa73c6b6cdc6d92.mp3', 2951, '2026-09-13 05:53:46.862113', '24f57a69cba1a55d1db2c7d5981e22cb301f4390e7ebcbc792f5b351b1e4f2b8', 'validated', '{"audio_key":"37bc5cab197d81bc43c256857b17527ddaf8a646d19ff16c5aa73c6b6cdc6d92","entity_key":"d_opinions_reasons_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"24f57a69cba1a55d1db2c7d5981e22cb301f4390e7ebcbc792f5b351b1e4f2b8","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/37bc5cab197d81bc43c256857b17527ddaf8a646d19ff16c5aa73c6b6cdc6d92.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_reasons_01:4 -> audio/generated/de-DE/dialogues/389d3647be58b673cbf1ac0523becf6e1526ed02ee20c5bd608b0edbbe5625dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('45bb2c1e-7416-5135-9b59-15916d4b2000', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_reasons_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ca9474942d2598a799059ac33eb5dde18141033abf267f35ee606209c2e11318'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6cc496a7-3dac-59a9-9190-b49da8973682', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('45bb2c1e-7416-5135-9b59-15916d4b2000', 1), 'ca9474942d2598a799059ac33eb5dde18141033abf267f35ee606209c2e11318',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/389d3647be58b673cbf1ac0523becf6e1526ed02ee20c5bd608b0edbbe5625dd.mp3', 3004, '2026-09-13 05:53:47.841859', 'e7f6d5121a500509f5dd99d823db3f56153487a6cac637eedcda5d4b957483b3', 'validated', '{"audio_key":"389d3647be58b673cbf1ac0523becf6e1526ed02ee20c5bd608b0edbbe5625dd","entity_key":"d_opinions_reasons_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"e7f6d5121a500509f5dd99d823db3f56153487a6cac637eedcda5d4b957483b3","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/389d3647be58b673cbf1ac0523becf6e1526ed02ee20c5bd608b0edbbe5625dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_health_habits_03:1 -> audio/generated/de-DE/dialogues/3bb121002c16b5972e2657dfadb7ef1cc57411aa54ff088b0e45b916c85b024d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b4fe3290-7107-51b5-b3d8-23dbefc15d78', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_health_habits_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '16bc72cb08661373b1ade70d347146fe4d7fd5ead8b70ea6065d661f4b589f9e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('985dd5f0-ef45-54f4-b6e2-bf5d7bd9a9b7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b4fe3290-7107-51b5-b3d8-23dbefc15d78', 1), '16bc72cb08661373b1ade70d347146fe4d7fd5ead8b70ea6065d661f4b589f9e',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3bb121002c16b5972e2657dfadb7ef1cc57411aa54ff088b0e45b916c85b024d.mp3', 3787, '2026-09-13 05:53:49.191167', 'e3a47cf377ccdac2766b4178c46883fb6e54c674e4f26664d637789d46a6fd89', 'validated', '{"audio_key":"3bb121002c16b5972e2657dfadb7ef1cc57411aa54ff088b0e45b916c85b024d","entity_key":"d_health_habits_03:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"e3a47cf377ccdac2766b4178c46883fb6e54c674e4f26664d637789d46a6fd89","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/3bb121002c16b5972e2657dfadb7ef1cc57411aa54ff088b0e45b916c85b024d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_telling_stories_01:3 -> audio/generated/de-DE/dialogues/3ee7b54540695d74bccd97b393386c6ebf63355ce827c7b921fb467ac774736d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('68880c8b-105e-532b-b546-2ebc14f072ea', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_telling_stories_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a474cdf62549c95ac21ae211c0a6eb3bcfb15b487309b078dc17363580f76d2d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('856a45d1-60bb-5b24-815f-1f9a9d53e9fc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('68880c8b-105e-532b-b546-2ebc14f072ea', 1), 'a474cdf62549c95ac21ae211c0a6eb3bcfb15b487309b078dc17363580f76d2d',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3ee7b54540695d74bccd97b393386c6ebf63355ce827c7b921fb467ac774736d.mp3', 1567, '2026-09-13 05:53:48.855255', 'c123d80ad98d712c2b1c7229e0a6273fa0e93a7d01122f3265c58ebd98b1974e', 'validated', '{"audio_key":"3ee7b54540695d74bccd97b393386c6ebf63355ce827c7b921fb467ac774736d","entity_key":"d_telling_stories_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c123d80ad98d712c2b1c7229e0a6273fa0e93a7d01122f3265c58ebd98b1974e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/3ee7b54540695d74bccd97b393386c6ebf63355ce827c7b921fb467ac774736d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_telling_stories_01:1 -> audio/generated/de-DE/dialogues/3ef4cbb32c5eb6d8342a701f1ce2b3294ff73d7465902b5b865001ee70ad54f6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0f5d3145-da18-5c2d-bd43-f4c9f895f17d', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_telling_stories_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5d4c218da024d67587108fabd30a3fc840dafde2baad70ebd988ab34c369fffb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('552185f9-3953-53c8-a942-0dd811706ccb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0f5d3145-da18-5c2d-bd43-f4c9f895f17d', 1), '5d4c218da024d67587108fabd30a3fc840dafde2baad70ebd988ab34c369fffb',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3ef4cbb32c5eb6d8342a701f1ce2b3294ff73d7465902b5b865001ee70ad54f6.mp3', 3108, '2026-09-13 05:53:50.045165', '94d00ae8dbe10ccd7195250d494fd358c0be180119d62bb5a00dcad5eb695d28', 'validated', '{"audio_key":"3ef4cbb32c5eb6d8342a701f1ce2b3294ff73d7465902b5b865001ee70ad54f6","entity_key":"d_telling_stories_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"94d00ae8dbe10ccd7195250d494fd358c0be180119d62bb5a00dcad5eb695d28","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/3ef4cbb32c5eb6d8342a701f1ce2b3294ff73d7465902b5b865001ee70ad54f6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_technology_02:2 -> audio/generated/de-DE/dialogues/3f4ac5f3de97abd4503fb4516b822d4d62cedd77038263383a10a384ec195242.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('da2523af-bb64-50c7-945c-76926f5d45c8', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_technology_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '839cecf54dad33415e86744c965a56cb06773b0d7fe79821cbac0766b96beeec'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8ac57ac1-0d96-5128-be87-24ee3e23a409', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('da2523af-bb64-50c7-945c-76926f5d45c8', 1), '839cecf54dad33415e86744c965a56cb06773b0d7fe79821cbac0766b96beeec',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3f4ac5f3de97abd4503fb4516b822d4d62cedd77038263383a10a384ec195242.mp3', 2768, '2026-09-13 05:53:50.357278', '94b1b958ee8dfbdd19167ba5685a88e7b46c2f4607663f7bdcc79f6f35ffe03a', 'validated', '{"audio_key":"3f4ac5f3de97abd4503fb4516b822d4d62cedd77038263383a10a384ec195242","entity_key":"d_media_technology_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"94b1b958ee8dfbdd19167ba5685a88e7b46c2f4607663f7bdcc79f6f35ffe03a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/3f4ac5f3de97abd4503fb4516b822d4d62cedd77038263383a10a384ec195242.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_neighborhood_community_03:4 -> audio/generated/de-DE/dialogues/41590971cad102c6bd28b7a700498646a6d2c047ac9fbbcb81a4f7729811d195.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7e41648b-f5a0-5741-b0b1-991494783b02', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_neighborhood_community_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8ea7bce8e76ac67302ae429ae5a07656b99609a6876d2c4a36e5591f7b94530c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1dd80633-5fc5-51f0-a6b8-b04625d5d0a5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7e41648b-f5a0-5741-b0b1-991494783b02', 1), '8ea7bce8e76ac67302ae429ae5a07656b99609a6876d2c4a36e5591f7b94530c',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/41590971cad102c6bd28b7a700498646a6d2c047ac9fbbcb81a4f7729811d195.mp3', 3239, '2026-09-13 05:53:51.271713', '4d447c2e31fc2f9b46a4229850a903d76f0e0da9905c71af749b9fb979860933', 'validated', '{"audio_key":"41590971cad102c6bd28b7a700498646a6d2c047ac9fbbcb81a4f7729811d195","entity_key":"d_neighborhood_community_03:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"4d447c2e31fc2f9b46a4229850a903d76f0e0da9905c71af749b9fb979860933","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/41590971cad102c6bd28b7a700498646a6d2c047ac9fbbcb81a4f7729811d195.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_health_habits_03:4 -> audio/generated/de-DE/dialogues/437d12852533d199c64e7541b6ece698384f2651641f13c1730bbfeb9623c983.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d34cea83-6ee1-5f7d-960f-d72ae01a220e', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_health_habits_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '76d40a18c4080cf362d102506a3e7d8dcb9b7d84ead82ad8777eec9cc1c3c5d7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c19609c1-13f0-5664-8f43-16223b2054e9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d34cea83-6ee1-5f7d-960f-d72ae01a220e', 1), '76d40a18c4080cf362d102506a3e7d8dcb9b7d84ead82ad8777eec9cc1c3c5d7',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/437d12852533d199c64e7541b6ece698384f2651641f13c1730bbfeb9623c983.mp3', 2351, '2026-09-13 05:53:51.418253', '9a957bfeec15917b4a312310f92a43221fea2259a7819c409d4a306cb26b618e', 'validated', '{"audio_key":"437d12852533d199c64e7541b6ece698384f2651641f13c1730bbfeb9623c983","entity_key":"d_health_habits_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"9a957bfeec15917b4a312310f92a43221fea2259a7819c409d4a306cb26b618e","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/437d12852533d199c64e7541b6ece698384f2651641f13c1730bbfeb9623c983.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_neighborhood_community_02:4 -> audio/generated/de-DE/dialogues/43b28e010515522cf5bf79d703f61ed1df9fb5acbe69d30415682056d6ffc4f2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('53e7ae09-18a0-536c-83bb-b6bcc9f98e8b', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_neighborhood_community_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '84533ddd44d725accf580b62c4a3d9a1f4e6253593e461ff98fc256d8af6cb91'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c2b2a999-3b08-530d-a96c-61b16a2d8667', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('53e7ae09-18a0-536c-83bb-b6bcc9f98e8b', 1), '84533ddd44d725accf580b62c4a3d9a1f4e6253593e461ff98fc256d8af6cb91',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/43b28e010515522cf5bf79d703f61ed1df9fb5acbe69d30415682056d6ffc4f2.mp3', 1906, '2026-09-13 05:53:52.290378', '81f326ca27c1fd3446cbf1b5f0cc3be80b405b48a06884084187daeab4972c51', 'validated', '{"audio_key":"43b28e010515522cf5bf79d703f61ed1df9fb5acbe69d30415682056d6ffc4f2","entity_key":"d_neighborhood_community_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"81f326ca27c1fd3446cbf1b5f0cc3be80b405b48a06884084187daeab4972c51","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/43b28e010515522cf5bf79d703f61ed1df9fb5acbe69d30415682056d6ffc4f2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_problems_solutions_03:3 -> audio/generated/de-DE/dialogues/4c3b55beb2063473ff4eac6b338eb1a4e15e90a99f0428270c23761e2035c86a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d56d2f17-671b-5494-9dc0-01d7c12939e2', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_problems_solutions_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0b704451299e280d72468725871ce21ce2281dd59bc58adc10de45d9eeb8d698'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9e3b652c-6733-5db8-99d6-de3a8cc99c29', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d56d2f17-671b-5494-9dc0-01d7c12939e2', 1), '0b704451299e280d72468725871ce21ce2281dd59bc58adc10de45d9eeb8d698',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4c3b55beb2063473ff4eac6b338eb1a4e15e90a99f0428270c23761e2035c86a.mp3', 3944, '2026-09-13 05:53:52.657706', 'f16a4e78265552c4e27f29c495344e72737668db856f55917bc861648813eedc', 'validated', '{"audio_key":"4c3b55beb2063473ff4eac6b338eb1a4e15e90a99f0428270c23761e2035c86a","entity_key":"d_problems_solutions_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"f16a4e78265552c4e27f29c495344e72737668db856f55917bc861648813eedc","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/4c3b55beb2063473ff4eac6b338eb1a4e15e90a99f0428270c23761e2035c86a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_telling_stories_03:3 -> audio/generated/de-DE/dialogues/4c57a2add67c3bd7235b7107c2ccfae4c5594d7ff9fe1f5f6d6d69bb27458218.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('010856d1-ba1a-5142-8d52-7905a0a34e7b', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_telling_stories_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd4e6ea253c4908bb3b87f4a18a4aedd2ef7887d24cdcdea4b5923a139731d9f0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c3cdfbec-8e87-5b6c-af44-983e76e99f47', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('010856d1-ba1a-5142-8d52-7905a0a34e7b', 1), 'd4e6ea253c4908bb3b87f4a18a4aedd2ef7887d24cdcdea4b5923a139731d9f0',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4c57a2add67c3bd7235b7107c2ccfae4c5594d7ff9fe1f5f6d6d69bb27458218.mp3', 1750, '2026-09-13 05:53:53.296705', '412500f1d538c06ee44d83bd8efbc9b5c7769c146a715e11ff827246f6ecf2dd', 'validated', '{"audio_key":"4c57a2add67c3bd7235b7107c2ccfae4c5594d7ff9fe1f5f6d6d69bb27458218","entity_key":"d_telling_stories_03:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"412500f1d538c06ee44d83bd8efbc9b5c7769c146a715e11ff827246f6ecf2dd","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/4c57a2add67c3bd7235b7107c2ccfae4c5594d7ff9fe1f5f6d6d69bb27458218.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_technology_02:3 -> audio/generated/de-DE/dialogues/5121c509bbc345e8a26974b58c2c5d0c5dc1cb0c7109976083d08798cf7ecfea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8480b292-1e09-52f2-8296-292db216b8e0', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_technology_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f8d595905414cf423ac85899c8bfbce16c2588100465d83929789a21cba94f8c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('581a8f7e-453b-5bd4-bbc5-2558201b3f30', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8480b292-1e09-52f2-8296-292db216b8e0', 1), 'f8d595905414cf423ac85899c8bfbce16c2588100465d83929789a21cba94f8c',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5121c509bbc345e8a26974b58c2c5d0c5dc1cb0c7109976083d08798cf7ecfea.mp3', 2638, '2026-09-13 05:53:53.800752', 'a989e2abf6e59387d4180975705abef57d4904007caac77ec1fca986afdd0038', 'validated', '{"audio_key":"5121c509bbc345e8a26974b58c2c5d0c5dc1cb0c7109976083d08798cf7ecfea","entity_key":"d_media_technology_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a989e2abf6e59387d4180975705abef57d4904007caac77ec1fca986afdd0038","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/5121c509bbc345e8a26974b58c2c5d0c5dc1cb0c7109976083d08798cf7ecfea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_neighborhood_community_02:1 -> audio/generated/de-DE/dialogues/551c47a184410535e026f34b0df06f6e3fe3efec4bc71c5b193fb8e8b9642c55.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2953b667-dce3-525f-bbe6-3a0880fd200a', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_neighborhood_community_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '32756a067bd83b8108be0014f1b72d23e858891ced794cc69324276ec73c614f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e37498a2-f345-5e9f-9ea6-a2dd27e39c22', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2953b667-dce3-525f-bbe6-3a0880fd200a', 1), '32756a067bd83b8108be0014f1b72d23e858891ced794cc69324276ec73c614f',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/551c47a184410535e026f34b0df06f6e3fe3efec4bc71c5b193fb8e8b9642c55.mp3', 2455, '2026-09-13 05:53:54.403193', '673452dcd5a7abbb6fb429c1df02b039203293ada8af345a83852d2c65360038', 'validated', '{"audio_key":"551c47a184410535e026f34b0df06f6e3fe3efec4bc71c5b193fb8e8b9642c55","entity_key":"d_neighborhood_community_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"673452dcd5a7abbb6fb429c1df02b039203293ada8af345a83852d2c65360038","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/551c47a184410535e026f34b0df06f6e3fe3efec4bc71c5b193fb8e8b9642c55.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_health_habits_02:2 -> audio/generated/de-DE/dialogues/58c1f9a4eefb97202d10cab17d2062bc163f21c3f1bfddfe08b1372a8bb62dac.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('db849d85-4ea5-593b-85ff-aa350939c8f1', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_health_habits_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '270a02ade822d2b0963e705dfb74b34415478ebc363aa408cecc792ba6c287cf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('355e3a14-0aee-515e-b5d8-6f1bf90b57cd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('db849d85-4ea5-593b-85ff-aa350939c8f1', 1), '270a02ade822d2b0963e705dfb74b34415478ebc363aa408cecc792ba6c287cf',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/58c1f9a4eefb97202d10cab17d2062bc163f21c3f1bfddfe08b1372a8bb62dac.mp3', 3160, '2026-09-13 05:53:55.346222', '4d2c3d0d3f806f0f216054099fe2611002a04177d4be54727aa283ed7fb9904e', 'validated', '{"audio_key":"58c1f9a4eefb97202d10cab17d2062bc163f21c3f1bfddfe08b1372a8bb62dac","entity_key":"d_health_habits_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"4d2c3d0d3f806f0f216054099fe2611002a04177d4be54727aa283ed7fb9904e","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/58c1f9a4eefb97202d10cab17d2062bc163f21c3f1bfddfe08b1372a8bb62dac.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_health_habits_02:4 -> audio/generated/de-DE/dialogues/5b398ab96bde576e4120f5b12939d13fcc5bb3cf061a63c94ea5c568ecf45a8e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('42091a4e-e2e5-5e89-8718-15777e42432b', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_health_habits_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4141acbc5f3a0155f1a6d8310cee30b2875f840382a5e15159cdcf9896bf513f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('70981bd2-bc07-5f14-b329-1c94375e9957', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('42091a4e-e2e5-5e89-8718-15777e42432b', 1), '4141acbc5f3a0155f1a6d8310cee30b2875f840382a5e15159cdcf9896bf513f',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5b398ab96bde576e4120f5b12939d13fcc5bb3cf061a63c94ea5c568ecf45a8e.mp3', 4310, '2026-09-13 05:53:55.710110', '45f7da67a6043f2223b902862ce32c98606d9954d48936db0798e526779791aa', 'validated', '{"audio_key":"5b398ab96bde576e4120f5b12939d13fcc5bb3cf061a63c94ea5c568ecf45a8e","entity_key":"d_health_habits_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"45f7da67a6043f2223b902862ce32c98606d9954d48936db0798e526779791aa","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/5b398ab96bde576e4120f5b12939d13fcc5bb3cf061a63c94ea5c568ecf45a8e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_reasons_02:4 -> audio/generated/de-DE/dialogues/5b3cddeb6b230c44fa2ec8a15b38a5479a6b8fef863894e877b1e6fd7c73be77.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('858b6e4c-22f2-5f62-ba52-31ea679373d4', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_reasons_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d0a64c5c7701b032eefe49aa77570acd9f7df87ce25257a04461f5ccfd1436b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7adb3e81-0506-5a86-b30e-d83bf3118933', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('858b6e4c-22f2-5f62-ba52-31ea679373d4', 1), '8d0a64c5c7701b032eefe49aa77570acd9f7df87ce25257a04461f5ccfd1436b',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5b3cddeb6b230c44fa2ec8a15b38a5479a6b8fef863894e877b1e6fd7c73be77.mp3', 1567, '2026-09-13 05:53:56.349130', 'a70be69c68937c192e4dfa84cda1e588dadf7c0421ddccb028896a3995aa63d1', 'validated', '{"audio_key":"5b3cddeb6b230c44fa2ec8a15b38a5479a6b8fef863894e877b1e6fd7c73be77","entity_key":"d_opinions_reasons_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"a70be69c68937c192e4dfa84cda1e588dadf7c0421ddccb028896a3995aa63d1","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/5b3cddeb6b230c44fa2ec8a15b38a5479a6b8fef863894e877b1e6fd7c73be77.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_study_goals_03:2 -> audio/generated/de-DE/dialogues/5cb7202dc62e58f13f9a12c015b1b835f8a08fc0cf7ae4bf40dbfc721b24fff2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fcfb5372-871b-5b02-a9bc-b03c517b03fa', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_study_goals_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7b8f04e11ad64c35c0115c247887ebaf32e5646a5bbb609fdb60840b752d99d8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c7d2cb7b-e9b1-5878-b817-0f9d1d6214e9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fcfb5372-871b-5b02-a9bc-b03c517b03fa', 1), '7b8f04e11ad64c35c0115c247887ebaf32e5646a5bbb609fdb60840b752d99d8',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5cb7202dc62e58f13f9a12c015b1b835f8a08fc0cf7ae4bf40dbfc721b24fff2.mp3', 3186, '2026-09-13 05:53:56.876116', 'bc2056e6f341957158cf1e65586d04b795d2729afc819298574beac234f84908', 'validated', '{"audio_key":"5cb7202dc62e58f13f9a12c015b1b835f8a08fc0cf7ae4bf40dbfc721b24fff2","entity_key":"d_study_goals_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"bc2056e6f341957158cf1e65586d04b795d2729afc819298574beac234f84908","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/5cb7202dc62e58f13f9a12c015b1b835f8a08fc0cf7ae4bf40dbfc721b24fff2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_technology_03:2 -> audio/generated/de-DE/dialogues/5d5609dce2e53f15bc227258983afa93b3926a9df5d396c7d9c5cb1087ed4f3a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ad4f90f5-be3c-545e-a5eb-9a93dc8f1a71', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_technology_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6b5941127a2d2cf0e1b3f7288f41a0ad913f6277e7fbef74b1bbac9990a207ad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('48e5d50d-5c85-5c6d-9f58-a1135bd44474', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ad4f90f5-be3c-545e-a5eb-9a93dc8f1a71', 1), '6b5941127a2d2cf0e1b3f7288f41a0ad913f6277e7fbef74b1bbac9990a207ad',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5d5609dce2e53f15bc227258983afa93b3926a9df5d396c7d9c5cb1087ed4f3a.mp3', 3291, '2026-09-13 05:53:57.595052', '3d6d52c93f65d08048c9a7ab375942d7102a22077bc5e9ef61747b2301306615', 'validated', '{"audio_key":"5d5609dce2e53f15bc227258983afa93b3926a9df5d396c7d9c5cb1087ed4f3a","entity_key":"d_media_technology_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"3d6d52c93f65d08048c9a7ab375942d7102a22077bc5e9ef61747b2301306615","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/5d5609dce2e53f15bc227258983afa93b3926a9df5d396c7d9c5cb1087ed4f3a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_work_experience_02:4 -> audio/generated/de-DE/dialogues/5d77010c670cc61edbc8cb9cd643230bbe6b41603c1c62790e286111b91524e4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a2d36bc4-5fe0-58a1-8ad5-4feba16f369b', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_work_experience_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9fc7e959a1958f25c7e251e69222b45983b5a4c3df2ec915314c97e9ba131561'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6377b3e2-20fe-5641-ae78-c1f05511562b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a2d36bc4-5fe0-58a1-8ad5-4feba16f369b', 1), '9fc7e959a1958f25c7e251e69222b45983b5a4c3df2ec915314c97e9ba131561',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5d77010c670cc61edbc8cb9cd643230bbe6b41603c1c62790e286111b91524e4.mp3', 2533, '2026-09-13 05:53:58.003684', 'c442193d0d5ec7e6445bba607355f5ad26cd7c374aaab8bd994df707c80f7797', 'validated', '{"audio_key":"5d77010c670cc61edbc8cb9cd643230bbe6b41603c1c62790e286111b91524e4","entity_key":"d_work_experience_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"c442193d0d5ec7e6445bba607355f5ad26cd7c374aaab8bd994df707c80f7797","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/5d77010c670cc61edbc8cb9cd643230bbe6b41603c1c62790e286111b91524e4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_agree_disagree_02:1 -> audio/generated/de-DE/dialogues/608b3f0f97b42afe17476477d13d22ae503f77f13a30a91bae7119610668321d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('23e2a29c-4cd3-524b-8b2a-9608822bbc7f', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_agree_disagree_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '064f25e8c23df0555cf48bb99a0ef93b22d652315fd2fcaa2aa2918a3b9d09de'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('589a69d8-6d7b-5a88-8428-30ec2d38a620', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('23e2a29c-4cd3-524b-8b2a-9608822bbc7f', 1), '064f25e8c23df0555cf48bb99a0ef93b22d652315fd2fcaa2aa2918a3b9d09de',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/608b3f0f97b42afe17476477d13d22ae503f77f13a30a91bae7119610668321d.mp3', 2220, '2026-09-13 05:53:58.634221', 'f693c3fef5e128a40f560f758be882fcb4051971fcb27aa510b5b92ccf20d158', 'validated', '{"audio_key":"608b3f0f97b42afe17476477d13d22ae503f77f13a30a91bae7119610668321d","entity_key":"d_agree_disagree_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f693c3fef5e128a40f560f758be882fcb4051971fcb27aa510b5b92ccf20d158","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/608b3f0f97b42afe17476477d13d22ae503f77f13a30a91bae7119610668321d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_study_goals_01:4 -> audio/generated/de-DE/dialogues/616753a1301941ef6495a7e4382faee4cc6fa52cfad9cade2a6bb7500caf7f5d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8f51d2a4-7c7c-5528-a042-8e5f7142b571', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_study_goals_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '241dbf0a112138966c27c0cb29dc027edf107e61e58556053884b3536897c754'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fe02142b-9b78-5b91-a366-368a9c453fda', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8f51d2a4-7c7c-5528-a042-8e5f7142b571', 1), '241dbf0a112138966c27c0cb29dc027edf107e61e58556053884b3536897c754',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/616753a1301941ef6495a7e4382faee4cc6fa52cfad9cade2a6bb7500caf7f5d.mp3', 2821, '2026-09-13 05:53:59.177173', '4cbad551a960ff7fc4e049af14f963fdb3e5bc69ca9362ca25b9ceb55eaffdad', 'validated', '{"audio_key":"616753a1301941ef6495a7e4382faee4cc6fa52cfad9cade2a6bb7500caf7f5d","entity_key":"d_study_goals_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"4cbad551a960ff7fc4e049af14f963fdb3e5bc69ca9362ca25b9ceb55eaffdad","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/616753a1301941ef6495a7e4382faee4cc6fa52cfad9cade2a6bb7500caf7f5d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_agree_disagree_03:4 -> audio/generated/de-DE/dialogues/658211e44d474e473a35140ef84ac7dbb32aed748f31f337b7b4ce03311fc736.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('34ec5194-4ffe-5f47-afcd-1c47a5da0d40', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_agree_disagree_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4de7f589bbb007b54822a7ae0c70acfca934ce950f98450e7bd6f15ddc44c112'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5aab16d0-f4a8-520a-9bd3-48479f62e503', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('34ec5194-4ffe-5f47-afcd-1c47a5da0d40', 1), '4de7f589bbb007b54822a7ae0c70acfca934ce950f98450e7bd6f15ddc44c112',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/658211e44d474e473a35140ef84ac7dbb32aed748f31f337b7b4ce03311fc736.mp3', 2507, '2026-09-13 05:53:59.737034', 'ff5dcb66f177b01926fabdda8664be21f85e745c4f827a00a075db2387f430cb', 'validated', '{"audio_key":"658211e44d474e473a35140ef84ac7dbb32aed748f31f337b7b4ce03311fc736","entity_key":"d_agree_disagree_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ff5dcb66f177b01926fabdda8664be21f85e745c4f827a00a075db2387f430cb","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/658211e44d474e473a35140ef84ac7dbb32aed748f31f337b7b4ce03311fc736.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_neighborhood_community_01:2 -> audio/generated/de-DE/dialogues/6918c91f9a0efd41d82983b21d6ef060f3d26ec4cc73f8ac0c84033d8ce0c320.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9afae951-a6a4-5651-bc26-ce1cfddd71dd', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_neighborhood_community_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a5a81dba528611b8b904c0f05e137b8a446286b9fa020e43a8b011ed34a381a7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8bb0c25c-b0cf-5965-a2dc-092178946334', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9afae951-a6a4-5651-bc26-ce1cfddd71dd', 1), 'a5a81dba528611b8b904c0f05e137b8a446286b9fa020e43a8b011ed34a381a7',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6918c91f9a0efd41d82983b21d6ef060f3d26ec4cc73f8ac0c84033d8ce0c320.mp3', 2220, '2026-09-13 05:54:00.212405', 'a85351f59ed29092510a35c01cc18cf1d1789853f246d9b3e9539b5a6336ea0d', 'validated', '{"audio_key":"6918c91f9a0efd41d82983b21d6ef060f3d26ec4cc73f8ac0c84033d8ce0c320","entity_key":"d_neighborhood_community_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"a85351f59ed29092510a35c01cc18cf1d1789853f246d9b3e9539b5a6336ea0d","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/6918c91f9a0efd41d82983b21d6ef060f3d26ec4cc73f8ac0c84033d8ce0c320.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_experiences_02:2 -> audio/generated/de-DE/dialogues/695c16b3a2f02f1ca99d9e79eb01043f04b6595eab49a445d370cba759158edd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b2654e8e-baed-5010-8caa-c412339f0473', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_experiences_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bb5857b581d86a0c13a6b679a31ebad47262815c9cc2d91b39a61c91e91ad13d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b1c6a545-c337-5c77-928a-3ba18d2aac43', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b2654e8e-baed-5010-8caa-c412339f0473', 1), 'bb5857b581d86a0c13a6b679a31ebad47262815c9cc2d91b39a61c91e91ad13d',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/695c16b3a2f02f1ca99d9e79eb01043f04b6595eab49a445d370cba759158edd.mp3', 3578, '2026-09-13 05:54:01.007630', 'b5f68f0aced425f68252d44f4f49e652d01cee7728d3bcbdbbbf19e65404d8a9', 'validated', '{"audio_key":"695c16b3a2f02f1ca99d9e79eb01043f04b6595eab49a445d370cba759158edd","entity_key":"d_travel_experiences_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"b5f68f0aced425f68252d44f4f49e652d01cee7728d3bcbdbbbf19e65404d8a9","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/695c16b3a2f02f1ca99d9e79eb01043f04b6595eab49a445d370cba759158edd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_study_goals_03:4 -> audio/generated/de-DE/dialogues/6a1e6d8738557de550e8dea2e8750f5e73f5d00f9c285b83b8088d9a4284839a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('30cb4f34-f3b0-5492-944f-a7cd6b4e160c', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_study_goals_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '627c5152d0d577166567324335ce54b39edd5ea914f23daee3c7967a83d6b8a1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ab082803-5eff-53ad-b9ab-500aab3a7353', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('30cb4f34-f3b0-5492-944f-a7cd6b4e160c', 1), '627c5152d0d577166567324335ce54b39edd5ea914f23daee3c7967a83d6b8a1',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6a1e6d8738557de550e8dea2e8750f5e73f5d00f9c285b83b8088d9a4284839a.mp3', 2925, '2026-09-13 05:54:01.361002', 'b4cc6fd635fb9fb9a5b90220948e7cd4ff3b40d419e47d1ccc50cbcdc2dc6212', 'validated', '{"audio_key":"6a1e6d8738557de550e8dea2e8750f5e73f5d00f9c285b83b8088d9a4284839a","entity_key":"d_study_goals_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b4cc6fd635fb9fb9a5b90220948e7cd4ff3b40d419e47d1ccc50cbcdc2dc6212","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/6a1e6d8738557de550e8dea2e8750f5e73f5d00f9c285b83b8088d9a4284839a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_problems_solutions_01:1 -> audio/generated/de-DE/dialogues/6d3ca9e23f7da04cd330ca4d96fdc86de5ac47ad6a0c17f8e20f937740884d4a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('990ba012-f880-5327-b38b-91900455c1fd', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_problems_solutions_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4a98a18945050d591d05c6246de39b000364cebf804fc079cc397b4e949f390a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('608a66b4-d5d3-50ef-9a3a-789346a10c0d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('990ba012-f880-5327-b38b-91900455c1fd', 1), '4a98a18945050d591d05c6246de39b000364cebf804fc079cc397b4e949f390a',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6d3ca9e23f7da04cd330ca4d96fdc86de5ac47ad6a0c17f8e20f937740884d4a.mp3', 2638, '2026-09-13 05:54:02.096156', 'cb164d42b7d135c2e99d48821887be802e956a62c32db2b71b4fba9a0bfaa9f4', 'validated', '{"audio_key":"6d3ca9e23f7da04cd330ca4d96fdc86de5ac47ad6a0c17f8e20f937740884d4a","entity_key":"d_problems_solutions_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"cb164d42b7d135c2e99d48821887be802e956a62c32db2b71b4fba9a0bfaa9f4","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/6d3ca9e23f7da04cd330ca4d96fdc86de5ac47ad6a0c17f8e20f937740884d4a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_experiences_03:1 -> audio/generated/de-DE/dialogues/78cdb47d69285e7955e4cb05b7e17e9c02471d3e7cec104c8efaccdccdf7f2dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a76fb857-e5d2-52d1-9412-40749ea6b5d8', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_experiences_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7ef5b9d29ef4245817cda3599eadcccec4e4ff9195f7e56bfea3938d53805866'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fd689710-eafd-536c-aec4-dc83ed8a8737', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a76fb857-e5d2-52d1-9412-40749ea6b5d8', 1), '7ef5b9d29ef4245817cda3599eadcccec4e4ff9195f7e56bfea3938d53805866',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/78cdb47d69285e7955e4cb05b7e17e9c02471d3e7cec104c8efaccdccdf7f2dd.mp3', 2351, '2026-09-13 05:54:02.427467', '60fe3d1ae71c9ab347a3b9baded14095bbb5b07972656d6907218da1cbbd627e', 'validated', '{"audio_key":"78cdb47d69285e7955e4cb05b7e17e9c02471d3e7cec104c8efaccdccdf7f2dd","entity_key":"d_travel_experiences_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"60fe3d1ae71c9ab347a3b9baded14095bbb5b07972656d6907218da1cbbd627e","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/78cdb47d69285e7955e4cb05b7e17e9c02471d3e7cec104c8efaccdccdf7f2dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_health_habits_01:3 -> audio/generated/de-DE/dialogues/7c767619f8b4d12488b0a9415f29b2e59e19f16b5e96356028a29eb5dac58d78.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('47da574b-1590-5c1d-92c6-10759657edab', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_health_habits_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7a21b8c5542708f429d295a707c17cbc9f9feabee661b474b02c5f47d746c5ed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fce8f343-4776-5db8-9cfe-3606031fa100', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('47da574b-1590-5c1d-92c6-10759657edab', 1), '7a21b8c5542708f429d295a707c17cbc9f9feabee661b474b02c5f47d746c5ed',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7c767619f8b4d12488b0a9415f29b2e59e19f16b5e96356028a29eb5dac58d78.mp3', 3474, '2026-09-13 05:54:03.328723', '8e2d12ce4e072258a172de0be5095403396968640367cce468bb5eb8d2c31a18', 'validated', '{"audio_key":"7c767619f8b4d12488b0a9415f29b2e59e19f16b5e96356028a29eb5dac58d78","entity_key":"d_health_habits_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"8e2d12ce4e072258a172de0be5095403396968640367cce468bb5eb8d2c31a18","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/7c767619f8b4d12488b0a9415f29b2e59e19f16b5e96356028a29eb5dac58d78.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_reasons_02:1 -> audio/generated/de-DE/dialogues/7d0554aadda2a87e60a2fc4c242bdb95613c00d56dc1e4e00d49e0a61a54fb0f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5e2e8515-409b-5301-ab2c-2f45a1249658', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_reasons_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '26217c8eeec8b70a049807d296d9a75ad634ba57b839ceed3cd1a23ebbfd01f8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c1531fb8-f907-5501-baeb-758da6558f6e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5e2e8515-409b-5301-ab2c-2f45a1249658', 1), '26217c8eeec8b70a049807d296d9a75ad634ba57b839ceed3cd1a23ebbfd01f8',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7d0554aadda2a87e60a2fc4c242bdb95613c00d56dc1e4e00d49e0a61a54fb0f.mp3', 2351, '2026-09-13 05:54:03.499333', 'dc49f323b77061bd224e8a0f90d122bc128547c94134d2f05b68c64a5e59c659', 'validated', '{"audio_key":"7d0554aadda2a87e60a2fc4c242bdb95613c00d56dc1e4e00d49e0a61a54fb0f","entity_key":"d_opinions_reasons_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"dc49f323b77061bd224e8a0f90d122bc128547c94134d2f05b68c64a5e59c659","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/7d0554aadda2a87e60a2fc4c242bdb95613c00d56dc1e4e00d49e0a61a54fb0f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_work_experience_03:4 -> audio/generated/de-DE/dialogues/7d80b859d793ac2c4430072e636ec31277fd510c74035319dff7fccafdff1cbd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3e17baf5-2dc1-5655-ad94-61e3f2c2c264', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_work_experience_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bf7232435829d61d9ce67bfa545e54f63525f89509829a028e143e01cfb96e98'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('720a134c-4957-5cee-a226-d7a9583b8dfe', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3e17baf5-2dc1-5655-ad94-61e3f2c2c264', 1), 'bf7232435829d61d9ce67bfa545e54f63525f89509829a028e143e01cfb96e98',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7d80b859d793ac2c4430072e636ec31277fd510c74035319dff7fccafdff1cbd.mp3', 3108, '2026-09-13 05:54:05.043518', '4b489c0de2ff514c822216364bd81cb067e88971b7b8de8f3803bb77716fc9e0', 'validated', '{"audio_key":"7d80b859d793ac2c4430072e636ec31277fd510c74035319dff7fccafdff1cbd","entity_key":"d_work_experience_03:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"4b489c0de2ff514c822216364bd81cb067e88971b7b8de8f3803bb77716fc9e0","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/7d80b859d793ac2c4430072e636ec31277fd510c74035319dff7fccafdff1cbd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_technology_02:1 -> audio/generated/de-DE/dialogues/800af88e6fe4acdfdc9d29833e777398ecbe8bf977e71f0d56b2ba355e1946b4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c9ffbf89-2067-5001-9d4d-041dfa74a988', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_technology_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '772c08c8446db595dc378f2854de4a42da970639aca8882e9b3b51351ab3e2ae'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7636f2e7-e5c0-5254-8325-230781cba075', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c9ffbf89-2067-5001-9d4d-041dfa74a988', 1), '772c08c8446db595dc378f2854de4a42da970639aca8882e9b3b51351ab3e2ae',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/800af88e6fe4acdfdc9d29833e777398ecbe8bf977e71f0d56b2ba355e1946b4.mp3', 3186, '2026-09-13 05:54:04.918274', '7486da093d8176f5cc93c6fac0248c369bdf5c4ea16f9e50246da8596d2d7f5d', 'validated', '{"audio_key":"800af88e6fe4acdfdc9d29833e777398ecbe8bf977e71f0d56b2ba355e1946b4","entity_key":"d_media_technology_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7486da093d8176f5cc93c6fac0248c369bdf5c4ea16f9e50246da8596d2d7f5d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/800af88e6fe4acdfdc9d29833e777398ecbe8bf977e71f0d56b2ba355e1946b4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_problems_solutions_01:3 -> audio/generated/de-DE/dialogues/82c42b2dd6de7e96c6c0e2302fe368c20c3e21eb45b98ecee2614866d887e5e2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('20c20efd-e772-502f-96a0-224daef11882', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_problems_solutions_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0b0e7ff7b5b9801074d705302ae3f70e4e73c778c426bdcb5bc6a6c46a99485b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f0a7f1f5-42f0-539f-9175-440e4da891d1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('20c20efd-e772-502f-96a0-224daef11882', 1), '0b0e7ff7b5b9801074d705302ae3f70e4e73c778c426bdcb5bc6a6c46a99485b',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/82c42b2dd6de7e96c6c0e2302fe368c20c3e21eb45b98ecee2614866d887e5e2.mp3', 2821, '2026-09-13 05:54:06.007581', '192ad97a2d044227aadf439f23ff1e9e50285bdd88e90b897116f63979cfc84b', 'validated', '{"audio_key":"82c42b2dd6de7e96c6c0e2302fe368c20c3e21eb45b98ecee2614866d887e5e2","entity_key":"d_problems_solutions_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"192ad97a2d044227aadf439f23ff1e9e50285bdd88e90b897116f63979cfc84b","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/82c42b2dd6de7e96c6c0e2302fe368c20c3e21eb45b98ecee2614866d887e5e2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_problems_solutions_02:4 -> audio/generated/de-DE/dialogues/8351a9bcb6ef24321ed18974809ce8a916b2e93fd881e2f73c201385c6997f23.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6e211353-2888-5de2-a328-2076fdaa13dd', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_problems_solutions_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '462abf8bcb589591c03750ae4f06d2b79608f22da9ea9af90fd44cfd3a815acf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a1975788-effa-5cb1-a00b-aea788b9c6bb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6e211353-2888-5de2-a328-2076fdaa13dd', 1), '462abf8bcb589591c03750ae4f06d2b79608f22da9ea9af90fd44cfd3a815acf',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8351a9bcb6ef24321ed18974809ce8a916b2e93fd881e2f73c201385c6997f23.mp3', 2168, '2026-09-13 05:54:06.126500', 'af51356677782a1d8bb745dc2e040177ff85a267e8f32f7ba36e0d83991e8af2', 'validated', '{"audio_key":"8351a9bcb6ef24321ed18974809ce8a916b2e93fd881e2f73c201385c6997f23","entity_key":"d_problems_solutions_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"af51356677782a1d8bb745dc2e040177ff85a267e8f32f7ba36e0d83991e8af2","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/8351a9bcb6ef24321ed18974809ce8a916b2e93fd881e2f73c201385c6997f23.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_reasons_02:2 -> audio/generated/de-DE/dialogues/839adf65b45ca7c0f4360717381b1587416cf069a4a30f8bfc3701494015231c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('011242bd-8f12-5e5b-96a8-e9ac2d017697', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_reasons_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f8432bf30d7c15a7f16f262078b4cfbea44824c8507d48d23bef389ed27fd365'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e5c3664e-94a7-56c1-9598-77693dbdbfd8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('011242bd-8f12-5e5b-96a8-e9ac2d017697', 1), 'f8432bf30d7c15a7f16f262078b4cfbea44824c8507d48d23bef389ed27fd365',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/839adf65b45ca7c0f4360717381b1587416cf069a4a30f8bfc3701494015231c.mp3', 2638, '2026-09-13 05:54:07.088742', 'a4592c592d29cc290e18e927d720a94e7ba042aeabb0d7c112c6387888774054', 'validated', '{"audio_key":"839adf65b45ca7c0f4360717381b1587416cf069a4a30f8bfc3701494015231c","entity_key":"d_opinions_reasons_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"a4592c592d29cc290e18e927d720a94e7ba042aeabb0d7c112c6387888774054","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/839adf65b45ca7c0f4360717381b1587416cf069a4a30f8bfc3701494015231c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_work_experience_03:1 -> audio/generated/de-DE/dialogues/843b1290c6aa422e46bd65f1f700572cbfbeed2e6619cb5e083ebeed4812c14d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2165be52-cae3-5805-8487-47372391890c', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_work_experience_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '588b9ac3179dd5d041736a662946af14e88075206e829c49e82f367a61ee6e0a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5f0c606a-9a93-51bf-928b-bec565c87886', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2165be52-cae3-5805-8487-47372391890c', 1), '588b9ac3179dd5d041736a662946af14e88075206e829c49e82f367a61ee6e0a',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/843b1290c6aa422e46bd65f1f700572cbfbeed2e6619cb5e083ebeed4812c14d.mp3', 2168, '2026-09-13 05:54:07.176437', '255b7e483561b1100a7ad3d74a0d73fb11213c8641e446f9bacb5c6aa0a8eb86', 'validated', '{"audio_key":"843b1290c6aa422e46bd65f1f700572cbfbeed2e6619cb5e083ebeed4812c14d","entity_key":"d_work_experience_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"255b7e483561b1100a7ad3d74a0d73fb11213c8641e446f9bacb5c6aa0a8eb86","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/843b1290c6aa422e46bd65f1f700572cbfbeed2e6619cb5e083ebeed4812c14d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_reasons_03:2 -> audio/generated/de-DE/dialogues/8814d0fbee2a83023c6dcf932d0ba7efafe4ed94e2fb4b0c70d4afe856cdaaa6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('aac4b45e-2c90-5e4d-84ef-e869c9b18849', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_reasons_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ca8faa5870673877e2e6347bec68bed1283fe1262be19a4c69e1c84715836a53'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d59ee0b4-42bb-5023-b942-13cfb48224e5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('aac4b45e-2c90-5e4d-84ef-e869c9b18849', 1), 'ca8faa5870673877e2e6347bec68bed1283fe1262be19a4c69e1c84715836a53',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8814d0fbee2a83023c6dcf932d0ba7efafe4ed94e2fb4b0c70d4afe856cdaaa6.mp3', 3474, '2026-09-13 05:54:08.320590', '4613e891337005d8d33c6e996b94c6fc17add15a8d18acb4648957cf72d6bb66', 'validated', '{"audio_key":"8814d0fbee2a83023c6dcf932d0ba7efafe4ed94e2fb4b0c70d4afe856cdaaa6","entity_key":"d_opinions_reasons_03:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"4613e891337005d8d33c6e996b94c6fc17add15a8d18acb4648957cf72d6bb66","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/8814d0fbee2a83023c6dcf932d0ba7efafe4ed94e2fb4b0c70d4afe856cdaaa6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_telling_stories_02:3 -> audio/generated/de-DE/dialogues/899c9cfafb798b529352db1f08626bb53624bf63c716b21c20229656e9a6edfd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d794f7fb-c199-5308-bad9-d6c14ccad280', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_telling_stories_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8eb35ae4f1f243cea4b0d95be71743cb014e7d2f38703d70113d79cf05d9cbf8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3403617d-72e5-56be-afe2-6d37e438e56b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d794f7fb-c199-5308-bad9-d6c14ccad280', 1), '8eb35ae4f1f243cea4b0d95be71743cb014e7d2f38703d70113d79cf05d9cbf8',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/899c9cfafb798b529352db1f08626bb53624bf63c716b21c20229656e9a6edfd.mp3', 2873, '2026-09-13 05:54:08.323900', '0cd06f82db0d18da7e9315f70f98bb6946b29c80e6f2ac769f84533ab798f9f8', 'validated', '{"audio_key":"899c9cfafb798b529352db1f08626bb53624bf63c716b21c20229656e9a6edfd","entity_key":"d_telling_stories_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0cd06f82db0d18da7e9315f70f98bb6946b29c80e6f2ac769f84533ab798f9f8","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/899c9cfafb798b529352db1f08626bb53624bf63c716b21c20229656e9a6edfd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_problems_solutions_03:1 -> audio/generated/de-DE/dialogues/8c86d41b20f75fe861a3240bf4cedf1a28de674d3976c2a0993dd7e571a51383.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3586cddb-9374-5fbf-b9b6-84922b4bc98a', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_problems_solutions_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '300d8359f48f469b898bd17a01efa667fd8462e317ea673e01d750cd3e7c0906'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('604f97b2-8a73-5527-adc0-f584a911cf7b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3586cddb-9374-5fbf-b9b6-84922b4bc98a', 1), '300d8359f48f469b898bd17a01efa667fd8462e317ea673e01d750cd3e7c0906',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8c86d41b20f75fe861a3240bf4cedf1a28de674d3976c2a0993dd7e571a51383.mp3', 3108, '2026-09-13 05:54:09.468588', '111693aee07bedfa4990421a7e237dd607f76035606f1d25ce8af0b505abed22', 'validated', '{"audio_key":"8c86d41b20f75fe861a3240bf4cedf1a28de674d3976c2a0993dd7e571a51383","entity_key":"d_problems_solutions_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"111693aee07bedfa4990421a7e237dd607f76035606f1d25ce8af0b505abed22","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/8c86d41b20f75fe861a3240bf4cedf1a28de674d3976c2a0993dd7e571a51383.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_technology_01:1 -> audio/generated/de-DE/dialogues/8e3f963314c9ad77c5df0a763eb901409e2d9228145f1372a53b2157b0ba9c67.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e8e88a0e-39b3-5c4c-86bb-f40d1697b2de', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_technology_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f6d38016083b99ec626e6ba173fe1ce023030aecc3159e846a6c6507a4f73536'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4aaeaffd-a88b-52f4-bb1d-f376282053f6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e8e88a0e-39b3-5c4c-86bb-f40d1697b2de', 1), 'f6d38016083b99ec626e6ba173fe1ce023030aecc3159e846a6c6507a4f73536',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8e3f963314c9ad77c5df0a763eb901409e2d9228145f1372a53b2157b0ba9c67.mp3', 1854, '2026-09-13 05:54:09.365063', '95085daa1315ca49cc1304fb74af48a0f10bf00052e021fef1e2fa2ad69464ac', 'validated', '{"audio_key":"8e3f963314c9ad77c5df0a763eb901409e2d9228145f1372a53b2157b0ba9c67","entity_key":"d_media_technology_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"95085daa1315ca49cc1304fb74af48a0f10bf00052e021fef1e2fa2ad69464ac","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/8e3f963314c9ad77c5df0a763eb901409e2d9228145f1372a53b2157b0ba9c67.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_study_goals_02:4 -> audio/generated/de-DE/dialogues/90572fa7bf3b7c9305f1e275e1ba0b445bdd4023dc62ab86692d109cd627c5dc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c5231d3d-84d5-5235-99ec-61fc37fea7b2', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_study_goals_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4482020fff91082dc4421a09bbd875ce3bac48a9fc4f87ee9d4a65b3bfb21b84'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('142fcb29-df47-55ee-a416-bbf8fce3a568', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c5231d3d-84d5-5235-99ec-61fc37fea7b2', 1), '4482020fff91082dc4421a09bbd875ce3bac48a9fc4f87ee9d4a65b3bfb21b84',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/90572fa7bf3b7c9305f1e275e1ba0b445bdd4023dc62ab86692d109cd627c5dc.mp3', 3709, '2026-09-13 05:54:10.581966', 'bb390451ee6e053edcec7f3071c025cc7a1070348d5355a98169913b8de575e5', 'validated', '{"audio_key":"90572fa7bf3b7c9305f1e275e1ba0b445bdd4023dc62ab86692d109cd627c5dc","entity_key":"d_study_goals_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"bb390451ee6e053edcec7f3071c025cc7a1070348d5355a98169913b8de575e5","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/90572fa7bf3b7c9305f1e275e1ba0b445bdd4023dc62ab86692d109cd627c5dc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_work_experience_03:3 -> audio/generated/de-DE/dialogues/91172222867e1f5b743f20478edde73ee1e928a3ead113f6bc36732c7444c704.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f8f39769-03c4-501a-8bed-2a685dadeeb8', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_work_experience_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e56856eb8e6ab84b35dad2f1f52b0b07a77df3fed5d5ef0f9e9839809a9e483a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ecf00e93-59a6-5dab-be0b-ed1709edfdab', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f8f39769-03c4-501a-8bed-2a685dadeeb8', 1), 'e56856eb8e6ab84b35dad2f1f52b0b07a77df3fed5d5ef0f9e9839809a9e483a',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/91172222867e1f5b743f20478edde73ee1e928a3ead113f6bc36732c7444c704.mp3', 2115, '2026-09-13 05:54:10.552404', '98a0a758a1cebc818c4f5afdf3613cd3d1a6340dd5eafed14cc3539ba23f1bdd', 'validated', '{"audio_key":"91172222867e1f5b743f20478edde73ee1e928a3ead113f6bc36732c7444c704","entity_key":"d_work_experience_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"98a0a758a1cebc818c4f5afdf3613cd3d1a6340dd5eafed14cc3539ba23f1bdd","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/91172222867e1f5b743f20478edde73ee1e928a3ead113f6bc36732c7444c704.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_experiences_02:3 -> audio/generated/de-DE/dialogues/93aff11099e6d388b943a9777870de0c9f1acab0c51b9473531b8785396aa416.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4c6a5e59-82f8-5a48-b598-5a9258b3189c', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_experiences_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6f60a1ee0e9f85a39a50ba1428297f220325a21e62ffdf97e4d82b3930b16b00'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('151584b8-1df5-5a5f-91b1-18d07cb427f9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4c6a5e59-82f8-5a48-b598-5a9258b3189c', 1), '6f60a1ee0e9f85a39a50ba1428297f220325a21e62ffdf97e4d82b3930b16b00',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/93aff11099e6d388b943a9777870de0c9f1acab0c51b9473531b8785396aa416.mp3', 1280, '2026-09-13 05:54:11.548444', 'a9867ec8262e7dc928af31e51d0c29a39ac47cabe7317cd209094f19a7318b74', 'validated', '{"audio_key":"93aff11099e6d388b943a9777870de0c9f1acab0c51b9473531b8785396aa416","entity_key":"d_travel_experiences_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"a9867ec8262e7dc928af31e51d0c29a39ac47cabe7317cd209094f19a7318b74","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/93aff11099e6d388b943a9777870de0c9f1acab0c51b9473531b8785396aa416.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_neighborhood_community_03:2 -> audio/generated/de-DE/dialogues/99320186968bd1199d272ac60721a3c557c81b6ff778108c3093f4adc23de515.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('430563ee-edf0-583a-ba2f-dc662ff222ca', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_neighborhood_community_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1bd6d8acf141c97439e91101e7a46adf92a430e6ed532c8f66df6b1c1d761031'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f3697bb7-dbfd-5cb4-a4d1-b539b66f020d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('430563ee-edf0-583a-ba2f-dc662ff222ca', 1), '1bd6d8acf141c97439e91101e7a46adf92a430e6ed532c8f66df6b1c1d761031',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/99320186968bd1199d272ac60721a3c557c81b6ff778108c3093f4adc23de515.mp3', 2220, '2026-09-13 05:54:11.638041', '59efeda26425489f8f386be3f8bb1015703402365eb8b52568c2f646ca293ca5', 'validated', '{"audio_key":"99320186968bd1199d272ac60721a3c557c81b6ff778108c3093f4adc23de515","entity_key":"d_neighborhood_community_03:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"59efeda26425489f8f386be3f8bb1015703402365eb8b52568c2f646ca293ca5","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/99320186968bd1199d272ac60721a3c557c81b6ff778108c3093f4adc23de515.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_health_habits_02:1 -> audio/generated/de-DE/dialogues/9c19b6d14d421949439a8ee525538342a05486092150b593a1f5a73e0a5a0111.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('95164f17-9ad9-5feb-9e4c-859af8b8677e', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_health_habits_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bd30d33ac421debefd47606240ae0664637e790f60ac563904bbecee4eb44832'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1f1f94f2-48fb-57bc-80a5-f165f588ffed', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('95164f17-9ad9-5feb-9e4c-859af8b8677e', 1), 'bd30d33ac421debefd47606240ae0664637e790f60ac563904bbecee4eb44832',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9c19b6d14d421949439a8ee525538342a05486092150b593a1f5a73e0a5a0111.mp3', 3578, '2026-09-13 05:54:12.724821', 'eab967c28e3e8807a25e30c50464d9495d741127e561d54748af9bc31b4dccd1', 'validated', '{"audio_key":"9c19b6d14d421949439a8ee525538342a05486092150b593a1f5a73e0a5a0111","entity_key":"d_health_habits_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"eab967c28e3e8807a25e30c50464d9495d741127e561d54748af9bc31b4dccd1","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/9c19b6d14d421949439a8ee525538342a05486092150b593a1f5a73e0a5a0111.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_health_habits_01:1 -> audio/generated/de-DE/dialogues/9e1c09fd34ce50aa7367850d5fa73fac545a530321413bcefbc252f4d792b203.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1eaf809e-d3ee-5d60-a30c-469562a9b127', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_health_habits_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1acb6e1e433979e2ef4123265578b68fd3d94f110b0ea3bb4e974617054f56f4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4a4fbefb-e05f-5170-b2c9-3a4bad9a3b64', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1eaf809e-d3ee-5d60-a30c-469562a9b127', 1), '1acb6e1e433979e2ef4123265578b68fd3d94f110b0ea3bb4e974617054f56f4',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9e1c09fd34ce50aa7367850d5fa73fac545a530321413bcefbc252f4d792b203.mp3', 1802, '2026-09-13 05:54:12.635401', '6159324ef645f02e0f13a86f873213711334a9c7ef3dddbee8d18d5ef245ec00', 'validated', '{"audio_key":"9e1c09fd34ce50aa7367850d5fa73fac545a530321413bcefbc252f4d792b203","entity_key":"d_health_habits_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"6159324ef645f02e0f13a86f873213711334a9c7ef3dddbee8d18d5ef245ec00","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/9e1c09fd34ce50aa7367850d5fa73fac545a530321413bcefbc252f4d792b203.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_problems_solutions_02:1 -> audio/generated/de-DE/dialogues/9e52dfd90a31e572f6f8a44308e470df42786a3e68a31661750d8eeeb26c6207.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d7218df7-ae5a-5112-95ae-4be98355cc13', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_problems_solutions_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b81f9febf6d735490d0f9bca1aa0d1aea3a4a62fe7c287a51c17d77304b1e996'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f21d84b3-fadc-5f9e-a423-22eecb617f9f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d7218df7-ae5a-5112-95ae-4be98355cc13', 1), 'b81f9febf6d735490d0f9bca1aa0d1aea3a4a62fe7c287a51c17d77304b1e996',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9e52dfd90a31e572f6f8a44308e470df42786a3e68a31661750d8eeeb26c6207.mp3', 3004, '2026-09-13 05:54:13.764013', 'a02a8f09d4d9ef0e7a312f9f4e90f115e29ac27b2c0a22617a5ae2b23e6120fe', 'validated', '{"audio_key":"9e52dfd90a31e572f6f8a44308e470df42786a3e68a31661750d8eeeb26c6207","entity_key":"d_problems_solutions_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"a02a8f09d4d9ef0e7a312f9f4e90f115e29ac27b2c0a22617a5ae2b23e6120fe","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/9e52dfd90a31e572f6f8a44308e470df42786a3e68a31661750d8eeeb26c6207.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_technology_01:4 -> audio/generated/de-DE/dialogues/a0288b77b42a3369effa8c2ef856c29fffbdf733ec8791088a02c3920f6eab30.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('052bf006-acc0-5eb6-a6f9-c6cf612cf1f5', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_technology_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '63eb2fc278e9b7c6bc6b19961620d481e375c55537b18e7e349657eff33cde37'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2732735b-9de0-51ef-940d-7059b2e0b350', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('052bf006-acc0-5eb6-a6f9-c6cf612cf1f5', 1), '63eb2fc278e9b7c6bc6b19961620d481e375c55537b18e7e349657eff33cde37',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a0288b77b42a3369effa8c2ef856c29fffbdf733ec8791088a02c3920f6eab30.mp3', 2768, '2026-09-13 05:54:13.800663', 'a4bad5fcbe646f877169e5b981e24cf5f6bbf2af19bce0e0859f49387a64c8a5', 'validated', '{"audio_key":"a0288b77b42a3369effa8c2ef856c29fffbdf733ec8791088a02c3920f6eab30","entity_key":"d_media_technology_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"a4bad5fcbe646f877169e5b981e24cf5f6bbf2af19bce0e0859f49387a64c8a5","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/a0288b77b42a3369effa8c2ef856c29fffbdf733ec8791088a02c3920f6eab30.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_agree_disagree_03:1 -> audio/generated/de-DE/dialogues/a35f8d24021b6d6f1529f13fe40de618c8dbdefb547806e094a24a3a7cf99066.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6efd1f01-238f-54d7-aeb7-a1983f1563f5', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_agree_disagree_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c558348a91b77de88638d0ac44e0d737e5937ab572649f1f075893bec9648f23'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('96f8a1e1-7ba7-5926-a552-59693334cfa1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6efd1f01-238f-54d7-aeb7-a1983f1563f5', 1), 'c558348a91b77de88638d0ac44e0d737e5937ab572649f1f075893bec9648f23',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a35f8d24021b6d6f1529f13fe40de618c8dbdefb547806e094a24a3a7cf99066.mp3', 2533, '2026-09-13 05:54:14.862181', '525865689b890488afe878156cad78e8a38d9aabc03c2e5b22a444f42f69c804', 'validated', '{"audio_key":"a35f8d24021b6d6f1529f13fe40de618c8dbdefb547806e094a24a3a7cf99066","entity_key":"d_agree_disagree_03:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"525865689b890488afe878156cad78e8a38d9aabc03c2e5b22a444f42f69c804","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/a35f8d24021b6d6f1529f13fe40de618c8dbdefb547806e094a24a3a7cf99066.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_neighborhood_community_03:1 -> audio/generated/de-DE/dialogues/a49a7ef0d2c9babb31f4e9ddf98ed73c105c44aae2e5cb63a80b1125654a76d0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3ef66c08-7662-5ebe-895e-b951d40ad2f4', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_neighborhood_community_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ece6c3e12168fdf4fe7514049c9e516755d3058f52284361a427c8604e855377'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('376a1047-3d85-5930-b4ff-e0a9c554994e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3ef66c08-7662-5ebe-895e-b951d40ad2f4', 1), 'ece6c3e12168fdf4fe7514049c9e516755d3058f52284361a427c8604e855377',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a49a7ef0d2c9babb31f4e9ddf98ed73c105c44aae2e5cb63a80b1125654a76d0.mp3', 3239, '2026-09-13 05:54:14.983224', 'd2a835d9e31e2ed359fd6d0cfbd88fbd2ca3a4dcd4ab99a1fdcbc3a88e49c113', 'validated', '{"audio_key":"a49a7ef0d2c9babb31f4e9ddf98ed73c105c44aae2e5cb63a80b1125654a76d0","entity_key":"d_neighborhood_community_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"d2a835d9e31e2ed359fd6d0cfbd88fbd2ca3a4dcd4ab99a1fdcbc3a88e49c113","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/a49a7ef0d2c9babb31f4e9ddf98ed73c105c44aae2e5cb63a80b1125654a76d0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_study_goals_01:3 -> audio/generated/de-DE/dialogues/a569b78f82e9e7192e28ee5d5724519eae1f3d5b66de3b0e7d1485092aa1ef24.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4bbf3c44-e78a-5b7a-84e1-779ebef512b6', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_study_goals_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fd406a2d2f63ce4ac6a86874a05a05da74cc0152ae2f866e1a578513218ec01c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('50b54811-5b0d-53e7-9c30-acaa5144dfd1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4bbf3c44-e78a-5b7a-84e1-779ebef512b6', 1), 'fd406a2d2f63ce4ac6a86874a05a05da74cc0152ae2f866e1a578513218ec01c',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a569b78f82e9e7192e28ee5d5724519eae1f3d5b66de3b0e7d1485092aa1ef24.mp3', 1933, '2026-09-13 05:54:15.952331', 'bfb0388b5d10c2690f470007d684c6993b8959aeda4333cffc4eb9945c5fd6e2', 'validated', '{"audio_key":"a569b78f82e9e7192e28ee5d5724519eae1f3d5b66de3b0e7d1485092aa1ef24","entity_key":"d_study_goals_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"bfb0388b5d10c2690f470007d684c6993b8959aeda4333cffc4eb9945c5fd6e2","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/a569b78f82e9e7192e28ee5d5724519eae1f3d5b66de3b0e7d1485092aa1ef24.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_technology_03:4 -> audio/generated/de-DE/dialogues/a8ea7386fdf2f7e10f444efea989c40038122d5abf5303d0146746150f1def05.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b22ad83a-5f16-56bf-bcc7-a5a8a95899ce', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_technology_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '581d2f3b46eb327870f9a99c95ef9d99faa1f00b76efdfc2c137e7a0b77c3c2a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b039bb11-04a1-5c3a-afb8-00aa47ad44d9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b22ad83a-5f16-56bf-bcc7-a5a8a95899ce', 1), '581d2f3b46eb327870f9a99c95ef9d99faa1f00b76efdfc2c137e7a0b77c3c2a',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a8ea7386fdf2f7e10f444efea989c40038122d5abf5303d0146746150f1def05.mp3', 4362, '2026-09-13 05:54:16.242958', 'c11ea1efe28d099a0a081463094b85af223400cd76f834b15df4b272d3775430', 'validated', '{"audio_key":"a8ea7386fdf2f7e10f444efea989c40038122d5abf5303d0146746150f1def05","entity_key":"d_media_technology_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c11ea1efe28d099a0a081463094b85af223400cd76f834b15df4b272d3775430","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/a8ea7386fdf2f7e10f444efea989c40038122d5abf5303d0146746150f1def05.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_problems_solutions_03:4 -> audio/generated/de-DE/dialogues/ac5d113843cefd1ab871009693d53feae5fb10f79ea4a104b6ed518fc75dc07d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1bfa5f8c-7afe-5e51-a7fb-9cf0a85de7c9', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_problems_solutions_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f01a98eba960fef69c3df20b258537a3bf85e5de04e7b78aed8816117c531d92'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c371311f-2007-5948-a71e-4efa595ae730', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1bfa5f8c-7afe-5e51-a7fb-9cf0a85de7c9', 1), 'f01a98eba960fef69c3df20b258537a3bf85e5de04e7b78aed8816117c531d92',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ac5d113843cefd1ab871009693d53feae5fb10f79ea4a104b6ed518fc75dc07d.mp3', 2586, '2026-09-13 05:54:17.045051', '664dcefa98cf4fdee370a16b855733a32b53409327d698d7408ebb1dea714306', 'validated', '{"audio_key":"ac5d113843cefd1ab871009693d53feae5fb10f79ea4a104b6ed518fc75dc07d","entity_key":"d_problems_solutions_03:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"664dcefa98cf4fdee370a16b855733a32b53409327d698d7408ebb1dea714306","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/ac5d113843cefd1ab871009693d53feae5fb10f79ea4a104b6ed518fc75dc07d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_study_goals_02:2 -> audio/generated/de-DE/dialogues/ad265d952e1014485bac44de0a199087612fdb35ca0ffddb59f25e6e81360a59.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('41516143-5e31-5a7a-9e46-08bf54c63e05', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_study_goals_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'abeab2313b0ffeb7d0e2c8d7f258787c249a4fe7c646d1055a53ee1cb128ae66'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c0445e7c-5355-5264-b71b-7344e99f20b9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('41516143-5e31-5a7a-9e46-08bf54c63e05', 1), 'abeab2313b0ffeb7d0e2c8d7f258787c249a4fe7c646d1055a53ee1cb128ae66',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ad265d952e1014485bac44de0a199087612fdb35ca0ffddb59f25e6e81360a59.mp3', 3709, '2026-09-13 05:54:17.426288', '45c7a1ec6759f9781b799f662cd175fb401834880b85ca147750c782f215cfe3', 'validated', '{"audio_key":"ad265d952e1014485bac44de0a199087612fdb35ca0ffddb59f25e6e81360a59","entity_key":"d_study_goals_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"45c7a1ec6759f9781b799f662cd175fb401834880b85ca147750c782f215cfe3","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/ad265d952e1014485bac44de0a199087612fdb35ca0ffddb59f25e6e81360a59.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_experiences_03:3 -> audio/generated/de-DE/dialogues/b07d37bb90e5c23226dbe9e74cf80526e6c3321b95a2db930d249e33ac31cc33.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('648e7b8e-8b5e-5300-befc-e1bd28a11f33', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_experiences_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4cbb8ea26d4628ba3d0a352786a9829050201abcee2fdf6df7e5202fb4137db1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bb296e72-5665-5b79-a2e7-6ac6acdb6d28', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('648e7b8e-8b5e-5300-befc-e1bd28a11f33', 1), '4cbb8ea26d4628ba3d0a352786a9829050201abcee2fdf6df7e5202fb4137db1',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b07d37bb90e5c23226dbe9e74cf80526e6c3321b95a2db930d249e33ac31cc33.mp3', 1906, '2026-09-13 05:54:18.096955', '0a3af6b7b47d0a23116616f39accb4bb7575b92c7bd8ecc972ca3fa32acd092b', 'validated', '{"audio_key":"b07d37bb90e5c23226dbe9e74cf80526e6c3321b95a2db930d249e33ac31cc33","entity_key":"d_travel_experiences_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"0a3af6b7b47d0a23116616f39accb4bb7575b92c7bd8ecc972ca3fa32acd092b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/b07d37bb90e5c23226dbe9e74cf80526e6c3321b95a2db930d249e33ac31cc33.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_experiences_01:3 -> audio/generated/de-DE/dialogues/b1b61a07c25cfc9babba32c30db081ee30108251b64d0a9add261ca4a1dfcd37.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6ea91176-8c13-52e6-b192-2222b6ce17ab', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_experiences_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2201257e9accdb9c05f083bccfb32daf5fee3137c2b1b2f2c98dbfd75cdf84c8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('850ee5a7-964a-558c-a003-ece5bc58d593', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6ea91176-8c13-52e6-b192-2222b6ce17ab', 1), '2201257e9accdb9c05f083bccfb32daf5fee3137c2b1b2f2c98dbfd75cdf84c8',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b1b61a07c25cfc9babba32c30db081ee30108251b64d0a9add261ca4a1dfcd37.mp3', 1933, '2026-09-13 05:54:18.460734', '7f31de1f6da60681d8f4fb621001f662d4bb41dc471900053f244df006d1b628', 'validated', '{"audio_key":"b1b61a07c25cfc9babba32c30db081ee30108251b64d0a9add261ca4a1dfcd37","entity_key":"d_travel_experiences_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"7f31de1f6da60681d8f4fb621001f662d4bb41dc471900053f244df006d1b628","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/b1b61a07c25cfc9babba32c30db081ee30108251b64d0a9add261ca4a1dfcd37.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_agree_disagree_02:2 -> audio/generated/de-DE/dialogues/b3c12c9f9902fdbf3080e363fa415e36b7a6fe0afe90cf227463a7b0c20b922e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ea26b418-ecf6-5b1c-9e5f-89c0d115f96c', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_agree_disagree_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '305edd1c1a59a5f282a3d41dfcde78880d14ac0fbe90fd07ea07e7ebea256afb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7cefb06a-005d-574d-b948-4a6e90ca0623', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ea26b418-ecf6-5b1c-9e5f-89c0d115f96c', 1), '305edd1c1a59a5f282a3d41dfcde78880d14ac0fbe90fd07ea07e7ebea256afb',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b3c12c9f9902fdbf3080e363fa415e36b7a6fe0afe90cf227463a7b0c20b922e.mp3', 4493, '2026-09-13 05:54:19.377449', 'd1c7b6a0e789b9084ea07cf52d97a52df1bb5f0769a2a5fa41fb9a7cae956aed', 'validated', '{"audio_key":"b3c12c9f9902fdbf3080e363fa415e36b7a6fe0afe90cf227463a7b0c20b922e","entity_key":"d_agree_disagree_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"d1c7b6a0e789b9084ea07cf52d97a52df1bb5f0769a2a5fa41fb9a7cae956aed","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/b3c12c9f9902fdbf3080e363fa415e36b7a6fe0afe90cf227463a7b0c20b922e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_telling_stories_03:1 -> audio/generated/de-DE/dialogues/b57063a032dc1c21a3199ba0c28378dac25c9128a589336fa335e56f20ba43e6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('31d8e0cb-4f6c-532a-b5eb-f169faf7e590', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_telling_stories_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '55193caeb00e1c655bdd0ff7370b966ef9a5ac6062c0359efa9154ddbda1cc35'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3528c1aa-d998-53a8-bccd-d92585b418a3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('31d8e0cb-4f6c-532a-b5eb-f169faf7e590', 1), '55193caeb00e1c655bdd0ff7370b966ef9a5ac6062c0359efa9154ddbda1cc35',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b57063a032dc1c21a3199ba0c28378dac25c9128a589336fa335e56f20ba43e6.mp3', 1802, '2026-09-13 05:54:19.553659', 'c020ed2cc6a50ddb26b1c6afb81d6dd9afab93d1c7c52fc1fc1f514670fab224', 'validated', '{"audio_key":"b57063a032dc1c21a3199ba0c28378dac25c9128a589336fa335e56f20ba43e6","entity_key":"d_telling_stories_03:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c020ed2cc6a50ddb26b1c6afb81d6dd9afab93d1c7c52fc1fc1f514670fab224","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/b57063a032dc1c21a3199ba0c28378dac25c9128a589336fa335e56f20ba43e6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_reasons_01:2 -> audio/generated/de-DE/dialogues/b751291f72a4a3f787947495bc2971e66ca02f0278cc7df87e5a268b549bdbd1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d5188743-6fc8-5599-9c4e-580a7b6937ee', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_reasons_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '279435a3c2951c00759ed344b937ad9f56503fc7c7bfb9614b0399bde99138f1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('548ea3f9-b520-531c-aedc-de6e3a01bdae', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d5188743-6fc8-5599-9c4e-580a7b6937ee', 1), '279435a3c2951c00759ed344b937ad9f56503fc7c7bfb9614b0399bde99138f1',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b751291f72a4a3f787947495bc2971e66ca02f0278cc7df87e5a268b549bdbd1.mp3', 3186, '2026-09-13 05:54:20.561672', 'a5a18d0f236a6f605fe3418e8e2cf10e776c6fc315119cab94d0c58764543411', 'validated', '{"audio_key":"b751291f72a4a3f787947495bc2971e66ca02f0278cc7df87e5a268b549bdbd1","entity_key":"d_opinions_reasons_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"a5a18d0f236a6f605fe3418e8e2cf10e776c6fc315119cab94d0c58764543411","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/b751291f72a4a3f787947495bc2971e66ca02f0278cc7df87e5a268b549bdbd1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_neighborhood_community_01:3 -> audio/generated/de-DE/dialogues/be6f1a62fd3b3814040e76e7663cdbdc8516de02271e77e21da1b5785bcb2444.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a441457f-a982-5ca1-9edd-78a1230b7e35', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_neighborhood_community_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da3e5d1b55e0a08aaa00293068d7ecf94741ea694703567ff32bbadc11928804'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2b331b46-0bd4-529c-8bbe-8f3b9bd9264a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a441457f-a982-5ca1-9edd-78a1230b7e35', 1), 'da3e5d1b55e0a08aaa00293068d7ecf94741ea694703567ff32bbadc11928804',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/be6f1a62fd3b3814040e76e7663cdbdc8516de02271e77e21da1b5785bcb2444.mp3', 2533, '2026-09-13 05:54:20.666196', 'a983b99d87c6cd7f40f59cdabe3c47e94de2fa2b39023c8022e9548c95b7b392', 'validated', '{"audio_key":"be6f1a62fd3b3814040e76e7663cdbdc8516de02271e77e21da1b5785bcb2444","entity_key":"d_neighborhood_community_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"a983b99d87c6cd7f40f59cdabe3c47e94de2fa2b39023c8022e9548c95b7b392","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/be6f1a62fd3b3814040e76e7663cdbdc8516de02271e77e21da1b5785bcb2444.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_reasons_01:1 -> audio/generated/de-DE/dialogues/be93f84bf90ca54ad638ab40c4de28b6f815c2fb7479e3425e233e20a654bda5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c5dcd879-04ce-5706-9d0b-487417b9d246', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_reasons_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '658422310e34c62cb7537111af8e80595f1ce986645e4f66afe6e0af528cb171'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4d642935-9173-538d-b0c2-7e1f9ccfe7db', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c5dcd879-04ce-5706-9d0b-487417b9d246', 1), '658422310e34c62cb7537111af8e80595f1ce986645e4f66afe6e0af528cb171',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/be93f84bf90ca54ad638ab40c4de28b6f815c2fb7479e3425e233e20a654bda5.mp3', 2324, '2026-09-13 05:54:21.631561', 'e2f42bf04d74c7fc2ddd4770f8d60b04ef1880791764652b36e88d647e7b4f74', 'validated', '{"audio_key":"be93f84bf90ca54ad638ab40c4de28b6f815c2fb7479e3425e233e20a654bda5","entity_key":"d_opinions_reasons_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"e2f42bf04d74c7fc2ddd4770f8d60b04ef1880791764652b36e88d647e7b4f74","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/be93f84bf90ca54ad638ab40c4de28b6f815c2fb7479e3425e233e20a654bda5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_agree_disagree_01:4 -> audio/generated/de-DE/dialogues/c2d9171932b189c1cd688bfabd96d7f6b7eac7979276bd964c30ba1894c825e8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f8365827-cb23-595c-8f4d-907f979db47d', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_agree_disagree_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd8d3428cb94362cad9eff83201c95b2e725815701a2fd1c7d997158be95b1b94'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4192d102-42f7-542a-ade6-7599117062ff', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f8365827-cb23-595c-8f4d-907f979db47d', 1), 'd8d3428cb94362cad9eff83201c95b2e725815701a2fd1c7d997158be95b1b94',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c2d9171932b189c1cd688bfabd96d7f6b7eac7979276bd964c30ba1894c825e8.mp3', 3108, '2026-09-13 05:54:21.858720', '6fdc8d567f02f722fb7e64b96270441f76a673224a29ec7c1463db2d15005f33', 'validated', '{"audio_key":"c2d9171932b189c1cd688bfabd96d7f6b7eac7979276bd964c30ba1894c825e8","entity_key":"d_agree_disagree_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"6fdc8d567f02f722fb7e64b96270441f76a673224a29ec7c1463db2d15005f33","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/c2d9171932b189c1cd688bfabd96d7f6b7eac7979276bd964c30ba1894c825e8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_telling_stories_01:2 -> audio/generated/de-DE/dialogues/c71088f327e9f9ccf86e47263ba83d7ba852d2c776bd950676dcdedcdae4055c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('486691bc-fdbb-5966-b73f-499d7554416a', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_telling_stories_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a14aecf80fc7b3630efc646346d89c4754c0458a3fb4f4b6b267130010e33e32'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4d9c0e7d-08fa-513b-8049-df47dc04894f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('486691bc-fdbb-5966-b73f-499d7554416a', 1), 'a14aecf80fc7b3630efc646346d89c4754c0458a3fb4f4b6b267130010e33e32',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c71088f327e9f9ccf86e47263ba83d7ba852d2c776bd950676dcdedcdae4055c.mp3', 2220, '2026-09-13 05:54:22.777247', '2af53ba9bd3ccfba941d64aede06e8cfbda7c6595321b4aa9c457a927a17f9a2', 'validated', '{"audio_key":"c71088f327e9f9ccf86e47263ba83d7ba852d2c776bd950676dcdedcdae4055c","entity_key":"d_telling_stories_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"2af53ba9bd3ccfba941d64aede06e8cfbda7c6595321b4aa9c457a927a17f9a2","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/c71088f327e9f9ccf86e47263ba83d7ba852d2c776bd950676dcdedcdae4055c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_reasons_01:3 -> audio/generated/de-DE/dialogues/c74651fdff6c96d1be469f698b205c6a56fcb5ed89e2e6add64f1341b2cf9216.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('adea88ca-403f-5a61-8a9e-bf7da9fadb60', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_reasons_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e1b7b934e8c21439e0ba2a39c25e0f71150de70291406c495e1003d7a7d4d6a6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bdb5c215-04b9-5343-8603-7270f6b8ccfc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('adea88ca-403f-5a61-8a9e-bf7da9fadb60', 1), 'e1b7b934e8c21439e0ba2a39c25e0f71150de70291406c495e1003d7a7d4d6a6',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c74651fdff6c96d1be469f698b205c6a56fcb5ed89e2e6add64f1341b2cf9216.mp3', 2168, '2026-09-13 05:54:22.923962', 'c9830b725b92036afd855610fb7f890124ebe801f8bff9a1c31d5ceb0425828e', 'validated', '{"audio_key":"c74651fdff6c96d1be469f698b205c6a56fcb5ed89e2e6add64f1341b2cf9216","entity_key":"d_opinions_reasons_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"c9830b725b92036afd855610fb7f890124ebe801f8bff9a1c31d5ceb0425828e","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/c74651fdff6c96d1be469f698b205c6a56fcb5ed89e2e6add64f1341b2cf9216.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_work_experience_03:2 -> audio/generated/de-DE/dialogues/cb45bd30ee6ebcc9372a371c1df12d58772a5a2b53244605cd6d542c217df1bf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('312739aa-afcc-5ac2-9792-2f89e25fa6e0', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_work_experience_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c6c3ff8dc71548e3e951b2869b663c2ddaeef5bf87f7b58b3a02b8d82fb610aa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bddea218-5014-5e31-ad13-e1b2c0cf27a7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('312739aa-afcc-5ac2-9792-2f89e25fa6e0', 1), 'c6c3ff8dc71548e3e951b2869b663c2ddaeef5bf87f7b58b3a02b8d82fb610aa',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/cb45bd30ee6ebcc9372a371c1df12d58772a5a2b53244605cd6d542c217df1bf.mp3', 2951, '2026-09-13 05:54:23.887657', '30f08444a0aaa7dcc54cbcfc5dff220ff87e2b8eaed89b0ce794292cfcb182bb', 'validated', '{"audio_key":"cb45bd30ee6ebcc9372a371c1df12d58772a5a2b53244605cd6d542c217df1bf","entity_key":"d_work_experience_03:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"30f08444a0aaa7dcc54cbcfc5dff220ff87e2b8eaed89b0ce794292cfcb182bb","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/cb45bd30ee6ebcc9372a371c1df12d58772a5a2b53244605cd6d542c217df1bf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_telling_stories_03:4 -> audio/generated/de-DE/dialogues/cc25285059e44ea661a34d9d752df33d5c8aaab25d2547fdc0830e01b4a30450.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0ca2f326-fe9d-59bd-ad34-2a63807e9e31', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_telling_stories_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7f253c98a48514e60c0face6efda360df815c590834601c5da2dec93f52b5d7e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d0e88924-aa3b-5c8d-b090-f5a248b09062', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0ca2f326-fe9d-59bd-ad34-2a63807e9e31', 1), '7f253c98a48514e60c0face6efda360df815c590834601c5da2dec93f52b5d7e',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/cc25285059e44ea661a34d9d752df33d5c8aaab25d2547fdc0830e01b4a30450.mp3', 2351, '2026-09-13 05:54:24.006495', 'f6cec507a5c3a709240bd47ce5399f2bd5ffb8cd1e35d9bfcdccb5f7c5050748', 'validated', '{"audio_key":"cc25285059e44ea661a34d9d752df33d5c8aaab25d2547fdc0830e01b4a30450","entity_key":"d_telling_stories_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f6cec507a5c3a709240bd47ce5399f2bd5ffb8cd1e35d9bfcdccb5f7c5050748","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/cc25285059e44ea661a34d9d752df33d5c8aaab25d2547fdc0830e01b4a30450.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_problems_solutions_02:3 -> audio/generated/de-DE/dialogues/cf98774777dde8c72129eb208dde0932116848036d9ca1d986d79465b2f180ad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9439478c-c09f-5067-838e-d3e4eacfcd6a', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_problems_solutions_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '31182912be6c83eb5498a84022f9512367d428fc361a9f31b44846ba6e3aa49b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('513c7fc6-dfa9-5388-b5ab-7da06519dae6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9439478c-c09f-5067-838e-d3e4eacfcd6a', 1), '31182912be6c83eb5498a84022f9512367d428fc361a9f31b44846ba6e3aa49b',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/cf98774777dde8c72129eb208dde0932116848036d9ca1d986d79465b2f180ad.mp3', 1567, '2026-09-13 05:54:24.881349', '05f2ead5193562c8f1991106c5c0116cd44ea9fb824aa2b7798927d963402650', 'validated', '{"audio_key":"cf98774777dde8c72129eb208dde0932116848036d9ca1d986d79465b2f180ad","entity_key":"d_problems_solutions_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"05f2ead5193562c8f1991106c5c0116cd44ea9fb824aa2b7798927d963402650","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/cf98774777dde8c72129eb208dde0932116848036d9ca1d986d79465b2f180ad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_reasons_03:1 -> audio/generated/de-DE/dialogues/d09fd390a6ac0d6bae5cea975661c10d9d3cc3cb34544237ab995ea17bbf5491.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ce97626e-3721-5e5a-b71e-847efc6f252e', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_reasons_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '98176d32b58da31f8f04b7d5a6bd24b9932d7bceac130c47700ef4997c794c98'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7889d383-c65d-5be6-8d94-64d7df56a7de', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ce97626e-3721-5e5a-b71e-847efc6f252e', 1), '98176d32b58da31f8f04b7d5a6bd24b9932d7bceac130c47700ef4997c794c98',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d09fd390a6ac0d6bae5cea975661c10d9d3cc3cb34544237ab995ea17bbf5491.mp3', 1619, '2026-09-13 05:54:25.030444', '0a2ad8d559d316b3eb4953b9dbe484663637f03964d96fa034081a5343d4fca5', 'validated', '{"audio_key":"d09fd390a6ac0d6bae5cea975661c10d9d3cc3cb34544237ab995ea17bbf5491","entity_key":"d_opinions_reasons_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"0a2ad8d559d316b3eb4953b9dbe484663637f03964d96fa034081a5343d4fca5","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/d09fd390a6ac0d6bae5cea975661c10d9d3cc3cb34544237ab995ea17bbf5491.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_technology_01:3 -> audio/generated/de-DE/dialogues/d2e4cb991c377c517e9901a4a23e2ebf69012f7dd54285c73b61e0e5afdf0dce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9671234d-8004-512e-ad14-f313321deff1', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_technology_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c9fb1e5ec56a101a775c3a09e298df129ac68befb37d8997bc9fbdca706c367e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('08a25ee2-31bd-5f5d-8bb4-38192f588387', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9671234d-8004-512e-ad14-f313321deff1', 1), 'c9fb1e5ec56a101a775c3a09e298df129ac68befb37d8997bc9fbdca706c367e',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d2e4cb991c377c517e9901a4a23e2ebf69012f7dd54285c73b61e0e5afdf0dce.mp3', 2455, '2026-09-13 05:54:25.978637', 'baf103e172f2a09a7e22212cb992f969ccf78608176d441e40a16de9eb5260c0', 'validated', '{"audio_key":"d2e4cb991c377c517e9901a4a23e2ebf69012f7dd54285c73b61e0e5afdf0dce","entity_key":"d_media_technology_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"baf103e172f2a09a7e22212cb992f969ccf78608176d441e40a16de9eb5260c0","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/d2e4cb991c377c517e9901a4a23e2ebf69012f7dd54285c73b61e0e5afdf0dce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_telling_stories_02:2 -> audio/generated/de-DE/dialogues/d4595814755364e5bfd87ac1cd449ae08ea7f98cbbfa08a40486a22b7e084aa1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('88b6126e-294b-584c-ab11-93f48183311d', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_telling_stories_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '148141c428572c0e09deb34975efc60a684f242fc0572d9ad45d13c90227e8fe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6cf64693-a89d-5737-a9bd-1f500173504c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('88b6126e-294b-584c-ab11-93f48183311d', 1), '148141c428572c0e09deb34975efc60a684f242fc0572d9ad45d13c90227e8fe',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d4595814755364e5bfd87ac1cd449ae08ea7f98cbbfa08a40486a22b7e084aa1.mp3', 2403, '2026-09-13 05:54:26.103152', 'd18025ff1e8a8662ab1e6f8e9650fdede2a239c08d58fbf0b5651c09e8799f6e', 'validated', '{"audio_key":"d4595814755364e5bfd87ac1cd449ae08ea7f98cbbfa08a40486a22b7e084aa1","entity_key":"d_telling_stories_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"d18025ff1e8a8662ab1e6f8e9650fdede2a239c08d58fbf0b5651c09e8799f6e","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/d4595814755364e5bfd87ac1cd449ae08ea7f98cbbfa08a40486a22b7e084aa1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_agree_disagree_03:2 -> audio/generated/de-DE/dialogues/d77b1c62cba1af9b0609f38c489873b75fe2fa910ca0e157ceb9be664c5d765b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('86fed601-a338-5061-a2e3-ea0026a95424', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_agree_disagree_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b5278c76b52ed26ee4eb53ad208fabe13bbc82c3238c2644e53f590847d40ae3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('576e3ade-1511-5dc8-8f0b-b1f7ce969dca', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('86fed601-a338-5061-a2e3-ea0026a95424', 1), 'b5278c76b52ed26ee4eb53ad208fabe13bbc82c3238c2644e53f590847d40ae3',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d77b1c62cba1af9b0609f38c489873b75fe2fa910ca0e157ceb9be664c5d765b.mp3', 1515, '2026-09-13 05:54:27.029909', 'd02f0db53c8a7e79bfab1ac099e5a4d0360410de0ce98454ca6af9a29dbc96be', 'validated', '{"audio_key":"d77b1c62cba1af9b0609f38c489873b75fe2fa910ca0e157ceb9be664c5d765b","entity_key":"d_agree_disagree_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d02f0db53c8a7e79bfab1ac099e5a4d0360410de0ce98454ca6af9a29dbc96be","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/d77b1c62cba1af9b0609f38c489873b75fe2fa910ca0e157ceb9be664c5d765b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_problems_solutions_02:2 -> audio/generated/de-DE/dialogues/da3656754af57a0c8f9dff9c834ebb64fb9be87c7f5f4c6ff203bd72cd0fc5c6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fa18e928-5258-5975-8df9-d5730ab8df56', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_problems_solutions_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f715d4fb0cb5a894ff861d9f6e3e5e94371c37aca0da450171728c18f5b8983e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b822ef3c-eb80-5855-8380-62fb971c7f76', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fa18e928-5258-5975-8df9-d5730ab8df56', 1), 'f715d4fb0cb5a894ff861d9f6e3e5e94371c37aca0da450171728c18f5b8983e',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/da3656754af57a0c8f9dff9c834ebb64fb9be87c7f5f4c6ff203bd72cd0fc5c6.mp3', 1985, '2026-09-13 05:54:27.116334', '792a4e41b8b0e444886550f956c5d15157d485d5c35dddf4962e451212f7eb5e', 'validated', '{"audio_key":"da3656754af57a0c8f9dff9c834ebb64fb9be87c7f5f4c6ff203bd72cd0fc5c6","entity_key":"d_problems_solutions_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"792a4e41b8b0e444886550f956c5d15157d485d5c35dddf4962e451212f7eb5e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/da3656754af57a0c8f9dff9c834ebb64fb9be87c7f5f4c6ff203bd72cd0fc5c6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_study_goals_02:1 -> audio/generated/de-DE/dialogues/da65544c56b7b7215874f25ba184560ebc6265ee5cf2bc637c3659f33f2c309a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('45f9e07e-329d-5808-a702-aff7ec5d32c8', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_study_goals_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ace484605077f193f81ca8a4ad52c0c1ac690179ace559b16d06e7f5b165ecf0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b6c920a2-368c-5277-8a51-7d59e811803f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('45f9e07e-329d-5808-a702-aff7ec5d32c8', 1), 'ace484605077f193f81ca8a4ad52c0c1ac690179ace559b16d06e7f5b165ecf0',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/da65544c56b7b7215874f25ba184560ebc6265ee5cf2bc637c3659f33f2c309a.mp3', 3291, '2026-09-13 05:54:28.266329', '8533dfd4d4d943e2adb61181ad8aaaf252c02ed99a4a7866fe57b5c70d24b09a', 'validated', '{"audio_key":"da65544c56b7b7215874f25ba184560ebc6265ee5cf2bc637c3659f33f2c309a","entity_key":"d_study_goals_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8533dfd4d4d943e2adb61181ad8aaaf252c02ed99a4a7866fe57b5c70d24b09a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/da65544c56b7b7215874f25ba184560ebc6265ee5cf2bc637c3659f33f2c309a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_neighborhood_community_02:2 -> audio/generated/de-DE/dialogues/dbbb538a2aef281705993bc8f9dcec32bd50b3f15b9e998a821f09402b25c821.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0a6b4527-b7b5-5cdc-a8bc-d3110d8a4b35', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_neighborhood_community_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5b599fc020ea0431e5aa0ec715731451935832e09319314cffade845f220ec1a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9ee91e0b-2015-587d-95de-be5ed67dfa7a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0a6b4527-b7b5-5cdc-a8bc-d3110d8a4b35', 1), '5b599fc020ea0431e5aa0ec715731451935832e09319314cffade845f220ec1a',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/dbbb538a2aef281705993bc8f9dcec32bd50b3f15b9e998a821f09402b25c821.mp3', 2690, '2026-09-13 05:54:28.241309', 'bdcb1b2e0ffa9e3e79122afe80f238f07a906f7993651ff0c1888f32e615e884', 'validated', '{"audio_key":"dbbb538a2aef281705993bc8f9dcec32bd50b3f15b9e998a821f09402b25c821","entity_key":"d_neighborhood_community_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"bdcb1b2e0ffa9e3e79122afe80f238f07a906f7993651ff0c1888f32e615e884","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/dbbb538a2aef281705993bc8f9dcec32bd50b3f15b9e998a821f09402b25c821.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_reasons_03:4 -> audio/generated/de-DE/dialogues/dcd002de257cda4012e30402f5fa291163c23900f28a59eca948a6f7db1beebe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1a90e1a1-1f06-56c4-8bbd-6fba89f6d6cb', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_reasons_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3573d488483cf6bdda19e601bbbcb3cff7b45fcf47486c33c734579cf8746b09'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8f432a21-8558-548f-b9c4-888d464846e5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1a90e1a1-1f06-56c4-8bbd-6fba89f6d6cb', 1), '3573d488483cf6bdda19e601bbbcb3cff7b45fcf47486c33c734579cf8746b09',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/dcd002de257cda4012e30402f5fa291163c23900f28a59eca948a6f7db1beebe.mp3', 2925, '2026-09-13 05:54:29.341066', '41a1b35e454d056d354b694469f93edb2176ab35a394b04f41db13b7f80fc220', 'validated', '{"audio_key":"dcd002de257cda4012e30402f5fa291163c23900f28a59eca948a6f7db1beebe","entity_key":"d_opinions_reasons_03:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"41a1b35e454d056d354b694469f93edb2176ab35a394b04f41db13b7f80fc220","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/dcd002de257cda4012e30402f5fa291163c23900f28a59eca948a6f7db1beebe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_health_habits_03:3 -> audio/generated/de-DE/dialogues/e223938e9f711ce0e2470aa230a00127e1aeeddbffef79180ab44326c809f297.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('46fd7a82-91f2-5c37-9796-1950e356b5d2', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_health_habits_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ca30236ea15a11f31edb8cff9853445bc1240d70403ead5ef3a52c87c8e04fb7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b1b4962e-c4d5-5561-9b3a-67778b41a6db', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('46fd7a82-91f2-5c37-9796-1950e356b5d2', 1), 'ca30236ea15a11f31edb8cff9853445bc1240d70403ead5ef3a52c87c8e04fb7',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e223938e9f711ce0e2470aa230a00127e1aeeddbffef79180ab44326c809f297.mp3', 2821, '2026-09-13 05:54:29.349899', '61e23eeb69f7585eed2fa2075eef13f3453cd7f7084343ae428c44b5fd04a572', 'validated', '{"audio_key":"e223938e9f711ce0e2470aa230a00127e1aeeddbffef79180ab44326c809f297","entity_key":"d_health_habits_03:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"61e23eeb69f7585eed2fa2075eef13f3453cd7f7084343ae428c44b5fd04a572","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/e223938e9f711ce0e2470aa230a00127e1aeeddbffef79180ab44326c809f297.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_technology_01:2 -> audio/generated/de-DE/dialogues/e4dd9c4f07bceb5fc622eb15f5a5bf68628975b6fb94076758398bf9fd5d683e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a92cd47a-387e-512a-a9ad-840a9ea9fbc1', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_technology_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '64dcead6c3ec95cdec1674c555aedc7d50cc176028cc4fd542663cef9fef828d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9e23590d-8d5d-5e72-b35d-1b8ced4ddae2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a92cd47a-387e-512a-a9ad-840a9ea9fbc1', 1), '64dcead6c3ec95cdec1674c555aedc7d50cc176028cc4fd542663cef9fef828d',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e4dd9c4f07bceb5fc622eb15f5a5bf68628975b6fb94076758398bf9fd5d683e.mp3', 3369, '2026-09-13 05:54:30.534513', '13ee52276363a065a4a1c9263da2817a5025d2df32253c72e0f62fb4ac647025', 'validated', '{"audio_key":"e4dd9c4f07bceb5fc622eb15f5a5bf68628975b6fb94076758398bf9fd5d683e","entity_key":"d_media_technology_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"13ee52276363a065a4a1c9263da2817a5025d2df32253c72e0f62fb4ac647025","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/e4dd9c4f07bceb5fc622eb15f5a5bf68628975b6fb94076758398bf9fd5d683e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_neighborhood_community_01:1 -> audio/generated/de-DE/dialogues/e79bb602e5cd2fe6f2b7ab9bfe832f16db41cbc016efe91f56e4ff752ba0a954.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a097fd7c-a04c-5144-ab8f-c062dd84bd2e', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_neighborhood_community_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c4fc5fd1697c35df3f7eb5f3515d9e365cb7a70f36fdb9719e8f9b9234d7a530'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('13bb3e9b-334d-50e6-94f4-39d9e6ac1e1c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a097fd7c-a04c-5144-ab8f-c062dd84bd2e', 1), 'c4fc5fd1697c35df3f7eb5f3515d9e365cb7a70f36fdb9719e8f9b9234d7a530',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e79bb602e5cd2fe6f2b7ab9bfe832f16db41cbc016efe91f56e4ff752ba0a954.mp3', 2768, '2026-09-13 05:54:30.488752', '624da44b277ac197554152f1fdf698e42098c04396e755020b52cc6e6cc1ed20', 'validated', '{"audio_key":"e79bb602e5cd2fe6f2b7ab9bfe832f16db41cbc016efe91f56e4ff752ba0a954","entity_key":"d_neighborhood_community_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"624da44b277ac197554152f1fdf698e42098c04396e755020b52cc6e6cc1ed20","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/e79bb602e5cd2fe6f2b7ab9bfe832f16db41cbc016efe91f56e4ff752ba0a954.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_work_experience_01:1 -> audio/generated/de-DE/dialogues/e963192ec5cfb77a770614f8aa289202f58513b736e4ad38f3b41dc6462f1a98.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0fba2d31-4bc2-503e-944b-56140d777ea0', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_work_experience_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e23472c8e29370b2bbc50e35fc31c675c94b64e5aa6b6b46ee726f8412af7217'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a86478d3-d570-5f80-a79d-a7d4db0aab64', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0fba2d31-4bc2-503e-944b-56140d777ea0', 1), 'e23472c8e29370b2bbc50e35fc31c675c94b64e5aa6b6b46ee726f8412af7217',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e963192ec5cfb77a770614f8aa289202f58513b736e4ad38f3b41dc6462f1a98.mp3', 2115, '2026-09-13 05:54:31.565273', '2de18f3bba83c8ef2521dd8dded5edf3e9cf81c61d2e7313ce863d432e32f4db', 'validated', '{"audio_key":"e963192ec5cfb77a770614f8aa289202f58513b736e4ad38f3b41dc6462f1a98","entity_key":"d_work_experience_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"2de18f3bba83c8ef2521dd8dded5edf3e9cf81c61d2e7313ce863d432e32f4db","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/e963192ec5cfb77a770614f8aa289202f58513b736e4ad38f3b41dc6462f1a98.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_technology_03:1 -> audio/generated/de-DE/dialogues/ea3846f991f9fc028dfe329cc90d7c341e046b7301a0a4f8bda0f9339f7afae8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dc4cb45a-2ae7-56fe-a7f8-23ff9ac9706e', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_technology_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '31f84c0f3a9fc725ad8c1e0763bbaa1e81d1e5bc6b3a07fd49a2a726815f290c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('331a0877-40f6-5a7f-a095-ee41552f21ed', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dc4cb45a-2ae7-56fe-a7f8-23ff9ac9706e', 1), '31f84c0f3a9fc725ad8c1e0763bbaa1e81d1e5bc6b3a07fd49a2a726815f290c',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ea3846f991f9fc028dfe329cc90d7c341e046b7301a0a4f8bda0f9339f7afae8.mp3', 2821, '2026-09-13 05:54:31.656118', 'f259a0e131126eca55063439516cbc58779696cfc9143b02517d3b261bb0b700', 'validated', '{"audio_key":"ea3846f991f9fc028dfe329cc90d7c341e046b7301a0a4f8bda0f9339f7afae8","entity_key":"d_media_technology_03:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f259a0e131126eca55063439516cbc58779696cfc9143b02517d3b261bb0b700","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/ea3846f991f9fc028dfe329cc90d7c341e046b7301a0a4f8bda0f9339f7afae8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_experiences_03:2 -> audio/generated/de-DE/dialogues/eb125aa9cdd8a187c8a5fe6435d9bfc89cb61cb36b4f209538d8c55aababe8a2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b88963be-9efa-5833-bd2e-9f08f4014c8f', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_experiences_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ab36cd951ab00bc7ef305f2980de58d8435cd771314f68df3bd3d122b1a59c02'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a240b801-0b24-5963-ae45-39f9bdbd4491', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b88963be-9efa-5833-bd2e-9f08f4014c8f', 1), 'ab36cd951ab00bc7ef305f2980de58d8435cd771314f68df3bd3d122b1a59c02',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/eb125aa9cdd8a187c8a5fe6435d9bfc89cb61cb36b4f209538d8c55aababe8a2.mp3', 1985, '2026-09-13 05:54:32.674337', '59e8fd7eeb3b0045e0c57ee513301ea14d765a19809623b0ba2c9bbb6611cd84', 'validated', '{"audio_key":"eb125aa9cdd8a187c8a5fe6435d9bfc89cb61cb36b4f209538d8c55aababe8a2","entity_key":"d_travel_experiences_03:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"59e8fd7eeb3b0045e0c57ee513301ea14d765a19809623b0ba2c9bbb6611cd84","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/eb125aa9cdd8a187c8a5fe6435d9bfc89cb61cb36b4f209538d8c55aababe8a2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_health_habits_01:2 -> audio/generated/de-DE/dialogues/f228ccc88bf8cc2d05ccdc75e04d4107fb9605c9c7ed4ad4fca415285e0af595.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6e14aad3-a13e-5c6d-9aa8-917d5d9aeb11', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_health_habits_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4f1af36a50fff65b643f11104eec225d702d021d63bb023d8376194059ec3da4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3b9ef56f-d735-550c-89ed-e745d5130134', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6e14aad3-a13e-5c6d-9aa8-917d5d9aeb11', 1), '4f1af36a50fff65b643f11104eec225d702d021d63bb023d8376194059ec3da4',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f228ccc88bf8cc2d05ccdc75e04d4107fb9605c9c7ed4ad4fca415285e0af595.mp3', 3108, '2026-09-13 05:54:32.800955', '80b91961bbc6b36f83f5fbda8a0b615848e981f1a405a3055ce2adcaa5778f8c', 'validated', '{"audio_key":"f228ccc88bf8cc2d05ccdc75e04d4107fb9605c9c7ed4ad4fca415285e0af595","entity_key":"d_health_habits_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"80b91961bbc6b36f83f5fbda8a0b615848e981f1a405a3055ce2adcaa5778f8c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/f228ccc88bf8cc2d05ccdc75e04d4107fb9605c9c7ed4ad4fca415285e0af595.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_telling_stories_01:4 -> audio/generated/de-DE/dialogues/f2a5423f1c5e06185743cf962f9fd80a810172effdd9e8a631cb21b2b001272a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f05a899c-eb5e-5c45-99a0-6ca1d02d5940', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_telling_stories_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ea5f1211fc71b0c990f05a5e76433c6a035c6560b98ececec6b73fb756c8d061'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3b24d45c-f916-54bb-9072-eebf80ae6c7c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f05a899c-eb5e-5c45-99a0-6ca1d02d5940', 1), 'ea5f1211fc71b0c990f05a5e76433c6a035c6560b98ececec6b73fb756c8d061',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f2a5423f1c5e06185743cf962f9fd80a810172effdd9e8a631cb21b2b001272a.mp3', 3657, '2026-09-13 05:54:33.973800', '6214e030d14c5236a40f0b6fd099839636364ba2cc5a93687f639a04d21853ad', 'validated', '{"audio_key":"f2a5423f1c5e06185743cf962f9fd80a810172effdd9e8a631cb21b2b001272a","entity_key":"d_telling_stories_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"6214e030d14c5236a40f0b6fd099839636364ba2cc5a93687f639a04d21853ad","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/f2a5423f1c5e06185743cf962f9fd80a810172effdd9e8a631cb21b2b001272a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_agree_disagree_03:3 -> audio/generated/de-DE/dialogues/f4ec4c4c70d0b09c4df9da290d232d9a631e97dcb7bf7134b6c07cf770a5b037.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3217cdd0-1d52-5fd3-bab4-2ba4edb4e115', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_agree_disagree_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '533094ca058a2c697f0f86782aea34f21dfcb6ab2e220d3db838c25baf7fdbbd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b2cf6781-8f31-515c-810c-2ab59e752073', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3217cdd0-1d52-5fd3-bab4-2ba4edb4e115', 1), '533094ca058a2c697f0f86782aea34f21dfcb6ab2e220d3db838c25baf7fdbbd',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f4ec4c4c70d0b09c4df9da290d232d9a631e97dcb7bf7134b6c07cf770a5b037.mp3', 2638, '2026-09-13 05:54:33.874540', '9acbef4c7adf0d05577563d0ad3ef4b98f0257cb127ecac66e3206c7645992f5', 'validated', '{"audio_key":"f4ec4c4c70d0b09c4df9da290d232d9a631e97dcb7bf7134b6c07cf770a5b037","entity_key":"d_agree_disagree_03:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"9acbef4c7adf0d05577563d0ad3ef4b98f0257cb127ecac66e3206c7645992f5","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/f4ec4c4c70d0b09c4df9da290d232d9a631e97dcb7bf7134b6c07cf770a5b037.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_problems_solutions_03:2 -> audio/generated/de-DE/dialogues/f57be9ef7efeb6d58421b0e0804b4d0e1fd60060c5be373c94e4b5cbb1ec1f18.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5807193a-c379-5a3a-961a-0003c8c7e811', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_problems_solutions_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b42c098bdadaf8f160cf5da5600023c74a45c09c6de4f0c21ca310be8ebc7d53'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('098aebf9-b2c0-5b8a-a35f-84fdf5c79dc0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5807193a-c379-5a3a-961a-0003c8c7e811', 1), 'b42c098bdadaf8f160cf5da5600023c74a45c09c6de4f0c21ca310be8ebc7d53',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f57be9ef7efeb6d58421b0e0804b4d0e1fd60060c5be373c94e4b5cbb1ec1f18.mp3', 2168, '2026-09-13 05:54:34.929982', '98455fe9b496f9ca94a30b8caeef9ad28aa9b3acdb97ab8a39cb7dde5072a9b6', 'validated', '{"audio_key":"f57be9ef7efeb6d58421b0e0804b4d0e1fd60060c5be373c94e4b5cbb1ec1f18","entity_key":"d_problems_solutions_03:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"98455fe9b496f9ca94a30b8caeef9ad28aa9b3acdb97ab8a39cb7dde5072a9b6","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/f57be9ef7efeb6d58421b0e0804b4d0e1fd60060c5be373c94e4b5cbb1ec1f18.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_work_experience_02:3 -> audio/generated/de-DE/dialogues/f6e024de389e5f97b5879da9c91c47d8f5834f15446def1f1dc90b7de6c90387.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6a41cfea-f910-5ee8-aaec-0b984d95e29d', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_work_experience_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4a6a24af50c574a354eab68834a34f6ecc3868ba9de357255ae439ae98b8124b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a200537c-93cf-5ade-ab23-31e94d9c19a6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6a41cfea-f910-5ee8-aaec-0b984d95e29d', 1), '4a6a24af50c574a354eab68834a34f6ecc3868ba9de357255ae439ae98b8124b',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f6e024de389e5f97b5879da9c91c47d8f5834f15446def1f1dc90b7de6c90387.mp3', 2037, '2026-09-13 05:54:35.016232', '23ec35770aaa6ee3cde67123e0d2b9b5239b879af2c2bc136b9757be79a837a2', 'validated', '{"audio_key":"f6e024de389e5f97b5879da9c91c47d8f5834f15446def1f1dc90b7de6c90387","entity_key":"d_work_experience_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"23ec35770aaa6ee3cde67123e0d2b9b5239b879af2c2bc136b9757be79a837a2","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/f6e024de389e5f97b5879da9c91c47d8f5834f15446def1f1dc90b7de6c90387.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_study_goals_02:3 -> audio/generated/de-DE/dialogues/f91ee7338a1bcd3156bde70a536869cc3feed4d7956a4d742d26dc08944842cb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2165f0a0-055a-5978-8289-602c516a3cc8', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_study_goals_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e6ff6ec0c52a2e6584782f3794252ef7d526880874e5e84aadf5d074ead6c593'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7f6694a7-06ef-55bf-a29f-d359ecc02fb4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2165f0a0-055a-5978-8289-602c516a3cc8', 1), 'e6ff6ec0c52a2e6584782f3794252ef7d526880874e5e84aadf5d074ead6c593',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f91ee7338a1bcd3156bde70a536869cc3feed4d7956a4d742d26dc08944842cb.mp3', 1384, '2026-09-13 05:54:35.898016', '8e5bcc83a9b0991bf54f7073bd90ce55e2081b8f3f348e7538329eb2c0622727', 'validated', '{"audio_key":"f91ee7338a1bcd3156bde70a536869cc3feed4d7956a4d742d26dc08944842cb","entity_key":"d_study_goals_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8e5bcc83a9b0991bf54f7073bd90ce55e2081b8f3f348e7538329eb2c0622727","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/f91ee7338a1bcd3156bde70a536869cc3feed4d7956a4d742d26dc08944842cb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_study_goals_03:3 -> audio/generated/de-DE/dialogues/fc4c42950a923d6a5d6adbcb66c13e648f366432cfcfd652676b42b5538ee48a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7b066a0c-e155-507f-981c-ce6f106fe256', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_study_goals_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'afe70fe306a92cd83f3a091531b8fccd65505531d8b636941db6afa94458d219'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2269024e-1dee-5493-8de0-7852bc151cf8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7b066a0c-e155-507f-981c-ce6f106fe256', 1), 'afe70fe306a92cd83f3a091531b8fccd65505531d8b636941db6afa94458d219',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/fc4c42950a923d6a5d6adbcb66c13e648f366432cfcfd652676b42b5538ee48a.mp3', 1985, '2026-09-13 05:54:36.052603', '4c5074c9f43d56f54561eee8791936b678912e9ca9da8392f13fdc556bc44055', 'validated', '{"audio_key":"fc4c42950a923d6a5d6adbcb66c13e648f366432cfcfd652676b42b5538ee48a","entity_key":"d_study_goals_03:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"4c5074c9f43d56f54561eee8791936b678912e9ca9da8392f13fdc556bc44055","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/fc4c42950a923d6a5d6adbcb66c13e648f366432cfcfd652676b42b5538ee48a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_agree_disagree_02:4 -> audio/generated/de-DE/dialogues/ffd5fd7ba0d420adc3e5cf9ef2f9ce9325e1880ece14e2df6d5cbf77fd38a3c9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d3b0a414-35aa-52b9-9484-8bc7412bb08f', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_agree_disagree_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2f1cd017d51e5637e0d68ebcdbdbd511ebfb8156314a54f2dff749b6f1b92e0f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a063b6b7-a0bc-5aa8-bd56-1175d0594dc1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d3b0a414-35aa-52b9-9484-8bc7412bb08f', 1), '2f1cd017d51e5637e0d68ebcdbdbd511ebfb8156314a54f2dff749b6f1b92e0f',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ffd5fd7ba0d420adc3e5cf9ef2f9ce9325e1880ece14e2df6d5cbf77fd38a3c9.mp3', 2272, '2026-09-13 05:54:36.959109', 'fc68acdeed5119a3095c4a10d6368ae327d8245ff4145af955d9d37eff81fc9e', 'validated', '{"audio_key":"ffd5fd7ba0d420adc3e5cf9ef2f9ce9325e1880ece14e2df6d5cbf77fd38a3c9","entity_key":"d_agree_disagree_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"fc68acdeed5119a3095c4a10d6368ae327d8245ff4145af955d9d37eff81fc9e","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/ffd5fd7ba0d420adc3e5cf9ef2f9ce9325e1880ece14e2df6d5cbf77fd38a3c9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_opinions_reasons_05 -> audio/generated/de-DE/lexical/00348eb179c842c1d1127446356dfbdcf0c7ac269e57b0ae4ba2524a22cc1c82.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8b16bf18-6dea-5b8d-870e-ea20d6e7871c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_opinions_reasons_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '417c32870739b42f850931fed153c8e0281ba42123e1a1be181492d3f24cf332'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d215e25b-4048-5043-816d-a0c0c2d2a3fb', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8b16bf18-6dea-5b8d-870e-ea20d6e7871c', 1), '417c32870739b42f850931fed153c8e0281ba42123e1a1be181492d3f24cf332',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/00348eb179c842c1d1127446356dfbdcf0c7ac269e57b0ae4ba2524a22cc1c82.mp3', 1332, '2026-09-13 05:54:37.037591', 'f3d3bf42ac61a9ec05c6ac5d34439e0ca2f00cd770bcedb983b507774a0ec7fe', 'validated', '{"audio_key":"00348eb179c842c1d1127446356dfbdcf0c7ac269e57b0ae4ba2524a22cc1c82","entity_key":"lx_opinions_reasons_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f3d3bf42ac61a9ec05c6ac5d34439e0ca2f00cd770bcedb983b507774a0ec7fe","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/00348eb179c842c1d1127446356dfbdcf0c7ac269e57b0ae4ba2524a22cc1c82.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_opinions_reasons_05 -> audio/generated/de-DE/lexical/00348eb179c842c1d1127446356dfbdcf0c7ac269e57b0ae4ba2524a22cc1c82.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('de047154-74c2-5585-825f-844c919c710d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_opinions_reasons_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '417c32870739b42f850931fed153c8e0281ba42123e1a1be181492d3f24cf332'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d5374f74-d45c-519e-ac29-b50cb6d8edd5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('de047154-74c2-5585-825f-844c919c710d', 1), '417c32870739b42f850931fed153c8e0281ba42123e1a1be181492d3f24cf332',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/00348eb179c842c1d1127446356dfbdcf0c7ac269e57b0ae4ba2524a22cc1c82.mp3', 1332, '2026-09-13 05:54:37.037591', 'f3d3bf42ac61a9ec05c6ac5d34439e0ca2f00cd770bcedb983b507774a0ec7fe', 'validated', '{"audio_key":"00348eb179c842c1d1127446356dfbdcf0c7ac269e57b0ae4ba2524a22cc1c82","entity_key":"wf_opinions_reasons_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f3d3bf42ac61a9ec05c6ac5d34439e0ca2f00cd770bcedb983b507774a0ec7fe","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/00348eb179c842c1d1127446356dfbdcf0c7ac269e57b0ae4ba2524a22cc1c82.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_agree_disagree_02 -> audio/generated/de-DE/lexical/0d7311b4701bae657ea4343209c3927181731622e5b36f3c42c8bbe03ae47aa7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ea909f0b-c1c1-534f-8159-406dc56d7e80', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_agree_disagree_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c0b979db8bcd362fcf1510bdb9abb2610d035d51748c4d029d5acc088b7513d3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('060e48b2-15ee-5d15-b0d6-a1deb3b967b4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ea909f0b-c1c1-534f-8159-406dc56d7e80', 1), 'c0b979db8bcd362fcf1510bdb9abb2610d035d51748c4d029d5acc088b7513d3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0d7311b4701bae657ea4343209c3927181731622e5b36f3c42c8bbe03ae47aa7.mp3', 1253, '2026-09-13 05:29:34.213143', '7d85a411cffc58183f0f75a88b2847293d580e2157b7a3657fe08a59cc5c0e27', 'validated', '{"audio_key":"0d7311b4701bae657ea4343209c3927181731622e5b36f3c42c8bbe03ae47aa7","entity_key":"lx_agree_disagree_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7d85a411cffc58183f0f75a88b2847293d580e2157b7a3657fe08a59cc5c0e27","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0d7311b4701bae657ea4343209c3927181731622e5b36f3c42c8bbe03ae47aa7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_agree_disagree_02 -> audio/generated/de-DE/lexical/0d7311b4701bae657ea4343209c3927181731622e5b36f3c42c8bbe03ae47aa7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e385a4f5-1696-5673-aec3-8c08274b7d21', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_agree_disagree_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c0b979db8bcd362fcf1510bdb9abb2610d035d51748c4d029d5acc088b7513d3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7b5227f0-b968-56ca-a962-0036b9129a6d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e385a4f5-1696-5673-aec3-8c08274b7d21', 1), 'c0b979db8bcd362fcf1510bdb9abb2610d035d51748c4d029d5acc088b7513d3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0d7311b4701bae657ea4343209c3927181731622e5b36f3c42c8bbe03ae47aa7.mp3', 1253, '2026-09-13 05:29:34.213143', '7d85a411cffc58183f0f75a88b2847293d580e2157b7a3657fe08a59cc5c0e27', 'validated', '{"audio_key":"0d7311b4701bae657ea4343209c3927181731622e5b36f3c42c8bbe03ae47aa7","entity_key":"wf_agree_disagree_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7d85a411cffc58183f0f75a88b2847293d580e2157b7a3657fe08a59cc5c0e27","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0d7311b4701bae657ea4343209c3927181731622e5b36f3c42c8bbe03ae47aa7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_agree_disagree_03 -> audio/generated/de-DE/lexical/101a701950c0dc988e9d6b1f70a4e2bbfc9889c86fc5a7a3be8453603b351037.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5ce6bc72-d5de-596b-acf5-2422d7a8cb2a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_agree_disagree_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5a5b7929211cf60e644f29d739f07e05d36c61cae44d054270d53d5e85cfbab9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('016c1a4a-1b13-50b5-b93b-031cbf06c093', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5ce6bc72-d5de-596b-acf5-2422d7a8cb2a', 1), '5a5b7929211cf60e644f29d739f07e05d36c61cae44d054270d53d5e85cfbab9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/101a701950c0dc988e9d6b1f70a4e2bbfc9889c86fc5a7a3be8453603b351037.mp3', 1071, '2026-09-13 05:54:37.907599', 'd43e725fb42906a9e438921218ffd120851e68be91b149b87d3815b6d6d2040e', 'validated', '{"audio_key":"101a701950c0dc988e9d6b1f70a4e2bbfc9889c86fc5a7a3be8453603b351037","entity_key":"lx_agree_disagree_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d43e725fb42906a9e438921218ffd120851e68be91b149b87d3815b6d6d2040e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/101a701950c0dc988e9d6b1f70a4e2bbfc9889c86fc5a7a3be8453603b351037.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_agree_disagree_03 -> audio/generated/de-DE/lexical/101a701950c0dc988e9d6b1f70a4e2bbfc9889c86fc5a7a3be8453603b351037.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('dc6aaad2-8825-57ab-b4d4-a92b7751fa63', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_agree_disagree_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5a5b7929211cf60e644f29d739f07e05d36c61cae44d054270d53d5e85cfbab9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('27cee3b5-59ac-5f13-bc3a-f57669cd77ac', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('dc6aaad2-8825-57ab-b4d4-a92b7751fa63', 1), '5a5b7929211cf60e644f29d739f07e05d36c61cae44d054270d53d5e85cfbab9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/101a701950c0dc988e9d6b1f70a4e2bbfc9889c86fc5a7a3be8453603b351037.mp3', 1071, '2026-09-13 05:54:37.907599', 'd43e725fb42906a9e438921218ffd120851e68be91b149b87d3815b6d6d2040e', 'validated', '{"audio_key":"101a701950c0dc988e9d6b1f70a4e2bbfc9889c86fc5a7a3be8453603b351037","entity_key":"wf_agree_disagree_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d43e725fb42906a9e438921218ffd120851e68be91b149b87d3815b6d6d2040e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/101a701950c0dc988e9d6b1f70a4e2bbfc9889c86fc5a7a3be8453603b351037.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_health_habits_02 -> audio/generated/de-DE/lexical/1a94fa85162c60b7e6da250c4a05abbc36abb9f2ff6f0702944aaf74cb0d54c4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b78c16eb-ab8e-5690-afae-0751980ca17e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_health_habits_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '401b8db3bb3583fcb1e4603553c12620ab97bec73750bfc372e814f443fd032b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d4cd35e4-fa5a-54cb-9e9e-ea06edf20f06', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b78c16eb-ab8e-5690-afae-0751980ca17e', 1), '401b8db3bb3583fcb1e4603553c12620ab97bec73750bfc372e814f443fd032b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1a94fa85162c60b7e6da250c4a05abbc36abb9f2ff6f0702944aaf74cb0d54c4.mp3', 1097, '2026-09-13 05:54:38.009752', '95baf1eedf7721889636ea815e10fee6969d9a4ec3f955b0367d14104ca13f59', 'validated', '{"audio_key":"1a94fa85162c60b7e6da250c4a05abbc36abb9f2ff6f0702944aaf74cb0d54c4","entity_key":"lx_health_habits_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"95baf1eedf7721889636ea815e10fee6969d9a4ec3f955b0367d14104ca13f59","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1a94fa85162c60b7e6da250c4a05abbc36abb9f2ff6f0702944aaf74cb0d54c4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_health_habits_02 -> audio/generated/de-DE/lexical/1a94fa85162c60b7e6da250c4a05abbc36abb9f2ff6f0702944aaf74cb0d54c4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('95274673-b263-53ac-9ea2-5cb0918c04c8', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_health_habits_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '401b8db3bb3583fcb1e4603553c12620ab97bec73750bfc372e814f443fd032b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e5567cfd-471c-5625-b3d0-587dce5da71d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('95274673-b263-53ac-9ea2-5cb0918c04c8', 1), '401b8db3bb3583fcb1e4603553c12620ab97bec73750bfc372e814f443fd032b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1a94fa85162c60b7e6da250c4a05abbc36abb9f2ff6f0702944aaf74cb0d54c4.mp3', 1097, '2026-09-13 05:54:38.009752', '95baf1eedf7721889636ea815e10fee6969d9a4ec3f955b0367d14104ca13f59', 'validated', '{"audio_key":"1a94fa85162c60b7e6da250c4a05abbc36abb9f2ff6f0702944aaf74cb0d54c4","entity_key":"wf_health_habits_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"95baf1eedf7721889636ea815e10fee6969d9a4ec3f955b0367d14104ca13f59","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1a94fa85162c60b7e6da250c4a05abbc36abb9f2ff6f0702944aaf74cb0d54c4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_media_technology_05 -> audio/generated/de-DE/lexical/1ba747efd56d620c43bd94f23832ac40f1459b734e58ed8ee67a391ec3518c17.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3e491f17-bec0-5ae7-9e51-8cc5dc68f436', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_media_technology_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b4b4bbb587e56440d209cc520761050058ca0f650a8ad333cd1441493608e599'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0ecbb40f-ba93-50b8-9be1-017d373d1211', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3e491f17-bec0-5ae7-9e51-8cc5dc68f436', 1), 'b4b4bbb587e56440d209cc520761050058ca0f650a8ad333cd1441493608e599',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1ba747efd56d620c43bd94f23832ac40f1459b734e58ed8ee67a391ec3518c17.mp3', 1280, '2026-09-13 05:54:38.871020', 'ba5c9e814c5ddf400cce3b737441ec6ae2efbb7fb476c3a7a68b070bf62aac0a', 'validated', '{"audio_key":"1ba747efd56d620c43bd94f23832ac40f1459b734e58ed8ee67a391ec3518c17","entity_key":"lx_media_technology_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ba5c9e814c5ddf400cce3b737441ec6ae2efbb7fb476c3a7a68b070bf62aac0a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1ba747efd56d620c43bd94f23832ac40f1459b734e58ed8ee67a391ec3518c17.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_media_technology_05 -> audio/generated/de-DE/lexical/1ba747efd56d620c43bd94f23832ac40f1459b734e58ed8ee67a391ec3518c17.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b3e4cc11-d6be-5d50-87bf-531b467de123', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_media_technology_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b4b4bbb587e56440d209cc520761050058ca0f650a8ad333cd1441493608e599'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4ebeea6f-fb97-57c2-b4e6-482bd5c573fc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b3e4cc11-d6be-5d50-87bf-531b467de123', 1), 'b4b4bbb587e56440d209cc520761050058ca0f650a8ad333cd1441493608e599',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1ba747efd56d620c43bd94f23832ac40f1459b734e58ed8ee67a391ec3518c17.mp3', 1280, '2026-09-13 05:54:38.871020', 'ba5c9e814c5ddf400cce3b737441ec6ae2efbb7fb476c3a7a68b070bf62aac0a', 'validated', '{"audio_key":"1ba747efd56d620c43bd94f23832ac40f1459b734e58ed8ee67a391ec3518c17","entity_key":"wf_media_technology_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ba5c9e814c5ddf400cce3b737441ec6ae2efbb7fb476c3a7a68b070bf62aac0a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1ba747efd56d620c43bd94f23832ac40f1459b734e58ed8ee67a391ec3518c17.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_problems_solutions_02 -> audio/generated/de-DE/lexical/26757e0de65c15cd6e46a54f0ed99758113616bf304db9f3c40b0f1b9f8e7390.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8e82b867-8e64-53de-9c63-090c3616b4f6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_problems_solutions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4a8d05174e2b3fb7928b5b3055145bf3820a43717b02ddaf914c224ec1f4d23b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('59a712e1-7caf-568e-be33-a3c1f4a2b577', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8e82b867-8e64-53de-9c63-090c3616b4f6', 1), '4a8d05174e2b3fb7928b5b3055145bf3820a43717b02ddaf914c224ec1f4d23b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/26757e0de65c15cd6e46a54f0ed99758113616bf304db9f3c40b0f1b9f8e7390.mp3', 1018, '2026-09-13 05:54:38.947209', '2a0d5780927bc5a93de9545aa1650571196b0c848bbe87e3699b2750af352f9f', 'validated', '{"audio_key":"26757e0de65c15cd6e46a54f0ed99758113616bf304db9f3c40b0f1b9f8e7390","entity_key":"lx_problems_solutions_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2a0d5780927bc5a93de9545aa1650571196b0c848bbe87e3699b2750af352f9f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/26757e0de65c15cd6e46a54f0ed99758113616bf304db9f3c40b0f1b9f8e7390.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_problems_solutions_02 -> audio/generated/de-DE/lexical/26757e0de65c15cd6e46a54f0ed99758113616bf304db9f3c40b0f1b9f8e7390.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('62f83e59-b47a-536c-b306-56492c3d6032', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_problems_solutions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4a8d05174e2b3fb7928b5b3055145bf3820a43717b02ddaf914c224ec1f4d23b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5c7cee11-1f55-5b79-abb1-5adac2e9ee3a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('62f83e59-b47a-536c-b306-56492c3d6032', 1), '4a8d05174e2b3fb7928b5b3055145bf3820a43717b02ddaf914c224ec1f4d23b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/26757e0de65c15cd6e46a54f0ed99758113616bf304db9f3c40b0f1b9f8e7390.mp3', 1018, '2026-09-13 05:54:38.947209', '2a0d5780927bc5a93de9545aa1650571196b0c848bbe87e3699b2750af352f9f', 'validated', '{"audio_key":"26757e0de65c15cd6e46a54f0ed99758113616bf304db9f3c40b0f1b9f8e7390","entity_key":"wf_problems_solutions_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2a0d5780927bc5a93de9545aa1650571196b0c848bbe87e3699b2750af352f9f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/26757e0de65c15cd6e46a54f0ed99758113616bf304db9f3c40b0f1b9f8e7390.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_telling_stories_06 -> audio/generated/de-DE/lexical/280f9c7e41e0f0536c34f39ce04b0269cb2e6de6ab2372c75fad7ca6497449c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b1efab12-27ee-5e38-b7ae-a1388f995e49', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_telling_stories_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9b9ef98dfcd46f15dd5f345ac07bac58b17d59f218fbd435bfd25b1bce978c8b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c8e11e84-50be-5d50-ab8b-65df8c45908c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b1efab12-27ee-5e38-b7ae-a1388f995e49', 1), '9b9ef98dfcd46f15dd5f345ac07bac58b17d59f218fbd435bfd25b1bce978c8b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/280f9c7e41e0f0536c34f39ce04b0269cb2e6de6ab2372c75fad7ca6497449c8.mp3', 1097, '2026-09-13 05:29:45.688465', '6d83b1fc4f758ea6f72118f32e7ffe7480f579ca17a1a7facab0e643c96a95bc', 'validated', '{"audio_key":"280f9c7e41e0f0536c34f39ce04b0269cb2e6de6ab2372c75fad7ca6497449c8","entity_key":"lx_telling_stories_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6d83b1fc4f758ea6f72118f32e7ffe7480f579ca17a1a7facab0e643c96a95bc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/280f9c7e41e0f0536c34f39ce04b0269cb2e6de6ab2372c75fad7ca6497449c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_telling_stories_06 -> audio/generated/de-DE/lexical/280f9c7e41e0f0536c34f39ce04b0269cb2e6de6ab2372c75fad7ca6497449c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('15809268-a819-5f70-a5dc-74d324e82a99', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_telling_stories_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9b9ef98dfcd46f15dd5f345ac07bac58b17d59f218fbd435bfd25b1bce978c8b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6133671d-095e-5daa-9f51-3333d43f2ad9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('15809268-a819-5f70-a5dc-74d324e82a99', 1), '9b9ef98dfcd46f15dd5f345ac07bac58b17d59f218fbd435bfd25b1bce978c8b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/280f9c7e41e0f0536c34f39ce04b0269cb2e6de6ab2372c75fad7ca6497449c8.mp3', 1097, '2026-09-13 05:29:45.688465', '6d83b1fc4f758ea6f72118f32e7ffe7480f579ca17a1a7facab0e643c96a95bc', 'validated', '{"audio_key":"280f9c7e41e0f0536c34f39ce04b0269cb2e6de6ab2372c75fad7ca6497449c8","entity_key":"wf_telling_stories_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6d83b1fc4f758ea6f72118f32e7ffe7480f579ca17a1a7facab0e643c96a95bc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/280f9c7e41e0f0536c34f39ce04b0269cb2e6de6ab2372c75fad7ca6497449c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_neighborhood_community_03 -> audio/generated/de-DE/lexical/2f71b8ba8137e84aade50d71dacfd2fa72548b5a836d3289c64a149be9db2c17.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5561e9f4-7d38-5b4a-b4b1-3bd3baa4232e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_neighborhood_community_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5a355e919fa0cc5dd5a804a8033a5c97ca7f0a0dd36e08c55f4d20def283c7fc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ae013314-87ff-5aaa-bbe4-bcf435a618c3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5561e9f4-7d38-5b4a-b4b1-3bd3baa4232e', 1), '5a355e919fa0cc5dd5a804a8033a5c97ca7f0a0dd36e08c55f4d20def283c7fc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2f71b8ba8137e84aade50d71dacfd2fa72548b5a836d3289c64a149be9db2c17.mp3', 1280, '2026-09-13 05:54:39.858715', '24e800a5d5d35e1cd824fa99dc83d41258023eaa8ae2243a00beaca9ff294ee1', 'validated', '{"audio_key":"2f71b8ba8137e84aade50d71dacfd2fa72548b5a836d3289c64a149be9db2c17","entity_key":"lx_neighborhood_community_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"24e800a5d5d35e1cd824fa99dc83d41258023eaa8ae2243a00beaca9ff294ee1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2f71b8ba8137e84aade50d71dacfd2fa72548b5a836d3289c64a149be9db2c17.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_neighborhood_community_03 -> audio/generated/de-DE/lexical/2f71b8ba8137e84aade50d71dacfd2fa72548b5a836d3289c64a149be9db2c17.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a5b57627-e14c-5f93-b8b9-eca3e20aea93', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_neighborhood_community_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5a355e919fa0cc5dd5a804a8033a5c97ca7f0a0dd36e08c55f4d20def283c7fc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('86a74c81-101d-57f8-9ed9-cae727bf0f68', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a5b57627-e14c-5f93-b8b9-eca3e20aea93', 1), '5a355e919fa0cc5dd5a804a8033a5c97ca7f0a0dd36e08c55f4d20def283c7fc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2f71b8ba8137e84aade50d71dacfd2fa72548b5a836d3289c64a149be9db2c17.mp3', 1280, '2026-09-13 05:54:39.858715', '24e800a5d5d35e1cd824fa99dc83d41258023eaa8ae2243a00beaca9ff294ee1', 'validated', '{"audio_key":"2f71b8ba8137e84aade50d71dacfd2fa72548b5a836d3289c64a149be9db2c17","entity_key":"wf_neighborhood_community_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"24e800a5d5d35e1cd824fa99dc83d41258023eaa8ae2243a00beaca9ff294ee1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2f71b8ba8137e84aade50d71dacfd2fa72548b5a836d3289c64a149be9db2c17.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_travel_experiences_01 -> audio/generated/de-DE/lexical/372e8fae6c445d77207b00878112b89161c85a82cfeccde6a1a370626b72af6d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a1a7845c-c1d6-5428-b462-228596c0a281', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_travel_experiences_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b55c50b883430ac64a76448b1deae12fcd30e8fbe0716b092129cf865aeff3f4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9c1cf83f-52b3-5133-a014-3f5c8c1e3392', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a1a7845c-c1d6-5428-b462-228596c0a281', 1), 'b55c50b883430ac64a76448b1deae12fcd30e8fbe0716b092129cf865aeff3f4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/372e8fae6c445d77207b00878112b89161c85a82cfeccde6a1a370626b72af6d.mp3', 1149, '2026-09-13 05:29:50.941564', '8a33917bfc6f1e0b2e3f9729d63998e666b0ae336f9eeb978926b3dacb96005b', 'validated', '{"audio_key":"372e8fae6c445d77207b00878112b89161c85a82cfeccde6a1a370626b72af6d","entity_key":"lx_travel_experiences_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8a33917bfc6f1e0b2e3f9729d63998e666b0ae336f9eeb978926b3dacb96005b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/372e8fae6c445d77207b00878112b89161c85a82cfeccde6a1a370626b72af6d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_travel_experiences_01 -> audio/generated/de-DE/lexical/372e8fae6c445d77207b00878112b89161c85a82cfeccde6a1a370626b72af6d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fbe16473-8e59-5606-ad57-b198fd794dde', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_travel_experiences_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b55c50b883430ac64a76448b1deae12fcd30e8fbe0716b092129cf865aeff3f4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('10cd8203-a4c4-5ab7-8c26-83c174c6ded1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fbe16473-8e59-5606-ad57-b198fd794dde', 1), 'b55c50b883430ac64a76448b1deae12fcd30e8fbe0716b092129cf865aeff3f4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/372e8fae6c445d77207b00878112b89161c85a82cfeccde6a1a370626b72af6d.mp3', 1149, '2026-09-13 05:29:50.941564', '8a33917bfc6f1e0b2e3f9729d63998e666b0ae336f9eeb978926b3dacb96005b', 'validated', '{"audio_key":"372e8fae6c445d77207b00878112b89161c85a82cfeccde6a1a370626b72af6d","entity_key":"wf_travel_experiences_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8a33917bfc6f1e0b2e3f9729d63998e666b0ae336f9eeb978926b3dacb96005b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/372e8fae6c445d77207b00878112b89161c85a82cfeccde6a1a370626b72af6d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_problems_solutions_03 -> audio/generated/de-DE/lexical/384e91e57df8e71446a9c9f46c015510787a41a2ffba087da54cbf577344410e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('815c0e08-2783-5181-a3f6-8389242c770c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_problems_solutions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '74bf940a56a32059a05dee33ccf9f3250ed2f7f8b79e155004b6a9bbb84c1dfe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f376636f-1f70-5d6b-b48b-e02cba05772c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('815c0e08-2783-5181-a3f6-8389242c770c', 1), '74bf940a56a32059a05dee33ccf9f3250ed2f7f8b79e155004b6a9bbb84c1dfe',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/384e91e57df8e71446a9c9f46c015510787a41a2ffba087da54cbf577344410e.mp3', 1201, '2026-09-13 05:54:39.911147', 'edeed6be252813a40bdfa987a09d74d54bb12feb0a00d52bca771e87e502792e', 'validated', '{"audio_key":"384e91e57df8e71446a9c9f46c015510787a41a2ffba087da54cbf577344410e","entity_key":"lx_problems_solutions_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"edeed6be252813a40bdfa987a09d74d54bb12feb0a00d52bca771e87e502792e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/384e91e57df8e71446a9c9f46c015510787a41a2ffba087da54cbf577344410e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_problems_solutions_03 -> audio/generated/de-DE/lexical/384e91e57df8e71446a9c9f46c015510787a41a2ffba087da54cbf577344410e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8d27843c-216b-5121-958c-44cfb84d3562', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_problems_solutions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '74bf940a56a32059a05dee33ccf9f3250ed2f7f8b79e155004b6a9bbb84c1dfe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8245fa33-28be-58ad-af01-b96f4064f324', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8d27843c-216b-5121-958c-44cfb84d3562', 1), '74bf940a56a32059a05dee33ccf9f3250ed2f7f8b79e155004b6a9bbb84c1dfe',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/384e91e57df8e71446a9c9f46c015510787a41a2ffba087da54cbf577344410e.mp3', 1201, '2026-09-13 05:54:39.911147', 'edeed6be252813a40bdfa987a09d74d54bb12feb0a00d52bca771e87e502792e', 'validated', '{"audio_key":"384e91e57df8e71446a9c9f46c015510787a41a2ffba087da54cbf577344410e","entity_key":"wf_problems_solutions_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"edeed6be252813a40bdfa987a09d74d54bb12feb0a00d52bca771e87e502792e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/384e91e57df8e71446a9c9f46c015510787a41a2ffba087da54cbf577344410e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_problems_solutions_04 -> audio/generated/de-DE/lexical/3942396f7587f5266273119273f3b4da7ecd05507cdff67f1b341ddbdfa1c007.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d9d6d206-0b42-5a3b-ade6-e5c8820ae9a0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_problems_solutions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5fcda2244146f063f079ce8baaa2cb1f35de1f786d265a2ceeac1fff24d07380'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d645f7fb-9e28-53fa-a9bf-aa1ea05f798d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d9d6d206-0b42-5a3b-ade6-e5c8820ae9a0', 1), '5fcda2244146f063f079ce8baaa2cb1f35de1f786d265a2ceeac1fff24d07380',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3942396f7587f5266273119273f3b4da7ecd05507cdff67f1b341ddbdfa1c007.mp3', 1201, '2026-09-13 05:54:40.826312', 'cd3acf7e6eb1f8b43c4e66321784d74f4bf4062c1390ec6799076597db45f621', 'validated', '{"audio_key":"3942396f7587f5266273119273f3b4da7ecd05507cdff67f1b341ddbdfa1c007","entity_key":"lx_problems_solutions_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cd3acf7e6eb1f8b43c4e66321784d74f4bf4062c1390ec6799076597db45f621","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3942396f7587f5266273119273f3b4da7ecd05507cdff67f1b341ddbdfa1c007.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_problems_solutions_04 -> audio/generated/de-DE/lexical/3942396f7587f5266273119273f3b4da7ecd05507cdff67f1b341ddbdfa1c007.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0f42b971-f788-5e7f-9eb4-e0c75260ed7f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_problems_solutions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5fcda2244146f063f079ce8baaa2cb1f35de1f786d265a2ceeac1fff24d07380'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('45e24512-b99a-5907-a705-244f7c1f19e4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0f42b971-f788-5e7f-9eb4-e0c75260ed7f', 1), '5fcda2244146f063f079ce8baaa2cb1f35de1f786d265a2ceeac1fff24d07380',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3942396f7587f5266273119273f3b4da7ecd05507cdff67f1b341ddbdfa1c007.mp3', 1201, '2026-09-13 05:54:40.826312', 'cd3acf7e6eb1f8b43c4e66321784d74f4bf4062c1390ec6799076597db45f621', 'validated', '{"audio_key":"3942396f7587f5266273119273f3b4da7ecd05507cdff67f1b341ddbdfa1c007","entity_key":"wf_problems_solutions_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cd3acf7e6eb1f8b43c4e66321784d74f4bf4062c1390ec6799076597db45f621","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3942396f7587f5266273119273f3b4da7ecd05507cdff67f1b341ddbdfa1c007.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_travel_experiences_02 -> audio/generated/de-DE/lexical/3eb2d0bd27c5b8b7d400b0d18d3c19da4a88d5d673e6a38fd8ef24899ec5c901.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f5f2c946-2766-5075-a808-03845ca64448', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_travel_experiences_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a429051e0a481c9c43039c694ade81e461c74729443bc6d6276dd48e8d19375b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('23419eb5-e3ab-5b29-b80b-7dff19d1a265', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f5f2c946-2766-5075-a808-03845ca64448', 1), 'a429051e0a481c9c43039c694ade81e461c74729443bc6d6276dd48e8d19375b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3eb2d0bd27c5b8b7d400b0d18d3c19da4a88d5d673e6a38fd8ef24899ec5c901.mp3', 1018, '2026-09-13 05:54:40.851565', '3a400288077020d7aef26bb2d2b1210e97fd664afffb4212155571b9fdc4a3fc', 'validated', '{"audio_key":"3eb2d0bd27c5b8b7d400b0d18d3c19da4a88d5d673e6a38fd8ef24899ec5c901","entity_key":"lx_travel_experiences_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3a400288077020d7aef26bb2d2b1210e97fd664afffb4212155571b9fdc4a3fc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3eb2d0bd27c5b8b7d400b0d18d3c19da4a88d5d673e6a38fd8ef24899ec5c901.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_travel_experiences_02 -> audio/generated/de-DE/lexical/3eb2d0bd27c5b8b7d400b0d18d3c19da4a88d5d673e6a38fd8ef24899ec5c901.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5ca14ee6-5e1d-56fc-ba45-f4758f21315d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_travel_experiences_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a429051e0a481c9c43039c694ade81e461c74729443bc6d6276dd48e8d19375b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('69ec6f18-bcc0-52ab-8b75-307b2b51b0cb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5ca14ee6-5e1d-56fc-ba45-f4758f21315d', 1), 'a429051e0a481c9c43039c694ade81e461c74729443bc6d6276dd48e8d19375b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3eb2d0bd27c5b8b7d400b0d18d3c19da4a88d5d673e6a38fd8ef24899ec5c901.mp3', 1018, '2026-09-13 05:54:40.851565', '3a400288077020d7aef26bb2d2b1210e97fd664afffb4212155571b9fdc4a3fc', 'validated', '{"audio_key":"3eb2d0bd27c5b8b7d400b0d18d3c19da4a88d5d673e6a38fd8ef24899ec5c901","entity_key":"wf_travel_experiences_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3a400288077020d7aef26bb2d2b1210e97fd664afffb4212155571b9fdc4a3fc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3eb2d0bd27c5b8b7d400b0d18d3c19da4a88d5d673e6a38fd8ef24899ec5c901.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_health_habits_01 -> audio/generated/de-DE/lexical/4464f977192865c23521469884768ef0af72eaaa866afa79067111ade474951f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6169b2ac-f1eb-59e2-9e7d-c56fe17a3644', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_health_habits_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3c1d0b23873f938e98bc3399f58fb40fd2475b7c78cdd3514da10b6adf16730f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e06ed786-7774-5592-896c-060f601266c5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6169b2ac-f1eb-59e2-9e7d-c56fe17a3644', 1), '3c1d0b23873f938e98bc3399f58fb40fd2475b7c78cdd3514da10b6adf16730f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4464f977192865c23521469884768ef0af72eaaa866afa79067111ade474951f.mp3', 1201, '2026-09-13 05:29:57.419124', '02cd0401313a6ed94828ce758779c9bbb717c1869ed4a063ee2eb2e931c5cd83', 'validated', '{"audio_key":"4464f977192865c23521469884768ef0af72eaaa866afa79067111ade474951f","entity_key":"lx_health_habits_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"02cd0401313a6ed94828ce758779c9bbb717c1869ed4a063ee2eb2e931c5cd83","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4464f977192865c23521469884768ef0af72eaaa866afa79067111ade474951f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_health_habits_01 -> audio/generated/de-DE/lexical/4464f977192865c23521469884768ef0af72eaaa866afa79067111ade474951f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('893eb929-53dc-583c-ba54-be2b082c624e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_health_habits_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3c1d0b23873f938e98bc3399f58fb40fd2475b7c78cdd3514da10b6adf16730f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('95a5e2dc-86ea-5274-b662-c8f961c8d795', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('893eb929-53dc-583c-ba54-be2b082c624e', 1), '3c1d0b23873f938e98bc3399f58fb40fd2475b7c78cdd3514da10b6adf16730f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4464f977192865c23521469884768ef0af72eaaa866afa79067111ade474951f.mp3', 1201, '2026-09-13 05:29:57.419124', '02cd0401313a6ed94828ce758779c9bbb717c1869ed4a063ee2eb2e931c5cd83', 'validated', '{"audio_key":"4464f977192865c23521469884768ef0af72eaaa866afa79067111ade474951f","entity_key":"wf_health_habits_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"02cd0401313a6ed94828ce758779c9bbb717c1869ed4a063ee2eb2e931c5cd83","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4464f977192865c23521469884768ef0af72eaaa866afa79067111ade474951f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_telling_stories_05 -> audio/generated/de-DE/lexical/49ad97aa082a8320aee88c8debd12e6ca8137b76028437fa54be5093471268d4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6a3a74c4-01a2-5b24-af54-9fc579bbbe03', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_telling_stories_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ccd1d16622a3d2a1160ebe7ccf9380757e240b42d4ef1751de19e83a0d4e9cfc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bd727886-8e25-5315-ab3b-b3b130f2dc66', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6a3a74c4-01a2-5b24-af54-9fc579bbbe03', 1), 'ccd1d16622a3d2a1160ebe7ccf9380757e240b42d4ef1751de19e83a0d4e9cfc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/49ad97aa082a8320aee88c8debd12e6ca8137b76028437fa54be5093471268d4.mp3', 1071, '2026-09-13 05:29:59.548812', '311cfea6ad354bf485222cef0cd5d2d548226ca904472c88472efd07e169da2c', 'validated', '{"audio_key":"49ad97aa082a8320aee88c8debd12e6ca8137b76028437fa54be5093471268d4","entity_key":"lx_telling_stories_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"311cfea6ad354bf485222cef0cd5d2d548226ca904472c88472efd07e169da2c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/49ad97aa082a8320aee88c8debd12e6ca8137b76028437fa54be5093471268d4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_telling_stories_05 -> audio/generated/de-DE/lexical/49ad97aa082a8320aee88c8debd12e6ca8137b76028437fa54be5093471268d4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3cb10d79-7066-59ad-8a73-df9251d61ba9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_telling_stories_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ccd1d16622a3d2a1160ebe7ccf9380757e240b42d4ef1751de19e83a0d4e9cfc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ee75769e-d4f4-5cc3-bfed-7a981263bf02', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3cb10d79-7066-59ad-8a73-df9251d61ba9', 1), 'ccd1d16622a3d2a1160ebe7ccf9380757e240b42d4ef1751de19e83a0d4e9cfc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/49ad97aa082a8320aee88c8debd12e6ca8137b76028437fa54be5093471268d4.mp3', 1071, '2026-09-13 05:29:59.548812', '311cfea6ad354bf485222cef0cd5d2d548226ca904472c88472efd07e169da2c', 'validated', '{"audio_key":"49ad97aa082a8320aee88c8debd12e6ca8137b76028437fa54be5093471268d4","entity_key":"wf_telling_stories_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"311cfea6ad354bf485222cef0cd5d2d548226ca904472c88472efd07e169da2c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/49ad97aa082a8320aee88c8debd12e6ca8137b76028437fa54be5093471268d4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_study_goals_06 -> audio/generated/de-DE/lexical/541e100e6ef8ee6cdf900c161106f269301a39dc78d2b550f2a29b65845eaf2b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9b28e3db-7c06-5195-8656-242edef26d98', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_study_goals_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '15079336179b170f465bee97bcf7f89a13ed71ac6c07a7ecc5acbf18b9cfa6c9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c1704b9b-d397-50ca-9f33-8dbf6d3c799d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9b28e3db-7c06-5195-8656-242edef26d98', 1), '15079336179b170f465bee97bcf7f89a13ed71ac6c07a7ecc5acbf18b9cfa6c9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/541e100e6ef8ee6cdf900c161106f269301a39dc78d2b550f2a29b65845eaf2b.mp3', 1332, '2026-09-13 05:30:02.944895', '320b90685283e731db50ad0ddb7bced4b752b6f17f963c0bb5f1d9e486187cad', 'validated', '{"audio_key":"541e100e6ef8ee6cdf900c161106f269301a39dc78d2b550f2a29b65845eaf2b","entity_key":"lx_study_goals_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"320b90685283e731db50ad0ddb7bced4b752b6f17f963c0bb5f1d9e486187cad","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/541e100e6ef8ee6cdf900c161106f269301a39dc78d2b550f2a29b65845eaf2b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_study_goals_06 -> audio/generated/de-DE/lexical/541e100e6ef8ee6cdf900c161106f269301a39dc78d2b550f2a29b65845eaf2b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e59ff566-3ad3-5676-a9b9-03e64958a9c2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_study_goals_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '15079336179b170f465bee97bcf7f89a13ed71ac6c07a7ecc5acbf18b9cfa6c9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e0466bad-f79e-5bbd-826e-cd97b433576a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e59ff566-3ad3-5676-a9b9-03e64958a9c2', 1), '15079336179b170f465bee97bcf7f89a13ed71ac6c07a7ecc5acbf18b9cfa6c9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/541e100e6ef8ee6cdf900c161106f269301a39dc78d2b550f2a29b65845eaf2b.mp3', 1332, '2026-09-13 05:30:02.944895', '320b90685283e731db50ad0ddb7bced4b752b6f17f963c0bb5f1d9e486187cad', 'validated', '{"audio_key":"541e100e6ef8ee6cdf900c161106f269301a39dc78d2b550f2a29b65845eaf2b","entity_key":"wf_study_goals_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"320b90685283e731db50ad0ddb7bced4b752b6f17f963c0bb5f1d9e486187cad","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/541e100e6ef8ee6cdf900c161106f269301a39dc78d2b550f2a29b65845eaf2b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_telling_stories_02 -> audio/generated/de-DE/lexical/656a2f55c14ff0d9261dea77743d47feafdb89a0731262fe61b2a0497eb1eaeb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('be2b4870-4c26-5d4e-bf25-6156c625e065', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_telling_stories_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd302840342b196e4818bc96f8e36feef462f30e5f6d561ddf4ebd48383a127ec'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8c8989b1-6f37-5ba7-b4da-f99a7533e08a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('be2b4870-4c26-5d4e-bf25-6156c625e065', 1), 'd302840342b196e4818bc96f8e36feef462f30e5f6d561ddf4ebd48383a127ec',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/656a2f55c14ff0d9261dea77743d47feafdb89a0731262fe61b2a0497eb1eaeb.mp3', 1149, '2026-09-13 05:54:41.795681', '91b506c5a043fddf58e38562dfa15f2df9b7a5b31bb4df7c916f1c6e5fe9761a', 'validated', '{"audio_key":"656a2f55c14ff0d9261dea77743d47feafdb89a0731262fe61b2a0497eb1eaeb","entity_key":"lx_telling_stories_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"91b506c5a043fddf58e38562dfa15f2df9b7a5b31bb4df7c916f1c6e5fe9761a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/656a2f55c14ff0d9261dea77743d47feafdb89a0731262fe61b2a0497eb1eaeb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_telling_stories_02 -> audio/generated/de-DE/lexical/656a2f55c14ff0d9261dea77743d47feafdb89a0731262fe61b2a0497eb1eaeb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1cb3b09d-f443-56db-a58b-c9f58ea6faf9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_telling_stories_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd302840342b196e4818bc96f8e36feef462f30e5f6d561ddf4ebd48383a127ec'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('37bb0b74-4d78-522a-9f8d-59532adfdb55', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1cb3b09d-f443-56db-a58b-c9f58ea6faf9', 1), 'd302840342b196e4818bc96f8e36feef462f30e5f6d561ddf4ebd48383a127ec',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/656a2f55c14ff0d9261dea77743d47feafdb89a0731262fe61b2a0497eb1eaeb.mp3', 1149, '2026-09-13 05:54:41.795681', '91b506c5a043fddf58e38562dfa15f2df9b7a5b31bb4df7c916f1c6e5fe9761a', 'validated', '{"audio_key":"656a2f55c14ff0d9261dea77743d47feafdb89a0731262fe61b2a0497eb1eaeb","entity_key":"wf_telling_stories_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"91b506c5a043fddf58e38562dfa15f2df9b7a5b31bb4df7c916f1c6e5fe9761a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/656a2f55c14ff0d9261dea77743d47feafdb89a0731262fe61b2a0497eb1eaeb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_neighborhood_community_04 -> audio/generated/de-DE/lexical/6f7586505aa10374b9202e5ce03301bd656610c13394459f257392ff3238caeb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1a750aca-034a-5e99-bfd4-6a38f9201205', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_neighborhood_community_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3889899060239601be6271856cc51e44e033c3766025da8924a4173531dd3550'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('48c45712-392d-5a6c-8946-2b16a36f2eb5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1a750aca-034a-5e99-bfd4-6a38f9201205', 1), '3889899060239601be6271856cc51e44e033c3766025da8924a4173531dd3550',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6f7586505aa10374b9202e5ce03301bd656610c13394459f257392ff3238caeb.mp3', 1201, '2026-09-13 05:54:41.833242', '4c52810885c0287c5074903cf3aecee2d1f759fe46165856655eaec02a146602', 'validated', '{"audio_key":"6f7586505aa10374b9202e5ce03301bd656610c13394459f257392ff3238caeb","entity_key":"lx_neighborhood_community_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4c52810885c0287c5074903cf3aecee2d1f759fe46165856655eaec02a146602","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6f7586505aa10374b9202e5ce03301bd656610c13394459f257392ff3238caeb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_neighborhood_community_04 -> audio/generated/de-DE/lexical/6f7586505aa10374b9202e5ce03301bd656610c13394459f257392ff3238caeb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c446462f-da6d-58cf-a530-6490621f87c9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_neighborhood_community_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3889899060239601be6271856cc51e44e033c3766025da8924a4173531dd3550'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('944534b5-0148-518e-aebf-a9a9024f207e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c446462f-da6d-58cf-a530-6490621f87c9', 1), '3889899060239601be6271856cc51e44e033c3766025da8924a4173531dd3550',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6f7586505aa10374b9202e5ce03301bd656610c13394459f257392ff3238caeb.mp3', 1201, '2026-09-13 05:54:41.833242', '4c52810885c0287c5074903cf3aecee2d1f759fe46165856655eaec02a146602', 'validated', '{"audio_key":"6f7586505aa10374b9202e5ce03301bd656610c13394459f257392ff3238caeb","entity_key":"wf_neighborhood_community_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4c52810885c0287c5074903cf3aecee2d1f759fe46165856655eaec02a146602","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6f7586505aa10374b9202e5ce03301bd656610c13394459f257392ff3238caeb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_neighborhood_community_06 -> audio/generated/de-DE/lexical/78375a54811ee17a9ac92fc7a355ce11f981e278863c9aa376bfff5e3949c7c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d594bc7c-1960-5e15-b13b-9a781d7e87ed', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_neighborhood_community_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e36845a0e5de45ca0595a7128e093ff68358ac8242b45c1561b2a4fe176c5058'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3b814f5b-0250-59a8-9b52-6d6d8564ad5e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d594bc7c-1960-5e15-b13b-9a781d7e87ed', 1), 'e36845a0e5de45ca0595a7128e093ff68358ac8242b45c1561b2a4fe176c5058',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/78375a54811ee17a9ac92fc7a355ce11f981e278863c9aa376bfff5e3949c7c8.mp3', 1071, '2026-09-13 05:30:17.876240', '84a480d41a8670c416756d5aa9f9fdc3591f635026462cebee352c1dd3cdd6d1', 'validated', '{"audio_key":"78375a54811ee17a9ac92fc7a355ce11f981e278863c9aa376bfff5e3949c7c8","entity_key":"lx_neighborhood_community_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"84a480d41a8670c416756d5aa9f9fdc3591f635026462cebee352c1dd3cdd6d1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/78375a54811ee17a9ac92fc7a355ce11f981e278863c9aa376bfff5e3949c7c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_neighborhood_community_06 -> audio/generated/de-DE/lexical/78375a54811ee17a9ac92fc7a355ce11f981e278863c9aa376bfff5e3949c7c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f8d4bf22-6fb3-5aa5-a815-cb7f1ef33617', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_neighborhood_community_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e36845a0e5de45ca0595a7128e093ff68358ac8242b45c1561b2a4fe176c5058'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ca566030-e775-554d-b988-b6be12ab3aad', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f8d4bf22-6fb3-5aa5-a815-cb7f1ef33617', 1), 'e36845a0e5de45ca0595a7128e093ff68358ac8242b45c1561b2a4fe176c5058',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/78375a54811ee17a9ac92fc7a355ce11f981e278863c9aa376bfff5e3949c7c8.mp3', 1071, '2026-09-13 05:30:17.876240', '84a480d41a8670c416756d5aa9f9fdc3591f635026462cebee352c1dd3cdd6d1', 'validated', '{"audio_key":"78375a54811ee17a9ac92fc7a355ce11f981e278863c9aa376bfff5e3949c7c8","entity_key":"wf_neighborhood_community_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"84a480d41a8670c416756d5aa9f9fdc3591f635026462cebee352c1dd3cdd6d1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/78375a54811ee17a9ac92fc7a355ce11f981e278863c9aa376bfff5e3949c7c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_study_goals_04 -> audio/generated/de-DE/lexical/78375a54811ee17a9ac92fc7a355ce11f981e278863c9aa376bfff5e3949c7c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d594bc7c-1960-5e15-b13b-9a781d7e87ed', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_study_goals_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e36845a0e5de45ca0595a7128e093ff68358ac8242b45c1561b2a4fe176c5058'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3b814f5b-0250-59a8-9b52-6d6d8564ad5e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d594bc7c-1960-5e15-b13b-9a781d7e87ed', 1), 'e36845a0e5de45ca0595a7128e093ff68358ac8242b45c1561b2a4fe176c5058',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/78375a54811ee17a9ac92fc7a355ce11f981e278863c9aa376bfff5e3949c7c8.mp3', 1071, '2026-09-13 05:30:17.876240', '84a480d41a8670c416756d5aa9f9fdc3591f635026462cebee352c1dd3cdd6d1', 'validated', '{"audio_key":"78375a54811ee17a9ac92fc7a355ce11f981e278863c9aa376bfff5e3949c7c8","entity_key":"lx_study_goals_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"84a480d41a8670c416756d5aa9f9fdc3591f635026462cebee352c1dd3cdd6d1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/78375a54811ee17a9ac92fc7a355ce11f981e278863c9aa376bfff5e3949c7c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_study_goals_04 -> audio/generated/de-DE/lexical/78375a54811ee17a9ac92fc7a355ce11f981e278863c9aa376bfff5e3949c7c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2ecca4f0-0cb7-5878-abe6-0fe97a86035c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_study_goals_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e36845a0e5de45ca0595a7128e093ff68358ac8242b45c1561b2a4fe176c5058'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1d56aad6-515d-56a0-a4ff-4ddae1896c6f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2ecca4f0-0cb7-5878-abe6-0fe97a86035c', 1), 'e36845a0e5de45ca0595a7128e093ff68358ac8242b45c1561b2a4fe176c5058',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/78375a54811ee17a9ac92fc7a355ce11f981e278863c9aa376bfff5e3949c7c8.mp3', 1071, '2026-09-13 05:30:17.876240', '84a480d41a8670c416756d5aa9f9fdc3591f635026462cebee352c1dd3cdd6d1', 'validated', '{"audio_key":"78375a54811ee17a9ac92fc7a355ce11f981e278863c9aa376bfff5e3949c7c8","entity_key":"wf_study_goals_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"84a480d41a8670c416756d5aa9f9fdc3591f635026462cebee352c1dd3cdd6d1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/78375a54811ee17a9ac92fc7a355ce11f981e278863c9aa376bfff5e3949c7c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_media_technology_01 -> audio/generated/de-DE/lexical/79aa4ccc77ac3b45c22659e1a379587a93432e35a694c2b45eec3c95a9121512.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8e623c43-04f1-53ab-a8e3-89bf44f7060e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_media_technology_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '53367bc65275d3bd1f8b50a1ff336f29061ef7ff7416dc885dcecd4a1ccc6e5e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('12051a7f-cd00-573f-99ba-fb8fc9530e73', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8e623c43-04f1-53ab-a8e3-89bf44f7060e', 1), '53367bc65275d3bd1f8b50a1ff336f29061ef7ff7416dc885dcecd4a1ccc6e5e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/79aa4ccc77ac3b45c22659e1a379587a93432e35a694c2b45eec3c95a9121512.mp3', 1149, '2026-09-13 05:30:18.923565', '7d21517203fd5e365819a0fb6a583f33badbb9812e45e9cca6318642b2b42601', 'validated', '{"audio_key":"79aa4ccc77ac3b45c22659e1a379587a93432e35a694c2b45eec3c95a9121512","entity_key":"lx_media_technology_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7d21517203fd5e365819a0fb6a583f33badbb9812e45e9cca6318642b2b42601","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/79aa4ccc77ac3b45c22659e1a379587a93432e35a694c2b45eec3c95a9121512.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_media_technology_01 -> audio/generated/de-DE/lexical/79aa4ccc77ac3b45c22659e1a379587a93432e35a694c2b45eec3c95a9121512.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('227c803b-ba7b-5b36-b648-c37f4867ed13', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_media_technology_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '53367bc65275d3bd1f8b50a1ff336f29061ef7ff7416dc885dcecd4a1ccc6e5e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fb612e96-a92e-559f-86a9-94c4d82f6b66', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('227c803b-ba7b-5b36-b648-c37f4867ed13', 1), '53367bc65275d3bd1f8b50a1ff336f29061ef7ff7416dc885dcecd4a1ccc6e5e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/79aa4ccc77ac3b45c22659e1a379587a93432e35a694c2b45eec3c95a9121512.mp3', 1149, '2026-09-13 05:30:18.923565', '7d21517203fd5e365819a0fb6a583f33badbb9812e45e9cca6318642b2b42601', 'validated', '{"audio_key":"79aa4ccc77ac3b45c22659e1a379587a93432e35a694c2b45eec3c95a9121512","entity_key":"wf_media_technology_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7d21517203fd5e365819a0fb6a583f33badbb9812e45e9cca6318642b2b42601","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/79aa4ccc77ac3b45c22659e1a379587a93432e35a694c2b45eec3c95a9121512.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_media_technology_04 -> audio/generated/de-DE/lexical/7a218f1a442a5d38f2ad2ff1b8a4911add55430d96abf442d28d1eeb2d291ba1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c11b0804-6207-5514-85d3-307b75f44f83', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_media_technology_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4aed6d8b2176c8da8e4e42189979683a23719ad6e3ea0983445cb5b49b166d32'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('43057c3f-8fe6-51b9-ba0e-44ef74e56d2a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c11b0804-6207-5514-85d3-307b75f44f83', 1), '4aed6d8b2176c8da8e4e42189979683a23719ad6e3ea0983445cb5b49b166d32',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7a218f1a442a5d38f2ad2ff1b8a4911add55430d96abf442d28d1eeb2d291ba1.mp3', 1280, '2026-09-13 05:54:42.755072', 'abc9358f20c126aedc48348b38839f8856c2e23d1096662233883b270505b391', 'validated', '{"audio_key":"7a218f1a442a5d38f2ad2ff1b8a4911add55430d96abf442d28d1eeb2d291ba1","entity_key":"lx_media_technology_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"abc9358f20c126aedc48348b38839f8856c2e23d1096662233883b270505b391","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7a218f1a442a5d38f2ad2ff1b8a4911add55430d96abf442d28d1eeb2d291ba1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_media_technology_04 -> audio/generated/de-DE/lexical/7a218f1a442a5d38f2ad2ff1b8a4911add55430d96abf442d28d1eeb2d291ba1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2ed80a81-b307-53b7-8541-8de6297b7162', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_media_technology_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4aed6d8b2176c8da8e4e42189979683a23719ad6e3ea0983445cb5b49b166d32'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d2781192-99b6-5dac-bd32-babb6e247b08', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2ed80a81-b307-53b7-8541-8de6297b7162', 1), '4aed6d8b2176c8da8e4e42189979683a23719ad6e3ea0983445cb5b49b166d32',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7a218f1a442a5d38f2ad2ff1b8a4911add55430d96abf442d28d1eeb2d291ba1.mp3', 1280, '2026-09-13 05:54:42.755072', 'abc9358f20c126aedc48348b38839f8856c2e23d1096662233883b270505b391', 'validated', '{"audio_key":"7a218f1a442a5d38f2ad2ff1b8a4911add55430d96abf442d28d1eeb2d291ba1","entity_key":"wf_media_technology_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"abc9358f20c126aedc48348b38839f8856c2e23d1096662233883b270505b391","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7a218f1a442a5d38f2ad2ff1b8a4911add55430d96abf442d28d1eeb2d291ba1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_work_experience_03 -> audio/generated/de-DE/lexical/89caaa186fdd50e99783421e5437e5f219e83593d009f31505acc221188c81c5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8da16f9c-d27a-5d82-8ff8-bfded3b31568', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_work_experience_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '546bc99f917f30686a1b1e8bacf8e28328879e86531761e0492e9430c454d58b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('10a31f02-2b80-5ce5-be54-625a70dc9576', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8da16f9c-d27a-5d82-8ff8-bfded3b31568', 1), '546bc99f917f30686a1b1e8bacf8e28328879e86531761e0492e9430c454d58b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/89caaa186fdd50e99783421e5437e5f219e83593d009f31505acc221188c81c5.mp3', 1332, '2026-09-13 05:54:42.852177', 'c473cbcbd4cbc46366ee1e40ec6e38e9b7e9b7fa9ac4dd7babff3951dba4a7a4', 'validated', '{"audio_key":"89caaa186fdd50e99783421e5437e5f219e83593d009f31505acc221188c81c5","entity_key":"lx_work_experience_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c473cbcbd4cbc46366ee1e40ec6e38e9b7e9b7fa9ac4dd7babff3951dba4a7a4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/89caaa186fdd50e99783421e5437e5f219e83593d009f31505acc221188c81c5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_work_experience_03 -> audio/generated/de-DE/lexical/89caaa186fdd50e99783421e5437e5f219e83593d009f31505acc221188c81c5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d50b9772-5fb0-5e0e-9d53-99af3996563b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_work_experience_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '546bc99f917f30686a1b1e8bacf8e28328879e86531761e0492e9430c454d58b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('18b92f9a-157e-525e-a568-183fc10e0509', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d50b9772-5fb0-5e0e-9d53-99af3996563b', 1), '546bc99f917f30686a1b1e8bacf8e28328879e86531761e0492e9430c454d58b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/89caaa186fdd50e99783421e5437e5f219e83593d009f31505acc221188c81c5.mp3', 1332, '2026-09-13 05:54:42.852177', 'c473cbcbd4cbc46366ee1e40ec6e38e9b7e9b7fa9ac4dd7babff3951dba4a7a4', 'validated', '{"audio_key":"89caaa186fdd50e99783421e5437e5f219e83593d009f31505acc221188c81c5","entity_key":"wf_work_experience_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c473cbcbd4cbc46366ee1e40ec6e38e9b7e9b7fa9ac4dd7babff3951dba4a7a4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/89caaa186fdd50e99783421e5437e5f219e83593d009f31505acc221188c81c5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_media_technology_02 -> audio/generated/de-DE/lexical/8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('70f090d2-10a2-5302-9810-32c581c47e96', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_media_technology_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fea069c544d4740afca081a3a85363692570a0e03e6d7afd4d14c9c7617cd6b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('af5f358d-6d3c-5a25-9f12-7781dffa8963', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('70f090d2-10a2-5302-9810-32c581c47e96', 1), 'fea069c544d4740afca081a3a85363692570a0e03e6d7afd4d14c9c7617cd6b4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4.mp3', 1253, '2026-09-13 05:30:27.625044', 'e7ae853fe08d5d24b104b444285626342b07879d2571cd3ceaa49b6501594f85', 'validated', '{"audio_key":"8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4","entity_key":"lx_media_technology_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e7ae853fe08d5d24b104b444285626342b07879d2571cd3ceaa49b6501594f85","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_media_technology_02 -> audio/generated/de-DE/lexical/8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('94711d98-ad9d-50f8-9882-ed272ff306b1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_media_technology_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fea069c544d4740afca081a3a85363692570a0e03e6d7afd4d14c9c7617cd6b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2bd19e4e-6542-5cbe-bbbc-b089555d0dcb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('94711d98-ad9d-50f8-9882-ed272ff306b1', 1), 'fea069c544d4740afca081a3a85363692570a0e03e6d7afd4d14c9c7617cd6b4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4.mp3', 1253, '2026-09-13 05:30:27.625044', 'e7ae853fe08d5d24b104b444285626342b07879d2571cd3ceaa49b6501594f85', 'validated', '{"audio_key":"8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4","entity_key":"wf_media_technology_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e7ae853fe08d5d24b104b444285626342b07879d2571cd3ceaa49b6501594f85","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_work_experience_05 -> audio/generated/de-DE/lexical/8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('70f090d2-10a2-5302-9810-32c581c47e96', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_work_experience_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fea069c544d4740afca081a3a85363692570a0e03e6d7afd4d14c9c7617cd6b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('af5f358d-6d3c-5a25-9f12-7781dffa8963', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('70f090d2-10a2-5302-9810-32c581c47e96', 1), 'fea069c544d4740afca081a3a85363692570a0e03e6d7afd4d14c9c7617cd6b4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4.mp3', 1253, '2026-09-13 05:30:27.625044', 'e7ae853fe08d5d24b104b444285626342b07879d2571cd3ceaa49b6501594f85', 'validated', '{"audio_key":"8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4","entity_key":"lx_work_experience_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e7ae853fe08d5d24b104b444285626342b07879d2571cd3ceaa49b6501594f85","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_work_experience_05 -> audio/generated/de-DE/lexical/8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('bef3b90c-9071-5177-80cc-db0d49aade35', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_work_experience_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fea069c544d4740afca081a3a85363692570a0e03e6d7afd4d14c9c7617cd6b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('47a378d5-fd9e-5bf7-a380-162b6c2e93a5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('bef3b90c-9071-5177-80cc-db0d49aade35', 1), 'fea069c544d4740afca081a3a85363692570a0e03e6d7afd4d14c9c7617cd6b4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4.mp3', 1253, '2026-09-13 05:30:27.625044', 'e7ae853fe08d5d24b104b444285626342b07879d2571cd3ceaa49b6501594f85', 'validated', '{"audio_key":"8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4","entity_key":"wf_work_experience_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e7ae853fe08d5d24b104b444285626342b07879d2571cd3ceaa49b6501594f85","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_problems_solutions_05 -> audio/generated/de-DE/lexical/9049d391bf65f267ecb044b25e295848cd74dea5859ccf9a03bb4b2a61efa33c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6d4f06cd-b493-5d7b-8f09-71b0a24f35b9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_problems_solutions_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '65f773c91c16d466d6e1675c03801f4013f18f49167f8729da87ee93842273bf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('184c12a7-ba6f-5654-9684-4d07d894d911', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6d4f06cd-b493-5d7b-8f09-71b0a24f35b9', 1), '65f773c91c16d466d6e1675c03801f4013f18f49167f8729da87ee93842273bf',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9049d391bf65f267ecb044b25e295848cd74dea5859ccf9a03bb4b2a61efa33c.mp3', 1097, '2026-09-13 05:54:43.749291', 'd9d3b0772c13a008f5169b5ff7fd3c91ea3bb1e81db50a8146ebd63f6b156168', 'validated', '{"audio_key":"9049d391bf65f267ecb044b25e295848cd74dea5859ccf9a03bb4b2a61efa33c","entity_key":"lx_problems_solutions_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d9d3b0772c13a008f5169b5ff7fd3c91ea3bb1e81db50a8146ebd63f6b156168","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9049d391bf65f267ecb044b25e295848cd74dea5859ccf9a03bb4b2a61efa33c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_problems_solutions_05 -> audio/generated/de-DE/lexical/9049d391bf65f267ecb044b25e295848cd74dea5859ccf9a03bb4b2a61efa33c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('53ff4f95-e9c3-5307-bffa-822c8535d7be', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_problems_solutions_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '65f773c91c16d466d6e1675c03801f4013f18f49167f8729da87ee93842273bf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cb59b481-61fa-5f8a-93ac-c7b737c0953b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('53ff4f95-e9c3-5307-bffa-822c8535d7be', 1), '65f773c91c16d466d6e1675c03801f4013f18f49167f8729da87ee93842273bf',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9049d391bf65f267ecb044b25e295848cd74dea5859ccf9a03bb4b2a61efa33c.mp3', 1097, '2026-09-13 05:54:43.749291', 'd9d3b0772c13a008f5169b5ff7fd3c91ea3bb1e81db50a8146ebd63f6b156168', 'validated', '{"audio_key":"9049d391bf65f267ecb044b25e295848cd74dea5859ccf9a03bb4b2a61efa33c","entity_key":"wf_problems_solutions_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d9d3b0772c13a008f5169b5ff7fd3c91ea3bb1e81db50a8146ebd63f6b156168","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9049d391bf65f267ecb044b25e295848cd74dea5859ccf9a03bb4b2a61efa33c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_agree_disagree_01 -> audio/generated/de-DE/lexical/92cb57a4db8679265e4240403027f0d9c62bdddbe283ce6b59f5551892d7cfcd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f95ab71f-3bed-5710-a8b2-5671c374aa11', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_agree_disagree_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7286af196c187521ccc8e28fecd2e0a648b9b0147a079ac156bad1bcde5ffdd7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4e91b766-ad1c-5b6b-aec7-3118b4d33497', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f95ab71f-3bed-5710-a8b2-5671c374aa11', 1), '7286af196c187521ccc8e28fecd2e0a648b9b0147a079ac156bad1bcde5ffdd7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/92cb57a4db8679265e4240403027f0d9c62bdddbe283ce6b59f5551892d7cfcd.mp3', 1149, '2026-09-13 05:30:29.871799', 'a9ef8ad1ba68b484678251568e66833c15915f8d1dde2ff8656007fbd400207e', 'validated', '{"audio_key":"92cb57a4db8679265e4240403027f0d9c62bdddbe283ce6b59f5551892d7cfcd","entity_key":"lx_agree_disagree_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a9ef8ad1ba68b484678251568e66833c15915f8d1dde2ff8656007fbd400207e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/92cb57a4db8679265e4240403027f0d9c62bdddbe283ce6b59f5551892d7cfcd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_agree_disagree_01 -> audio/generated/de-DE/lexical/92cb57a4db8679265e4240403027f0d9c62bdddbe283ce6b59f5551892d7cfcd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('bb207630-8509-5821-9b17-e3cb54a7f746', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_agree_disagree_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7286af196c187521ccc8e28fecd2e0a648b9b0147a079ac156bad1bcde5ffdd7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('314376f8-306b-5c3b-b814-96859f98c719', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('bb207630-8509-5821-9b17-e3cb54a7f746', 1), '7286af196c187521ccc8e28fecd2e0a648b9b0147a079ac156bad1bcde5ffdd7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/92cb57a4db8679265e4240403027f0d9c62bdddbe283ce6b59f5551892d7cfcd.mp3', 1149, '2026-09-13 05:30:29.871799', 'a9ef8ad1ba68b484678251568e66833c15915f8d1dde2ff8656007fbd400207e', 'validated', '{"audio_key":"92cb57a4db8679265e4240403027f0d9c62bdddbe283ce6b59f5551892d7cfcd","entity_key":"wf_agree_disagree_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a9ef8ad1ba68b484678251568e66833c15915f8d1dde2ff8656007fbd400207e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/92cb57a4db8679265e4240403027f0d9c62bdddbe283ce6b59f5551892d7cfcd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_travel_experiences_06 -> audio/generated/de-DE/lexical/97f441376b577495199bbd4ef17d659e297d0685b74568ee2d0b00832057b020.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3410c23a-9336-5bbd-8ae9-bc11fc52de2d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_travel_experiences_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dfe794929179b37c8cf6f4d9951c38c157d5401dafd6650d66f8290bca2a1ad8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a3e35bd6-a2cd-5ad2-af02-b411d9185bd7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3410c23a-9336-5bbd-8ae9-bc11fc52de2d', 1), 'dfe794929179b37c8cf6f4d9951c38c157d5401dafd6650d66f8290bca2a1ad8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/97f441376b577495199bbd4ef17d659e297d0685b74568ee2d0b00832057b020.mp3', 1018, '2026-09-13 05:30:32.330679', '8a8001fe4b2db8bd0fe4c7e0a82314f13f53b09e22dd829826873e55bf7ffc14', 'validated', '{"audio_key":"97f441376b577495199bbd4ef17d659e297d0685b74568ee2d0b00832057b020","entity_key":"lx_travel_experiences_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8a8001fe4b2db8bd0fe4c7e0a82314f13f53b09e22dd829826873e55bf7ffc14","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/97f441376b577495199bbd4ef17d659e297d0685b74568ee2d0b00832057b020.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_travel_experiences_06 -> audio/generated/de-DE/lexical/97f441376b577495199bbd4ef17d659e297d0685b74568ee2d0b00832057b020.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b445c50f-8062-566c-bf97-d2ff825bfefc', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_travel_experiences_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dfe794929179b37c8cf6f4d9951c38c157d5401dafd6650d66f8290bca2a1ad8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('77cc630b-993d-5401-813b-38b823d24453', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b445c50f-8062-566c-bf97-d2ff825bfefc', 1), 'dfe794929179b37c8cf6f4d9951c38c157d5401dafd6650d66f8290bca2a1ad8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/97f441376b577495199bbd4ef17d659e297d0685b74568ee2d0b00832057b020.mp3', 1018, '2026-09-13 05:30:32.330679', '8a8001fe4b2db8bd0fe4c7e0a82314f13f53b09e22dd829826873e55bf7ffc14', 'validated', '{"audio_key":"97f441376b577495199bbd4ef17d659e297d0685b74568ee2d0b00832057b020","entity_key":"wf_travel_experiences_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8a8001fe4b2db8bd0fe4c7e0a82314f13f53b09e22dd829826873e55bf7ffc14","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/97f441376b577495199bbd4ef17d659e297d0685b74568ee2d0b00832057b020.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_work_experience_01 -> audio/generated/de-DE/lexical/97f441376b577495199bbd4ef17d659e297d0685b74568ee2d0b00832057b020.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3410c23a-9336-5bbd-8ae9-bc11fc52de2d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_work_experience_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dfe794929179b37c8cf6f4d9951c38c157d5401dafd6650d66f8290bca2a1ad8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a3e35bd6-a2cd-5ad2-af02-b411d9185bd7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3410c23a-9336-5bbd-8ae9-bc11fc52de2d', 1), 'dfe794929179b37c8cf6f4d9951c38c157d5401dafd6650d66f8290bca2a1ad8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/97f441376b577495199bbd4ef17d659e297d0685b74568ee2d0b00832057b020.mp3', 1018, '2026-09-13 05:30:32.330679', '8a8001fe4b2db8bd0fe4c7e0a82314f13f53b09e22dd829826873e55bf7ffc14', 'validated', '{"audio_key":"97f441376b577495199bbd4ef17d659e297d0685b74568ee2d0b00832057b020","entity_key":"lx_work_experience_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8a8001fe4b2db8bd0fe4c7e0a82314f13f53b09e22dd829826873e55bf7ffc14","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/97f441376b577495199bbd4ef17d659e297d0685b74568ee2d0b00832057b020.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_work_experience_01 -> audio/generated/de-DE/lexical/97f441376b577495199bbd4ef17d659e297d0685b74568ee2d0b00832057b020.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('dd87faa0-ead2-5bdf-95d2-8d046d8d3f63', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_work_experience_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dfe794929179b37c8cf6f4d9951c38c157d5401dafd6650d66f8290bca2a1ad8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f34f93e6-7a88-5f72-9b65-f299c821daf6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('dd87faa0-ead2-5bdf-95d2-8d046d8d3f63', 1), 'dfe794929179b37c8cf6f4d9951c38c157d5401dafd6650d66f8290bca2a1ad8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/97f441376b577495199bbd4ef17d659e297d0685b74568ee2d0b00832057b020.mp3', 1018, '2026-09-13 05:30:32.330679', '8a8001fe4b2db8bd0fe4c7e0a82314f13f53b09e22dd829826873e55bf7ffc14', 'validated', '{"audio_key":"97f441376b577495199bbd4ef17d659e297d0685b74568ee2d0b00832057b020","entity_key":"wf_work_experience_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8a8001fe4b2db8bd0fe4c7e0a82314f13f53b09e22dd829826873e55bf7ffc14","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/97f441376b577495199bbd4ef17d659e297d0685b74568ee2d0b00832057b020.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_work_experience_06 -> audio/generated/de-DE/lexical/98a37f5eb33e316c3026e253b173686681a63d648a328398c92f27ebad14b10a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9c20ab24-9d50-5e88-a374-ee2ce621a7b9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_work_experience_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4da394b87b08f06b61e5b2e0e423122a6689375ace862dfa0864306965fdcce7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c43e4e47-8953-5144-8a6a-6c7fc0b928dc', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9c20ab24-9d50-5e88-a374-ee2ce621a7b9', 1), '4da394b87b08f06b61e5b2e0e423122a6689375ace862dfa0864306965fdcce7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/98a37f5eb33e316c3026e253b173686681a63d648a328398c92f27ebad14b10a.mp3', 914, '2026-09-13 05:30:33.165502', '8eee1bfe28bfdb4fc6d371e39ae7daba50f9dbf10f14b6270884a5e73f2f1ac4', 'validated', '{"audio_key":"98a37f5eb33e316c3026e253b173686681a63d648a328398c92f27ebad14b10a","entity_key":"lx_work_experience_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8eee1bfe28bfdb4fc6d371e39ae7daba50f9dbf10f14b6270884a5e73f2f1ac4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/98a37f5eb33e316c3026e253b173686681a63d648a328398c92f27ebad14b10a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_work_experience_06 -> audio/generated/de-DE/lexical/98a37f5eb33e316c3026e253b173686681a63d648a328398c92f27ebad14b10a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d3401ed6-d42b-597a-a844-670baa7dad3d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_work_experience_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4da394b87b08f06b61e5b2e0e423122a6689375ace862dfa0864306965fdcce7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('31ff6d79-ec35-5997-9c8c-1324989fa4ad', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d3401ed6-d42b-597a-a844-670baa7dad3d', 1), '4da394b87b08f06b61e5b2e0e423122a6689375ace862dfa0864306965fdcce7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/98a37f5eb33e316c3026e253b173686681a63d648a328398c92f27ebad14b10a.mp3', 914, '2026-09-13 05:30:33.165502', '8eee1bfe28bfdb4fc6d371e39ae7daba50f9dbf10f14b6270884a5e73f2f1ac4', 'validated', '{"audio_key":"98a37f5eb33e316c3026e253b173686681a63d648a328398c92f27ebad14b10a","entity_key":"wf_work_experience_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8eee1bfe28bfdb4fc6d371e39ae7daba50f9dbf10f14b6270884a5e73f2f1ac4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/98a37f5eb33e316c3026e253b173686681a63d648a328398c92f27ebad14b10a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_opinions_reasons_04 -> audio/generated/de-DE/lexical/a67929324157b6794383e037bae306cee3ae0b3a89308de60298584759280606.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9d0ca719-0521-5441-9967-2f9ad1d1ddd3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_opinions_reasons_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '76aaa813572788645b2c79f28e6a22d734ec7b25afe0907a5d8319eac303e7b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('04004d89-d6b1-52a7-ac78-fec0ee698773', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9d0ca719-0521-5441-9967-2f9ad1d1ddd3', 1), '76aaa813572788645b2c79f28e6a22d734ec7b25afe0907a5d8319eac303e7b4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a67929324157b6794383e037bae306cee3ae0b3a89308de60298584759280606.mp3', 914, '2026-09-13 05:54:44.080638', '86d7137fb357ca580794e327d978a7d41fd7a21c09dcd7eed1579a443809e8ae', 'validated', '{"audio_key":"a67929324157b6794383e037bae306cee3ae0b3a89308de60298584759280606","entity_key":"lx_opinions_reasons_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"86d7137fb357ca580794e327d978a7d41fd7a21c09dcd7eed1579a443809e8ae","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a67929324157b6794383e037bae306cee3ae0b3a89308de60298584759280606.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_opinions_reasons_04 -> audio/generated/de-DE/lexical/a67929324157b6794383e037bae306cee3ae0b3a89308de60298584759280606.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2639392c-be0a-5563-aa86-1afc2d806775', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_opinions_reasons_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '76aaa813572788645b2c79f28e6a22d734ec7b25afe0907a5d8319eac303e7b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('73db095b-920c-5de4-b4c7-6097d7331796', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2639392c-be0a-5563-aa86-1afc2d806775', 1), '76aaa813572788645b2c79f28e6a22d734ec7b25afe0907a5d8319eac303e7b4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a67929324157b6794383e037bae306cee3ae0b3a89308de60298584759280606.mp3', 914, '2026-09-13 05:54:44.080638', '86d7137fb357ca580794e327d978a7d41fd7a21c09dcd7eed1579a443809e8ae', 'validated', '{"audio_key":"a67929324157b6794383e037bae306cee3ae0b3a89308de60298584759280606","entity_key":"wf_opinions_reasons_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"86d7137fb357ca580794e327d978a7d41fd7a21c09dcd7eed1579a443809e8ae","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a67929324157b6794383e037bae306cee3ae0b3a89308de60298584759280606.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_health_habits_05 -> audio/generated/de-DE/lexical/a79f35e257b33d7091a9b6f4eea63ebeb0c0f079a4a2f4732b7a6e851e77ce00.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ebdfef9f-a812-5d13-a17e-ca8975cebde0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_health_habits_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2319cd90fbab1065767f57378abbc36f6e2e47325acbf01365003069bbcc2553'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('553b573f-7870-5ef4-a714-c132b91b58c0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ebdfef9f-a812-5d13-a17e-ca8975cebde0', 1), '2319cd90fbab1065767f57378abbc36f6e2e47325acbf01365003069bbcc2553',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a79f35e257b33d7091a9b6f4eea63ebeb0c0f079a4a2f4732b7a6e851e77ce00.mp3', 1018, '2026-09-13 05:54:44.749188', '72316d912fecb10578882cf81f1e277233caf9cf5566ae102ee93a859155b3b9', 'validated', '{"audio_key":"a79f35e257b33d7091a9b6f4eea63ebeb0c0f079a4a2f4732b7a6e851e77ce00","entity_key":"lx_health_habits_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"72316d912fecb10578882cf81f1e277233caf9cf5566ae102ee93a859155b3b9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a79f35e257b33d7091a9b6f4eea63ebeb0c0f079a4a2f4732b7a6e851e77ce00.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_health_habits_05 -> audio/generated/de-DE/lexical/a79f35e257b33d7091a9b6f4eea63ebeb0c0f079a4a2f4732b7a6e851e77ce00.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c0f8819f-de50-5129-b824-2c81a94795f2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_health_habits_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2319cd90fbab1065767f57378abbc36f6e2e47325acbf01365003069bbcc2553'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('875646b4-d93e-5fd2-987d-76eb5ce09c12', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c0f8819f-de50-5129-b824-2c81a94795f2', 1), '2319cd90fbab1065767f57378abbc36f6e2e47325acbf01365003069bbcc2553',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a79f35e257b33d7091a9b6f4eea63ebeb0c0f079a4a2f4732b7a6e851e77ce00.mp3', 1018, '2026-09-13 05:54:44.749188', '72316d912fecb10578882cf81f1e277233caf9cf5566ae102ee93a859155b3b9', 'validated', '{"audio_key":"a79f35e257b33d7091a9b6f4eea63ebeb0c0f079a4a2f4732b7a6e851e77ce00","entity_key":"wf_health_habits_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"72316d912fecb10578882cf81f1e277233caf9cf5566ae102ee93a859155b3b9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a79f35e257b33d7091a9b6f4eea63ebeb0c0f079a4a2f4732b7a6e851e77ce00.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_neighborhood_community_01 -> audio/generated/de-DE/lexical/ac44321e4f29454bdf90faf9bf541fdf3d4890f9b2bb5c4eb66d5d9afefdb900.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4ee62ccb-8992-5e19-a97e-d12dfb04b391', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_neighborhood_community_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd49e47ae681323136d118b29889a13730a485386de24d4828c313ea0094272a0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0a3c213d-a51d-554f-a5cb-f6589c9bd17f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4ee62ccb-8992-5e19-a97e-d12dfb04b391', 1), 'd49e47ae681323136d118b29889a13730a485386de24d4828c313ea0094272a0',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ac44321e4f29454bdf90faf9bf541fdf3d4890f9b2bb5c4eb66d5d9afefdb900.mp3', 1149, '2026-09-13 05:30:40.724004', '271802498e045f5f68759abfe9fcf051fe411eeeac85a4b97dd2ab83a4b3665d', 'validated', '{"audio_key":"ac44321e4f29454bdf90faf9bf541fdf3d4890f9b2bb5c4eb66d5d9afefdb900","entity_key":"lx_neighborhood_community_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"271802498e045f5f68759abfe9fcf051fe411eeeac85a4b97dd2ab83a4b3665d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ac44321e4f29454bdf90faf9bf541fdf3d4890f9b2bb5c4eb66d5d9afefdb900.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_neighborhood_community_01 -> audio/generated/de-DE/lexical/ac44321e4f29454bdf90faf9bf541fdf3d4890f9b2bb5c4eb66d5d9afefdb900.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1633c5f4-4d57-5844-a00c-69076b3a6c8e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_neighborhood_community_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd49e47ae681323136d118b29889a13730a485386de24d4828c313ea0094272a0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('34eb6f4f-ba82-505a-a226-d54fc74abe11', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1633c5f4-4d57-5844-a00c-69076b3a6c8e', 1), 'd49e47ae681323136d118b29889a13730a485386de24d4828c313ea0094272a0',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ac44321e4f29454bdf90faf9bf541fdf3d4890f9b2bb5c4eb66d5d9afefdb900.mp3', 1149, '2026-09-13 05:30:40.724004', '271802498e045f5f68759abfe9fcf051fe411eeeac85a4b97dd2ab83a4b3665d', 'validated', '{"audio_key":"ac44321e4f29454bdf90faf9bf541fdf3d4890f9b2bb5c4eb66d5d9afefdb900","entity_key":"wf_neighborhood_community_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"271802498e045f5f68759abfe9fcf051fe411eeeac85a4b97dd2ab83a4b3665d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ac44321e4f29454bdf90faf9bf541fdf3d4890f9b2bb5c4eb66d5d9afefdb900.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_problems_solutions_01 -> audio/generated/de-DE/lexical/ad5158542826bf41962f34556701c8b5add1d1c749d0cd5ce2f24ef91a71954e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e708713c-48e1-5462-8b95-09307e527540', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_problems_solutions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ebdaa9e34ca0e47244bc0a5bcfd34b8e739aeed92a384966c4be0c01f64a9c40'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d8190fc1-77f3-541f-af3f-5cf8dfa503dc', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e708713c-48e1-5462-8b95-09307e527540', 1), 'ebdaa9e34ca0e47244bc0a5bcfd34b8e739aeed92a384966c4be0c01f64a9c40',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ad5158542826bf41962f34556701c8b5add1d1c749d0cd5ce2f24ef91a71954e.mp3', 1018, '2026-09-13 05:30:41.786422', 'd2cb09510dcd16450da6c824fbb287a7a481eb3a4f2917a1d02c87b7af46c9c9', 'validated', '{"audio_key":"ad5158542826bf41962f34556701c8b5add1d1c749d0cd5ce2f24ef91a71954e","entity_key":"lx_problems_solutions_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d2cb09510dcd16450da6c824fbb287a7a481eb3a4f2917a1d02c87b7af46c9c9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ad5158542826bf41962f34556701c8b5add1d1c749d0cd5ce2f24ef91a71954e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_problems_solutions_01 -> audio/generated/de-DE/lexical/ad5158542826bf41962f34556701c8b5add1d1c749d0cd5ce2f24ef91a71954e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3958b0ce-e684-52c8-b318-52c5f3bdce15', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_problems_solutions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ebdaa9e34ca0e47244bc0a5bcfd34b8e739aeed92a384966c4be0c01f64a9c40'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5a206aea-4178-5269-b04d-69c38e7c057f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3958b0ce-e684-52c8-b318-52c5f3bdce15', 1), 'ebdaa9e34ca0e47244bc0a5bcfd34b8e739aeed92a384966c4be0c01f64a9c40',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ad5158542826bf41962f34556701c8b5add1d1c749d0cd5ce2f24ef91a71954e.mp3', 1018, '2026-09-13 05:30:41.786422', 'd2cb09510dcd16450da6c824fbb287a7a481eb3a4f2917a1d02c87b7af46c9c9', 'validated', '{"audio_key":"ad5158542826bf41962f34556701c8b5add1d1c749d0cd5ce2f24ef91a71954e","entity_key":"wf_problems_solutions_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d2cb09510dcd16450da6c824fbb287a7a481eb3a4f2917a1d02c87b7af46c9c9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ad5158542826bf41962f34556701c8b5add1d1c749d0cd5ce2f24ef91a71954e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_media_technology_03 -> audio/generated/de-DE/lexical/b3d418eccc03b41b5b7aaa8bedc4d4b9442f565fb1854dbfb7766333879970a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('27c935d9-1fcc-5fbe-9098-c32f1637865b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_media_technology_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f624fcf0dcbb39c0a05062577622a8530ae2b04c335ae657cb19bbda57e90d6b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('18bd864f-f2d7-58c3-bf40-0086ab09dba5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('27c935d9-1fcc-5fbe-9098-c32f1637865b', 1), 'f624fcf0dcbb39c0a05062577622a8530ae2b04c335ae657cb19bbda57e90d6b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b3d418eccc03b41b5b7aaa8bedc4d4b9442f565fb1854dbfb7766333879970a0.mp3', 1097, '2026-09-13 05:54:45.072659', 'b2424c7a85b04f130b11d8263150f0872d6d617aa75f324f163509582df45270', 'validated', '{"audio_key":"b3d418eccc03b41b5b7aaa8bedc4d4b9442f565fb1854dbfb7766333879970a0","entity_key":"lx_media_technology_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b2424c7a85b04f130b11d8263150f0872d6d617aa75f324f163509582df45270","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b3d418eccc03b41b5b7aaa8bedc4d4b9442f565fb1854dbfb7766333879970a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_media_technology_03 -> audio/generated/de-DE/lexical/b3d418eccc03b41b5b7aaa8bedc4d4b9442f565fb1854dbfb7766333879970a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('cb7f74a5-3e3d-500f-8990-6efe05e728e1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_media_technology_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f624fcf0dcbb39c0a05062577622a8530ae2b04c335ae657cb19bbda57e90d6b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('17eefc2d-eaf3-579f-b357-22998e303c62', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('cb7f74a5-3e3d-500f-8990-6efe05e728e1', 1), 'f624fcf0dcbb39c0a05062577622a8530ae2b04c335ae657cb19bbda57e90d6b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b3d418eccc03b41b5b7aaa8bedc4d4b9442f565fb1854dbfb7766333879970a0.mp3', 1097, '2026-09-13 05:54:45.072659', 'b2424c7a85b04f130b11d8263150f0872d6d617aa75f324f163509582df45270', 'validated', '{"audio_key":"b3d418eccc03b41b5b7aaa8bedc4d4b9442f565fb1854dbfb7766333879970a0","entity_key":"wf_media_technology_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b2424c7a85b04f130b11d8263150f0872d6d617aa75f324f163509582df45270","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b3d418eccc03b41b5b7aaa8bedc4d4b9442f565fb1854dbfb7766333879970a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_telling_stories_03 -> audio/generated/de-DE/lexical/b40a0eb4f2002fd21c1a455f8a9115c84c18c648dba69b42f50f6e5848eb8066.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f2979d7c-c350-5710-8d10-50a55ad94a9e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_telling_stories_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2ad23d52745b2f9306e57b861d33d66d16738ed6e5db02ba53047ed606ecec3e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('29caa4a7-f47a-5eb7-869a-feba9d615652', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f2979d7c-c350-5710-8d10-50a55ad94a9e', 1), '2ad23d52745b2f9306e57b861d33d66d16738ed6e5db02ba53047ed606ecec3e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b40a0eb4f2002fd21c1a455f8a9115c84c18c648dba69b42f50f6e5848eb8066.mp3', 1018, '2026-09-13 05:30:44.074922', '72180ad058c773488c90a08476f1daa0c4d5b1005b29d6b84082902ddb14af1c', 'validated', '{"audio_key":"b40a0eb4f2002fd21c1a455f8a9115c84c18c648dba69b42f50f6e5848eb8066","entity_key":"lx_telling_stories_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"72180ad058c773488c90a08476f1daa0c4d5b1005b29d6b84082902ddb14af1c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b40a0eb4f2002fd21c1a455f8a9115c84c18c648dba69b42f50f6e5848eb8066.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_telling_stories_03 -> audio/generated/de-DE/lexical/b40a0eb4f2002fd21c1a455f8a9115c84c18c648dba69b42f50f6e5848eb8066.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1ac5af33-1445-551b-9325-b7986bcfc727', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_telling_stories_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2ad23d52745b2f9306e57b861d33d66d16738ed6e5db02ba53047ed606ecec3e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2d77f6d8-e286-5a05-8402-9c5c438bf623', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1ac5af33-1445-551b-9325-b7986bcfc727', 1), '2ad23d52745b2f9306e57b861d33d66d16738ed6e5db02ba53047ed606ecec3e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b40a0eb4f2002fd21c1a455f8a9115c84c18c648dba69b42f50f6e5848eb8066.mp3', 1018, '2026-09-13 05:30:44.074922', '72180ad058c773488c90a08476f1daa0c4d5b1005b29d6b84082902ddb14af1c', 'validated', '{"audio_key":"b40a0eb4f2002fd21c1a455f8a9115c84c18c648dba69b42f50f6e5848eb8066","entity_key":"wf_telling_stories_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"72180ad058c773488c90a08476f1daa0c4d5b1005b29d6b84082902ddb14af1c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b40a0eb4f2002fd21c1a455f8a9115c84c18c648dba69b42f50f6e5848eb8066.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_study_goals_03 -> audio/generated/de-DE/lexical/b4875e04c0f66993ab6dbdbebae28b9e8358cd19a481778cb0aedb39dc1c57ae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ae4bde2b-3a0f-503f-980e-2e5e7177ef86', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_study_goals_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1f5e7af747feaae233e9197e8acdea9cc371244f2b6818cf349cbbe54aa6b2d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7310f17f-0fa6-5e0a-8e4d-b0e1f2556b6a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ae4bde2b-3a0f-503f-980e-2e5e7177ef86', 1), '1f5e7af747feaae233e9197e8acdea9cc371244f2b6818cf349cbbe54aa6b2d1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b4875e04c0f66993ab6dbdbebae28b9e8358cd19a481778cb0aedb39dc1c57ae.mp3', 1436, '2026-09-13 05:30:44.828218', '12540dca91551333370aefd0b752bace014915155e776935937a675538b27721', 'validated', '{"audio_key":"b4875e04c0f66993ab6dbdbebae28b9e8358cd19a481778cb0aedb39dc1c57ae","entity_key":"lx_study_goals_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"12540dca91551333370aefd0b752bace014915155e776935937a675538b27721","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b4875e04c0f66993ab6dbdbebae28b9e8358cd19a481778cb0aedb39dc1c57ae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_study_goals_03 -> audio/generated/de-DE/lexical/b4875e04c0f66993ab6dbdbebae28b9e8358cd19a481778cb0aedb39dc1c57ae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('43f7a670-6475-5258-8223-4d2bc90cfab7', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_study_goals_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1f5e7af747feaae233e9197e8acdea9cc371244f2b6818cf349cbbe54aa6b2d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2be8c3ef-e872-5aba-954e-655fd6b920ab', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('43f7a670-6475-5258-8223-4d2bc90cfab7', 1), '1f5e7af747feaae233e9197e8acdea9cc371244f2b6818cf349cbbe54aa6b2d1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b4875e04c0f66993ab6dbdbebae28b9e8358cd19a481778cb0aedb39dc1c57ae.mp3', 1436, '2026-09-13 05:30:44.828218', '12540dca91551333370aefd0b752bace014915155e776935937a675538b27721', 'validated', '{"audio_key":"b4875e04c0f66993ab6dbdbebae28b9e8358cd19a481778cb0aedb39dc1c57ae","entity_key":"wf_study_goals_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"12540dca91551333370aefd0b752bace014915155e776935937a675538b27721","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b4875e04c0f66993ab6dbdbebae28b9e8358cd19a481778cb0aedb39dc1c57ae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_media_technology_06 -> audio/generated/de-DE/lexical/b802c7f05d0cd7f9f5a11d4e82ab270038ad534a143575682266d0ca5d9a2975.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('06b0d1c4-e12e-5fb1-a9c6-51d6d877ea11', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_media_technology_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f162dc6999ab0bdbc7d5da86d6478b057efd677286c166b60f40bcdc62c54b5f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cd7c7b83-de63-5741-8fe6-1e56ae7b9571', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('06b0d1c4-e12e-5fb1-a9c6-51d6d877ea11', 1), 'f162dc6999ab0bdbc7d5da86d6478b057efd677286c166b60f40bcdc62c54b5f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b802c7f05d0cd7f9f5a11d4e82ab270038ad534a143575682266d0ca5d9a2975.mp3', 966, '2026-09-13 05:54:45.705852', '5a8588748613106dcbb43abcedc92ddc23ea25dec8b265ab974888d131ff912d', 'validated', '{"audio_key":"b802c7f05d0cd7f9f5a11d4e82ab270038ad534a143575682266d0ca5d9a2975","entity_key":"lx_media_technology_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5a8588748613106dcbb43abcedc92ddc23ea25dec8b265ab974888d131ff912d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b802c7f05d0cd7f9f5a11d4e82ab270038ad534a143575682266d0ca5d9a2975.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_media_technology_06 -> audio/generated/de-DE/lexical/b802c7f05d0cd7f9f5a11d4e82ab270038ad534a143575682266d0ca5d9a2975.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4cd094c1-249a-59b2-9e77-0d9ec4389642', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_media_technology_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f162dc6999ab0bdbc7d5da86d6478b057efd677286c166b60f40bcdc62c54b5f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8a290b07-caf2-542e-aa38-60d679ecc9cc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4cd094c1-249a-59b2-9e77-0d9ec4389642', 1), 'f162dc6999ab0bdbc7d5da86d6478b057efd677286c166b60f40bcdc62c54b5f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b802c7f05d0cd7f9f5a11d4e82ab270038ad534a143575682266d0ca5d9a2975.mp3', 966, '2026-09-13 05:54:45.705852', '5a8588748613106dcbb43abcedc92ddc23ea25dec8b265ab974888d131ff912d', 'validated', '{"audio_key":"b802c7f05d0cd7f9f5a11d4e82ab270038ad534a143575682266d0ca5d9a2975","entity_key":"wf_media_technology_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5a8588748613106dcbb43abcedc92ddc23ea25dec8b265ab974888d131ff912d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b802c7f05d0cd7f9f5a11d4e82ab270038ad534a143575682266d0ca5d9a2975.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_opinions_reasons_01 -> audio/generated/de-DE/lexical/ba18daf75f719c56a6720e0ee3d0cb0cfa6b8037d83a533e06e3b9fe593e15d6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6fe23e4d-3ee9-598a-80a2-6efba426e0c5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_opinions_reasons_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ee2aa47db8f9dd872db6382b6827b7754ec926cd3e201fa7a10a21cc90ae0d88'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3d9648e0-94a4-5c02-90fc-a44576a9630c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6fe23e4d-3ee9-598a-80a2-6efba426e0c5', 1), 'ee2aa47db8f9dd872db6382b6827b7754ec926cd3e201fa7a10a21cc90ae0d88',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ba18daf75f719c56a6720e0ee3d0cb0cfa6b8037d83a533e06e3b9fe593e15d6.mp3', 1018, '2026-09-13 05:30:45.842089', '488ded7cc93357325e77ceaecc8113c61bbf03dc3086b315b5de35319e331539', 'validated', '{"audio_key":"ba18daf75f719c56a6720e0ee3d0cb0cfa6b8037d83a533e06e3b9fe593e15d6","entity_key":"lx_opinions_reasons_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"488ded7cc93357325e77ceaecc8113c61bbf03dc3086b315b5de35319e331539","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ba18daf75f719c56a6720e0ee3d0cb0cfa6b8037d83a533e06e3b9fe593e15d6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_opinions_reasons_01 -> audio/generated/de-DE/lexical/ba18daf75f719c56a6720e0ee3d0cb0cfa6b8037d83a533e06e3b9fe593e15d6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ed972cf2-38ea-52a6-9301-c2e74df8c6b5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_opinions_reasons_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ee2aa47db8f9dd872db6382b6827b7754ec926cd3e201fa7a10a21cc90ae0d88'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a2ba5df0-6eed-5c31-be9e-be0dee72abf3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ed972cf2-38ea-52a6-9301-c2e74df8c6b5', 1), 'ee2aa47db8f9dd872db6382b6827b7754ec926cd3e201fa7a10a21cc90ae0d88',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ba18daf75f719c56a6720e0ee3d0cb0cfa6b8037d83a533e06e3b9fe593e15d6.mp3', 1018, '2026-09-13 05:30:45.842089', '488ded7cc93357325e77ceaecc8113c61bbf03dc3086b315b5de35319e331539', 'validated', '{"audio_key":"ba18daf75f719c56a6720e0ee3d0cb0cfa6b8037d83a533e06e3b9fe593e15d6","entity_key":"wf_opinions_reasons_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"488ded7cc93357325e77ceaecc8113c61bbf03dc3086b315b5de35319e331539","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ba18daf75f719c56a6720e0ee3d0cb0cfa6b8037d83a533e06e3b9fe593e15d6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_travel_experiences_03 -> audio/generated/de-DE/lexical/bb09893726b73454cf7bbff306b35b33a426dfc31fd2de6ddeb10194ddc8b95c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('dad36ac0-d4a3-5dcf-8ea0-d98c644b1ceb', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_travel_experiences_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '169656f4c6eb42545f7b828817640f54bb31f5ba9b88114d4fc2beaee739e1b3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e7ef6b4f-1b2c-54a1-bf43-592c8ea5c0a3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('dad36ac0-d4a3-5dcf-8ea0-d98c644b1ceb', 1), '169656f4c6eb42545f7b828817640f54bb31f5ba9b88114d4fc2beaee739e1b3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/bb09893726b73454cf7bbff306b35b33a426dfc31fd2de6ddeb10194ddc8b95c.mp3', 1280, '2026-09-13 05:54:46.061416', '6969d3474491f6110a4e3cd4add3b4d84e612e7aeed889b1bcba82b9547f1be9', 'validated', '{"audio_key":"bb09893726b73454cf7bbff306b35b33a426dfc31fd2de6ddeb10194ddc8b95c","entity_key":"lx_travel_experiences_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6969d3474491f6110a4e3cd4add3b4d84e612e7aeed889b1bcba82b9547f1be9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/bb09893726b73454cf7bbff306b35b33a426dfc31fd2de6ddeb10194ddc8b95c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_travel_experiences_03 -> audio/generated/de-DE/lexical/bb09893726b73454cf7bbff306b35b33a426dfc31fd2de6ddeb10194ddc8b95c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a2f0db91-a8ed-54fb-8e5e-13a9c9147fe6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_travel_experiences_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '169656f4c6eb42545f7b828817640f54bb31f5ba9b88114d4fc2beaee739e1b3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('99e998d8-382b-5283-9f1b-8596d9011451', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a2f0db91-a8ed-54fb-8e5e-13a9c9147fe6', 1), '169656f4c6eb42545f7b828817640f54bb31f5ba9b88114d4fc2beaee739e1b3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/bb09893726b73454cf7bbff306b35b33a426dfc31fd2de6ddeb10194ddc8b95c.mp3', 1280, '2026-09-13 05:54:46.061416', '6969d3474491f6110a4e3cd4add3b4d84e612e7aeed889b1bcba82b9547f1be9', 'validated', '{"audio_key":"bb09893726b73454cf7bbff306b35b33a426dfc31fd2de6ddeb10194ddc8b95c","entity_key":"wf_travel_experiences_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6969d3474491f6110a4e3cd4add3b4d84e612e7aeed889b1bcba82b9547f1be9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/bb09893726b73454cf7bbff306b35b33a426dfc31fd2de6ddeb10194ddc8b95c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_neighborhood_community_02 -> audio/generated/de-DE/lexical/c34e6dc9660e96448dc33a6491ec1e7e8d0d03089f302f068b5de79749decb27.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('282cb517-90be-5d6a-9008-206fac3874ee', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_neighborhood_community_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1dfa7852694b134cd9a56f557282b0306a26b77239769334ca84f229c671f3fe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('588f7378-3623-5438-a071-1136636bbd1a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('282cb517-90be-5d6a-9008-206fac3874ee', 1), '1dfa7852694b134cd9a56f557282b0306a26b77239769334ca84f229c671f3fe',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c34e6dc9660e96448dc33a6491ec1e7e8d0d03089f302f068b5de79749decb27.mp3', 1253, '2026-09-13 05:54:46.711124', '420c9cbc46c176302a1a1de742f40ca8d3ad8cf451c5dbdb1a9fadb0a6bf8fe1', 'validated', '{"audio_key":"c34e6dc9660e96448dc33a6491ec1e7e8d0d03089f302f068b5de79749decb27","entity_key":"lx_neighborhood_community_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"420c9cbc46c176302a1a1de742f40ca8d3ad8cf451c5dbdb1a9fadb0a6bf8fe1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c34e6dc9660e96448dc33a6491ec1e7e8d0d03089f302f068b5de79749decb27.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_neighborhood_community_02 -> audio/generated/de-DE/lexical/c34e6dc9660e96448dc33a6491ec1e7e8d0d03089f302f068b5de79749decb27.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4154917f-fa89-5476-805f-0b1020684d68', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_neighborhood_community_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1dfa7852694b134cd9a56f557282b0306a26b77239769334ca84f229c671f3fe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2d643251-4d19-5eec-8bfd-92a52ecdc759', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4154917f-fa89-5476-805f-0b1020684d68', 1), '1dfa7852694b134cd9a56f557282b0306a26b77239769334ca84f229c671f3fe',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c34e6dc9660e96448dc33a6491ec1e7e8d0d03089f302f068b5de79749decb27.mp3', 1253, '2026-09-13 05:54:46.711124', '420c9cbc46c176302a1a1de742f40ca8d3ad8cf451c5dbdb1a9fadb0a6bf8fe1', 'validated', '{"audio_key":"c34e6dc9660e96448dc33a6491ec1e7e8d0d03089f302f068b5de79749decb27","entity_key":"wf_neighborhood_community_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"420c9cbc46c176302a1a1de742f40ca8d3ad8cf451c5dbdb1a9fadb0a6bf8fe1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c34e6dc9660e96448dc33a6491ec1e7e8d0d03089f302f068b5de79749decb27.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_study_goals_05 -> audio/generated/de-DE/lexical/c7652f74ad150ebfdb3753b579690391ef2f33f12e75ee0891c810c66d04345c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c6b03704-be76-51aa-be47-be7cf13cebdf', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_study_goals_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ffdca298a34e8654699dc35360377138786c85921b717e038480c8a9f41f3cb5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cf53b7f7-d551-5a15-a808-1e9bb65b0677', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c6b03704-be76-51aa-be47-be7cf13cebdf', 1), 'ffdca298a34e8654699dc35360377138786c85921b717e038480c8a9f41f3cb5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c7652f74ad150ebfdb3753b579690391ef2f33f12e75ee0891c810c66d04345c.mp3', 1071, '2026-09-13 05:30:51.626024', 'e5928084794c491bcd36bb6855638dff371c9b9d5f13adbda23ebbb67167bcb1', 'validated', '{"audio_key":"c7652f74ad150ebfdb3753b579690391ef2f33f12e75ee0891c810c66d04345c","entity_key":"lx_study_goals_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e5928084794c491bcd36bb6855638dff371c9b9d5f13adbda23ebbb67167bcb1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c7652f74ad150ebfdb3753b579690391ef2f33f12e75ee0891c810c66d04345c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_study_goals_05 -> audio/generated/de-DE/lexical/c7652f74ad150ebfdb3753b579690391ef2f33f12e75ee0891c810c66d04345c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fedcf200-268f-5bcc-82d5-61133eb4d98c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_study_goals_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ffdca298a34e8654699dc35360377138786c85921b717e038480c8a9f41f3cb5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1f5939fd-0439-54d4-bfbb-6e4891e61a9e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fedcf200-268f-5bcc-82d5-61133eb4d98c', 1), 'ffdca298a34e8654699dc35360377138786c85921b717e038480c8a9f41f3cb5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c7652f74ad150ebfdb3753b579690391ef2f33f12e75ee0891c810c66d04345c.mp3', 1071, '2026-09-13 05:30:51.626024', 'e5928084794c491bcd36bb6855638dff371c9b9d5f13adbda23ebbb67167bcb1', 'validated', '{"audio_key":"c7652f74ad150ebfdb3753b579690391ef2f33f12e75ee0891c810c66d04345c","entity_key":"wf_study_goals_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e5928084794c491bcd36bb6855638dff371c9b9d5f13adbda23ebbb67167bcb1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c7652f74ad150ebfdb3753b579690391ef2f33f12e75ee0891c810c66d04345c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_travel_experiences_05 -> audio/generated/de-DE/lexical/ca92df9d81099028049b8f630214b389661345809a05b382abc84d3713471fab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ef931f52-c536-58ce-b325-a7c7022267b3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_travel_experiences_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e30bcf98db5e8a8e93085004281daca5d0e835a1d0c8f82b65889bf6d16dfa51'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e1aef5a2-198e-5cce-b3a8-b08b41b096fd', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ef931f52-c536-58ce-b325-a7c7022267b3', 1), 'e30bcf98db5e8a8e93085004281daca5d0e835a1d0c8f82b65889bf6d16dfa51',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ca92df9d81099028049b8f630214b389661345809a05b382abc84d3713471fab.mp3', 1253, '2026-09-13 05:54:47.030504', '34eb45148661f989a4a0ff85c4336ba087c532ae3713c00c5f5430a80b1a88e7', 'validated', '{"audio_key":"ca92df9d81099028049b8f630214b389661345809a05b382abc84d3713471fab","entity_key":"lx_travel_experiences_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"34eb45148661f989a4a0ff85c4336ba087c532ae3713c00c5f5430a80b1a88e7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ca92df9d81099028049b8f630214b389661345809a05b382abc84d3713471fab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_travel_experiences_05 -> audio/generated/de-DE/lexical/ca92df9d81099028049b8f630214b389661345809a05b382abc84d3713471fab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a800e0b8-d54a-5fc0-a36a-dd9cbeffcf79', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_travel_experiences_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e30bcf98db5e8a8e93085004281daca5d0e835a1d0c8f82b65889bf6d16dfa51'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a9bb8457-cbc0-5550-a354-08898c2db604', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a800e0b8-d54a-5fc0-a36a-dd9cbeffcf79', 1), 'e30bcf98db5e8a8e93085004281daca5d0e835a1d0c8f82b65889bf6d16dfa51',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ca92df9d81099028049b8f630214b389661345809a05b382abc84d3713471fab.mp3', 1253, '2026-09-13 05:54:47.030504', '34eb45148661f989a4a0ff85c4336ba087c532ae3713c00c5f5430a80b1a88e7', 'validated', '{"audio_key":"ca92df9d81099028049b8f630214b389661345809a05b382abc84d3713471fab","entity_key":"wf_travel_experiences_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"34eb45148661f989a4a0ff85c4336ba087c532ae3713c00c5f5430a80b1a88e7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ca92df9d81099028049b8f630214b389661345809a05b382abc84d3713471fab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_problems_solutions_06 -> audio/generated/de-DE/lexical/cdd248fa442fc7c0fbee4ee1775adb5663fa9412e67c9f3ef26d4f72789903f4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('060e3dcc-db2c-5313-82e9-db8b313d7e59', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_problems_solutions_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '809b92be04caaa2a6b7e8f2c86ab8d361ea8ef664d9135f0014db6e3ea5ff981'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b2a71c2a-2046-55ae-b15c-90ba2f4c95d5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('060e3dcc-db2c-5313-82e9-db8b313d7e59', 1), '809b92be04caaa2a6b7e8f2c86ab8d361ea8ef664d9135f0014db6e3ea5ff981',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/cdd248fa442fc7c0fbee4ee1775adb5663fa9412e67c9f3ef26d4f72789903f4.mp3', 1201, '2026-09-13 05:30:54.172061', '6b7f8bb310add075c2dfbf27762dc0443f08f43e82dacf772dc773fc1b7dfd40', 'validated', '{"audio_key":"cdd248fa442fc7c0fbee4ee1775adb5663fa9412e67c9f3ef26d4f72789903f4","entity_key":"lx_problems_solutions_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6b7f8bb310add075c2dfbf27762dc0443f08f43e82dacf772dc773fc1b7dfd40","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/cdd248fa442fc7c0fbee4ee1775adb5663fa9412e67c9f3ef26d4f72789903f4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_problems_solutions_06 -> audio/generated/de-DE/lexical/cdd248fa442fc7c0fbee4ee1775adb5663fa9412e67c9f3ef26d4f72789903f4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4a9c97c1-ba3b-5bce-8e44-7623b40cdcf3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_problems_solutions_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '809b92be04caaa2a6b7e8f2c86ab8d361ea8ef664d9135f0014db6e3ea5ff981'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8b7041dc-366f-55ed-a191-dd57745250c3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4a9c97c1-ba3b-5bce-8e44-7623b40cdcf3', 1), '809b92be04caaa2a6b7e8f2c86ab8d361ea8ef664d9135f0014db6e3ea5ff981',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/cdd248fa442fc7c0fbee4ee1775adb5663fa9412e67c9f3ef26d4f72789903f4.mp3', 1201, '2026-09-13 05:30:54.172061', '6b7f8bb310add075c2dfbf27762dc0443f08f43e82dacf772dc773fc1b7dfd40', 'validated', '{"audio_key":"cdd248fa442fc7c0fbee4ee1775adb5663fa9412e67c9f3ef26d4f72789903f4","entity_key":"wf_problems_solutions_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6b7f8bb310add075c2dfbf27762dc0443f08f43e82dacf772dc773fc1b7dfd40","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/cdd248fa442fc7c0fbee4ee1775adb5663fa9412e67c9f3ef26d4f72789903f4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_agree_disagree_04 -> audio/generated/de-DE/lexical/cefe27090ee4c47f8d302e9fc68381844fb38426c638502cfb33c2ec46ee86e2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e7964850-49ca-5dc0-87f6-70d78fd32601', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_agree_disagree_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4250d8928ddf905321929dc15d6e3e302319d1cbd136474d66f55c26b643576d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a4e2c0a2-5ee3-53a5-ad28-380ee3a211f7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e7964850-49ca-5dc0-87f6-70d78fd32601', 1), '4250d8928ddf905321929dc15d6e3e302319d1cbd136474d66f55c26b643576d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/cefe27090ee4c47f8d302e9fc68381844fb38426c638502cfb33c2ec46ee86e2.mp3', 1201, '2026-09-13 05:54:47.687743', 'e302d11fe63f88614683d44222652a5d13948e6abf5ab6468fa3667f546c251d', 'validated', '{"audio_key":"cefe27090ee4c47f8d302e9fc68381844fb38426c638502cfb33c2ec46ee86e2","entity_key":"lx_agree_disagree_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e302d11fe63f88614683d44222652a5d13948e6abf5ab6468fa3667f546c251d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/cefe27090ee4c47f8d302e9fc68381844fb38426c638502cfb33c2ec46ee86e2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_agree_disagree_04 -> audio/generated/de-DE/lexical/cefe27090ee4c47f8d302e9fc68381844fb38426c638502cfb33c2ec46ee86e2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('491aa5df-7cfc-515f-af7e-08cc97cf3e86', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_agree_disagree_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4250d8928ddf905321929dc15d6e3e302319d1cbd136474d66f55c26b643576d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('11185864-6b46-52ca-bb1f-4286ab001c95', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('491aa5df-7cfc-515f-af7e-08cc97cf3e86', 1), '4250d8928ddf905321929dc15d6e3e302319d1cbd136474d66f55c26b643576d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/cefe27090ee4c47f8d302e9fc68381844fb38426c638502cfb33c2ec46ee86e2.mp3', 1201, '2026-09-13 05:54:47.687743', 'e302d11fe63f88614683d44222652a5d13948e6abf5ab6468fa3667f546c251d', 'validated', '{"audio_key":"cefe27090ee4c47f8d302e9fc68381844fb38426c638502cfb33c2ec46ee86e2","entity_key":"wf_agree_disagree_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e302d11fe63f88614683d44222652a5d13948e6abf5ab6468fa3667f546c251d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/cefe27090ee4c47f8d302e9fc68381844fb38426c638502cfb33c2ec46ee86e2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_opinions_reasons_03 -> audio/generated/de-DE/lexical/d1546cdfa156a6055e99343d86b84197a011c456e6e85a4dcad359ff37301c55.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('cdb43740-2937-5aa1-be34-2fa8792b5a8c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_opinions_reasons_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7e130df6cec5153afdbe4c3c85bfcbdb872e8997b9d9d1ec7f685bd86ffb6439'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e4527446-847d-588b-b707-75bb85546501', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('cdb43740-2937-5aa1-be34-2fa8792b5a8c', 1), '7e130df6cec5153afdbe4c3c85bfcbdb872e8997b9d9d1ec7f685bd86ffb6439',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d1546cdfa156a6055e99343d86b84197a011c456e6e85a4dcad359ff37301c55.mp3', 1018, '2026-09-13 05:30:56.845002', 'ad9860cbc9978af11c56e5260ba0fb3fe19b849089e057c76cd0ccb94ee5b9e9', 'validated', '{"audio_key":"d1546cdfa156a6055e99343d86b84197a011c456e6e85a4dcad359ff37301c55","entity_key":"lx_opinions_reasons_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ad9860cbc9978af11c56e5260ba0fb3fe19b849089e057c76cd0ccb94ee5b9e9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d1546cdfa156a6055e99343d86b84197a011c456e6e85a4dcad359ff37301c55.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_opinions_reasons_03 -> audio/generated/de-DE/lexical/d1546cdfa156a6055e99343d86b84197a011c456e6e85a4dcad359ff37301c55.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d7de2f05-bced-5aec-bf33-44acf6aa0808', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_opinions_reasons_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7e130df6cec5153afdbe4c3c85bfcbdb872e8997b9d9d1ec7f685bd86ffb6439'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d203c726-c14f-545a-8b13-0ff67d90ad81', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d7de2f05-bced-5aec-bf33-44acf6aa0808', 1), '7e130df6cec5153afdbe4c3c85bfcbdb872e8997b9d9d1ec7f685bd86ffb6439',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d1546cdfa156a6055e99343d86b84197a011c456e6e85a4dcad359ff37301c55.mp3', 1018, '2026-09-13 05:30:56.845002', 'ad9860cbc9978af11c56e5260ba0fb3fe19b849089e057c76cd0ccb94ee5b9e9', 'validated', '{"audio_key":"d1546cdfa156a6055e99343d86b84197a011c456e6e85a4dcad359ff37301c55","entity_key":"wf_opinions_reasons_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ad9860cbc9978af11c56e5260ba0fb3fe19b849089e057c76cd0ccb94ee5b9e9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d1546cdfa156a6055e99343d86b84197a011c456e6e85a4dcad359ff37301c55.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_health_habits_04 -> audio/generated/de-DE/lexical/d27b59ab56e0b86bd233c9ea07aa5b076d2a7045bce00a2dc47847f9354636bb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('dd821f2f-9297-58df-b34d-3cbb12fed3f8', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_health_habits_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8198fbcb8621b7a9085727d7812e2b80a78d314d9621047e0611a4d5312bfe24'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1aef30a3-f9dd-59c6-96bb-3cb201006b6e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('dd821f2f-9297-58df-b34d-3cbb12fed3f8', 1), '8198fbcb8621b7a9085727d7812e2b80a78d314d9621047e0611a4d5312bfe24',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d27b59ab56e0b86bd233c9ea07aa5b076d2a7045bce00a2dc47847f9354636bb.mp3', 1201, '2026-09-13 05:54:48.014328', '905390fffefade3b61264abc57b3733b37667afbc99df4f400768dab48e555a6', 'validated', '{"audio_key":"d27b59ab56e0b86bd233c9ea07aa5b076d2a7045bce00a2dc47847f9354636bb","entity_key":"lx_health_habits_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"905390fffefade3b61264abc57b3733b37667afbc99df4f400768dab48e555a6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d27b59ab56e0b86bd233c9ea07aa5b076d2a7045bce00a2dc47847f9354636bb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_health_habits_04 -> audio/generated/de-DE/lexical/d27b59ab56e0b86bd233c9ea07aa5b076d2a7045bce00a2dc47847f9354636bb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ab98e7c6-d94f-521f-99a7-cae02319c53f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_health_habits_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8198fbcb8621b7a9085727d7812e2b80a78d314d9621047e0611a4d5312bfe24'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7ca55278-7ddd-520f-8bd3-e3016f7d1629', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ab98e7c6-d94f-521f-99a7-cae02319c53f', 1), '8198fbcb8621b7a9085727d7812e2b80a78d314d9621047e0611a4d5312bfe24',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d27b59ab56e0b86bd233c9ea07aa5b076d2a7045bce00a2dc47847f9354636bb.mp3', 1201, '2026-09-13 05:54:48.014328', '905390fffefade3b61264abc57b3733b37667afbc99df4f400768dab48e555a6', 'validated', '{"audio_key":"d27b59ab56e0b86bd233c9ea07aa5b076d2a7045bce00a2dc47847f9354636bb","entity_key":"wf_health_habits_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"905390fffefade3b61264abc57b3733b37667afbc99df4f400768dab48e555a6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d27b59ab56e0b86bd233c9ea07aa5b076d2a7045bce00a2dc47847f9354636bb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_agree_disagree_05 -> audio/generated/de-DE/lexical/d653a370a33f250888b92b5c8d05d462ea4919943e2c97d560746e76edd1c611.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d1616f7d-e700-5dbc-ac4e-6fe1cd6b2100', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_agree_disagree_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ab9e1b69d430ffa8ff3910dc8b974e0799cc1e0cb8d9b97dc5abe67aae6feb89'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('720dd5eb-7d87-5d57-a4d0-b5974ef274c2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d1616f7d-e700-5dbc-ac4e-6fe1cd6b2100', 1), 'ab9e1b69d430ffa8ff3910dc8b974e0799cc1e0cb8d9b97dc5abe67aae6feb89',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d653a370a33f250888b92b5c8d05d462ea4919943e2c97d560746e76edd1c611.mp3', 966, '2026-09-13 05:54:48.630239', '5384c64386f224d0d4ed63090aa18aa2f3a769143bc0b85d8b7c83c34894cc9f', 'validated', '{"audio_key":"d653a370a33f250888b92b5c8d05d462ea4919943e2c97d560746e76edd1c611","entity_key":"lx_agree_disagree_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5384c64386f224d0d4ed63090aa18aa2f3a769143bc0b85d8b7c83c34894cc9f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d653a370a33f250888b92b5c8d05d462ea4919943e2c97d560746e76edd1c611.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_agree_disagree_05 -> audio/generated/de-DE/lexical/d653a370a33f250888b92b5c8d05d462ea4919943e2c97d560746e76edd1c611.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('637f6062-4bdf-59c4-b51e-e9ce7b9d602b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_agree_disagree_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ab9e1b69d430ffa8ff3910dc8b974e0799cc1e0cb8d9b97dc5abe67aae6feb89'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8d5d0d3c-ff17-5b06-a543-c43259d08f9b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('637f6062-4bdf-59c4-b51e-e9ce7b9d602b', 1), 'ab9e1b69d430ffa8ff3910dc8b974e0799cc1e0cb8d9b97dc5abe67aae6feb89',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d653a370a33f250888b92b5c8d05d462ea4919943e2c97d560746e76edd1c611.mp3', 966, '2026-09-13 05:54:48.630239', '5384c64386f224d0d4ed63090aa18aa2f3a769143bc0b85d8b7c83c34894cc9f', 'validated', '{"audio_key":"d653a370a33f250888b92b5c8d05d462ea4919943e2c97d560746e76edd1c611","entity_key":"wf_agree_disagree_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5384c64386f224d0d4ed63090aa18aa2f3a769143bc0b85d8b7c83c34894cc9f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d653a370a33f250888b92b5c8d05d462ea4919943e2c97d560746e76edd1c611.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_neighborhood_community_05 -> audio/generated/de-DE/lexical/d7a84188dfaff2fd6b2655d66923c5becd7c0429f3e9ff4feca12a3bf6549ba1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('776a42d9-c078-5f03-bc54-0145bcc6b737', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_neighborhood_community_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '327534b99d015778f0697e55c97ed836449c8e033a76f059d60b858f77980624'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e50a8791-102f-5728-ad46-f11dbfaeda56', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('776a42d9-c078-5f03-bc54-0145bcc6b737', 1), '327534b99d015778f0697e55c97ed836449c8e033a76f059d60b858f77980624',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d7a84188dfaff2fd6b2655d66923c5becd7c0429f3e9ff4feca12a3bf6549ba1.mp3', 1097, '2026-09-13 05:54:48.961515', '4a5e53c75896ed75add1bdcfb9cd4c4fe425047960a10c1c998e4321b1485f11', 'validated', '{"audio_key":"d7a84188dfaff2fd6b2655d66923c5becd7c0429f3e9ff4feca12a3bf6549ba1","entity_key":"lx_neighborhood_community_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4a5e53c75896ed75add1bdcfb9cd4c4fe425047960a10c1c998e4321b1485f11","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d7a84188dfaff2fd6b2655d66923c5becd7c0429f3e9ff4feca12a3bf6549ba1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_neighborhood_community_05 -> audio/generated/de-DE/lexical/d7a84188dfaff2fd6b2655d66923c5becd7c0429f3e9ff4feca12a3bf6549ba1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1cb20448-2c52-52af-97fa-4b569a266ed1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_neighborhood_community_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '327534b99d015778f0697e55c97ed836449c8e033a76f059d60b858f77980624'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1095df5d-9b0b-5d0b-bcfb-028d0b491b1b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1cb20448-2c52-52af-97fa-4b569a266ed1', 1), '327534b99d015778f0697e55c97ed836449c8e033a76f059d60b858f77980624',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d7a84188dfaff2fd6b2655d66923c5becd7c0429f3e9ff4feca12a3bf6549ba1.mp3', 1097, '2026-09-13 05:54:48.961515', '4a5e53c75896ed75add1bdcfb9cd4c4fe425047960a10c1c998e4321b1485f11', 'validated', '{"audio_key":"d7a84188dfaff2fd6b2655d66923c5becd7c0429f3e9ff4feca12a3bf6549ba1","entity_key":"wf_neighborhood_community_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4a5e53c75896ed75add1bdcfb9cd4c4fe425047960a10c1c998e4321b1485f11","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d7a84188dfaff2fd6b2655d66923c5becd7c0429f3e9ff4feca12a3bf6549ba1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_opinions_reasons_06 -> audio/generated/de-DE/lexical/db277da52ffa2e763d41f0656bcd017f5ed91d05422e533760479038c42661b4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fd9e96b9-84e1-5fe8-99e0-d78452679663', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_opinions_reasons_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9926a608148a0e5e12b81f4ccde05e56ad5bc5a8cec61ee318747f9afb92c151'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8f6dff60-0815-523f-a6a9-f3348ff809ec', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fd9e96b9-84e1-5fe8-99e0-d78452679663', 1), '9926a608148a0e5e12b81f4ccde05e56ad5bc5a8cec61ee318747f9afb92c151',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/db277da52ffa2e763d41f0656bcd017f5ed91d05422e533760479038c42661b4.mp3', 1384, '2026-09-13 05:54:49.589575', '62d6e168b3a17d4cfb434aaf97274bcaf7b2a60cb1bab3c2f51e1dda4343ebb6', 'validated', '{"audio_key":"db277da52ffa2e763d41f0656bcd017f5ed91d05422e533760479038c42661b4","entity_key":"lx_opinions_reasons_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"62d6e168b3a17d4cfb434aaf97274bcaf7b2a60cb1bab3c2f51e1dda4343ebb6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/db277da52ffa2e763d41f0656bcd017f5ed91d05422e533760479038c42661b4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_opinions_reasons_06 -> audio/generated/de-DE/lexical/db277da52ffa2e763d41f0656bcd017f5ed91d05422e533760479038c42661b4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('061bb348-beac-537d-8b51-101f1cf6099a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_opinions_reasons_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9926a608148a0e5e12b81f4ccde05e56ad5bc5a8cec61ee318747f9afb92c151'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fe4c28f2-cb10-50ea-adc5-bb9136d05eff', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('061bb348-beac-537d-8b51-101f1cf6099a', 1), '9926a608148a0e5e12b81f4ccde05e56ad5bc5a8cec61ee318747f9afb92c151',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/db277da52ffa2e763d41f0656bcd017f5ed91d05422e533760479038c42661b4.mp3', 1384, '2026-09-13 05:54:49.589575', '62d6e168b3a17d4cfb434aaf97274bcaf7b2a60cb1bab3c2f51e1dda4343ebb6', 'validated', '{"audio_key":"db277da52ffa2e763d41f0656bcd017f5ed91d05422e533760479038c42661b4","entity_key":"wf_opinions_reasons_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"62d6e168b3a17d4cfb434aaf97274bcaf7b2a60cb1bab3c2f51e1dda4343ebb6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/db277da52ffa2e763d41f0656bcd017f5ed91d05422e533760479038c42661b4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_telling_stories_04 -> audio/generated/de-DE/lexical/de24f309c07ba928e6ba2c0531f57bcc8e3ac69f8d64408aa32d9e06a11455b7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9a9ef4ea-9c85-5c4c-8a16-ccd7712dee52', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_telling_stories_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '417007905b5c1b8668923d4cbaa1e0a248fe0d235e8aee9e83f8a2b3e838ec7c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8877fd41-6813-5071-b7fd-746fd27fb7e7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9a9ef4ea-9c85-5c4c-8a16-ccd7712dee52', 1), '417007905b5c1b8668923d4cbaa1e0a248fe0d235e8aee9e83f8a2b3e838ec7c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/de24f309c07ba928e6ba2c0531f57bcc8e3ac69f8d64408aa32d9e06a11455b7.mp3', 1149, '2026-09-13 05:54:49.909308', 'beeabfcde59a0af9d09c6aa2a8daf84b7255a118c8b115511b8d7fde050deacb', 'validated', '{"audio_key":"de24f309c07ba928e6ba2c0531f57bcc8e3ac69f8d64408aa32d9e06a11455b7","entity_key":"lx_telling_stories_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"beeabfcde59a0af9d09c6aa2a8daf84b7255a118c8b115511b8d7fde050deacb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/de24f309c07ba928e6ba2c0531f57bcc8e3ac69f8d64408aa32d9e06a11455b7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_telling_stories_04 -> audio/generated/de-DE/lexical/de24f309c07ba928e6ba2c0531f57bcc8e3ac69f8d64408aa32d9e06a11455b7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0a4ff5f0-3d1a-559a-9182-0673cf763185', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_telling_stories_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '417007905b5c1b8668923d4cbaa1e0a248fe0d235e8aee9e83f8a2b3e838ec7c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7b6c4e5f-5a26-508b-8a36-a4a16ebb9663', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0a4ff5f0-3d1a-559a-9182-0673cf763185', 1), '417007905b5c1b8668923d4cbaa1e0a248fe0d235e8aee9e83f8a2b3e838ec7c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/de24f309c07ba928e6ba2c0531f57bcc8e3ac69f8d64408aa32d9e06a11455b7.mp3', 1149, '2026-09-13 05:54:49.909308', 'beeabfcde59a0af9d09c6aa2a8daf84b7255a118c8b115511b8d7fde050deacb', 'validated', '{"audio_key":"de24f309c07ba928e6ba2c0531f57bcc8e3ac69f8d64408aa32d9e06a11455b7","entity_key":"wf_telling_stories_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"beeabfcde59a0af9d09c6aa2a8daf84b7255a118c8b115511b8d7fde050deacb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/de24f309c07ba928e6ba2c0531f57bcc8e3ac69f8d64408aa32d9e06a11455b7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_travel_experiences_04 -> audio/generated/de-DE/lexical/e4891c271372e86f9f3c24eecb69206118bb8759b6334654d1d48eedeaef41ee.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f20ae8b4-cfe8-522d-a4d6-a8d75b174fda', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_travel_experiences_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0648dfc4645a56f7911fe0a736629e5ca1ee1d7988e98b6091db678ad9a0460e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1cd9140b-7607-52f1-a8c1-a6036306b6e7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f20ae8b4-cfe8-522d-a4d6-a8d75b174fda', 1), '0648dfc4645a56f7911fe0a736629e5ca1ee1d7988e98b6091db678ad9a0460e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e4891c271372e86f9f3c24eecb69206118bb8759b6334654d1d48eedeaef41ee.mp3', 1018, '2026-09-13 05:54:50.652038', '0449fdf8d67790a6a6218365d27926a4e7945fd56178f5538c6d8a3058aa11d4', 'validated', '{"audio_key":"e4891c271372e86f9f3c24eecb69206118bb8759b6334654d1d48eedeaef41ee","entity_key":"lx_travel_experiences_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0449fdf8d67790a6a6218365d27926a4e7945fd56178f5538c6d8a3058aa11d4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e4891c271372e86f9f3c24eecb69206118bb8759b6334654d1d48eedeaef41ee.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_travel_experiences_04 -> audio/generated/de-DE/lexical/e4891c271372e86f9f3c24eecb69206118bb8759b6334654d1d48eedeaef41ee.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('141a907b-e137-5cd7-9bbc-aea1f6cb9f2f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_travel_experiences_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0648dfc4645a56f7911fe0a736629e5ca1ee1d7988e98b6091db678ad9a0460e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6934b559-789e-5670-8fb3-58541071f2c4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('141a907b-e137-5cd7-9bbc-aea1f6cb9f2f', 1), '0648dfc4645a56f7911fe0a736629e5ca1ee1d7988e98b6091db678ad9a0460e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e4891c271372e86f9f3c24eecb69206118bb8759b6334654d1d48eedeaef41ee.mp3', 1018, '2026-09-13 05:54:50.652038', '0449fdf8d67790a6a6218365d27926a4e7945fd56178f5538c6d8a3058aa11d4', 'validated', '{"audio_key":"e4891c271372e86f9f3c24eecb69206118bb8759b6334654d1d48eedeaef41ee","entity_key":"wf_travel_experiences_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0449fdf8d67790a6a6218365d27926a4e7945fd56178f5538c6d8a3058aa11d4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e4891c271372e86f9f3c24eecb69206118bb8759b6334654d1d48eedeaef41ee.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_study_goals_01 -> audio/generated/de-DE/lexical/e4daed31395cce86e2fbcbcc63fa91b0b84449e01cae326fc18b8f8c658e071d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e4c32934-6c8f-5106-a8d1-986e8f8c7cd2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_study_goals_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f487ce3960189b78918da7991c10aa74a9fc8922046c0ebdb978772c61734bbb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('46f9c994-a2a2-5f54-a9bd-604ed0abf872', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e4c32934-6c8f-5106-a8d1-986e8f8c7cd2', 1), 'f487ce3960189b78918da7991c10aa74a9fc8922046c0ebdb978772c61734bbb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e4daed31395cce86e2fbcbcc63fa91b0b84449e01cae326fc18b8f8c658e071d.mp3', 966, '2026-09-13 05:31:02.672230', 'f1d1d76db3c4578dbc40ef9bf673ee953aef602ec3ca02acc0c1742819a655f7', 'validated', '{"audio_key":"e4daed31395cce86e2fbcbcc63fa91b0b84449e01cae326fc18b8f8c658e071d","entity_key":"lx_study_goals_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f1d1d76db3c4578dbc40ef9bf673ee953aef602ec3ca02acc0c1742819a655f7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e4daed31395cce86e2fbcbcc63fa91b0b84449e01cae326fc18b8f8c658e071d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_study_goals_01 -> audio/generated/de-DE/lexical/e4daed31395cce86e2fbcbcc63fa91b0b84449e01cae326fc18b8f8c658e071d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('12f1b5ad-b25b-55b1-839f-d587dc194def', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_study_goals_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f487ce3960189b78918da7991c10aa74a9fc8922046c0ebdb978772c61734bbb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('df9f6df9-ca42-52df-8152-4ca27fbfbace', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('12f1b5ad-b25b-55b1-839f-d587dc194def', 1), 'f487ce3960189b78918da7991c10aa74a9fc8922046c0ebdb978772c61734bbb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e4daed31395cce86e2fbcbcc63fa91b0b84449e01cae326fc18b8f8c658e071d.mp3', 966, '2026-09-13 05:31:02.672230', 'f1d1d76db3c4578dbc40ef9bf673ee953aef602ec3ca02acc0c1742819a655f7', 'validated', '{"audio_key":"e4daed31395cce86e2fbcbcc63fa91b0b84449e01cae326fc18b8f8c658e071d","entity_key":"wf_study_goals_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f1d1d76db3c4578dbc40ef9bf673ee953aef602ec3ca02acc0c1742819a655f7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e4daed31395cce86e2fbcbcc63fa91b0b84449e01cae326fc18b8f8c658e071d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_telling_stories_01 -> audio/generated/de-DE/lexical/e577622a7e20139ded3f80a037420de3bfc05cd8507f6efdcc55db9bb85f1b00.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('058ac3ea-2d79-5d71-b585-3da27bdfe823', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_telling_stories_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1c19e1b130dc2b3a26e3092ccc57f3a7740d7f24a554f4f988bbb32f1dace73d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9ab44183-2ee8-5549-9fdd-026868e9f658', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('058ac3ea-2d79-5d71-b585-3da27bdfe823', 1), '1c19e1b130dc2b3a26e3092ccc57f3a7740d7f24a554f4f988bbb32f1dace73d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e577622a7e20139ded3f80a037420de3bfc05cd8507f6efdcc55db9bb85f1b00.mp3', 1071, '2026-09-13 05:31:03.254800', '29d4bc7d672e6ad96697722aac29e00b6b5431765289e12bcd7415b9954bb41b', 'validated', '{"audio_key":"e577622a7e20139ded3f80a037420de3bfc05cd8507f6efdcc55db9bb85f1b00","entity_key":"lx_telling_stories_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"29d4bc7d672e6ad96697722aac29e00b6b5431765289e12bcd7415b9954bb41b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e577622a7e20139ded3f80a037420de3bfc05cd8507f6efdcc55db9bb85f1b00.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_telling_stories_01 -> audio/generated/de-DE/lexical/e577622a7e20139ded3f80a037420de3bfc05cd8507f6efdcc55db9bb85f1b00.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4fd7ffd4-448c-56c2-b7bc-c08d89a343b9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_telling_stories_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1c19e1b130dc2b3a26e3092ccc57f3a7740d7f24a554f4f988bbb32f1dace73d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('74fb2759-674d-5642-b0d5-4c785c767874', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4fd7ffd4-448c-56c2-b7bc-c08d89a343b9', 1), '1c19e1b130dc2b3a26e3092ccc57f3a7740d7f24a554f4f988bbb32f1dace73d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e577622a7e20139ded3f80a037420de3bfc05cd8507f6efdcc55db9bb85f1b00.mp3', 1071, '2026-09-13 05:31:03.254800', '29d4bc7d672e6ad96697722aac29e00b6b5431765289e12bcd7415b9954bb41b', 'validated', '{"audio_key":"e577622a7e20139ded3f80a037420de3bfc05cd8507f6efdcc55db9bb85f1b00","entity_key":"wf_telling_stories_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"29d4bc7d672e6ad96697722aac29e00b6b5431765289e12bcd7415b9954bb41b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e577622a7e20139ded3f80a037420de3bfc05cd8507f6efdcc55db9bb85f1b00.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_health_habits_06 -> audio/generated/de-DE/lexical/e7354b4f4e4e318a87fb00497726bd686423995f23d99034675fd298dc98a716.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f5008188-7985-54dc-8b58-d0d174a7954d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_health_habits_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1eaa52d0db4d9ceaa830fc019b0f65254deba9e6abb5c1862137a6223390e534'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('66822826-065c-5c9f-a87e-b1ee7f0ec6a3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f5008188-7985-54dc-8b58-d0d174a7954d', 1), '1eaa52d0db4d9ceaa830fc019b0f65254deba9e6abb5c1862137a6223390e534',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e7354b4f4e4e318a87fb00497726bd686423995f23d99034675fd298dc98a716.mp3', 1071, '2026-09-13 05:54:50.843666', '45417fd0f853404a024feb61801b767d4dca4ed2fde61581382b676bc07c5fa5', 'validated', '{"audio_key":"e7354b4f4e4e318a87fb00497726bd686423995f23d99034675fd298dc98a716","entity_key":"lx_health_habits_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"45417fd0f853404a024feb61801b767d4dca4ed2fde61581382b676bc07c5fa5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e7354b4f4e4e318a87fb00497726bd686423995f23d99034675fd298dc98a716.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_health_habits_06 -> audio/generated/de-DE/lexical/e7354b4f4e4e318a87fb00497726bd686423995f23d99034675fd298dc98a716.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('33ff5c34-f5a7-5b4b-aee1-e2eb5abbe155', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_health_habits_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1eaa52d0db4d9ceaa830fc019b0f65254deba9e6abb5c1862137a6223390e534'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('66135e08-6aca-5e6e-b999-f64ddb313070', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('33ff5c34-f5a7-5b4b-aee1-e2eb5abbe155', 1), '1eaa52d0db4d9ceaa830fc019b0f65254deba9e6abb5c1862137a6223390e534',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e7354b4f4e4e318a87fb00497726bd686423995f23d99034675fd298dc98a716.mp3', 1071, '2026-09-13 05:54:50.843666', '45417fd0f853404a024feb61801b767d4dca4ed2fde61581382b676bc07c5fa5', 'validated', '{"audio_key":"e7354b4f4e4e318a87fb00497726bd686423995f23d99034675fd298dc98a716","entity_key":"wf_health_habits_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"45417fd0f853404a024feb61801b767d4dca4ed2fde61581382b676bc07c5fa5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e7354b4f4e4e318a87fb00497726bd686423995f23d99034675fd298dc98a716.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_study_goals_02 -> audio/generated/de-DE/lexical/ef9b8b411e68396fde6efc108c41ac1c7cf589c13368e2407405b2a71a6ebad3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f666c66e-75ff-5c90-88e9-418276d7a38e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_study_goals_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'abfc3f29bb604493a66d8e5ae703b97bbb5e0c424d7b195a672280b70f31060b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e8166d85-bb84-5b0c-9bce-ac2b757f2973', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f666c66e-75ff-5c90-88e9-418276d7a38e', 1), 'abfc3f29bb604493a66d8e5ae703b97bbb5e0c424d7b195a672280b70f31060b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ef9b8b411e68396fde6efc108c41ac1c7cf589c13368e2407405b2a71a6ebad3.mp3', 1071, '2026-09-13 05:31:08.540973', 'd084a2298937026b832300c497875d9329270ef478d4453d3ff1af70f403a5ce', 'validated', '{"audio_key":"ef9b8b411e68396fde6efc108c41ac1c7cf589c13368e2407405b2a71a6ebad3","entity_key":"lx_study_goals_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d084a2298937026b832300c497875d9329270ef478d4453d3ff1af70f403a5ce","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ef9b8b411e68396fde6efc108c41ac1c7cf589c13368e2407405b2a71a6ebad3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_study_goals_02 -> audio/generated/de-DE/lexical/ef9b8b411e68396fde6efc108c41ac1c7cf589c13368e2407405b2a71a6ebad3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e7a7842a-496f-508e-829e-9ddb521823da', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_study_goals_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'abfc3f29bb604493a66d8e5ae703b97bbb5e0c424d7b195a672280b70f31060b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6f57e7b9-fc74-52b6-83ef-9c4e424aba60', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e7a7842a-496f-508e-829e-9ddb521823da', 1), 'abfc3f29bb604493a66d8e5ae703b97bbb5e0c424d7b195a672280b70f31060b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ef9b8b411e68396fde6efc108c41ac1c7cf589c13368e2407405b2a71a6ebad3.mp3', 1071, '2026-09-13 05:31:08.540973', 'd084a2298937026b832300c497875d9329270ef478d4453d3ff1af70f403a5ce', 'validated', '{"audio_key":"ef9b8b411e68396fde6efc108c41ac1c7cf589c13368e2407405b2a71a6ebad3","entity_key":"wf_study_goals_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d084a2298937026b832300c497875d9329270ef478d4453d3ff1af70f403a5ce","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ef9b8b411e68396fde6efc108c41ac1c7cf589c13368e2407405b2a71a6ebad3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_opinions_reasons_02 -> audio/generated/de-DE/lexical/f2181720f79af755548cc99ec10a5cee590add9e2da7cb68db212e62454b918b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9f9e542e-43ab-557d-a45e-6292a413e44a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_opinions_reasons_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f622115d67693de39066cde41b19652f4545d8c12428e9938c80e5f4d9efe499'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8b7ba0e7-6161-5587-824d-37affaf2eff6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9f9e542e-43ab-557d-a45e-6292a413e44a', 1), 'f622115d67693de39066cde41b19652f4545d8c12428e9938c80e5f4d9efe499',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f2181720f79af755548cc99ec10a5cee590add9e2da7cb68db212e62454b918b.mp3', 1071, '2026-09-13 05:54:51.607377', '40f0bd1d5bff525635adbc239dc6f9a4205e125d73c9d603f3fb72d397cc5b92', 'validated', '{"audio_key":"f2181720f79af755548cc99ec10a5cee590add9e2da7cb68db212e62454b918b","entity_key":"lx_opinions_reasons_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"40f0bd1d5bff525635adbc239dc6f9a4205e125d73c9d603f3fb72d397cc5b92","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f2181720f79af755548cc99ec10a5cee590add9e2da7cb68db212e62454b918b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_opinions_reasons_02 -> audio/generated/de-DE/lexical/f2181720f79af755548cc99ec10a5cee590add9e2da7cb68db212e62454b918b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('12b75bf1-eddd-5914-9e5c-d0440efa83e3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_opinions_reasons_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f622115d67693de39066cde41b19652f4545d8c12428e9938c80e5f4d9efe499'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('009ff420-abfe-5d2e-a5d5-39984980cafe', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('12b75bf1-eddd-5914-9e5c-d0440efa83e3', 1), 'f622115d67693de39066cde41b19652f4545d8c12428e9938c80e5f4d9efe499',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f2181720f79af755548cc99ec10a5cee590add9e2da7cb68db212e62454b918b.mp3', 1071, '2026-09-13 05:54:51.607377', '40f0bd1d5bff525635adbc239dc6f9a4205e125d73c9d603f3fb72d397cc5b92', 'validated', '{"audio_key":"f2181720f79af755548cc99ec10a5cee590add9e2da7cb68db212e62454b918b","entity_key":"wf_opinions_reasons_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"40f0bd1d5bff525635adbc239dc6f9a4205e125d73c9d603f3fb72d397cc5b92","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f2181720f79af755548cc99ec10a5cee590add9e2da7cb68db212e62454b918b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_work_experience_04 -> audio/generated/de-DE/lexical/f511d88e83805e854b114d5bf01245e7641d3e0d46105c4d4253d878a555b3ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c071be60-670d-5be6-b7c7-756eaafec049', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_work_experience_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c72f5df2b8a4ea7ca43144b25e1880afe727f790b320116d6ea4400d9ab985d2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cf21ce36-69d6-5b41-8145-3297c5289a06', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c071be60-670d-5be6-b7c7-756eaafec049', 1), 'c72f5df2b8a4ea7ca43144b25e1880afe727f790b320116d6ea4400d9ab985d2',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f511d88e83805e854b114d5bf01245e7641d3e0d46105c4d4253d878a555b3ef.mp3', 1097, '2026-09-13 05:31:10.629428', 'e202bde50d0b06b7c7abffc2f523b9c3fabe60dd93bee2c7f807e4a2109dc889', 'validated', '{"audio_key":"f511d88e83805e854b114d5bf01245e7641d3e0d46105c4d4253d878a555b3ef","entity_key":"lx_work_experience_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e202bde50d0b06b7c7abffc2f523b9c3fabe60dd93bee2c7f807e4a2109dc889","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f511d88e83805e854b114d5bf01245e7641d3e0d46105c4d4253d878a555b3ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_work_experience_04 -> audio/generated/de-DE/lexical/f511d88e83805e854b114d5bf01245e7641d3e0d46105c4d4253d878a555b3ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c1ad231b-f58c-5d3b-a5c1-16f4df1d8c93', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_work_experience_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c72f5df2b8a4ea7ca43144b25e1880afe727f790b320116d6ea4400d9ab985d2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('402ad462-7c94-5009-a68f-847851cc357e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c1ad231b-f58c-5d3b-a5c1-16f4df1d8c93', 1), 'c72f5df2b8a4ea7ca43144b25e1880afe727f790b320116d6ea4400d9ab985d2',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f511d88e83805e854b114d5bf01245e7641d3e0d46105c4d4253d878a555b3ef.mp3', 1097, '2026-09-13 05:31:10.629428', 'e202bde50d0b06b7c7abffc2f523b9c3fabe60dd93bee2c7f807e4a2109dc889', 'validated', '{"audio_key":"f511d88e83805e854b114d5bf01245e7641d3e0d46105c4d4253d878a555b3ef","entity_key":"wf_work_experience_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e202bde50d0b06b7c7abffc2f523b9c3fabe60dd93bee2c7f807e4a2109dc889","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f511d88e83805e854b114d5bf01245e7641d3e0d46105c4d4253d878a555b3ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_work_experience_02 -> audio/generated/de-DE/lexical/f61ba081de848b5ce9d4b443fbbb3253e82028e6e42c200255d41947f86ce688.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2c19d3b9-9581-5a54-b332-f5c4e98d461d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_work_experience_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '269d3d873f156bd37a61b56573c6732822017ff6912dfa0258b376f76f39ff19'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1fb0e6d0-33b7-5be7-9f6b-adee23e02d22', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2c19d3b9-9581-5a54-b332-f5c4e98d461d', 1), '269d3d873f156bd37a61b56573c6732822017ff6912dfa0258b376f76f39ff19',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f61ba081de848b5ce9d4b443fbbb3253e82028e6e42c200255d41947f86ce688.mp3', 1253, '2026-09-13 05:54:51.804446', 'e9645767fdc4b47111950a3363ed9f8e6a42e7b3d00696ac7c94830179b001cd', 'validated', '{"audio_key":"f61ba081de848b5ce9d4b443fbbb3253e82028e6e42c200255d41947f86ce688","entity_key":"lx_work_experience_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e9645767fdc4b47111950a3363ed9f8e6a42e7b3d00696ac7c94830179b001cd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f61ba081de848b5ce9d4b443fbbb3253e82028e6e42c200255d41947f86ce688.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_work_experience_02 -> audio/generated/de-DE/lexical/f61ba081de848b5ce9d4b443fbbb3253e82028e6e42c200255d41947f86ce688.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fa95d8aa-7a2d-526f-a344-9a8293874c9f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_work_experience_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '269d3d873f156bd37a61b56573c6732822017ff6912dfa0258b376f76f39ff19'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('459f6e04-d2c7-589e-9ba9-d45d2bbbd89d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fa95d8aa-7a2d-526f-a344-9a8293874c9f', 1), '269d3d873f156bd37a61b56573c6732822017ff6912dfa0258b376f76f39ff19',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f61ba081de848b5ce9d4b443fbbb3253e82028e6e42c200255d41947f86ce688.mp3', 1253, '2026-09-13 05:54:51.804446', 'e9645767fdc4b47111950a3363ed9f8e6a42e7b3d00696ac7c94830179b001cd', 'validated', '{"audio_key":"f61ba081de848b5ce9d4b443fbbb3253e82028e6e42c200255d41947f86ce688","entity_key":"wf_work_experience_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e9645767fdc4b47111950a3363ed9f8e6a42e7b3d00696ac7c94830179b001cd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f61ba081de848b5ce9d4b443fbbb3253e82028e6e42c200255d41947f86ce688.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_health_habits_03 -> audio/generated/de-DE/lexical/fc529326da257e3217d58641fac5daa307b54488f56aba88847cf5db3cd4bec3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b286976b-3b1d-5187-988f-e5e71ce2b2b7', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_health_habits_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fa92e9638d88105f5a7f8b0b0f03a03c41c9b9c1582328ae90bc1afc2550d5aa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8bca8d8c-6b60-505c-96dd-97c65dbb692e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b286976b-3b1d-5187-988f-e5e71ce2b2b7', 1), 'fa92e9638d88105f5a7f8b0b0f03a03c41c9b9c1582328ae90bc1afc2550d5aa',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fc529326da257e3217d58641fac5daa307b54488f56aba88847cf5db3cd4bec3.mp3', 1253, '2026-09-13 05:54:52.561335', '64a5bd33e768637aca2baba04fefab275f70c2fe27a6438880e9d786fe1043fb', 'validated', '{"audio_key":"fc529326da257e3217d58641fac5daa307b54488f56aba88847cf5db3cd4bec3","entity_key":"lx_health_habits_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"64a5bd33e768637aca2baba04fefab275f70c2fe27a6438880e9d786fe1043fb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fc529326da257e3217d58641fac5daa307b54488f56aba88847cf5db3cd4bec3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_health_habits_03 -> audio/generated/de-DE/lexical/fc529326da257e3217d58641fac5daa307b54488f56aba88847cf5db3cd4bec3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('69a12a3f-1941-52d2-8840-9dfeae0ccbce', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_health_habits_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fa92e9638d88105f5a7f8b0b0f03a03c41c9b9c1582328ae90bc1afc2550d5aa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7b228faa-4246-59cb-ba44-4b337d3fbc14', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('69a12a3f-1941-52d2-8840-9dfeae0ccbce', 1), 'fa92e9638d88105f5a7f8b0b0f03a03c41c9b9c1582328ae90bc1afc2550d5aa',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fc529326da257e3217d58641fac5daa307b54488f56aba88847cf5db3cd4bec3.mp3', 1253, '2026-09-13 05:54:52.561335', '64a5bd33e768637aca2baba04fefab275f70c2fe27a6438880e9d786fe1043fb', 'validated', '{"audio_key":"fc529326da257e3217d58641fac5daa307b54488f56aba88847cf5db3cd4bec3","entity_key":"wf_health_habits_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"64a5bd33e768637aca2baba04fefab275f70c2fe27a6438880e9d786fe1043fb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fc529326da257e3217d58641fac5daa307b54488f56aba88847cf5db3cd4bec3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_agree_disagree_06 -> audio/generated/de-DE/lexical/ff59fef9ca7610054439481daff8e54179e0fe4b28eb4e6ba71e48fcda2f1c20.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7125356b-477b-5154-a398-22985e6ae1a8', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_agree_disagree_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2209f5fbb0e412d759e5b3ec624f5dbadf458dd29f90b4587d9a2f9ff25a5e96'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('db2cdb75-09db-594a-83cb-75e71187a4fe', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7125356b-477b-5154-a398-22985e6ae1a8', 1), '2209f5fbb0e412d759e5b3ec624f5dbadf458dd29f90b4587d9a2f9ff25a5e96',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ff59fef9ca7610054439481daff8e54179e0fe4b28eb4e6ba71e48fcda2f1c20.mp3', 1253, '2026-09-13 05:54:52.779597', 'a9118bd61619ba3e67e59b21344e94e53e685df94cd417059c2da37bd4625f8f', 'validated', '{"audio_key":"ff59fef9ca7610054439481daff8e54179e0fe4b28eb4e6ba71e48fcda2f1c20","entity_key":"lx_agree_disagree_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a9118bd61619ba3e67e59b21344e94e53e685df94cd417059c2da37bd4625f8f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ff59fef9ca7610054439481daff8e54179e0fe4b28eb4e6ba71e48fcda2f1c20.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_agree_disagree_06 -> audio/generated/de-DE/lexical/ff59fef9ca7610054439481daff8e54179e0fe4b28eb4e6ba71e48fcda2f1c20.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fe36addf-f12a-53fb-8964-6b0d655c8922', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_agree_disagree_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2209f5fbb0e412d759e5b3ec624f5dbadf458dd29f90b4587d9a2f9ff25a5e96'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f1e3db38-c12d-5ee0-ba78-85416970f78b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fe36addf-f12a-53fb-8964-6b0d655c8922', 1), '2209f5fbb0e412d759e5b3ec624f5dbadf458dd29f90b4587d9a2f9ff25a5e96',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ff59fef9ca7610054439481daff8e54179e0fe4b28eb4e6ba71e48fcda2f1c20.mp3', 1253, '2026-09-13 05:54:52.779597', 'a9118bd61619ba3e67e59b21344e94e53e685df94cd417059c2da37bd4625f8f', 'validated', '{"audio_key":"ff59fef9ca7610054439481daff8e54179e0fe4b28eb4e6ba71e48fcda2f1c20","entity_key":"wf_agree_disagree_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a9118bd61619ba3e67e59b21344e94e53e685df94cd417059c2da37bd4625f8f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ff59fef9ca7610054439481daff8e54179e0fe4b28eb4e6ba71e48fcda2f1c20.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_neighborhood_community_02 -> audio/generated/de-DE/utterances/0632cd92f504bf9b6e76b7dfb62d155f84bf74e7790af86646cba795cec42ea1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('32583370-fd11-5019-acf2-d7c8d85af00a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_neighborhood_community_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e1bfb9b16f3838dbd986550997a88c14b77523904e05c7e37edbae4a564d9642'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fade18b1-a2c4-5ea8-a80b-a94c80e261b4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('32583370-fd11-5019-acf2-d7c8d85af00a', 1), 'e1bfb9b16f3838dbd986550997a88c14b77523904e05c7e37edbae4a564d9642',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0632cd92f504bf9b6e76b7dfb62d155f84bf74e7790af86646cba795cec42ea1.mp3', 3944, '2026-09-13 05:54:53.821493', '22c9f8a1ee9e9693908afeb045a1633583fb75ebb964612fe95d1a180836dde6', 'validated', '{"audio_key":"0632cd92f504bf9b6e76b7dfb62d155f84bf74e7790af86646cba795cec42ea1","entity_key":"u_neighborhood_community_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"22c9f8a1ee9e9693908afeb045a1633583fb75ebb964612fe95d1a180836dde6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0632cd92f504bf9b6e76b7dfb62d155f84bf74e7790af86646cba795cec42ea1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_work_experience_06 -> audio/generated/de-DE/utterances/06ddadb100ea00f38d51e8e688da6c73c88ee8bda1d99013e70daa9fa2a67896.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('66c96b62-37f0-5e2c-9b4e-0641fbca4ca1', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_work_experience_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '70f908cff96e2c1327521add2811d9112f953218c6f9d080e8967dfb1efb8903'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0097a49d-ba93-5be0-9320-b54cd5224333', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('66c96b62-37f0-5e2c-9b4e-0641fbca4ca1', 1), '70f908cff96e2c1327521add2811d9112f953218c6f9d080e8967dfb1efb8903',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/06ddadb100ea00f38d51e8e688da6c73c88ee8bda1d99013e70daa9fa2a67896.mp3', 2638, '2026-09-13 05:54:53.917031', '26bb9893f42194ca8eada0952b8be4a8a98593fdf9dab4a352a4782d0cfddc03', 'validated', '{"audio_key":"06ddadb100ea00f38d51e8e688da6c73c88ee8bda1d99013e70daa9fa2a67896","entity_key":"u_work_experience_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"26bb9893f42194ca8eada0952b8be4a8a98593fdf9dab4a352a4782d0cfddc03","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/06ddadb100ea00f38d51e8e688da6c73c88ee8bda1d99013e70daa9fa2a67896.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_work_experience_04 -> audio/generated/de-DE/utterances/0f9f44e8d8519393cc316fa8ac0f4fb69d04b91d0fda26afbe3629f22fdf3858.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6afe61f1-a7b5-5cbf-a74d-d088488e073a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_work_experience_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9ab4cfe8c6e59fed42ec787c1d3edfb614bbdaf9d82b5f16a6bb187042701893'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3db96732-77d0-5f04-b075-b2834379f548', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6afe61f1-a7b5-5cbf-a74d-d088488e073a', 1), '9ab4cfe8c6e59fed42ec787c1d3edfb614bbdaf9d82b5f16a6bb187042701893',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0f9f44e8d8519393cc316fa8ac0f4fb69d04b91d0fda26afbe3629f22fdf3858.mp3', 3709, '2026-09-13 05:54:55.052624', 'e9290c2bbf48aa4efce563c0aa2457b950253f6ada19d781106a4e6c3e2d7afa', 'validated', '{"audio_key":"0f9f44e8d8519393cc316fa8ac0f4fb69d04b91d0fda26afbe3629f22fdf3858","entity_key":"u_work_experience_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e9290c2bbf48aa4efce563c0aa2457b950253f6ada19d781106a4e6c3e2d7afa","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0f9f44e8d8519393cc316fa8ac0f4fb69d04b91d0fda26afbe3629f22fdf3858.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_media_technology_03 -> audio/generated/de-DE/utterances/1f60492ffb05a94ceb015186bd6d841eec0e7eb06984ada250084cf64717c172.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2b8d7fd4-28c4-555a-ba8f-92c984386905', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_media_technology_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd51244126aa192a17d2f4f415eb2c58b8038cc5dd0e00c469b0b412d1729e119'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f4b301d9-199a-51d3-9b5a-3952c34e31d2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2b8d7fd4-28c4-555a-ba8f-92c984386905', 1), 'd51244126aa192a17d2f4f415eb2c58b8038cc5dd0e00c469b0b412d1729e119',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1f60492ffb05a94ceb015186bd6d841eec0e7eb06984ada250084cf64717c172.mp3', 3996, '2026-09-13 05:54:55.210788', '4d985791b264999a5b3e696c1de77eaf3aef7cc415e67602184971ed2df5f3e5', 'validated', '{"audio_key":"1f60492ffb05a94ceb015186bd6d841eec0e7eb06984ada250084cf64717c172","entity_key":"u_media_technology_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4d985791b264999a5b3e696c1de77eaf3aef7cc415e67602184971ed2df5f3e5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1f60492ffb05a94ceb015186bd6d841eec0e7eb06984ada250084cf64717c172.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_media_technology_02_listen -> audio/generated/de-DE/utterances/1f60492ffb05a94ceb015186bd6d841eec0e7eb06984ada250084cf64717c172.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c05e2684-ce84-5619-9337-24f1301b613d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_media_technology_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd51244126aa192a17d2f4f415eb2c58b8038cc5dd0e00c469b0b412d1729e119'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c905202f-01dd-5ec5-859d-65863bb2b02a', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c05e2684-ce84-5619-9337-24f1301b613d', 1), 'd51244126aa192a17d2f4f415eb2c58b8038cc5dd0e00c469b0b412d1729e119',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1f60492ffb05a94ceb015186bd6d841eec0e7eb06984ada250084cf64717c172.mp3', 3996, '2026-09-13 05:54:55.210788', '4d985791b264999a5b3e696c1de77eaf3aef7cc415e67602184971ed2df5f3e5', 'validated', '{"audio_key":"1f60492ffb05a94ceb015186bd6d841eec0e7eb06984ada250084cf64717c172","entity_key":"ex_media_technology_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4d985791b264999a5b3e696c1de77eaf3aef7cc415e67602184971ed2df5f3e5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1f60492ffb05a94ceb015186bd6d841eec0e7eb06984ada250084cf64717c172.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_health_habits_06 -> audio/generated/de-DE/utterances/2588c276bf89a407a1a4f497e62088e28deff81020520d34d28e2ea3e5dd7d66.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('442d0ab6-bbad-5643-a831-c0cf9ea638c2', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_health_habits_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8c86aefcf4491b75e0b46925cb2e100b18a9b7b28607b9b7ad8754e777909721'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b076d795-d334-57a8-9610-fb581f66db8b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('442d0ab6-bbad-5643-a831-c0cf9ea638c2', 1), '8c86aefcf4491b75e0b46925cb2e100b18a9b7b28607b9b7ad8754e777909721',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2588c276bf89a407a1a4f497e62088e28deff81020520d34d28e2ea3e5dd7d66.mp3', 3709, '2026-09-13 05:54:56.287343', 'e39c5c587884ae75777bcd7030088c3d8d5573338e1ac19bc1370ddd6014df57', 'validated', '{"audio_key":"2588c276bf89a407a1a4f497e62088e28deff81020520d34d28e2ea3e5dd7d66","entity_key":"u_health_habits_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e39c5c587884ae75777bcd7030088c3d8d5573338e1ac19bc1370ddd6014df57","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2588c276bf89a407a1a4f497e62088e28deff81020520d34d28e2ea3e5dd7d66.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_telling_stories_06 -> audio/generated/de-DE/utterances/2cff1f468cd68e02f44a28f0361435b35d36a10e20c222c8201c6b9f95d5bf02.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('531be326-23b8-562c-8bc9-007a2286fc0d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_telling_stories_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6528671b089eed961894bf88fde8b914b3e723711d72ff77bf6c7e368caca0a0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ebb07bbb-7214-55bf-8a64-a55268ec62b3', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('531be326-23b8-562c-8bc9-007a2286fc0d', 1), '6528671b089eed961894bf88fde8b914b3e723711d72ff77bf6c7e368caca0a0',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2cff1f468cd68e02f44a28f0361435b35d36a10e20c222c8201c6b9f95d5bf02.mp3', 2220, '2026-09-13 05:54:56.261876', '3579d8d554d84da4bb00b931d6cd050fac4c24d3226cb0f6a0fa09e51bd5f72a', 'validated', '{"audio_key":"2cff1f468cd68e02f44a28f0361435b35d36a10e20c222c8201c6b9f95d5bf02","entity_key":"u_telling_stories_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3579d8d554d84da4bb00b931d6cd050fac4c24d3226cb0f6a0fa09e51bd5f72a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2cff1f468cd68e02f44a28f0361435b35d36a10e20c222c8201c6b9f95d5bf02.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_agree_disagree_06 -> audio/generated/de-DE/utterances/2de1768ae33072459d974c5ab463dc47d6c3167bc4faa8d98765c0609a7d69ec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('31e16748-b499-5877-a1a8-ae765045b730', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_agree_disagree_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b048ae2d67207a278613ec393aa2f129a5ae35caca3078c9d02408f392345bfc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('43973f2b-fcbd-500d-b205-87ef2ac78fa3', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('31e16748-b499-5877-a1a8-ae765045b730', 1), 'b048ae2d67207a278613ec393aa2f129a5ae35caca3078c9d02408f392345bfc',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2de1768ae33072459d974c5ab463dc47d6c3167bc4faa8d98765c0609a7d69ec.mp3', 3239, '2026-09-13 05:54:57.457904', '5540a30123ccd733086569d76d76db2d11f96597f6c6d0c7204e2f21f263b839', 'validated', '{"audio_key":"2de1768ae33072459d974c5ab463dc47d6c3167bc4faa8d98765c0609a7d69ec","entity_key":"u_agree_disagree_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5540a30123ccd733086569d76d76db2d11f96597f6c6d0c7204e2f21f263b839","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2de1768ae33072459d974c5ab463dc47d6c3167bc4faa8d98765c0609a7d69ec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_agree_disagree_02 -> audio/generated/de-DE/utterances/3166242b820b3deba814ef1a593b70af77a4b59ecf28569ebc65a39ace760d31.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ac3d1b2c-862c-59fa-bc45-96a3562bd9cc', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_agree_disagree_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1f4cbc0b882785c4e677b6c44d53af39c9a9d2393ddb5510d9e4f662c21bb8df'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2343ab6e-8923-5176-b66f-fdff48561897', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ac3d1b2c-862c-59fa-bc45-96a3562bd9cc', 1), '1f4cbc0b882785c4e677b6c44d53af39c9a9d2393ddb5510d9e4f662c21bb8df',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3166242b820b3deba814ef1a593b70af77a4b59ecf28569ebc65a39ace760d31.mp3', 2873, '2026-09-13 05:54:57.417764', '8d672cb319bc4685efed5b0f7f0a448b22d53287e92ecc2828a739ac3809ce1e', 'validated', '{"audio_key":"3166242b820b3deba814ef1a593b70af77a4b59ecf28569ebc65a39ace760d31","entity_key":"u_agree_disagree_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8d672cb319bc4685efed5b0f7f0a448b22d53287e92ecc2828a739ac3809ce1e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3166242b820b3deba814ef1a593b70af77a4b59ecf28569ebc65a39ace760d31.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_agree_disagree_04 -> audio/generated/de-DE/utterances/38a51b726ba6e5fb7801af15b31dd74cfe05e9c78dc6221d5545405d3d28a5ab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('798ccbd4-67e6-53e8-be89-ccc34a610b11', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_agree_disagree_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5a3e7b4be4e54746c4bdf0bc7b40b7df1d0212d3d0faea471cc9c702b7f233b6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b618a5ab-6767-50c5-8acf-aa3b9f8da2b5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('798ccbd4-67e6-53e8-be89-ccc34a610b11', 1), '5a3e7b4be4e54746c4bdf0bc7b40b7df1d0212d3d0faea471cc9c702b7f233b6',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/38a51b726ba6e5fb7801af15b31dd74cfe05e9c78dc6221d5545405d3d28a5ab.mp3', 3422, '2026-09-13 05:54:58.637672', 'b8b7bc37ebc4f931ae76a1bd1a77cd9010c25b4c56086400ae71bae1aada9854', 'validated', '{"audio_key":"38a51b726ba6e5fb7801af15b31dd74cfe05e9c78dc6221d5545405d3d28a5ab","entity_key":"u_agree_disagree_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b8b7bc37ebc4f931ae76a1bd1a77cd9010c25b4c56086400ae71bae1aada9854","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/38a51b726ba6e5fb7801af15b31dd74cfe05e9c78dc6221d5545405d3d28a5ab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_neighborhood_community_04 -> audio/generated/de-DE/utterances/38fb92458c33f193c249fe5dfe9ee91808180e80c5a61996803fc67a10268b6a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('61ce7976-ed8a-59e3-83ab-f53176bd7adc', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_neighborhood_community_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '473758135cd3c6fa33f8e45cfc0c96e574588077051748531470fce4144f2739'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ea588e3a-e67a-5eca-a6f9-31df9ea891d5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('61ce7976-ed8a-59e3-83ab-f53176bd7adc', 1), '473758135cd3c6fa33f8e45cfc0c96e574588077051748531470fce4144f2739',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/38fb92458c33f193c249fe5dfe9ee91808180e80c5a61996803fc67a10268b6a.mp3', 4675, '2026-09-13 05:54:58.803458', 'fcb67c081ac64c524aa12e985be6b27aefb047371acb5eeeb2e40812f7f34bfa', 'validated', '{"audio_key":"38fb92458c33f193c249fe5dfe9ee91808180e80c5a61996803fc67a10268b6a","entity_key":"u_neighborhood_community_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fcb67c081ac64c524aa12e985be6b27aefb047371acb5eeeb2e40812f7f34bfa","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/38fb92458c33f193c249fe5dfe9ee91808180e80c5a61996803fc67a10268b6a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_media_technology_01 -> audio/generated/de-DE/utterances/3bf8c7c4fa6afbf84f268c26f619dacad27a31a719bc22a4ec02ba765c6180ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bc2d1fd8-1f24-5996-8d3e-491cc1fd07a8', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_media_technology_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '76db67959fe50f6e9c7675d47440f0a1787703eba878cd1b87d394d42d276fae'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8155a950-289c-5996-8799-4e7f6b2648cc', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bc2d1fd8-1f24-5996-8d3e-491cc1fd07a8', 1), '76db67959fe50f6e9c7675d47440f0a1787703eba878cd1b87d394d42d276fae',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3bf8c7c4fa6afbf84f268c26f619dacad27a31a719bc22a4ec02ba765c6180ef.mp3', 4728, '2026-09-13 05:54:59.955071', 'e3e086565f2c9e2915e41ce592791866f64eae7ca9ccd35a772987f2025723ef', 'validated', '{"audio_key":"3bf8c7c4fa6afbf84f268c26f619dacad27a31a719bc22a4ec02ba765c6180ef","entity_key":"u_media_technology_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e3e086565f2c9e2915e41ce592791866f64eae7ca9ccd35a772987f2025723ef","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3bf8c7c4fa6afbf84f268c26f619dacad27a31a719bc22a4ec02ba765c6180ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_media_technology_01_listen -> audio/generated/de-DE/utterances/3bf8c7c4fa6afbf84f268c26f619dacad27a31a719bc22a4ec02ba765c6180ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('4cc14e8a-9e09-5826-904f-f9c1b03b78e9', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_media_technology_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '76db67959fe50f6e9c7675d47440f0a1787703eba878cd1b87d394d42d276fae'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ab2b2c18-2241-52e0-a6cd-3b4fe1373444', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('4cc14e8a-9e09-5826-904f-f9c1b03b78e9', 1), '76db67959fe50f6e9c7675d47440f0a1787703eba878cd1b87d394d42d276fae',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3bf8c7c4fa6afbf84f268c26f619dacad27a31a719bc22a4ec02ba765c6180ef.mp3', 4728, '2026-09-13 05:54:59.955071', 'e3e086565f2c9e2915e41ce592791866f64eae7ca9ccd35a772987f2025723ef', 'validated', '{"audio_key":"3bf8c7c4fa6afbf84f268c26f619dacad27a31a719bc22a4ec02ba765c6180ef","entity_key":"ex_media_technology_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e3e086565f2c9e2915e41ce592791866f64eae7ca9ccd35a772987f2025723ef","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3bf8c7c4fa6afbf84f268c26f619dacad27a31a719bc22a4ec02ba765c6180ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_neighborhood_community_03 -> audio/generated/de-DE/utterances/3f632b121ea7ae2f65dee4822bbb646a0779a9736786e99b6fd35ce7be943cf0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d9a0d4a5-b019-5640-9035-0d01be32bf6a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_neighborhood_community_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '39f3c9ec6af027b8b3f7791d301552cc3b591f1c2546486c83366fa959ea0f4e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8df4c891-6b90-58c3-b1da-4b58dfd07205', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d9a0d4a5-b019-5640-9035-0d01be32bf6a', 1), '39f3c9ec6af027b8b3f7791d301552cc3b591f1c2546486c83366fa959ea0f4e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3f632b121ea7ae2f65dee4822bbb646a0779a9736786e99b6fd35ce7be943cf0.mp3', 3186, '2026-09-13 05:55:00.005522', 'd15c8916096e0286c951b641d12d2c0b2875413168f86eee7a60c2575c3b4280', 'validated', '{"audio_key":"3f632b121ea7ae2f65dee4822bbb646a0779a9736786e99b6fd35ce7be943cf0","entity_key":"u_neighborhood_community_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d15c8916096e0286c951b641d12d2c0b2875413168f86eee7a60c2575c3b4280","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3f632b121ea7ae2f65dee4822bbb646a0779a9736786e99b6fd35ce7be943cf0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_neighborhood_community_02_listen -> audio/generated/de-DE/utterances/3f632b121ea7ae2f65dee4822bbb646a0779a9736786e99b6fd35ce7be943cf0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('83c1d3db-60fd-5ffc-b199-efb61a3f3c92', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_neighborhood_community_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '39f3c9ec6af027b8b3f7791d301552cc3b591f1c2546486c83366fa959ea0f4e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d728a6c0-6961-5341-9d01-65ce0f346106', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('83c1d3db-60fd-5ffc-b199-efb61a3f3c92', 1), '39f3c9ec6af027b8b3f7791d301552cc3b591f1c2546486c83366fa959ea0f4e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3f632b121ea7ae2f65dee4822bbb646a0779a9736786e99b6fd35ce7be943cf0.mp3', 3186, '2026-09-13 05:55:00.005522', 'd15c8916096e0286c951b641d12d2c0b2875413168f86eee7a60c2575c3b4280', 'validated', '{"audio_key":"3f632b121ea7ae2f65dee4822bbb646a0779a9736786e99b6fd35ce7be943cf0","entity_key":"ex_neighborhood_community_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d15c8916096e0286c951b641d12d2c0b2875413168f86eee7a60c2575c3b4280","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3f632b121ea7ae2f65dee4822bbb646a0779a9736786e99b6fd35ce7be943cf0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_media_technology_05 -> audio/generated/de-DE/utterances/470f98c534a66e5d845d3b4564981cb1fe74b90a1a99c97a0835b66aa3f3072d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9247c8a2-e8ab-5056-96c8-2198f75eabc2', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_media_technology_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7f40b0810eea06d0f46442b8c6ba959cd19f1791f42d0168cb8c979c03ddecac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5a187226-e7b2-57b1-982a-22bac792e4be', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9247c8a2-e8ab-5056-96c8-2198f75eabc2', 1), '7f40b0810eea06d0f46442b8c6ba959cd19f1791f42d0168cb8c979c03ddecac',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/470f98c534a66e5d845d3b4564981cb1fe74b90a1a99c97a0835b66aa3f3072d.mp3', 4022, '2026-09-13 05:55:01.269071', '62171699c65a26c5bf9d9340993f044b540ca92597bb49c6ce44bf23b79de205', 'validated', '{"audio_key":"470f98c534a66e5d845d3b4564981cb1fe74b90a1a99c97a0835b66aa3f3072d","entity_key":"u_media_technology_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"62171699c65a26c5bf9d9340993f044b540ca92597bb49c6ce44bf23b79de205","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/470f98c534a66e5d845d3b4564981cb1fe74b90a1a99c97a0835b66aa3f3072d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_media_technology_03_listen -> audio/generated/de-DE/utterances/470f98c534a66e5d845d3b4564981cb1fe74b90a1a99c97a0835b66aa3f3072d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('328e229f-3ff4-5416-95ce-a1b3ebd73acb', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_media_technology_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7f40b0810eea06d0f46442b8c6ba959cd19f1791f42d0168cb8c979c03ddecac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a2495ea1-23a6-5c91-b9f4-04315a9b5813', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('328e229f-3ff4-5416-95ce-a1b3ebd73acb', 1), '7f40b0810eea06d0f46442b8c6ba959cd19f1791f42d0168cb8c979c03ddecac',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/470f98c534a66e5d845d3b4564981cb1fe74b90a1a99c97a0835b66aa3f3072d.mp3', 4022, '2026-09-13 05:55:01.269071', '62171699c65a26c5bf9d9340993f044b540ca92597bb49c6ce44bf23b79de205', 'validated', '{"audio_key":"470f98c534a66e5d845d3b4564981cb1fe74b90a1a99c97a0835b66aa3f3072d","entity_key":"ex_media_technology_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"62171699c65a26c5bf9d9340993f044b540ca92597bb49c6ce44bf23b79de205","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/470f98c534a66e5d845d3b4564981cb1fe74b90a1a99c97a0835b66aa3f3072d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_opinions_reasons_01 -> audio/generated/de-DE/utterances/4af003bed2b1a9a81c8817130c70b009eb7bc19dbd0003e64161903585050ff1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b1237d71-f848-5382-9ada-0231d2fbef53', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_opinions_reasons_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b2b9ab882c57cd3c13cd37360adfe1d6327f5d3153d58e5d14e688f38048c5e3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9c3d02ea-21fc-5c4a-9691-c9636df95352', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b1237d71-f848-5382-9ada-0231d2fbef53', 1), 'b2b9ab882c57cd3c13cd37360adfe1d6327f5d3153d58e5d14e688f38048c5e3',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4af003bed2b1a9a81c8817130c70b009eb7bc19dbd0003e64161903585050ff1.mp3', 3108, '2026-09-13 05:55:01.165880', '049fd3ffd0585c67913627141950bb422146535f431bf1c32bfe7f6328864ee5', 'validated', '{"audio_key":"4af003bed2b1a9a81c8817130c70b009eb7bc19dbd0003e64161903585050ff1","entity_key":"u_opinions_reasons_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"049fd3ffd0585c67913627141950bb422146535f431bf1c32bfe7f6328864ee5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4af003bed2b1a9a81c8817130c70b009eb7bc19dbd0003e64161903585050ff1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_opinions_reasons_01_listen -> audio/generated/de-DE/utterances/4af003bed2b1a9a81c8817130c70b009eb7bc19dbd0003e64161903585050ff1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('f490812d-b598-505c-b3f4-a9d013325d38', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_opinions_reasons_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b2b9ab882c57cd3c13cd37360adfe1d6327f5d3153d58e5d14e688f38048c5e3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7ebb104d-2b70-56d3-8b94-195e5ec2d975', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('f490812d-b598-505c-b3f4-a9d013325d38', 1), 'b2b9ab882c57cd3c13cd37360adfe1d6327f5d3153d58e5d14e688f38048c5e3',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4af003bed2b1a9a81c8817130c70b009eb7bc19dbd0003e64161903585050ff1.mp3', 3108, '2026-09-13 05:55:01.165880', '049fd3ffd0585c67913627141950bb422146535f431bf1c32bfe7f6328864ee5', 'validated', '{"audio_key":"4af003bed2b1a9a81c8817130c70b009eb7bc19dbd0003e64161903585050ff1","entity_key":"ex_opinions_reasons_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"049fd3ffd0585c67913627141950bb422146535f431bf1c32bfe7f6328864ee5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4af003bed2b1a9a81c8817130c70b009eb7bc19dbd0003e64161903585050ff1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_opinions_reasons_02 -> audio/generated/de-DE/utterances/595b7e20b924061c420d9ca0dfe04b8c6297dfa3c37e428b98356cd33bcd8855.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('78dd479d-5c85-5f85-8bec-503d3cab8d92', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_opinions_reasons_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd00640f9dce8d085ee089bdb69a6e956beb2c4729d72fa3c64e491c3e2e33210'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a88157a1-3f76-590d-94a5-5b7430c634d9', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('78dd479d-5c85-5f85-8bec-503d3cab8d92', 1), 'd00640f9dce8d085ee089bdb69a6e956beb2c4729d72fa3c64e491c3e2e33210',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/595b7e20b924061c420d9ca0dfe04b8c6297dfa3c37e428b98356cd33bcd8855.mp3', 3343, '2026-09-13 05:55:02.365491', 'a782962a69910583e09cd5e78df6e187db442857eaf620793197c1a2488b8957', 'validated', '{"audio_key":"595b7e20b924061c420d9ca0dfe04b8c6297dfa3c37e428b98356cd33bcd8855","entity_key":"u_opinions_reasons_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a782962a69910583e09cd5e78df6e187db442857eaf620793197c1a2488b8957","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/595b7e20b924061c420d9ca0dfe04b8c6297dfa3c37e428b98356cd33bcd8855.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_media_technology_02 -> audio/generated/de-DE/utterances/5a58abaa64629b129b61754caa7ce53646a96f1d5b1a705288a4f15e637ca586.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('da15092b-4839-5e2e-81fc-ddc16d0c02ab', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_media_technology_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '42dcef8034c21bf8293558ff04b0e2a0be1249dff744a389ac874ca0ffb7273c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e8ec1320-d800-56c3-aa11-125743e38c09', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('da15092b-4839-5e2e-81fc-ddc16d0c02ab', 1), '42dcef8034c21bf8293558ff04b0e2a0be1249dff744a389ac874ca0ffb7273c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5a58abaa64629b129b61754caa7ce53646a96f1d5b1a705288a4f15e637ca586.mp3', 3787, '2026-09-13 05:55:02.505453', '8316a6d5b3e77a36c4af635bdb51f015e7d04274b0e4bc25e2de197cdc4de5bd', 'validated', '{"audio_key":"5a58abaa64629b129b61754caa7ce53646a96f1d5b1a705288a4f15e637ca586","entity_key":"u_media_technology_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8316a6d5b3e77a36c4af635bdb51f015e7d04274b0e4bc25e2de197cdc4de5bd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5a58abaa64629b129b61754caa7ce53646a96f1d5b1a705288a4f15e637ca586.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_travel_experiences_01 -> audio/generated/de-DE/utterances/5b3786ad38b9d20991255de0c66a74b9b75bc6e51641306f46043278f66d541f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('131a93bb-c729-599a-8754-c7b8b7bba7c0', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_travel_experiences_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd1c3fa9bd49ec235e7374f50711ce4d0e93c20d990dc17a5730f8cec1f6f6c46'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('79995782-4899-5b82-b9c0-0c9dc1fc0b7b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('131a93bb-c729-599a-8754-c7b8b7bba7c0', 1), 'd1c3fa9bd49ec235e7374f50711ce4d0e93c20d990dc17a5730f8cec1f6f6c46',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5b3786ad38b9d20991255de0c66a74b9b75bc6e51641306f46043278f66d541f.mp3', 3291, '2026-09-13 05:55:03.619699', '9606c61d3e85a058b4a2c8f5338b492720d6146b2bb14baf9595e2ae1aa22e88', 'validated', '{"audio_key":"5b3786ad38b9d20991255de0c66a74b9b75bc6e51641306f46043278f66d541f","entity_key":"u_travel_experiences_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9606c61d3e85a058b4a2c8f5338b492720d6146b2bb14baf9595e2ae1aa22e88","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5b3786ad38b9d20991255de0c66a74b9b75bc6e51641306f46043278f66d541f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_travel_experiences_01_listen -> audio/generated/de-DE/utterances/5b3786ad38b9d20991255de0c66a74b9b75bc6e51641306f46043278f66d541f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('bd272d65-fa53-5c39-8285-cb744cca085a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_travel_experiences_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd1c3fa9bd49ec235e7374f50711ce4d0e93c20d990dc17a5730f8cec1f6f6c46'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2315fa67-7489-5510-8ba7-ea74c03d00ad', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('bd272d65-fa53-5c39-8285-cb744cca085a', 1), 'd1c3fa9bd49ec235e7374f50711ce4d0e93c20d990dc17a5730f8cec1f6f6c46',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5b3786ad38b9d20991255de0c66a74b9b75bc6e51641306f46043278f66d541f.mp3', 3291, '2026-09-13 05:55:03.619699', '9606c61d3e85a058b4a2c8f5338b492720d6146b2bb14baf9595e2ae1aa22e88', 'validated', '{"audio_key":"5b3786ad38b9d20991255de0c66a74b9b75bc6e51641306f46043278f66d541f","entity_key":"ex_travel_experiences_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9606c61d3e85a058b4a2c8f5338b492720d6146b2bb14baf9595e2ae1aa22e88","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5b3786ad38b9d20991255de0c66a74b9b75bc6e51641306f46043278f66d541f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_neighborhood_community_01 -> audio/generated/de-DE/utterances/5b8bed10c4f650411ad80d7f79ff04f70a444640286483ed1d79d77aa757d8d7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('fe48fb50-04d4-5270-99a1-e9eef0b35496', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_neighborhood_community_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c3ac1082cbe7acea3448102bcff3d026bbaa03a1d62751c45f76f056888e33d5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8b59afc7-8afa-5b21-9914-9b33b36e0c69', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('fe48fb50-04d4-5270-99a1-e9eef0b35496', 1), 'c3ac1082cbe7acea3448102bcff3d026bbaa03a1d62751c45f76f056888e33d5',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5b8bed10c4f650411ad80d7f79ff04f70a444640286483ed1d79d77aa757d8d7.mp3', 3604, '2026-09-13 05:55:03.753714', '525ff94139cdd3da78b99a1cf20d3c12d684071e84d50dc84f2920cdb5700b41', 'validated', '{"audio_key":"5b8bed10c4f650411ad80d7f79ff04f70a444640286483ed1d79d77aa757d8d7","entity_key":"u_neighborhood_community_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"525ff94139cdd3da78b99a1cf20d3c12d684071e84d50dc84f2920cdb5700b41","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5b8bed10c4f650411ad80d7f79ff04f70a444640286483ed1d79d77aa757d8d7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_neighborhood_community_01_listen -> audio/generated/de-DE/utterances/5b8bed10c4f650411ad80d7f79ff04f70a444640286483ed1d79d77aa757d8d7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('f7a1f1d5-33e3-5c3e-947b-10bebbd72e8a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_neighborhood_community_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c3ac1082cbe7acea3448102bcff3d026bbaa03a1d62751c45f76f056888e33d5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0effaae0-9374-57ac-8994-dbece49110ee', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('f7a1f1d5-33e3-5c3e-947b-10bebbd72e8a', 1), 'c3ac1082cbe7acea3448102bcff3d026bbaa03a1d62751c45f76f056888e33d5',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5b8bed10c4f650411ad80d7f79ff04f70a444640286483ed1d79d77aa757d8d7.mp3', 3604, '2026-09-13 05:55:03.753714', '525ff94139cdd3da78b99a1cf20d3c12d684071e84d50dc84f2920cdb5700b41', 'validated', '{"audio_key":"5b8bed10c4f650411ad80d7f79ff04f70a444640286483ed1d79d77aa757d8d7","entity_key":"ex_neighborhood_community_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"525ff94139cdd3da78b99a1cf20d3c12d684071e84d50dc84f2920cdb5700b41","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5b8bed10c4f650411ad80d7f79ff04f70a444640286483ed1d79d77aa757d8d7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_media_technology_06 -> audio/generated/de-DE/utterances/5cee332a8f748ef7c4ae16e61bbb6e4f8cba1062b2f75167899626a6c3475a78.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1857129e-b6fe-5e70-a275-99d3e7b879cb', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_media_technology_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bfb0f5293f81efeea8468c293fbb043870ee713ea566341ffec903ef37c96125'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('69fd4271-1e8a-5d4e-9498-ef4d6bf8c5b6', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1857129e-b6fe-5e70-a275-99d3e7b879cb', 1), 'bfb0f5293f81efeea8468c293fbb043870ee713ea566341ffec903ef37c96125',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5cee332a8f748ef7c4ae16e61bbb6e4f8cba1062b2f75167899626a6c3475a78.mp3', 4623, '2026-09-13 05:55:04.984903', 'de8ea569e88bb8c5a00bbc3521c94a70b8be28c5e2bd6d3da6dcde47349894ce', 'validated', '{"audio_key":"5cee332a8f748ef7c4ae16e61bbb6e4f8cba1062b2f75167899626a6c3475a78","entity_key":"u_media_technology_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"de8ea569e88bb8c5a00bbc3521c94a70b8be28c5e2bd6d3da6dcde47349894ce","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5cee332a8f748ef7c4ae16e61bbb6e4f8cba1062b2f75167899626a6c3475a78.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_problems_solutions_05 -> audio/generated/de-DE/utterances/5e8c0dd4b282ac4d03bf76ee93fac4ec30a03af345dc716341487d03622d3d65.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e6f773ad-2108-5fa1-b871-74911bd06d03', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_problems_solutions_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d6977af38e07cfee4f8d260e06b27e25c55b41e9c049b3eaeb60477d4959e90'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ae670f5e-8c32-54b1-972f-9400b25ef955', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e6f773ad-2108-5fa1-b871-74911bd06d03', 1), '8d6977af38e07cfee4f8d260e06b27e25c55b41e9c049b3eaeb60477d4959e90',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5e8c0dd4b282ac4d03bf76ee93fac4ec30a03af345dc716341487d03622d3d65.mp3', 3004, '2026-09-13 05:55:04.891744', '9a53b34fcaf9e0d4b4bc5e29cb8f42d3bc0ce1b5fedc59ef0d4f60f2e73c419b', 'validated', '{"audio_key":"5e8c0dd4b282ac4d03bf76ee93fac4ec30a03af345dc716341487d03622d3d65","entity_key":"u_problems_solutions_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9a53b34fcaf9e0d4b4bc5e29cb8f42d3bc0ce1b5fedc59ef0d4f60f2e73c419b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5e8c0dd4b282ac4d03bf76ee93fac4ec30a03af345dc716341487d03622d3d65.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_problems_solutions_03_listen -> audio/generated/de-DE/utterances/5e8c0dd4b282ac4d03bf76ee93fac4ec30a03af345dc716341487d03622d3d65.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('92a62771-c432-5da0-ab7a-65a49c422ad2', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_problems_solutions_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d6977af38e07cfee4f8d260e06b27e25c55b41e9c049b3eaeb60477d4959e90'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b53c8a9a-5db7-5905-8b30-0dede417d6ea', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('92a62771-c432-5da0-ab7a-65a49c422ad2', 1), '8d6977af38e07cfee4f8d260e06b27e25c55b41e9c049b3eaeb60477d4959e90',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5e8c0dd4b282ac4d03bf76ee93fac4ec30a03af345dc716341487d03622d3d65.mp3', 3004, '2026-09-13 05:55:04.891744', '9a53b34fcaf9e0d4b4bc5e29cb8f42d3bc0ce1b5fedc59ef0d4f60f2e73c419b', 'validated', '{"audio_key":"5e8c0dd4b282ac4d03bf76ee93fac4ec30a03af345dc716341487d03622d3d65","entity_key":"ex_problems_solutions_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9a53b34fcaf9e0d4b4bc5e29cb8f42d3bc0ce1b5fedc59ef0d4f60f2e73c419b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5e8c0dd4b282ac4d03bf76ee93fac4ec30a03af345dc716341487d03622d3d65.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_telling_stories_05 -> audio/generated/de-DE/utterances/6dbe0c3be93b2ba6bcfa788e93d3d2feda5466ae7f56691a4a929e9c8eaf5376.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6953509d-0ec4-56b8-b0a0-f814aa03a59e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_telling_stories_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9c41f6989d44d5798073844ef4e5ff764b08f29d7fd2f1e0e3c5d5e971eee320'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b01417df-5642-5ef1-ad9b-c3fd0dc527f8', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6953509d-0ec4-56b8-b0a0-f814aa03a59e', 1), '9c41f6989d44d5798073844ef4e5ff764b08f29d7fd2f1e0e3c5d5e971eee320',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/6dbe0c3be93b2ba6bcfa788e93d3d2feda5466ae7f56691a4a929e9c8eaf5376.mp3', 3186, '2026-09-13 05:55:06.126989', 'c5666b1ab952f42d1b656220f3d72a6e9d2b2808580fd84fe9c267e7f9cc6561', 'validated', '{"audio_key":"6dbe0c3be93b2ba6bcfa788e93d3d2feda5466ae7f56691a4a929e9c8eaf5376","entity_key":"u_telling_stories_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c5666b1ab952f42d1b656220f3d72a6e9d2b2808580fd84fe9c267e7f9cc6561","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/6dbe0c3be93b2ba6bcfa788e93d3d2feda5466ae7f56691a4a929e9c8eaf5376.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_telling_stories_03_listen -> audio/generated/de-DE/utterances/6dbe0c3be93b2ba6bcfa788e93d3d2feda5466ae7f56691a4a929e9c8eaf5376.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('d52b353d-b0fd-5870-8aea-09e1e76f8f2d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_telling_stories_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9c41f6989d44d5798073844ef4e5ff764b08f29d7fd2f1e0e3c5d5e971eee320'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c17d89ae-494a-51ee-bcd5-1cbd930baf4e', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('d52b353d-b0fd-5870-8aea-09e1e76f8f2d', 1), '9c41f6989d44d5798073844ef4e5ff764b08f29d7fd2f1e0e3c5d5e971eee320',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/6dbe0c3be93b2ba6bcfa788e93d3d2feda5466ae7f56691a4a929e9c8eaf5376.mp3', 3186, '2026-09-13 05:55:06.126989', 'c5666b1ab952f42d1b656220f3d72a6e9d2b2808580fd84fe9c267e7f9cc6561', 'validated', '{"audio_key":"6dbe0c3be93b2ba6bcfa788e93d3d2feda5466ae7f56691a4a929e9c8eaf5376","entity_key":"ex_telling_stories_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c5666b1ab952f42d1b656220f3d72a6e9d2b2808580fd84fe9c267e7f9cc6561","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/6dbe0c3be93b2ba6bcfa788e93d3d2feda5466ae7f56691a4a929e9c8eaf5376.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_telling_stories_04 -> audio/generated/de-DE/utterances/738e8a256e6c577d5f0e548c8ee9f76ba7358ae077c79d5bb275f84566e7acce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('adb031df-6010-5223-92a8-006e721c7573', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_telling_stories_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '77efb81fe04b1f4e5cbf0b8ce6248b56d1b5965908304301ed1a2e2bc8012b43'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b255e272-4ce4-544b-b489-de32c7711402', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('adb031df-6010-5223-92a8-006e721c7573', 1), '77efb81fe04b1f4e5cbf0b8ce6248b56d1b5965908304301ed1a2e2bc8012b43',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/738e8a256e6c577d5f0e548c8ee9f76ba7358ae077c79d5bb275f84566e7acce.mp3', 3343, '2026-09-13 05:55:06.299209', '4021568a4df74ffbc5bab4eca213b94dc5a8f2cdcff16c49e953438badb24db5', 'validated', '{"audio_key":"738e8a256e6c577d5f0e548c8ee9f76ba7358ae077c79d5bb275f84566e7acce","entity_key":"u_telling_stories_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4021568a4df74ffbc5bab4eca213b94dc5a8f2cdcff16c49e953438badb24db5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/738e8a256e6c577d5f0e548c8ee9f76ba7358ae077c79d5bb275f84566e7acce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_travel_experiences_05 -> audio/generated/de-DE/utterances/7944057da7441b29c763cf7781876d07f00b6af2036d45019f8645e7c308dc9b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('311be14c-b341-5ce7-b8ea-c22469dccd0b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_travel_experiences_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '42e9617efc15fff06ae885e1a7d3e6b5649c54c96e7dab66f0d5961644176e30'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('649d211e-dcae-5e55-aaaa-0e1e80fa3ad9', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('311be14c-b341-5ce7-b8ea-c22469dccd0b', 1), '42e9617efc15fff06ae885e1a7d3e6b5649c54c96e7dab66f0d5961644176e30',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/7944057da7441b29c763cf7781876d07f00b6af2036d45019f8645e7c308dc9b.mp3', 3186, '2026-09-13 05:55:07.300913', 'f90a6701314b7020f427c256c3ce020430d1c260964ae7e7fd2f2f119cf09d91', 'validated', '{"audio_key":"7944057da7441b29c763cf7781876d07f00b6af2036d45019f8645e7c308dc9b","entity_key":"u_travel_experiences_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f90a6701314b7020f427c256c3ce020430d1c260964ae7e7fd2f2f119cf09d91","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/7944057da7441b29c763cf7781876d07f00b6af2036d45019f8645e7c308dc9b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_travel_experiences_03_listen -> audio/generated/de-DE/utterances/7944057da7441b29c763cf7781876d07f00b6af2036d45019f8645e7c308dc9b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('0c550aba-06ff-5af7-ba72-df9b097258ce', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_travel_experiences_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '42e9617efc15fff06ae885e1a7d3e6b5649c54c96e7dab66f0d5961644176e30'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6c43161c-3020-5024-8981-69e7d2ada96d', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('0c550aba-06ff-5af7-ba72-df9b097258ce', 1), '42e9617efc15fff06ae885e1a7d3e6b5649c54c96e7dab66f0d5961644176e30',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/7944057da7441b29c763cf7781876d07f00b6af2036d45019f8645e7c308dc9b.mp3', 3186, '2026-09-13 05:55:07.300913', 'f90a6701314b7020f427c256c3ce020430d1c260964ae7e7fd2f2f119cf09d91', 'validated', '{"audio_key":"7944057da7441b29c763cf7781876d07f00b6af2036d45019f8645e7c308dc9b","entity_key":"ex_travel_experiences_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f90a6701314b7020f427c256c3ce020430d1c260964ae7e7fd2f2f119cf09d91","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/7944057da7441b29c763cf7781876d07f00b6af2036d45019f8645e7c308dc9b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_study_goals_01 -> audio/generated/de-DE/utterances/8cb0f78c7c807fd59a33b180a5f7c0d3e9a789274f85ff9bf18af4700337d232.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6ad04458-7252-5cf0-8f43-989d0060a9de', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_study_goals_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9bc9bd2fe746807e4a68eb1a9d25c816a90ce4576a15e070bf564099f4a9a221'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a8f22a6b-a7fb-56b3-887c-e48383c6101f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6ad04458-7252-5cf0-8f43-989d0060a9de', 1), '9bc9bd2fe746807e4a68eb1a9d25c816a90ce4576a15e070bf564099f4a9a221',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8cb0f78c7c807fd59a33b180a5f7c0d3e9a789274f85ff9bf18af4700337d232.mp3', 2768, '2026-09-13 05:55:07.411308', '7dd727076ba176c0781dc60e5548f0e060cc69ea1f4f4fca3ede8a74b2245305', 'validated', '{"audio_key":"8cb0f78c7c807fd59a33b180a5f7c0d3e9a789274f85ff9bf18af4700337d232","entity_key":"u_study_goals_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7dd727076ba176c0781dc60e5548f0e060cc69ea1f4f4fca3ede8a74b2245305","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8cb0f78c7c807fd59a33b180a5f7c0d3e9a789274f85ff9bf18af4700337d232.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_study_goals_01_listen -> audio/generated/de-DE/utterances/8cb0f78c7c807fd59a33b180a5f7c0d3e9a789274f85ff9bf18af4700337d232.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('3251721e-f728-5e7e-be67-efa2c407773c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_study_goals_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9bc9bd2fe746807e4a68eb1a9d25c816a90ce4576a15e070bf564099f4a9a221'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('851f89b2-3690-5af5-99c6-32fdc2fa6901', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('3251721e-f728-5e7e-be67-efa2c407773c', 1), '9bc9bd2fe746807e4a68eb1a9d25c816a90ce4576a15e070bf564099f4a9a221',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8cb0f78c7c807fd59a33b180a5f7c0d3e9a789274f85ff9bf18af4700337d232.mp3', 2768, '2026-09-13 05:55:07.411308', '7dd727076ba176c0781dc60e5548f0e060cc69ea1f4f4fca3ede8a74b2245305', 'validated', '{"audio_key":"8cb0f78c7c807fd59a33b180a5f7c0d3e9a789274f85ff9bf18af4700337d232","entity_key":"ex_study_goals_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7dd727076ba176c0781dc60e5548f0e060cc69ea1f4f4fca3ede8a74b2245305","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8cb0f78c7c807fd59a33b180a5f7c0d3e9a789274f85ff9bf18af4700337d232.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_neighborhood_community_06 -> audio/generated/de-DE/utterances/91806a2a2f0406913fd1c4132b9b889340185178219194a1aaf9713d4170a104.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('06980b19-a470-5cdf-9f2d-8483c587b1b3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_neighborhood_community_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7ccb1973f60f9f653b10ef4786fa7d8c3faa9da040d37fdb3ca74c4fbc086795'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4a3e3e94-6276-5593-825f-07ae050b352a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('06980b19-a470-5cdf-9f2d-8483c587b1b3', 1), '7ccb1973f60f9f653b10ef4786fa7d8c3faa9da040d37fdb3ca74c4fbc086795',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/91806a2a2f0406913fd1c4132b9b889340185178219194a1aaf9713d4170a104.mp3', 3840, '2026-09-13 05:55:08.549452', 'cfb2ac1765d7e3684ab507f774669787bd36db3f467bf770f8733e30674dc190', 'validated', '{"audio_key":"91806a2a2f0406913fd1c4132b9b889340185178219194a1aaf9713d4170a104","entity_key":"u_neighborhood_community_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cfb2ac1765d7e3684ab507f774669787bd36db3f467bf770f8733e30674dc190","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/91806a2a2f0406913fd1c4132b9b889340185178219194a1aaf9713d4170a104.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_agree_disagree_03 -> audio/generated/de-DE/utterances/93674d414d51d0c2434d02a505474b5cd8599046c6cba7f72f8ee89d0ef09972.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('056f4427-fe45-5736-a46f-5da19f87e67e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_agree_disagree_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ad86673afdeeed0e338aa40947e7e9250039a21347651e27ede74e7ea2dabdf9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ef471e20-3552-5c16-b4f9-e45aa5747aa2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('056f4427-fe45-5736-a46f-5da19f87e67e', 1), 'ad86673afdeeed0e338aa40947e7e9250039a21347651e27ede74e7ea2dabdf9',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/93674d414d51d0c2434d02a505474b5cd8599046c6cba7f72f8ee89d0ef09972.mp3', 3944, '2026-09-13 05:55:08.666127', '2572366e39950ff2ed177b5975d21fc270f90431fe8bcb539c4cbff59dfbe453', 'validated', '{"audio_key":"93674d414d51d0c2434d02a505474b5cd8599046c6cba7f72f8ee89d0ef09972","entity_key":"u_agree_disagree_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2572366e39950ff2ed177b5975d21fc270f90431fe8bcb539c4cbff59dfbe453","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/93674d414d51d0c2434d02a505474b5cd8599046c6cba7f72f8ee89d0ef09972.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_agree_disagree_02_listen -> audio/generated/de-DE/utterances/93674d414d51d0c2434d02a505474b5cd8599046c6cba7f72f8ee89d0ef09972.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('84c2edfb-beab-5ca0-9431-6976ea388fb3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_agree_disagree_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ad86673afdeeed0e338aa40947e7e9250039a21347651e27ede74e7ea2dabdf9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0e0c02d8-c775-54f5-8cd1-1091fb1a808f', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('84c2edfb-beab-5ca0-9431-6976ea388fb3', 1), 'ad86673afdeeed0e338aa40947e7e9250039a21347651e27ede74e7ea2dabdf9',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/93674d414d51d0c2434d02a505474b5cd8599046c6cba7f72f8ee89d0ef09972.mp3', 3944, '2026-09-13 05:55:08.666127', '2572366e39950ff2ed177b5975d21fc270f90431fe8bcb539c4cbff59dfbe453', 'validated', '{"audio_key":"93674d414d51d0c2434d02a505474b5cd8599046c6cba7f72f8ee89d0ef09972","entity_key":"ex_agree_disagree_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2572366e39950ff2ed177b5975d21fc270f90431fe8bcb539c4cbff59dfbe453","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/93674d414d51d0c2434d02a505474b5cd8599046c6cba7f72f8ee89d0ef09972.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_travel_experiences_03 -> audio/generated/de-DE/utterances/93b377879957339b73ec8d08eeaaacf17b6dbf0dfc1228f683accc93072cafe3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('49dc023b-34c0-5ad6-a8fe-53bdae538e69', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_travel_experiences_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd73d873f43bdc2a6c0e8f19f4a059c2b86df32f59080eac0a1c2e5469336ffa4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('110a0dc2-3711-5eb5-8d6f-f69f58f20f29', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('49dc023b-34c0-5ad6-a8fe-53bdae538e69', 1), 'd73d873f43bdc2a6c0e8f19f4a059c2b86df32f59080eac0a1c2e5469336ffa4',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/93b377879957339b73ec8d08eeaaacf17b6dbf0dfc1228f683accc93072cafe3.mp3', 4179, '2026-09-13 05:55:09.854068', '1fde1974ce9568c8c509c0494a93e5cffd0676b5f467801bbfaad3fda27304d2', 'validated', '{"audio_key":"93b377879957339b73ec8d08eeaaacf17b6dbf0dfc1228f683accc93072cafe3","entity_key":"u_travel_experiences_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1fde1974ce9568c8c509c0494a93e5cffd0676b5f467801bbfaad3fda27304d2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/93b377879957339b73ec8d08eeaaacf17b6dbf0dfc1228f683accc93072cafe3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_travel_experiences_02_listen -> audio/generated/de-DE/utterances/93b377879957339b73ec8d08eeaaacf17b6dbf0dfc1228f683accc93072cafe3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('a84c24de-6449-5b58-91cd-6a7fe6228a54', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_travel_experiences_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd73d873f43bdc2a6c0e8f19f4a059c2b86df32f59080eac0a1c2e5469336ffa4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6b7e4c01-8650-5e4a-b862-bd9445fc3b0c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('a84c24de-6449-5b58-91cd-6a7fe6228a54', 1), 'd73d873f43bdc2a6c0e8f19f4a059c2b86df32f59080eac0a1c2e5469336ffa4',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/93b377879957339b73ec8d08eeaaacf17b6dbf0dfc1228f683accc93072cafe3.mp3', 4179, '2026-09-13 05:55:09.854068', '1fde1974ce9568c8c509c0494a93e5cffd0676b5f467801bbfaad3fda27304d2', 'validated', '{"audio_key":"93b377879957339b73ec8d08eeaaacf17b6dbf0dfc1228f683accc93072cafe3","entity_key":"ex_travel_experiences_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1fde1974ce9568c8c509c0494a93e5cffd0676b5f467801bbfaad3fda27304d2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/93b377879957339b73ec8d08eeaaacf17b6dbf0dfc1228f683accc93072cafe3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_study_goals_05 -> audio/generated/de-DE/utterances/96ac73a246e4d36c8640df61a22dbf3a919f04bb1e647d45c2592cbd36efcc1a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f19b8f13-4964-548d-b4d3-0e74cd0a80fa', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_study_goals_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cb595c92f969833af5bae087a2858ac7828a219f9539d6f953be1384fdee8d92'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1abb8f07-e6cd-564d-9455-7e30484a6db4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f19b8f13-4964-548d-b4d3-0e74cd0a80fa', 1), 'cb595c92f969833af5bae087a2858ac7828a219f9539d6f953be1384fdee8d92',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/96ac73a246e4d36c8640df61a22dbf3a919f04bb1e647d45c2592cbd36efcc1a.mp3', 3578, '2026-09-13 05:55:09.877731', '581b80a1935eb9fd9f3f514a41e922b48b70e8cd515ecba419e817ccad6aaf4f', 'validated', '{"audio_key":"96ac73a246e4d36c8640df61a22dbf3a919f04bb1e647d45c2592cbd36efcc1a","entity_key":"u_study_goals_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"581b80a1935eb9fd9f3f514a41e922b48b70e8cd515ecba419e817ccad6aaf4f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/96ac73a246e4d36c8640df61a22dbf3a919f04bb1e647d45c2592cbd36efcc1a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_study_goals_03_listen -> audio/generated/de-DE/utterances/96ac73a246e4d36c8640df61a22dbf3a919f04bb1e647d45c2592cbd36efcc1a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('b8ecc679-cbe0-56be-be0c-a02832c19d9e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_study_goals_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cb595c92f969833af5bae087a2858ac7828a219f9539d6f953be1384fdee8d92'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b4af9958-3ac2-537d-87ee-d7eaf7cd70d1', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('b8ecc679-cbe0-56be-be0c-a02832c19d9e', 1), 'cb595c92f969833af5bae087a2858ac7828a219f9539d6f953be1384fdee8d92',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/96ac73a246e4d36c8640df61a22dbf3a919f04bb1e647d45c2592cbd36efcc1a.mp3', 3578, '2026-09-13 05:55:09.877731', '581b80a1935eb9fd9f3f514a41e922b48b70e8cd515ecba419e817ccad6aaf4f', 'validated', '{"audio_key":"96ac73a246e4d36c8640df61a22dbf3a919f04bb1e647d45c2592cbd36efcc1a","entity_key":"ex_study_goals_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"581b80a1935eb9fd9f3f514a41e922b48b70e8cd515ecba419e817ccad6aaf4f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/96ac73a246e4d36c8640df61a22dbf3a919f04bb1e647d45c2592cbd36efcc1a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_media_technology_04 -> audio/generated/de-DE/utterances/97cacf6e4458dc094b4aa11a1c36949282b4b80e255478789589c5d1236c92a8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e33a0715-18c4-587d-991c-ed53202c51fd', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_media_technology_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ce5060befae413124716f663358ce70e1550b755e0e8b2d632718211c59c2f95'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('20b060cf-1fea-5635-9e12-8492779a7a48', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e33a0715-18c4-587d-991c-ed53202c51fd', 1), 'ce5060befae413124716f663358ce70e1550b755e0e8b2d632718211c59c2f95',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/97cacf6e4458dc094b4aa11a1c36949282b4b80e255478789589c5d1236c92a8.mp3', 4493, '2026-09-13 05:55:11.230318', '26102efc90e58c0f16805c6463a7ca29ac5243bde83c987e6912549ff3d83c47', 'validated', '{"audio_key":"97cacf6e4458dc094b4aa11a1c36949282b4b80e255478789589c5d1236c92a8","entity_key":"u_media_technology_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"26102efc90e58c0f16805c6463a7ca29ac5243bde83c987e6912549ff3d83c47","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/97cacf6e4458dc094b4aa11a1c36949282b4b80e255478789589c5d1236c92a8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_opinions_reasons_06 -> audio/generated/de-DE/utterances/9dea37ba7b7aeebbec7919d0bc0eba5a300c77880a02e39549518aa8134f9d22.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d11aca6e-afab-5a77-8323-a7a9d06f6212', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_opinions_reasons_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '48e24128777ddfb43a2b29310995b66f0b8ab2840de9d6ea5e753fae32d7a7eb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5c755e1a-cd3d-568b-9ca2-1ab4eb4fa429', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d11aca6e-afab-5a77-8323-a7a9d06f6212', 1), '48e24128777ddfb43a2b29310995b66f0b8ab2840de9d6ea5e753fae32d7a7eb',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9dea37ba7b7aeebbec7919d0bc0eba5a300c77880a02e39549518aa8134f9d22.mp3', 3239, '2026-09-13 05:55:11.065601', '4dc7cd4f65d6626b42e4cc822d582cc965a7bb4cf27102af3244723287f34c7d', 'validated', '{"audio_key":"9dea37ba7b7aeebbec7919d0bc0eba5a300c77880a02e39549518aa8134f9d22","entity_key":"u_opinions_reasons_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4dc7cd4f65d6626b42e4cc822d582cc965a7bb4cf27102af3244723287f34c7d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9dea37ba7b7aeebbec7919d0bc0eba5a300c77880a02e39549518aa8134f9d22.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_problems_solutions_03 -> audio/generated/de-DE/utterances/a4732cc02342d604a3e41eca1512c54aa2c8f232db78e904297f214a008e7b69.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('359246f5-286a-5f2e-9e83-1c6b2f517abb', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_problems_solutions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '507750144112ae2794882d19c73faa87b5f1d3c9c034f502182a23cccb3aebf5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0a576edd-ba47-53c6-af94-2ad60d73ebd1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('359246f5-286a-5f2e-9e83-1c6b2f517abb', 1), '507750144112ae2794882d19c73faa87b5f1d3c9c034f502182a23cccb3aebf5',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a4732cc02342d604a3e41eca1512c54aa2c8f232db78e904297f214a008e7b69.mp3', 2742, '2026-09-13 05:55:12.166749', '4062689ebfe1bb087621350b80d96d29199e0e71f3d35cabb1c53ae89b098bb9', 'validated', '{"audio_key":"a4732cc02342d604a3e41eca1512c54aa2c8f232db78e904297f214a008e7b69","entity_key":"u_problems_solutions_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4062689ebfe1bb087621350b80d96d29199e0e71f3d35cabb1c53ae89b098bb9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a4732cc02342d604a3e41eca1512c54aa2c8f232db78e904297f214a008e7b69.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_problems_solutions_02_listen -> audio/generated/de-DE/utterances/a4732cc02342d604a3e41eca1512c54aa2c8f232db78e904297f214a008e7b69.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c7ce4dbf-9015-52cf-b11b-85698a977c58', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_problems_solutions_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '507750144112ae2794882d19c73faa87b5f1d3c9c034f502182a23cccb3aebf5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ed967cb7-8fcc-5f0b-80d2-a4e42c1ed66e', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c7ce4dbf-9015-52cf-b11b-85698a977c58', 1), '507750144112ae2794882d19c73faa87b5f1d3c9c034f502182a23cccb3aebf5',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a4732cc02342d604a3e41eca1512c54aa2c8f232db78e904297f214a008e7b69.mp3', 2742, '2026-09-13 05:55:12.166749', '4062689ebfe1bb087621350b80d96d29199e0e71f3d35cabb1c53ae89b098bb9', 'validated', '{"audio_key":"a4732cc02342d604a3e41eca1512c54aa2c8f232db78e904297f214a008e7b69","entity_key":"ex_problems_solutions_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4062689ebfe1bb087621350b80d96d29199e0e71f3d35cabb1c53ae89b098bb9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a4732cc02342d604a3e41eca1512c54aa2c8f232db78e904297f214a008e7b69.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_study_goals_02 -> audio/generated/de-DE/utterances/a5a551f2ac426b140c0d000641bf46d89de54f329a767dc907c7d6d6697dfa4e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ffabe385-3c9a-5a06-b24b-018207e74d6c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_study_goals_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3c9493baa85755b262382934a1aa9d9292116a17c51b09d5ca1256d542a8eccb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bd779b72-28a2-5591-9fbc-5d28a705c04e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ffabe385-3c9a-5a06-b24b-018207e74d6c', 1), '3c9493baa85755b262382934a1aa9d9292116a17c51b09d5ca1256d542a8eccb',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a5a551f2ac426b140c0d000641bf46d89de54f329a767dc907c7d6d6697dfa4e.mp3', 3369, '2026-09-13 05:55:12.433506', 'e7bcebcd71eb0a237ca601fd4017a4852f053a87d4c6af5d645ad598734228ae', 'validated', '{"audio_key":"a5a551f2ac426b140c0d000641bf46d89de54f329a767dc907c7d6d6697dfa4e","entity_key":"u_study_goals_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e7bcebcd71eb0a237ca601fd4017a4852f053a87d4c6af5d645ad598734228ae","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a5a551f2ac426b140c0d000641bf46d89de54f329a767dc907c7d6d6697dfa4e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_work_experience_03 -> audio/generated/de-DE/utterances/ab98baae3ee252bb42e8ac8e1e9241be1c022c7762a474510d41e33a11858b99.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1e3908fb-f632-52f8-8b26-e9dac51f9355', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_work_experience_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '395d13c6b5c5a996a0f8c0f77302f1e42a04f6f55e5dc44ba4dd4936e15b3b7a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('abb24224-d6d2-5c55-9336-92b0f481da8d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1e3908fb-f632-52f8-8b26-e9dac51f9355', 1), '395d13c6b5c5a996a0f8c0f77302f1e42a04f6f55e5dc44ba4dd4936e15b3b7a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ab98baae3ee252bb42e8ac8e1e9241be1c022c7762a474510d41e33a11858b99.mp3', 3526, '2026-09-13 05:55:13.373931', 'c84a0c5927ad139ce2da11544f727a7de000d115b89421cbfcb1ef7ac99b581e', 'validated', '{"audio_key":"ab98baae3ee252bb42e8ac8e1e9241be1c022c7762a474510d41e33a11858b99","entity_key":"u_work_experience_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c84a0c5927ad139ce2da11544f727a7de000d115b89421cbfcb1ef7ac99b581e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ab98baae3ee252bb42e8ac8e1e9241be1c022c7762a474510d41e33a11858b99.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_work_experience_02_listen -> audio/generated/de-DE/utterances/ab98baae3ee252bb42e8ac8e1e9241be1c022c7762a474510d41e33a11858b99.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('aa63deb5-5b6d-5159-8e05-686fda4ebdd8', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_work_experience_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '395d13c6b5c5a996a0f8c0f77302f1e42a04f6f55e5dc44ba4dd4936e15b3b7a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('81ef3b4e-2ae8-5621-bbbc-51d4e1e2af48', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('aa63deb5-5b6d-5159-8e05-686fda4ebdd8', 1), '395d13c6b5c5a996a0f8c0f77302f1e42a04f6f55e5dc44ba4dd4936e15b3b7a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ab98baae3ee252bb42e8ac8e1e9241be1c022c7762a474510d41e33a11858b99.mp3', 3526, '2026-09-13 05:55:13.373931', 'c84a0c5927ad139ce2da11544f727a7de000d115b89421cbfcb1ef7ac99b581e', 'validated', '{"audio_key":"ab98baae3ee252bb42e8ac8e1e9241be1c022c7762a474510d41e33a11858b99","entity_key":"ex_work_experience_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c84a0c5927ad139ce2da11544f727a7de000d115b89421cbfcb1ef7ac99b581e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ab98baae3ee252bb42e8ac8e1e9241be1c022c7762a474510d41e33a11858b99.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_travel_experiences_06 -> audio/generated/de-DE/utterances/ac77522fe49cd3551f5c076bd555610f3d007becc74285e3d6bd7f392b145c26.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('757c8838-8b54-5b71-bf6e-69ad031034ac', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_travel_experiences_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3089bfce108c8f19c478d7312e443f0210f6c1ae94cacb17d200476dd3adec1c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b54c723c-fe4d-5ff7-af52-f2f5aa55ee9f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('757c8838-8b54-5b71-bf6e-69ad031034ac', 1), '3089bfce108c8f19c478d7312e443f0210f6c1ae94cacb17d200476dd3adec1c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ac77522fe49cd3551f5c076bd555610f3d007becc74285e3d6bd7f392b145c26.mp3', 3108, '2026-09-13 05:55:13.628490', 'd412af233c99c28305ce0724f9ad1190d88a7510471053cef044e89dd1686ac3', 'validated', '{"audio_key":"ac77522fe49cd3551f5c076bd555610f3d007becc74285e3d6bd7f392b145c26","entity_key":"u_travel_experiences_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d412af233c99c28305ce0724f9ad1190d88a7510471053cef044e89dd1686ac3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ac77522fe49cd3551f5c076bd555610f3d007becc74285e3d6bd7f392b145c26.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_telling_stories_01 -> audio/generated/de-DE/utterances/ad9496793f5ac2aa48b02d5c028288e469b1b7a8dcdb781c677b550a64c4a666.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9453781d-6f31-55aa-a566-cd3899f866dc', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_telling_stories_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '47bed7ae9e57f359e89c4403f35c484f1724c1f48b3e0d7ada643912a2887067'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fd3d8976-d41e-539a-a21b-1877bb0823a5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9453781d-6f31-55aa-a566-cd3899f866dc', 1), '47bed7ae9e57f359e89c4403f35c484f1724c1f48b3e0d7ada643912a2887067',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ad9496793f5ac2aa48b02d5c028288e469b1b7a8dcdb781c677b550a64c4a666.mp3', 2925, '2026-09-13 05:55:14.510105', 'fe5f47c007a85f36137c56e13c2b7390ea1b97929ed875470e198020ca580cba', 'validated', '{"audio_key":"ad9496793f5ac2aa48b02d5c028288e469b1b7a8dcdb781c677b550a64c4a666","entity_key":"u_telling_stories_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fe5f47c007a85f36137c56e13c2b7390ea1b97929ed875470e198020ca580cba","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ad9496793f5ac2aa48b02d5c028288e469b1b7a8dcdb781c677b550a64c4a666.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_telling_stories_01_listen -> audio/generated/de-DE/utterances/ad9496793f5ac2aa48b02d5c028288e469b1b7a8dcdb781c677b550a64c4a666.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ad78afa7-4d37-509f-a6b0-c766fc71b5a2', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_telling_stories_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '47bed7ae9e57f359e89c4403f35c484f1724c1f48b3e0d7ada643912a2887067'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9c4a21e6-e085-5da3-97a0-70146fa4c5e6', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ad78afa7-4d37-509f-a6b0-c766fc71b5a2', 1), '47bed7ae9e57f359e89c4403f35c484f1724c1f48b3e0d7ada643912a2887067',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ad9496793f5ac2aa48b02d5c028288e469b1b7a8dcdb781c677b550a64c4a666.mp3', 2925, '2026-09-13 05:55:14.510105', 'fe5f47c007a85f36137c56e13c2b7390ea1b97929ed875470e198020ca580cba', 'validated', '{"audio_key":"ad9496793f5ac2aa48b02d5c028288e469b1b7a8dcdb781c677b550a64c4a666","entity_key":"ex_telling_stories_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fe5f47c007a85f36137c56e13c2b7390ea1b97929ed875470e198020ca580cba","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ad9496793f5ac2aa48b02d5c028288e469b1b7a8dcdb781c677b550a64c4a666.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_travel_experiences_02 -> audio/generated/de-DE/utterances/b0490a94e2ae2a09781325f58ca98ea0b575fb8f0e52ea9d05aa66390358228f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('79e53166-9ff8-54ab-a556-b23c54097552', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_travel_experiences_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd5a3f9a3edb4b9becd8ecd47171d5347ccba4e63ade651108536d590299570b7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('370d177e-2a56-55d7-94a3-7cc3971e0776', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('79e53166-9ff8-54ab-a556-b23c54097552', 1), 'd5a3f9a3edb4b9becd8ecd47171d5347ccba4e63ade651108536d590299570b7',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b0490a94e2ae2a09781325f58ca98ea0b575fb8f0e52ea9d05aa66390358228f.mp3', 3343, '2026-09-13 05:55:14.844367', '583842a9cc65f8c2ca6d8229e723be3be39e73645608a9d9120403c54509d116', 'validated', '{"audio_key":"b0490a94e2ae2a09781325f58ca98ea0b575fb8f0e52ea9d05aa66390358228f","entity_key":"u_travel_experiences_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"583842a9cc65f8c2ca6d8229e723be3be39e73645608a9d9120403c54509d116","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b0490a94e2ae2a09781325f58ca98ea0b575fb8f0e52ea9d05aa66390358228f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_telling_stories_03 -> audio/generated/de-DE/utterances/b0bc91a8d2bf89293a10a74c58e0e81e6862bbc90ab7e7c66c6b073411512254.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7bed4554-28cf-57cc-8be7-75aadddec7f3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_telling_stories_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '82e7bdd8f036daacced334f46766b4da77e139b210cd374af08948631be295d2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c3737ad2-11c8-51bb-8405-cd3402d23cfd', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7bed4554-28cf-57cc-8be7-75aadddec7f3', 1), '82e7bdd8f036daacced334f46766b4da77e139b210cd374af08948631be295d2',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b0bc91a8d2bf89293a10a74c58e0e81e6862bbc90ab7e7c66c6b073411512254.mp3', 2638, '2026-09-13 05:55:15.632554', '5b30c007efe0904fe3f895f65d8c572606efacb852192d9c887a71407ae8ac30', 'validated', '{"audio_key":"b0bc91a8d2bf89293a10a74c58e0e81e6862bbc90ab7e7c66c6b073411512254","entity_key":"u_telling_stories_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5b30c007efe0904fe3f895f65d8c572606efacb852192d9c887a71407ae8ac30","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b0bc91a8d2bf89293a10a74c58e0e81e6862bbc90ab7e7c66c6b073411512254.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_telling_stories_02_listen -> audio/generated/de-DE/utterances/b0bc91a8d2bf89293a10a74c58e0e81e6862bbc90ab7e7c66c6b073411512254.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('a19d4507-48a1-55aa-8ea3-049e7b1cb121', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_telling_stories_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '82e7bdd8f036daacced334f46766b4da77e139b210cd374af08948631be295d2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('72e241d4-0a69-54a0-bc1a-ce43cfacd15b', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('a19d4507-48a1-55aa-8ea3-049e7b1cb121', 1), '82e7bdd8f036daacced334f46766b4da77e139b210cd374af08948631be295d2',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b0bc91a8d2bf89293a10a74c58e0e81e6862bbc90ab7e7c66c6b073411512254.mp3', 2638, '2026-09-13 05:55:15.632554', '5b30c007efe0904fe3f895f65d8c572606efacb852192d9c887a71407ae8ac30', 'validated', '{"audio_key":"b0bc91a8d2bf89293a10a74c58e0e81e6862bbc90ab7e7c66c6b073411512254","entity_key":"ex_telling_stories_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5b30c007efe0904fe3f895f65d8c572606efacb852192d9c887a71407ae8ac30","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b0bc91a8d2bf89293a10a74c58e0e81e6862bbc90ab7e7c66c6b073411512254.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_work_experience_05 -> audio/generated/de-DE/utterances/b940a8b8beb4ebb1ed17881c53352ef637dc5779fa1f439914b8a9fc6d2c53dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3ad54e08-8edd-5446-9103-786f65726a1c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_work_experience_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9284ac0b4728e296fb15486e09526c58c0e6db38366a4617f674bc850cea32b6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2df48d63-d329-5279-a16c-8cf02c87d941', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3ad54e08-8edd-5446-9103-786f65726a1c', 1), '9284ac0b4728e296fb15486e09526c58c0e6db38366a4617f674bc850cea32b6',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b940a8b8beb4ebb1ed17881c53352ef637dc5779fa1f439914b8a9fc6d2c53dd.mp3', 2768, '2026-09-13 05:55:15.993655', 'ca54e5b1ad19c3eced4bde579abca5d5f64189d1c703cbc65e55915ef53acf9f', 'validated', '{"audio_key":"b940a8b8beb4ebb1ed17881c53352ef637dc5779fa1f439914b8a9fc6d2c53dd","entity_key":"u_work_experience_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ca54e5b1ad19c3eced4bde579abca5d5f64189d1c703cbc65e55915ef53acf9f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b940a8b8beb4ebb1ed17881c53352ef637dc5779fa1f439914b8a9fc6d2c53dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_work_experience_03_listen -> audio/generated/de-DE/utterances/b940a8b8beb4ebb1ed17881c53352ef637dc5779fa1f439914b8a9fc6d2c53dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('3b641ac5-43a1-5028-9ee3-58623f8606dc', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_work_experience_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9284ac0b4728e296fb15486e09526c58c0e6db38366a4617f674bc850cea32b6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('45144511-365c-5745-85e7-80333ae2b994', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('3b641ac5-43a1-5028-9ee3-58623f8606dc', 1), '9284ac0b4728e296fb15486e09526c58c0e6db38366a4617f674bc850cea32b6',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b940a8b8beb4ebb1ed17881c53352ef637dc5779fa1f439914b8a9fc6d2c53dd.mp3', 2768, '2026-09-13 05:55:15.993655', 'ca54e5b1ad19c3eced4bde579abca5d5f64189d1c703cbc65e55915ef53acf9f', 'validated', '{"audio_key":"b940a8b8beb4ebb1ed17881c53352ef637dc5779fa1f439914b8a9fc6d2c53dd","entity_key":"ex_work_experience_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ca54e5b1ad19c3eced4bde579abca5d5f64189d1c703cbc65e55915ef53acf9f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b940a8b8beb4ebb1ed17881c53352ef637dc5779fa1f439914b8a9fc6d2c53dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_problems_solutions_02 -> audio/generated/de-DE/utterances/c080285c03733228f7203e6d89d39bbadeae66f1879a1be5043e9c5e27b0b74f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d37916fe-4fa5-584c-b952-8a1e78d40308', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_problems_solutions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fc64758fb9ffd9584e62e626a4612455afb89e914ae8969e35703839d1a7b857'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('53f97e23-ce88-51c6-9eae-716abb547c20', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d37916fe-4fa5-584c-b952-8a1e78d40308', 1), 'fc64758fb9ffd9584e62e626a4612455afb89e914ae8969e35703839d1a7b857',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c080285c03733228f7203e6d89d39bbadeae66f1879a1be5043e9c5e27b0b74f.mp3', 3709, '2026-09-13 05:55:16.874926', '1ca8cc7e4f47e42b39059694d380d7f649e4001fa5c2492cf7d1709fbeec2990', 'validated', '{"audio_key":"c080285c03733228f7203e6d89d39bbadeae66f1879a1be5043e9c5e27b0b74f","entity_key":"u_problems_solutions_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1ca8cc7e4f47e42b39059694d380d7f649e4001fa5c2492cf7d1709fbeec2990","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c080285c03733228f7203e6d89d39bbadeae66f1879a1be5043e9c5e27b0b74f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_study_goals_04 -> audio/generated/de-DE/utterances/c11c91027e5b0ed186672f8683f7659d6987f6f9166e2be9bc06992454d681fe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('363ad904-2b42-5ec3-a9a4-83d994ef0221', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_study_goals_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0d5bb94160c6660feab8476f64c7314cec04a66b03b4bb98a2d35b10007dce0c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('80906668-623a-58e5-9ae4-7a751d2f5ef6', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('363ad904-2b42-5ec3-a9a4-83d994ef0221', 1), '0d5bb94160c6660feab8476f64c7314cec04a66b03b4bb98a2d35b10007dce0c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c11c91027e5b0ed186672f8683f7659d6987f6f9166e2be9bc06992454d681fe.mp3', 3343, '2026-09-13 05:55:17.164878', '5bcce6d9382497dce3917ad35f4197f118c1b98029e3b337fe31ee471143415b', 'validated', '{"audio_key":"c11c91027e5b0ed186672f8683f7659d6987f6f9166e2be9bc06992454d681fe","entity_key":"u_study_goals_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5bcce6d9382497dce3917ad35f4197f118c1b98029e3b337fe31ee471143415b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c11c91027e5b0ed186672f8683f7659d6987f6f9166e2be9bc06992454d681fe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_neighborhood_community_05 -> audio/generated/de-DE/utterances/c81118142b8d16e06b5c0d49c65b547463332088b2275112fd01fd6d417a04ac.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f47467e7-53aa-5b14-88d2-5dba46120eca', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_neighborhood_community_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4159a5e04bc9de86316302abe268f4ac048ad52a1a3e92b2ad445ba492091e06'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4702aa51-fad9-5790-b669-ef67d0eeade2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f47467e7-53aa-5b14-88d2-5dba46120eca', 1), '4159a5e04bc9de86316302abe268f4ac048ad52a1a3e92b2ad445ba492091e06',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c81118142b8d16e06b5c0d49c65b547463332088b2275112fd01fd6d417a04ac.mp3', 3709, '2026-09-13 05:55:18.130443', '8913e9e1d5961f778fb22ecc944df2d6ca958d92a7b98c9e8d045ee973cb4586', 'validated', '{"audio_key":"c81118142b8d16e06b5c0d49c65b547463332088b2275112fd01fd6d417a04ac","entity_key":"u_neighborhood_community_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8913e9e1d5961f778fb22ecc944df2d6ca958d92a7b98c9e8d045ee973cb4586","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c81118142b8d16e06b5c0d49c65b547463332088b2275112fd01fd6d417a04ac.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_neighborhood_community_03_listen -> audio/generated/de-DE/utterances/c81118142b8d16e06b5c0d49c65b547463332088b2275112fd01fd6d417a04ac.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('8ce1f19e-56b5-5429-944a-a471c177862c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_neighborhood_community_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4159a5e04bc9de86316302abe268f4ac048ad52a1a3e92b2ad445ba492091e06'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9e17d5c1-2af2-5dfa-a94b-fda721c96dcf', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('8ce1f19e-56b5-5429-944a-a471c177862c', 1), '4159a5e04bc9de86316302abe268f4ac048ad52a1a3e92b2ad445ba492091e06',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c81118142b8d16e06b5c0d49c65b547463332088b2275112fd01fd6d417a04ac.mp3', 3709, '2026-09-13 05:55:18.130443', '8913e9e1d5961f778fb22ecc944df2d6ca958d92a7b98c9e8d045ee973cb4586', 'validated', '{"audio_key":"c81118142b8d16e06b5c0d49c65b547463332088b2275112fd01fd6d417a04ac","entity_key":"ex_neighborhood_community_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8913e9e1d5961f778fb22ecc944df2d6ca958d92a7b98c9e8d045ee973cb4586","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c81118142b8d16e06b5c0d49c65b547463332088b2275112fd01fd6d417a04ac.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_opinions_reasons_04 -> audio/generated/de-DE/utterances/cbf249366de9680f579172791dcbf00db3e8158992ae6e8401221b0d4303e8d1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9ed86c14-86c3-5ab5-88c7-5d115294b8ba', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_opinions_reasons_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '57055b3593aed19c61ada342a7239b466430f609d22b0cf56f43e78b28dc8bcb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('220099ac-9ff5-5d37-8c41-fcfbeecd13ad', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9ed86c14-86c3-5ab5-88c7-5d115294b8ba', 1), '57055b3593aed19c61ada342a7239b466430f609d22b0cf56f43e78b28dc8bcb',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/cbf249366de9680f579172791dcbf00db3e8158992ae6e8401221b0d4303e8d1.mp3', 3422, '2026-09-13 05:55:18.351804', 'bf8ac5a6cc985d0313ac2f1c6a72cfcbb66f66349f7a65083ed7f4b504fe23f2', 'validated', '{"audio_key":"cbf249366de9680f579172791dcbf00db3e8158992ae6e8401221b0d4303e8d1","entity_key":"u_opinions_reasons_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bf8ac5a6cc985d0313ac2f1c6a72cfcbb66f66349f7a65083ed7f4b504fe23f2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/cbf249366de9680f579172791dcbf00db3e8158992ae6e8401221b0d4303e8d1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_health_habits_05 -> audio/generated/de-DE/utterances/cc2af49a37454446c1cf149711d9a969dff76be092d83d3810f6d6d449483e69.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('16e09d19-a1d5-5644-a70c-4e7168174e0f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_health_habits_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '623c4e34fabe94f921424f69d4d1c7539e63fca8e10f35dae831e411d0f118a2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b4d5773a-5f28-5176-9c89-b084e95e025a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('16e09d19-a1d5-5644-a70c-4e7168174e0f', 1), '623c4e34fabe94f921424f69d4d1c7539e63fca8e10f35dae831e411d0f118a2',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/cc2af49a37454446c1cf149711d9a969dff76be092d83d3810f6d6d449483e69.mp3', 3709, '2026-09-13 05:55:19.375967', '6849c49065e4eb8a106ef63f5a96f232194e58d8d25c2e31e24a72bbf8df7b9e', 'validated', '{"audio_key":"cc2af49a37454446c1cf149711d9a969dff76be092d83d3810f6d6d449483e69","entity_key":"u_health_habits_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6849c49065e4eb8a106ef63f5a96f232194e58d8d25c2e31e24a72bbf8df7b9e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/cc2af49a37454446c1cf149711d9a969dff76be092d83d3810f6d6d449483e69.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_health_habits_03_listen -> audio/generated/de-DE/utterances/cc2af49a37454446c1cf149711d9a969dff76be092d83d3810f6d6d449483e69.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('b1b98cf9-bf0e-53ea-b0fa-85f95d5e0bed', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_health_habits_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '623c4e34fabe94f921424f69d4d1c7539e63fca8e10f35dae831e411d0f118a2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('01919d14-0c86-5c75-84ae-9c603a1b00bf', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('b1b98cf9-bf0e-53ea-b0fa-85f95d5e0bed', 1), '623c4e34fabe94f921424f69d4d1c7539e63fca8e10f35dae831e411d0f118a2',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/cc2af49a37454446c1cf149711d9a969dff76be092d83d3810f6d6d449483e69.mp3', 3709, '2026-09-13 05:55:19.375967', '6849c49065e4eb8a106ef63f5a96f232194e58d8d25c2e31e24a72bbf8df7b9e', 'validated', '{"audio_key":"cc2af49a37454446c1cf149711d9a969dff76be092d83d3810f6d6d449483e69","entity_key":"ex_health_habits_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6849c49065e4eb8a106ef63f5a96f232194e58d8d25c2e31e24a72bbf8df7b9e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/cc2af49a37454446c1cf149711d9a969dff76be092d83d3810f6d6d449483e69.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_opinions_reasons_03 -> audio/generated/de-DE/utterances/ceea3618b5e2b482b9c1da4c2b1102947397e5a815bc4dfa86b6857c4effb1d7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1cb40b10-7aec-51cc-9b4f-37c082eb8e43', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_opinions_reasons_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '78b829a2588781566b442d7aa0bfa0fcb6d0b39746eba9efded29724e168e9ea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dc297ab7-ca21-5b92-944f-8f295100e1ee', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1cb40b10-7aec-51cc-9b4f-37c082eb8e43', 1), '78b829a2588781566b442d7aa0bfa0fcb6d0b39746eba9efded29724e168e9ea',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ceea3618b5e2b482b9c1da4c2b1102947397e5a815bc4dfa86b6857c4effb1d7.mp3', 4440, '2026-09-13 05:55:19.730876', '5f5adaf877bb408da5418e92f6506be9cf84c36083d1f074b76db04fb0d5845b', 'validated', '{"audio_key":"ceea3618b5e2b482b9c1da4c2b1102947397e5a815bc4dfa86b6857c4effb1d7","entity_key":"u_opinions_reasons_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5f5adaf877bb408da5418e92f6506be9cf84c36083d1f074b76db04fb0d5845b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ceea3618b5e2b482b9c1da4c2b1102947397e5a815bc4dfa86b6857c4effb1d7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_opinions_reasons_02_listen -> audio/generated/de-DE/utterances/ceea3618b5e2b482b9c1da4c2b1102947397e5a815bc4dfa86b6857c4effb1d7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('fa7d1ab1-8c1d-5644-94bb-9993f0fb4c5e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_opinions_reasons_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '78b829a2588781566b442d7aa0bfa0fcb6d0b39746eba9efded29724e168e9ea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fa485541-9cd6-59d5-b5fb-5f27e9ecb5b3', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('fa7d1ab1-8c1d-5644-94bb-9993f0fb4c5e', 1), '78b829a2588781566b442d7aa0bfa0fcb6d0b39746eba9efded29724e168e9ea',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ceea3618b5e2b482b9c1da4c2b1102947397e5a815bc4dfa86b6857c4effb1d7.mp3', 4440, '2026-09-13 05:55:19.730876', '5f5adaf877bb408da5418e92f6506be9cf84c36083d1f074b76db04fb0d5845b', 'validated', '{"audio_key":"ceea3618b5e2b482b9c1da4c2b1102947397e5a815bc4dfa86b6857c4effb1d7","entity_key":"ex_opinions_reasons_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5f5adaf877bb408da5418e92f6506be9cf84c36083d1f074b76db04fb0d5845b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ceea3618b5e2b482b9c1da4c2b1102947397e5a815bc4dfa86b6857c4effb1d7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_health_habits_02 -> audio/generated/de-DE/utterances/d1021637434a351ef9e63c8180a1a2c1ba76cd5f5f757a6a7e3d456908ade27e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8960301c-0531-56c3-b4c6-0c7f93f8c8a7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_health_habits_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0ea59d01cd4f81ad92a32fe56e0b9ee9c6f18160f4d8ff3fd9e9987db626234f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dc6dc76e-400a-572f-9439-7ebd7a811f8c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8960301c-0531-56c3-b4c6-0c7f93f8c8a7', 1), '0ea59d01cd4f81ad92a32fe56e0b9ee9c6f18160f4d8ff3fd9e9987db626234f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d1021637434a351ef9e63c8180a1a2c1ba76cd5f5f757a6a7e3d456908ade27e.mp3', 3369, '2026-09-13 05:55:20.566825', 'd685f1ee905ccc6284c6ab65e44130e3de28ea39ce53823042fe0ec7373f2f82', 'validated', '{"audio_key":"d1021637434a351ef9e63c8180a1a2c1ba76cd5f5f757a6a7e3d456908ade27e","entity_key":"u_health_habits_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d685f1ee905ccc6284c6ab65e44130e3de28ea39ce53823042fe0ec7373f2f82","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d1021637434a351ef9e63c8180a1a2c1ba76cd5f5f757a6a7e3d456908ade27e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_health_habits_01 -> audio/generated/de-DE/utterances/d5f7079e76e23251ce3229c2cf28c510796bd5b85d1ac282478d40811e96e3c7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f1d5ec8a-055b-58f6-b08f-2b32ebedc876', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_health_habits_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1dc510c9aef157fe107208289af07d1be3343ac777fd4a240bcbcb9102950178'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e70dd6cc-88ab-516d-bb99-f4a5294d031f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f1d5ec8a-055b-58f6-b08f-2b32ebedc876', 1), '1dc510c9aef157fe107208289af07d1be3343ac777fd4a240bcbcb9102950178',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d5f7079e76e23251ce3229c2cf28c510796bd5b85d1ac282478d40811e96e3c7.mp3', 4623, '2026-09-13 05:55:21.105370', 'c24ab9fc302604e7deb8ac0ad3e5fe7fa8a23638cfa4f950dc9440a9b0db2bf4', 'validated', '{"audio_key":"d5f7079e76e23251ce3229c2cf28c510796bd5b85d1ac282478d40811e96e3c7","entity_key":"u_health_habits_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c24ab9fc302604e7deb8ac0ad3e5fe7fa8a23638cfa4f950dc9440a9b0db2bf4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d5f7079e76e23251ce3229c2cf28c510796bd5b85d1ac282478d40811e96e3c7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_health_habits_01_listen -> audio/generated/de-DE/utterances/d5f7079e76e23251ce3229c2cf28c510796bd5b85d1ac282478d40811e96e3c7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('49929207-c659-5f2e-af73-86084d36a507', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_health_habits_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1dc510c9aef157fe107208289af07d1be3343ac777fd4a240bcbcb9102950178'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1bc46ac8-5027-5b22-ae77-4cd0a935e79b', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('49929207-c659-5f2e-af73-86084d36a507', 1), '1dc510c9aef157fe107208289af07d1be3343ac777fd4a240bcbcb9102950178',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d5f7079e76e23251ce3229c2cf28c510796bd5b85d1ac282478d40811e96e3c7.mp3', 4623, '2026-09-13 05:55:21.105370', 'c24ab9fc302604e7deb8ac0ad3e5fe7fa8a23638cfa4f950dc9440a9b0db2bf4', 'validated', '{"audio_key":"d5f7079e76e23251ce3229c2cf28c510796bd5b85d1ac282478d40811e96e3c7","entity_key":"ex_health_habits_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c24ab9fc302604e7deb8ac0ad3e5fe7fa8a23638cfa4f950dc9440a9b0db2bf4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d5f7079e76e23251ce3229c2cf28c510796bd5b85d1ac282478d40811e96e3c7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_problems_solutions_01 -> audio/generated/de-DE/utterances/d6d0a85b51ef2921f790cf57816a67e9bb8ce23089ec1d3c4ea9d27226aea789.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4277156c-1829-5580-83ae-85360e3c5488', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_problems_solutions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '180f4775e29dedc0968cef44524ef2b552acdc13477b2ad75cd0d0a47aa14e1f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b4492c70-2b87-523c-8844-bffe6948c461', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4277156c-1829-5580-83ae-85360e3c5488', 1), '180f4775e29dedc0968cef44524ef2b552acdc13477b2ad75cd0d0a47aa14e1f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d6d0a85b51ef2921f790cf57816a67e9bb8ce23089ec1d3c4ea9d27226aea789.mp3', 3160, '2026-09-13 05:55:21.740122', 'c10e5c94360fcc2880d8b57c5cc5783f60065ee77c1059590417e047d8e5e6b4', 'validated', '{"audio_key":"d6d0a85b51ef2921f790cf57816a67e9bb8ce23089ec1d3c4ea9d27226aea789","entity_key":"u_problems_solutions_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c10e5c94360fcc2880d8b57c5cc5783f60065ee77c1059590417e047d8e5e6b4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d6d0a85b51ef2921f790cf57816a67e9bb8ce23089ec1d3c4ea9d27226aea789.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_problems_solutions_01_listen -> audio/generated/de-DE/utterances/d6d0a85b51ef2921f790cf57816a67e9bb8ce23089ec1d3c4ea9d27226aea789.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e5418a4f-5cc0-500f-9cd7-adf37f06534f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_problems_solutions_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '180f4775e29dedc0968cef44524ef2b552acdc13477b2ad75cd0d0a47aa14e1f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('702a1ebd-cc53-5c76-9242-2ebcd9febb1f', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e5418a4f-5cc0-500f-9cd7-adf37f06534f', 1), '180f4775e29dedc0968cef44524ef2b552acdc13477b2ad75cd0d0a47aa14e1f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d6d0a85b51ef2921f790cf57816a67e9bb8ce23089ec1d3c4ea9d27226aea789.mp3', 3160, '2026-09-13 05:55:21.740122', 'c10e5c94360fcc2880d8b57c5cc5783f60065ee77c1059590417e047d8e5e6b4', 'validated', '{"audio_key":"d6d0a85b51ef2921f790cf57816a67e9bb8ce23089ec1d3c4ea9d27226aea789","entity_key":"ex_problems_solutions_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c10e5c94360fcc2880d8b57c5cc5783f60065ee77c1059590417e047d8e5e6b4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d6d0a85b51ef2921f790cf57816a67e9bb8ce23089ec1d3c4ea9d27226aea789.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_study_goals_03 -> audio/generated/de-DE/utterances/d999f2b6c3b79a108ee530048e55b4a6542ff3ce324d223a7a97c4041e4bd0a3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b4ae53ce-86ff-51a9-9f2b-953e62bea992', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_study_goals_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '84dee5edd8dfaf31f45759d32d802908ab66c9ba7a4c8fae9fc32300a3703bbe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ddc4a832-b9ce-56e7-8204-a5a95fff4052', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b4ae53ce-86ff-51a9-9f2b-953e62bea992', 1), '84dee5edd8dfaf31f45759d32d802908ab66c9ba7a4c8fae9fc32300a3703bbe',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d999f2b6c3b79a108ee530048e55b4a6542ff3ce324d223a7a97c4041e4bd0a3.mp3', 3160, '2026-09-13 05:55:22.279586', '370b2d25ade457bf359a960b15218c11ff881e4ff5d669572513dca5f8ed0c52', 'validated', '{"audio_key":"d999f2b6c3b79a108ee530048e55b4a6542ff3ce324d223a7a97c4041e4bd0a3","entity_key":"u_study_goals_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"370b2d25ade457bf359a960b15218c11ff881e4ff5d669572513dca5f8ed0c52","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d999f2b6c3b79a108ee530048e55b4a6542ff3ce324d223a7a97c4041e4bd0a3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_study_goals_02_listen -> audio/generated/de-DE/utterances/d999f2b6c3b79a108ee530048e55b4a6542ff3ce324d223a7a97c4041e4bd0a3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('84c14e4b-7887-5768-b735-4470945e0af3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_study_goals_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '84dee5edd8dfaf31f45759d32d802908ab66c9ba7a4c8fae9fc32300a3703bbe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('702d703a-a900-5e07-85e2-8fd35801c18c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('84c14e4b-7887-5768-b735-4470945e0af3', 1), '84dee5edd8dfaf31f45759d32d802908ab66c9ba7a4c8fae9fc32300a3703bbe',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d999f2b6c3b79a108ee530048e55b4a6542ff3ce324d223a7a97c4041e4bd0a3.mp3', 3160, '2026-09-13 05:55:22.279586', '370b2d25ade457bf359a960b15218c11ff881e4ff5d669572513dca5f8ed0c52', 'validated', '{"audio_key":"d999f2b6c3b79a108ee530048e55b4a6542ff3ce324d223a7a97c4041e4bd0a3","entity_key":"ex_study_goals_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"370b2d25ade457bf359a960b15218c11ff881e4ff5d669572513dca5f8ed0c52","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d999f2b6c3b79a108ee530048e55b4a6542ff3ce324d223a7a97c4041e4bd0a3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_agree_disagree_05 -> audio/generated/de-DE/utterances/dac5a24e8c6ea29bad3fcb3cda8e25f524ae517286cab009a03ee64001a3ab40.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9a067263-0c67-5efb-bfa4-e57f4ee5da97', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_agree_disagree_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'afed6dfbaf5f13fd37c56b99c047c2ee27c7df0fe1d521eca5814c5859b5ead4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a68695e7-0923-50cd-a0c5-73d9ad8a7dd2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9a067263-0c67-5efb-bfa4-e57f4ee5da97', 1), 'afed6dfbaf5f13fd37c56b99c047c2ee27c7df0fe1d521eca5814c5859b5ead4',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/dac5a24e8c6ea29bad3fcb3cda8e25f524ae517286cab009a03ee64001a3ab40.mp3', 3004, '2026-09-13 05:55:22.912205', '8df39f0d4621d6dd32507dbd6493988e4009343a5cfff9b4f462072d53d3267a', 'validated', '{"audio_key":"dac5a24e8c6ea29bad3fcb3cda8e25f524ae517286cab009a03ee64001a3ab40","entity_key":"u_agree_disagree_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8df39f0d4621d6dd32507dbd6493988e4009343a5cfff9b4f462072d53d3267a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/dac5a24e8c6ea29bad3fcb3cda8e25f524ae517286cab009a03ee64001a3ab40.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_agree_disagree_03_listen -> audio/generated/de-DE/utterances/dac5a24e8c6ea29bad3fcb3cda8e25f524ae517286cab009a03ee64001a3ab40.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('446ff7cf-d25b-571f-b4f2-8c6018d5e571', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_agree_disagree_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'afed6dfbaf5f13fd37c56b99c047c2ee27c7df0fe1d521eca5814c5859b5ead4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('385b7f80-ec53-511c-91f6-6307d4938469', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('446ff7cf-d25b-571f-b4f2-8c6018d5e571', 1), 'afed6dfbaf5f13fd37c56b99c047c2ee27c7df0fe1d521eca5814c5859b5ead4',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/dac5a24e8c6ea29bad3fcb3cda8e25f524ae517286cab009a03ee64001a3ab40.mp3', 3004, '2026-09-13 05:55:22.912205', '8df39f0d4621d6dd32507dbd6493988e4009343a5cfff9b4f462072d53d3267a', 'validated', '{"audio_key":"dac5a24e8c6ea29bad3fcb3cda8e25f524ae517286cab009a03ee64001a3ab40","entity_key":"ex_agree_disagree_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8df39f0d4621d6dd32507dbd6493988e4009343a5cfff9b4f462072d53d3267a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/dac5a24e8c6ea29bad3fcb3cda8e25f524ae517286cab009a03ee64001a3ab40.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_opinions_reasons_05 -> audio/generated/de-DE/utterances/db307738a9689da828a80f216b5182228ab55adf08c020a5e947a8b447fa8f51.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e1207f2b-baf8-51fa-ab37-977d9d43158b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_opinions_reasons_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1da354dd77931c17ed3bb42d7b68f92d37fdef361c730f7673696d9f2a8f86dc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2c2fda2a-5c97-55a5-b1b6-582153e3912c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e1207f2b-baf8-51fa-ab37-977d9d43158b', 1), '1da354dd77931c17ed3bb42d7b68f92d37fdef361c730f7673696d9f2a8f86dc',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/db307738a9689da828a80f216b5182228ab55adf08c020a5e947a8b447fa8f51.mp3', 4780, '2026-09-13 05:55:23.648610', '36c878f8a129aa5ee73d290d345696317513dac580fdd88462f498f8e57564f1', 'validated', '{"audio_key":"db307738a9689da828a80f216b5182228ab55adf08c020a5e947a8b447fa8f51","entity_key":"u_opinions_reasons_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"36c878f8a129aa5ee73d290d345696317513dac580fdd88462f498f8e57564f1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/db307738a9689da828a80f216b5182228ab55adf08c020a5e947a8b447fa8f51.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_opinions_reasons_03_listen -> audio/generated/de-DE/utterances/db307738a9689da828a80f216b5182228ab55adf08c020a5e947a8b447fa8f51.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('4152e4b8-eef2-5197-b5b8-910277ea14ab', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_opinions_reasons_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1da354dd77931c17ed3bb42d7b68f92d37fdef361c730f7673696d9f2a8f86dc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('69898bd8-323c-5bfa-bcaf-8bab027cd5f1', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('4152e4b8-eef2-5197-b5b8-910277ea14ab', 1), '1da354dd77931c17ed3bb42d7b68f92d37fdef361c730f7673696d9f2a8f86dc',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/db307738a9689da828a80f216b5182228ab55adf08c020a5e947a8b447fa8f51.mp3', 4780, '2026-09-13 05:55:23.648610', '36c878f8a129aa5ee73d290d345696317513dac580fdd88462f498f8e57564f1', 'validated', '{"audio_key":"db307738a9689da828a80f216b5182228ab55adf08c020a5e947a8b447fa8f51","entity_key":"ex_opinions_reasons_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"36c878f8a129aa5ee73d290d345696317513dac580fdd88462f498f8e57564f1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/db307738a9689da828a80f216b5182228ab55adf08c020a5e947a8b447fa8f51.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_work_experience_01 -> audio/generated/de-DE/utterances/dffc77a2091b3124a102acc6454bf2648778ff4665c09a0c308d70117d0e940f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9102b6ad-ed12-5672-af89-1ee981bfbfff', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_work_experience_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '78a98de2291755c007515dfb4e9ee4b29c446794618d0836bec7c571495d9a60'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a0266ebc-b443-547e-9218-61822ed4acb1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9102b6ad-ed12-5672-af89-1ee981bfbfff', 1), '78a98de2291755c007515dfb4e9ee4b29c446794618d0836bec7c571495d9a60',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/dffc77a2091b3124a102acc6454bf2648778ff4665c09a0c308d70117d0e940f.mp3', 2768, '2026-09-13 05:55:24.055799', 'caf1ef97c4dfc3f53abf97ce4b88cf68316279fe20466d9eba02cf9eeec49e18', 'validated', '{"audio_key":"dffc77a2091b3124a102acc6454bf2648778ff4665c09a0c308d70117d0e940f","entity_key":"u_work_experience_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"caf1ef97c4dfc3f53abf97ce4b88cf68316279fe20466d9eba02cf9eeec49e18","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/dffc77a2091b3124a102acc6454bf2648778ff4665c09a0c308d70117d0e940f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_work_experience_01_listen -> audio/generated/de-DE/utterances/dffc77a2091b3124a102acc6454bf2648778ff4665c09a0c308d70117d0e940f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('9e003c43-d832-56fc-a242-de478db93449', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_work_experience_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '78a98de2291755c007515dfb4e9ee4b29c446794618d0836bec7c571495d9a60'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e07232b4-45ba-5533-82d6-b5948dd92139', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('9e003c43-d832-56fc-a242-de478db93449', 1), '78a98de2291755c007515dfb4e9ee4b29c446794618d0836bec7c571495d9a60',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/dffc77a2091b3124a102acc6454bf2648778ff4665c09a0c308d70117d0e940f.mp3', 2768, '2026-09-13 05:55:24.055799', 'caf1ef97c4dfc3f53abf97ce4b88cf68316279fe20466d9eba02cf9eeec49e18', 'validated', '{"audio_key":"dffc77a2091b3124a102acc6454bf2648778ff4665c09a0c308d70117d0e940f","entity_key":"ex_work_experience_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"caf1ef97c4dfc3f53abf97ce4b88cf68316279fe20466d9eba02cf9eeec49e18","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/dffc77a2091b3124a102acc6454bf2648778ff4665c09a0c308d70117d0e940f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_telling_stories_02 -> audio/generated/de-DE/utterances/e418e1a4c64ab0978e60ab9f81e0ea0f7ac18678a426e91be2d5330ae32e78c3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c852f61e-a4a2-593a-a393-3dd436a73bd1', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_telling_stories_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f38099768bf67cbd7342ad7b93815bd257773f64c1f1c9ea543b4965b679e4d5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('69c26071-1241-5e1a-ba01-dd75734275cb', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c852f61e-a4a2-593a-a393-3dd436a73bd1', 1), 'f38099768bf67cbd7342ad7b93815bd257773f64c1f1c9ea543b4965b679e4d5',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e418e1a4c64ab0978e60ab9f81e0ea0f7ac18678a426e91be2d5330ae32e78c3.mp3', 2690, '2026-09-13 05:55:24.767637', '43ccb11d914839c5928d5aba65d659d5c881582462917c589337b67675fa36d9', 'validated', '{"audio_key":"e418e1a4c64ab0978e60ab9f81e0ea0f7ac18678a426e91be2d5330ae32e78c3","entity_key":"u_telling_stories_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"43ccb11d914839c5928d5aba65d659d5c881582462917c589337b67675fa36d9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e418e1a4c64ab0978e60ab9f81e0ea0f7ac18678a426e91be2d5330ae32e78c3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_health_habits_04 -> audio/generated/de-DE/utterances/e580d05acc9fbc148a6363c20fe547485dd7d1bc2815afa8c0b513fc76be7e86.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0b8a7caf-cff6-56aa-82c7-30b864df8538', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_health_habits_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '96f3f3c871ce877ac322cd371515b32283c8165ee3a8a7a9ce08f42eaaa2ec21'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6f9eb3e2-6815-5af0-a40c-a19a0dd5a18b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0b8a7caf-cff6-56aa-82c7-30b864df8538', 1), '96f3f3c871ce877ac322cd371515b32283c8165ee3a8a7a9ce08f42eaaa2ec21',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e580d05acc9fbc148a6363c20fe547485dd7d1bc2815afa8c0b513fc76be7e86.mp3', 4179, '2026-09-13 05:55:25.338430', 'f7fa80415a6cfdcd99031fcdaa0a3eb514b799a0eda51e760015910da689dd51', 'validated', '{"audio_key":"e580d05acc9fbc148a6363c20fe547485dd7d1bc2815afa8c0b513fc76be7e86","entity_key":"u_health_habits_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f7fa80415a6cfdcd99031fcdaa0a3eb514b799a0eda51e760015910da689dd51","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e580d05acc9fbc148a6363c20fe547485dd7d1bc2815afa8c0b513fc76be7e86.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_agree_disagree_01 -> audio/generated/de-DE/utterances/e79487bb31e7486fd6edec1f2d6c6f133eb1d6c28bb8f95c917accf8d5efef79.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b5527726-82fc-552a-9940-b2f36dfb37b6', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_agree_disagree_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec333a3b36aa0a24fbbd2aa41df4bf17263e0757d9beb96e459706deeb07a31e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8c7411cb-b134-5efa-9d86-d8a4d32faf1b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b5527726-82fc-552a-9940-b2f36dfb37b6', 1), 'ec333a3b36aa0a24fbbd2aa41df4bf17263e0757d9beb96e459706deeb07a31e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e79487bb31e7486fd6edec1f2d6c6f133eb1d6c28bb8f95c917accf8d5efef79.mp3', 2220, '2026-09-13 05:55:25.803475', '421e3239ef085fbd3fc7e8791db29d50b91c9ad796871ecce1abc56f0ac86ec2', 'validated', '{"audio_key":"e79487bb31e7486fd6edec1f2d6c6f133eb1d6c28bb8f95c917accf8d5efef79","entity_key":"u_agree_disagree_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"421e3239ef085fbd3fc7e8791db29d50b91c9ad796871ecce1abc56f0ac86ec2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e79487bb31e7486fd6edec1f2d6c6f133eb1d6c28bb8f95c917accf8d5efef79.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_agree_disagree_01_listen -> audio/generated/de-DE/utterances/e79487bb31e7486fd6edec1f2d6c6f133eb1d6c28bb8f95c917accf8d5efef79.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ec4b97db-3ab8-5a66-948e-baaa814b65fc', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_agree_disagree_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec333a3b36aa0a24fbbd2aa41df4bf17263e0757d9beb96e459706deeb07a31e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c0ba3887-6a4a-5a95-a5a3-9cb5f69f85d6', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ec4b97db-3ab8-5a66-948e-baaa814b65fc', 1), 'ec333a3b36aa0a24fbbd2aa41df4bf17263e0757d9beb96e459706deeb07a31e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e79487bb31e7486fd6edec1f2d6c6f133eb1d6c28bb8f95c917accf8d5efef79.mp3', 2220, '2026-09-13 05:55:25.803475', '421e3239ef085fbd3fc7e8791db29d50b91c9ad796871ecce1abc56f0ac86ec2', 'validated', '{"audio_key":"e79487bb31e7486fd6edec1f2d6c6f133eb1d6c28bb8f95c917accf8d5efef79","entity_key":"ex_agree_disagree_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"421e3239ef085fbd3fc7e8791db29d50b91c9ad796871ecce1abc56f0ac86ec2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e79487bb31e7486fd6edec1f2d6c6f133eb1d6c28bb8f95c917accf8d5efef79.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_travel_experiences_04 -> audio/generated/de-DE/utterances/e91fe3d35eba27f58f4803f60348b5bdc294eb7162c99f074fa411471dac1052.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f66a3cdf-24d3-5a45-b92d-beb1a202467b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_travel_experiences_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0b76fc26da7b6cf60e77bc0a1d9582521511148929b6f1751d6d90d657377a5a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('528072be-5402-5199-bb8f-5e9c9f973779', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f66a3cdf-24d3-5a45-b92d-beb1a202467b', 1), '0b76fc26da7b6cf60e77bc0a1d9582521511148929b6f1751d6d90d657377a5a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e91fe3d35eba27f58f4803f60348b5bdc294eb7162c99f074fa411471dac1052.mp3', 4179, '2026-09-13 05:55:26.610518', 'fd107ecb0141f01b8c4edd1d9558952696bd5d89690514c458d14b081f14c6bb', 'validated', '{"audio_key":"e91fe3d35eba27f58f4803f60348b5bdc294eb7162c99f074fa411471dac1052","entity_key":"u_travel_experiences_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fd107ecb0141f01b8c4edd1d9558952696bd5d89690514c458d14b081f14c6bb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e91fe3d35eba27f58f4803f60348b5bdc294eb7162c99f074fa411471dac1052.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_health_habits_03 -> audio/generated/de-DE/utterances/ea7215a8ebd916418c5421d63d6bf98c09b8bfd65a8f9260d43ba1090780cb15.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bca4fb70-6357-5154-88a1-30637a16ebab', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_health_habits_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a149e50f12c18fd09474d7d3a7660b729154d6fb32b6b85217f6b41fdd559a4d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9050ead1-062a-5b83-b297-dcee808e6dae', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bca4fb70-6357-5154-88a1-30637a16ebab', 1), 'a149e50f12c18fd09474d7d3a7660b729154d6fb32b6b85217f6b41fdd559a4d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ea7215a8ebd916418c5421d63d6bf98c09b8bfd65a8f9260d43ba1090780cb15.mp3', 4310, '2026-09-13 05:55:27.069061', 'a6ee75ac580aba71110c938a718b5e4a0c1b0fdbe8ddf14945f50b34fd42f90e', 'validated', '{"audio_key":"ea7215a8ebd916418c5421d63d6bf98c09b8bfd65a8f9260d43ba1090780cb15","entity_key":"u_health_habits_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a6ee75ac580aba71110c938a718b5e4a0c1b0fdbe8ddf14945f50b34fd42f90e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ea7215a8ebd916418c5421d63d6bf98c09b8bfd65a8f9260d43ba1090780cb15.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_health_habits_02_listen -> audio/generated/de-DE/utterances/ea7215a8ebd916418c5421d63d6bf98c09b8bfd65a8f9260d43ba1090780cb15.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('fc24dc6b-0542-5155-93f8-e06860dd92fc', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_health_habits_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a149e50f12c18fd09474d7d3a7660b729154d6fb32b6b85217f6b41fdd559a4d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('32cc7343-ef63-586a-9319-d0dc49b281b3', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('fc24dc6b-0542-5155-93f8-e06860dd92fc', 1), 'a149e50f12c18fd09474d7d3a7660b729154d6fb32b6b85217f6b41fdd559a4d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ea7215a8ebd916418c5421d63d6bf98c09b8bfd65a8f9260d43ba1090780cb15.mp3', 4310, '2026-09-13 05:55:27.069061', 'a6ee75ac580aba71110c938a718b5e4a0c1b0fdbe8ddf14945f50b34fd42f90e', 'validated', '{"audio_key":"ea7215a8ebd916418c5421d63d6bf98c09b8bfd65a8f9260d43ba1090780cb15","entity_key":"ex_health_habits_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a6ee75ac580aba71110c938a718b5e4a0c1b0fdbe8ddf14945f50b34fd42f90e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ea7215a8ebd916418c5421d63d6bf98c09b8bfd65a8f9260d43ba1090780cb15.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_study_goals_06 -> audio/generated/de-DE/utterances/f3e7cdba0c0aefe88f0a776e2243856ead163a6024b9eb3e3bd6efbfc40a3fe1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8d9012c1-c245-52ce-aaaf-ca7384cc7bec', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_study_goals_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8aab4325a5cfb9dc3dea88404a10300b0bf5a27512c9d4612ab2e62a66725e56'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('12b6d693-98c0-5ad4-9adf-f3923891d369', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8d9012c1-c245-52ce-aaaf-ca7384cc7bec', 1), '8aab4325a5cfb9dc3dea88404a10300b0bf5a27512c9d4612ab2e62a66725e56',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f3e7cdba0c0aefe88f0a776e2243856ead163a6024b9eb3e3bd6efbfc40a3fe1.mp3', 3657, '2026-09-13 05:55:27.850416', '0d509445c94824f6c3a7a592e6dbfda79325e2eeab7944269c1b57da6999c7a3', 'validated', '{"audio_key":"f3e7cdba0c0aefe88f0a776e2243856ead163a6024b9eb3e3bd6efbfc40a3fe1","entity_key":"u_study_goals_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0d509445c94824f6c3a7a592e6dbfda79325e2eeab7944269c1b57da6999c7a3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f3e7cdba0c0aefe88f0a776e2243856ead163a6024b9eb3e3bd6efbfc40a3fe1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_problems_solutions_04 -> audio/generated/de-DE/utterances/f605e8d02d7410e08efb7e48073f6b7cfa2730758bbf70e045afa7e06ce0eab2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9f1ceff0-c3a8-5ba0-bfed-4254c0403baa', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_problems_solutions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6a766661be208ed57b78577672894e8949c69615a3e0de27d26bbe86dac97239'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5056b1ab-4224-5517-8e6b-4895bbf743de', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9f1ceff0-c3a8-5ba0-bfed-4254c0403baa', 1), '6a766661be208ed57b78577672894e8949c69615a3e0de27d26bbe86dac97239',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f605e8d02d7410e08efb7e48073f6b7cfa2730758bbf70e045afa7e06ce0eab2.mp3', 2873, '2026-09-13 05:55:28.186822', '9995515d063ec4ee95f67917ae5b407c828699ac53528bf42ebff5fabfa029a1', 'validated', '{"audio_key":"f605e8d02d7410e08efb7e48073f6b7cfa2730758bbf70e045afa7e06ce0eab2","entity_key":"u_problems_solutions_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9995515d063ec4ee95f67917ae5b407c828699ac53528bf42ebff5fabfa029a1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f605e8d02d7410e08efb7e48073f6b7cfa2730758bbf70e045afa7e06ce0eab2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_work_experience_02 -> audio/generated/de-DE/utterances/feec0deef3bcbc3af3e4bde263e309f4846be02f4779f69d1552f67224d1ee4f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('aaad0e77-0f8e-54c8-9b30-f902f4e771ab', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_work_experience_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b3fccb1b0a451a260ab7969c3a9f69a4b0be7fdad3489b94b5ee2137e16171c8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7baa6c13-04f4-5c65-91ed-349ecd7b294b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('aaad0e77-0f8e-54c8-9b30-f902f4e771ab', 1), 'b3fccb1b0a451a260ab7969c3a9f69a4b0be7fdad3489b94b5ee2137e16171c8',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/feec0deef3bcbc3af3e4bde263e309f4846be02f4779f69d1552f67224d1ee4f.mp3', 3578, '2026-09-13 05:55:29.055306', 'f3a33adbb2a15c273830124c3627ab7c81225c47e40d2ab999e8374abcc2078d', 'validated', '{"audio_key":"feec0deef3bcbc3af3e4bde263e309f4846be02f4779f69d1552f67224d1ee4f","entity_key":"u_work_experience_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f3a33adbb2a15c273830124c3627ab7c81225c47e40d2ab999e8374abcc2078d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/feec0deef3bcbc3af3e4bde263e309f4846be02f4779f69d1552f67224d1ee4f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_problems_solutions_06 -> audio/generated/de-DE/utterances/ff531a54cadd88f59879594b01a81b57ec24cfe3a436a06d8e9d754640882c00.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a0459958-d2bc-57e8-b67a-e8deb4a82f6f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_problems_solutions_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ddd2b8583b736294203dd0e8b1068330fef7d21184344eb8be63dc1f55dedbd8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4281429b-6e05-5da2-872e-a595bb1de0e2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a0459958-d2bc-57e8-b67a-e8deb4a82f6f', 1), 'ddd2b8583b736294203dd0e8b1068330fef7d21184344eb8be63dc1f55dedbd8',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ff531a54cadd88f59879594b01a81b57ec24cfe3a436a06d8e9d754640882c00.mp3', 3709, '2026-09-13 05:55:29.406696', '8e10ae1b1039bd97e4aee9a580b56ddb58210d221a9a01c3e74a8bf214c61c24', 'validated', '{"audio_key":"ff531a54cadd88f59879594b01a81b57ec24cfe3a436a06d8e9d754640882c00","entity_key":"u_problems_solutions_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8e10ae1b1039bd97e4aee9a580b56ddb58210d221a9a01c3e74a8bf214c61c24","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ff531a54cadd88f59879594b01a81b57ec24cfe3a436a06d8e9d754640882c00.mp3"}'
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

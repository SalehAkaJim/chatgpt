-- Generated audio link import for tr-TR B1
-- Source manifest: audio/manifests/tr/B1.json
-- Generated rows: 260
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'tr' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'tr-TR' LIMIT 1);
START TRANSACTION;

-- d_reported_information_02:1 -> audio/generated/tr-TR/dialogues/011a2827212c3750a080a869d9407e75c04e19f46da251cd05ddb6182b793f90.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('70a6aa00-6bac-5517-8e5e-08c27c473402', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_information_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1996db39a3a7e95323beb0200573e29b796fa5c7b97d6fd4740f4767417df9ed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cf9843c6-ba9e-569b-b387-cc82c33180ef', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('70a6aa00-6bac-5517-8e5e-08c27c473402', 1), '1996db39a3a7e95323beb0200573e29b796fa5c7b97d6fd4740f4767417df9ed',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/011a2827212c3750a080a869d9407e75c04e19f46da251cd05ddb6182b793f90.mp3', 1985, '2026-09-13 17:55:58.708836', 'ae3ddbad545bc4d1d87f8e4ff861a8bfda6fd252b7d4e94b2eb4eadc4b6fb9d5', 'validated', '{"audio_key":"011a2827212c3750a080a869d9407e75c04e19f46da251cd05ddb6182b793f90","entity_key":"d_reported_information_02:1","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ae3ddbad545bc4d1d87f8e4ff861a8bfda6fd252b7d4e94b2eb4eadc4b6fb9d5","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/011a2827212c3750a080a869d9407e75c04e19f46da251cd05ddb6182b793f90.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_social_nuance_02:1 -> audio/generated/tr-TR/dialogues/08acf3baa8cecaf515fd948f7801c7005084309b35429e4f0d387e237fa5f667.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9a931bbc-3584-5b8c-9d39-9f1f227a5ed8', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_social_nuance_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '05ceb1fb7833ebd51eb0a95e3c7c111a67fea04112fd7e2d3ca36963619533de'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e0c4c7a7-b5ef-5c89-95fa-08c56fa98da1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9a931bbc-3584-5b8c-9d39-9f1f227a5ed8', 1), '05ceb1fb7833ebd51eb0a95e3c7c111a67fea04112fd7e2d3ca36963619533de',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/08acf3baa8cecaf515fd948f7801c7005084309b35429e4f0d387e237fa5f667.mp3', 1802, '2026-09-13 17:55:58.700656', 'a52e80f01c25c34aba8c78ed4770533f19dae0fc1ed8aced6f6c005196580abb', 'validated', '{"audio_key":"08acf3baa8cecaf515fd948f7801c7005084309b35429e4f0d387e237fa5f667","entity_key":"d_social_nuance_02:1","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a52e80f01c25c34aba8c78ed4770533f19dae0fc1ed8aced6f6c005196580abb","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/08acf3baa8cecaf515fd948f7801c7005084309b35429e4f0d387e237fa5f667.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_conditions_and_consequences_02:1 -> audio/generated/tr-TR/dialogues/099a1f7c2305d853fce166e43bd5e6773ef21088c0eddf4f9ca8e603c622f099.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0d7a638a-b8ba-5530-8870-20eed4962f18', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_conditions_and_consequences_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '47e221e448d8d4af1371288d5dbb9100ada54923bdd8daea7ed8b19d46b1180f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4905e10f-8979-51c8-bab8-7c788844c686', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0d7a638a-b8ba-5530-8870-20eed4962f18', 1), '47e221e448d8d4af1371288d5dbb9100ada54923bdd8daea7ed8b19d46b1180f',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/099a1f7c2305d853fce166e43bd5e6773ef21088c0eddf4f9ca8e603c622f099.mp3', 2220, '2026-09-13 17:55:59.959049', '0761866b5246086c4f8d9e047bbbe343680f3898345079ffa0dae242764810d4', 'validated', '{"audio_key":"099a1f7c2305d853fce166e43bd5e6773ef21088c0eddf4f9ca8e603c622f099","entity_key":"d_conditions_and_consequences_02:1","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0761866b5246086c4f8d9e047bbbe343680f3898345079ffa0dae242764810d4","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/099a1f7c2305d853fce166e43bd5e6773ef21088c0eddf4f9ca8e603c622f099.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_goals_and_effort_02:2 -> audio/generated/tr-TR/dialogues/1a305c232222655ae7360ac0b29a20762fc527e86ae6a404d26fa69396c3ccc7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('adc7c48f-4112-5887-8e12-ddb587437968', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_goals_and_effort_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ea9c6d9fca7b4c09bfc5141c5ee8f38975e6daeb623627b2f20a49c59e52f6b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('212bc732-6686-51ed-a6a7-832d9304a722', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('adc7c48f-4112-5887-8e12-ddb587437968', 1), 'ea9c6d9fca7b4c09bfc5141c5ee8f38975e6daeb623627b2f20a49c59e52f6b4',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/1a305c232222655ae7360ac0b29a20762fc527e86ae6a404d26fa69396c3ccc7.mp3', 1697, '2026-09-13 17:55:59.919637', 'a9652bf92fbe766145b999d49d4242b2e46cfa72330e7f9aa334d49933ae05c0', 'validated', '{"audio_key":"1a305c232222655ae7360ac0b29a20762fc527e86ae6a404d26fa69396c3ccc7","entity_key":"d_goals_and_effort_02:2","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a9652bf92fbe766145b999d49d4242b2e46cfa72330e7f9aa334d49933ae05c0","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/1a305c232222655ae7360ac0b29a20762fc527e86ae6a404d26fa69396c3ccc7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_information_02:4 -> audio/generated/tr-TR/dialogues/1b1a6ca4e1bd79ba34f8434d39a7acaa905faa9b116647cde8833a78759380ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('42c3142b-dcfb-5d2a-94de-249a945e6746', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_information_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b35ff65eca90c9d5976c1a634da3f478c99761030dc39fe3921bbc869ea6b95a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f98e4880-a4fa-5b61-886f-2addec8e5c2f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('42c3142b-dcfb-5d2a-94de-249a945e6746', 1), 'b35ff65eca90c9d5976c1a634da3f478c99761030dc39fe3921bbc869ea6b95a',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/1b1a6ca4e1bd79ba34f8434d39a7acaa905faa9b116647cde8833a78759380ef.mp3', 1488, '2026-09-13 17:56:01.067554', '88bbed325f6f612e720d841698be6b4c11165871a26c121c00b6659483838a7a', 'validated', '{"audio_key":"1b1a6ca4e1bd79ba34f8434d39a7acaa905faa9b116647cde8833a78759380ef","entity_key":"d_reported_information_02:4","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"88bbed325f6f612e720d841698be6b4c11165871a26c121c00b6659483838a7a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/1b1a6ca4e1bd79ba34f8434d39a7acaa905faa9b116647cde8833a78759380ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_and_sources_01:1 -> audio/generated/tr-TR/dialogues/1bbb8e3c0c2bba42f244e88beff8a02444b778ddbf8a265a0fbf21f19950cd1e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dee46eda-2c4e-5f15-bcf7-4e34847f59b1', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_and_sources_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '893ab30d46abd5dcd6e88763b8ec144e7a57ded714f458cbae03220212ad043c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('692a1802-6c28-5e15-a2a0-bb6240470112', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dee46eda-2c4e-5f15-bcf7-4e34847f59b1', 1), '893ab30d46abd5dcd6e88763b8ec144e7a57ded714f458cbae03220212ad043c',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/1bbb8e3c0c2bba42f244e88beff8a02444b778ddbf8a265a0fbf21f19950cd1e.mp3', 1697, '2026-09-13 17:56:01.150081', '2408879d8b2e5f2c754300f9132a158a5923b95aa5d65bda44dc9b066027f818', 'validated', '{"audio_key":"1bbb8e3c0c2bba42f244e88beff8a02444b778ddbf8a265a0fbf21f19950cd1e","entity_key":"d_media_and_sources_01:1","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2408879d8b2e5f2c754300f9132a158a5923b95aa5d65bda44dc9b066027f818","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/1bbb8e3c0c2bba42f244e88beff8a02444b778ddbf8a265a0fbf21f19950cd1e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_storytelling_sequence_01:1 -> audio/generated/tr-TR/dialogues/1de36c1f4a89c41867723779b5262b254c8567a02daa91b68bb614e367fa7d20.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('62882ff2-5bb5-5d79-82a5-d227ea74599e', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_storytelling_sequence_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fc709a780670a9e388e4e67737f4cece1dc132acf7103b933c0d28cc5c16d4ca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1b5862ab-85ce-5f81-a9fa-e2f650bb8b57', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('62882ff2-5bb5-5d79-82a5-d227ea74599e', 1), 'fc709a780670a9e388e4e67737f4cece1dc132acf7103b933c0d28cc5c16d4ca',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/1de36c1f4a89c41867723779b5262b254c8567a02daa91b68bb614e367fa7d20.mp3', 1488, '2026-09-13 17:56:02.030611', '60552b52fc4b5ceb439921d601da1101a22dcfd7540be179c90e255740873244', 'validated', '{"audio_key":"1de36c1f4a89c41867723779b5262b254c8567a02daa91b68bb614e367fa7d20","entity_key":"d_storytelling_sequence_01:1","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"60552b52fc4b5ceb439921d601da1101a22dcfd7540be179c90e255740873244","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/1de36c1f4a89c41867723779b5262b254c8567a02daa91b68bb614e367fa7d20.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_goals_and_effort_02:1 -> audio/generated/tr-TR/dialogues/1e90a1dae658f73922fe36886148339ba44aa8364f496c6a9fe41001e9ee4a5e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b3f46383-9553-5429-ac25-ee4560914392', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_goals_and_effort_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f398e1e7b749eacbabb287b79d0063cbdb30a6c0ae450885035bfb8a479c1d01'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4ac43c3f-d05f-5436-a106-63715ac3c68c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b3f46383-9553-5429-ac25-ee4560914392', 1), 'f398e1e7b749eacbabb287b79d0063cbdb30a6c0ae450885035bfb8a479c1d01',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/1e90a1dae658f73922fe36886148339ba44aa8364f496c6a9fe41001e9ee4a5e.mp3', 2089, '2026-09-13 17:56:02.184722', 'a3d921f72fcd48163b5d177674ee77f915e82cf3d3310dc1589177c546b3442f', 'validated', '{"audio_key":"1e90a1dae658f73922fe36886148339ba44aa8364f496c6a9fe41001e9ee4a5e","entity_key":"d_goals_and_effort_02:1","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a3d921f72fcd48163b5d177674ee77f915e82cf3d3310dc1589177c546b3442f","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/1e90a1dae658f73922fe36886148339ba44aa8364f496c6a9fe41001e9ee4a5e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_social_nuance_02:2 -> audio/generated/tr-TR/dialogues/29e4c5545c098217f87846c06ba119602a20cda2d6ee3de34d084cd97dd4e5b3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('af8eff9c-23b8-5d9f-acb6-0061f16e351d', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_social_nuance_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '46b99430a4e5438b56cb60e8c614965271ad3188405175b3850946d27728eeb0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b9611f8e-8c70-528b-a502-7230a02517ea', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('af8eff9c-23b8-5d9f-acb6-0061f16e351d', 1), '46b99430a4e5438b56cb60e8c614965271ad3188405175b3850946d27728eeb0',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/29e4c5545c098217f87846c06ba119602a20cda2d6ee3de34d084cd97dd4e5b3.mp3', 2742, '2026-09-13 17:56:03.175946', '5452d855a5c468569311eae1cc37288157f1911e8139c8997fd5d8e1520f302a', 'validated', '{"audio_key":"29e4c5545c098217f87846c06ba119602a20cda2d6ee3de34d084cd97dd4e5b3","entity_key":"d_social_nuance_02:2","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"5452d855a5c468569311eae1cc37288157f1911e8139c8997fd5d8e1520f302a","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/29e4c5545c098217f87846c06ba119602a20cda2d6ee3de34d084cd97dd4e5b3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_goals_and_effort_01:1 -> audio/generated/tr-TR/dialogues/2e64c3b703195932b3b864d0968b8c9cf417abcdcc55340e48035d73a23833c4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('29887502-17e2-59ad-8621-55cbd02fe392', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_goals_and_effort_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '743c4edf0939f9406c85380ff804cd5b0acec61a2dc0b6d7d2a86f19c4105392'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c33bcb78-2224-5da8-87ca-514c979c6e82', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('29887502-17e2-59ad-8621-55cbd02fe392', 1), '743c4edf0939f9406c85380ff804cd5b0acec61a2dc0b6d7d2a86f19c4105392',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/2e64c3b703195932b3b864d0968b8c9cf417abcdcc55340e48035d73a23833c4.mp3', 1488, '2026-09-13 17:56:03.167681', '58a8e479dc72ab04abab7d1921e2e5c486c0b1bd2def6d3ca7597003d3bd7585', 'validated', '{"audio_key":"2e64c3b703195932b3b864d0968b8c9cf417abcdcc55340e48035d73a23833c4","entity_key":"d_goals_and_effort_01:1","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"58a8e479dc72ab04abab7d1921e2e5c486c0b1bd2def6d3ca7597003d3bd7585","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/2e64c3b703195932b3b864d0968b8c9cf417abcdcc55340e48035d73a23833c4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_experiences_and_change_01:4 -> audio/generated/tr-TR/dialogues/31a29425d7592f33d52839066554dc6ce6deab2d588c547469f710e18f1456e4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0e8b874d-1282-50be-a92e-6df3eb2c2217', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_experiences_and_change_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7bcfb43c223e849041836a7faafd30359d3283f6eb62016ecd9593468cbc5e3d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e70613f9-0086-5c38-af36-b535212e80b4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0e8b874d-1282-50be-a92e-6df3eb2c2217', 1), '7bcfb43c223e849041836a7faafd30359d3283f6eb62016ecd9593468cbc5e3d',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/31a29425d7592f33d52839066554dc6ce6deab2d588c547469f710e18f1456e4.mp3', 2115, '2026-09-13 17:56:04.227245', '2504f7ccb2bcbbaded16579405de93fbb75067789663c2537030e95ff9fcdd42', 'validated', '{"audio_key":"31a29425d7592f33d52839066554dc6ce6deab2d588c547469f710e18f1456e4","entity_key":"d_experiences_and_change_01:4","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2504f7ccb2bcbbaded16579405de93fbb75067789663c2537030e95ff9fcdd42","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/31a29425d7592f33d52839066554dc6ce6deab2d588c547469f710e18f1456e4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_experiences_and_change_02:3 -> audio/generated/tr-TR/dialogues/37ee31ede6068414d3d177012d5cdec5ae9256e95cad4dfa767c9feb8a51e25b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('64580017-fe75-5132-ba20-fdb058ee3b49', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_experiences_and_change_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '634255348335405434f9d3a1b074a8f037bab317b641684f03ebd608668b94ad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dc31a2d3-b6e1-5644-b150-9f648cc03f79', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('64580017-fe75-5132-ba20-fdb058ee3b49', 1), '634255348335405434f9d3a1b074a8f037bab317b641684f03ebd608668b94ad',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/37ee31ede6068414d3d177012d5cdec5ae9256e95cad4dfa767c9feb8a51e25b.mp3', 2324, '2026-09-13 17:56:04.277247', '45b7fb4b1dcf968c103acf0eb9734dfcaf7ded4f764efbdaca712fb4b09ee2ba', 'validated', '{"audio_key":"37ee31ede6068414d3d177012d5cdec5ae9256e95cad4dfa767c9feb8a51e25b","entity_key":"d_experiences_and_change_02:3","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"45b7fb4b1dcf968c103acf0eb9734dfcaf7ded4f764efbdaca712fb4b09ee2ba","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/37ee31ede6068414d3d177012d5cdec5ae9256e95cad4dfa767c9feb8a51e25b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_problems_and_solutions_01:1 -> audio/generated/tr-TR/dialogues/39dba52d48577a23fb91d0fca62ed46e8cd21b5e5575f892fa2ec5318b958ac5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bf11fbe4-066d-52b2-809a-709f0707d0f6', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_problems_and_solutions_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0c0d06cea244ee9c930c881f202e8fa753ae8d1580c4865f2812b03e7ec9b338'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('92f64aeb-2536-516d-8aa5-39acada6f812', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bf11fbe4-066d-52b2-809a-709f0707d0f6', 1), '0c0d06cea244ee9c930c881f202e8fa753ae8d1580c4865f2812b03e7ec9b338',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/39dba52d48577a23fb91d0fca62ed46e8cd21b5e5575f892fa2ec5318b958ac5.mp3', 2168, '2026-09-13 17:56:05.338556', '62b184201ea531783f39c37f9be8b31b18a4cc06ba62a8d14c95d0a333028a37', 'validated', '{"audio_key":"39dba52d48577a23fb91d0fca62ed46e8cd21b5e5575f892fa2ec5318b958ac5","entity_key":"d_problems_and_solutions_01:1","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"62b184201ea531783f39c37f9be8b31b18a4cc06ba62a8d14c95d0a333028a37","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/39dba52d48577a23fb91d0fca62ed46e8cd21b5e5575f892fa2ec5318b958ac5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_and_sources_02:3 -> audio/generated/tr-TR/dialogues/3fde6fb737c31bf4fb41df2b9690b75c3401c9e7a6f705bc6dd08c92077881b5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2df00ff4-1602-5ffc-bd76-f650c8dd980c', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_and_sources_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ab9fd0b8e5f95a04299d6e9bb818769ecad1242ba8f2598bdcdc00c2ec48bca4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a6f72dd6-f6fe-5973-a96b-728bfde0326f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2df00ff4-1602-5ffc-bd76-f650c8dd980c', 1), 'ab9fd0b8e5f95a04299d6e9bb818769ecad1242ba8f2598bdcdc00c2ec48bca4',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/3fde6fb737c31bf4fb41df2b9690b75c3401c9e7a6f705bc6dd08c92077881b5.mp3', 1697, '2026-09-13 17:56:05.288963', '6877872e0b126a56caf00081e486e235720c70181d0233f88ff8d3766ecaf41a', 'validated', '{"audio_key":"3fde6fb737c31bf4fb41df2b9690b75c3401c9e7a6f705bc6dd08c92077881b5","entity_key":"d_media_and_sources_02:3","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6877872e0b126a56caf00081e486e235720c70181d0233f88ff8d3766ecaf41a","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/3fde6fb737c31bf4fb41df2b9690b75c3401c9e7a6f705bc6dd08c92077881b5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_and_evidence_01:1 -> audio/generated/tr-TR/dialogues/419929414548df255a81a9d2a003237db53a72048686a588372cb2db6e2bc65f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('69418ff9-bdbe-51d1-840b-383bbfc9f8e2', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_evidence_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c4d43b32562a87d3a951f212159cbf713b4ffcd904a9c2e2e43eba39cfe0974a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ec41b58b-abfa-5a1e-84d5-3544e0ca0ad8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('69418ff9-bdbe-51d1-840b-383bbfc9f8e2', 1), 'c4d43b32562a87d3a951f212159cbf713b4ffcd904a9c2e2e43eba39cfe0974a',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/419929414548df255a81a9d2a003237db53a72048686a588372cb2db6e2bc65f.mp3', 2638, '2026-09-13 17:56:06.360606', 'c1c172793c4965752316a4727698250a46a8ed264be01e868bf91f8f2eb39607', 'validated', '{"audio_key":"419929414548df255a81a9d2a003237db53a72048686a588372cb2db6e2bc65f","entity_key":"d_opinions_and_evidence_01:1","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c1c172793c4965752316a4727698250a46a8ed264be01e868bf91f8f2eb39607","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/419929414548df255a81a9d2a003237db53a72048686a588372cb2db6e2bc65f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_social_nuance_02:3 -> audio/generated/tr-TR/dialogues/442b4451fe5e76a96c0ddae6cd4043ea2e11559e0d0dc52f04b59607c3fc0a6d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f45f3576-3d39-55aa-a663-ccc842b3d260', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_social_nuance_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6685f1218e5edc68287af69ca75475ccc6b16a53fa65e589de46ae3ab04cedf0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('63f28060-5ba5-55ca-98a4-6430beba7256', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f45f3576-3d39-55aa-a663-ccc842b3d260', 1), '6685f1218e5edc68287af69ca75475ccc6b16a53fa65e589de46ae3ab04cedf0',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/442b4451fe5e76a96c0ddae6cd4043ea2e11559e0d0dc52f04b59607c3fc0a6d.mp3', 1253, '2026-09-13 17:56:06.298413', '8dfdb4617a736e4efdd3da0e243b19105173497f089a18a4e6d2466626cc585b', 'validated', '{"audio_key":"442b4451fe5e76a96c0ddae6cd4043ea2e11559e0d0dc52f04b59607c3fc0a6d","entity_key":"d_social_nuance_02:3","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8dfdb4617a736e4efdd3da0e243b19105173497f089a18a4e6d2466626cc585b","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/442b4451fe5e76a96c0ddae6cd4043ea2e11559e0d0dc52f04b59607c3fc0a6d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b1_city_project_capstone_02:3 -> audio/generated/tr-TR/dialogues/4bbcb03b5118a55914448d75a3267c5773233f91a20c3adff53cac93cd9abd0f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4634be9f-da77-5c26-a133-0b2741c010f2', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b1_city_project_capstone_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '10b8ae423a46e7f65170df3c664d5ed6344379b8dced8435fc4219d78b977ea8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4a614251-df96-5487-b2a8-6e68459ada68', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4634be9f-da77-5c26-a133-0b2741c010f2', 1), '10b8ae423a46e7f65170df3c664d5ed6344379b8dced8435fc4219d78b977ea8',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/4bbcb03b5118a55914448d75a3267c5773233f91a20c3adff53cac93cd9abd0f.mp3', 2742, '2026-09-13 17:56:07.437356', '6dacbdd8b3be0cd65f7393b1ab5fb3ac3d5adc3c0b0ada82b8554844825b305b', 'validated', '{"audio_key":"4bbcb03b5118a55914448d75a3267c5773233f91a20c3adff53cac93cd9abd0f","entity_key":"d_b1_city_project_capstone_02:3","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6dacbdd8b3be0cd65f7393b1ab5fb3ac3d5adc3c0b0ada82b8554844825b305b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/4bbcb03b5118a55914448d75a3267c5773233f91a20c3adff53cac93cd9abd0f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_goals_and_effort_02:3 -> audio/generated/tr-TR/dialogues/4dbb613382b9e0559e83de0184b30cbf551fe816242c90808e8f22dfb30b4e25.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3a890c0e-4d41-5b32-ab80-488166edb2e0', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_goals_and_effort_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a41308b5ceceafd3220a968c3d28a7e7985ab84ac542e46fd51a6b472d124d88'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('869a45ba-bf0d-5380-a598-8184ed4bda8e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3a890c0e-4d41-5b32-ab80-488166edb2e0', 1), 'a41308b5ceceafd3220a968c3d28a7e7985ab84ac542e46fd51a6b472d124d88',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/4dbb613382b9e0559e83de0184b30cbf551fe816242c90808e8f22dfb30b4e25.mp3', 1253, '2026-09-13 17:56:07.456936', '812980e77f2e531dda5188cc6baa4c6cfca5e53931deb9c31cec0c631f911aa8', 'validated', '{"audio_key":"4dbb613382b9e0559e83de0184b30cbf551fe816242c90808e8f22dfb30b4e25","entity_key":"d_goals_and_effort_02:3","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"812980e77f2e531dda5188cc6baa4c6cfca5e53931deb9c31cec0c631f911aa8","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/4dbb613382b9e0559e83de0184b30cbf551fe816242c90808e8f22dfb30b4e25.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_experiences_and_change_02:2 -> audio/generated/tr-TR/dialogues/4ec76d6f105f01b45dced486449a3d708967d7d565346fa3177588698b86da27.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('af56a184-a41f-54ca-a766-5f1ebc50d647', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_experiences_and_change_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6b2cd1e90e0723e9b4742195169018915c290da4bbdd8272cef5be278bc88cae'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('889e9883-1640-58c0-8d3c-0ee0e0fa8cc9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('af56a184-a41f-54ca-a766-5f1ebc50d647', 1), '6b2cd1e90e0723e9b4742195169018915c290da4bbdd8272cef5be278bc88cae',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/4ec76d6f105f01b45dced486449a3d708967d7d565346fa3177588698b86da27.mp3', 1515, '2026-09-13 17:56:08.522426', '8830b60fa078f9428f8d9326ac0d09fdb5872930cb290003dbb179e9f71a5b8e', 'validated', '{"audio_key":"4ec76d6f105f01b45dced486449a3d708967d7d565346fa3177588698b86da27","entity_key":"d_experiences_and_change_02:2","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8830b60fa078f9428f8d9326ac0d09fdb5872930cb290003dbb179e9f71a5b8e","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/4ec76d6f105f01b45dced486449a3d708967d7d565346fa3177588698b86da27.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_experiences_and_change_02:1 -> audio/generated/tr-TR/dialogues/5276f3f72f51e2fe208dbf66e0960afe0a1c671879e4e724d51de031c9a923e8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8c8014ce-9e59-515a-a74f-c030d1044510', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_experiences_and_change_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd3ef7549f7beed562d51adfcd894b544d7fdf5b221ae0a636f0d97a5bed4b6c5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6f65f712-2b09-5056-9ff0-5a7e7493b3c5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8c8014ce-9e59-515a-a74f-c030d1044510', 1), 'd3ef7549f7beed562d51adfcd894b544d7fdf5b221ae0a636f0d97a5bed4b6c5',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/5276f3f72f51e2fe208dbf66e0960afe0a1c671879e4e724d51de031c9a923e8.mp3', 1802, '2026-09-13 17:56:08.500738', '6d69e13ed40e3c5f2ac436c57e36186d664d967acfd9a2e25822897cb6c44fd4', 'validated', '{"audio_key":"5276f3f72f51e2fe208dbf66e0960afe0a1c671879e4e724d51de031c9a923e8","entity_key":"d_experiences_and_change_02:1","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6d69e13ed40e3c5f2ac436c57e36186d664d967acfd9a2e25822897cb6c44fd4","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/5276f3f72f51e2fe208dbf66e0960afe0a1c671879e4e724d51de031c9a923e8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_experiences_and_change_02:4 -> audio/generated/tr-TR/dialogues/5571f7998e1d22279f51415852662a9ea9352c58c8561b37e6aa4598578f5cf0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('828620f6-0f20-5be0-9023-b21544c3942c', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_experiences_and_change_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '10554daaf2bf264c3eebdc88bdd3c957255bd49b97fea0d5c5790ededf5cf835'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fe95b4bb-b702-5d18-9ef5-78b97fdbbfef', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('828620f6-0f20-5be0-9023-b21544c3942c', 1), '10554daaf2bf264c3eebdc88bdd3c957255bd49b97fea0d5c5790ededf5cf835',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/5571f7998e1d22279f51415852662a9ea9352c58c8561b37e6aa4598578f5cf0.mp3', 2351, '2026-09-13 17:56:09.614872', '51f37b78c679a7f4fb783a9a5080156916b4830b878b7a3fa0dd6d8f950b9aad', 'validated', '{"audio_key":"5571f7998e1d22279f51415852662a9ea9352c58c8561b37e6aa4598578f5cf0","entity_key":"d_experiences_and_change_02:4","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"51f37b78c679a7f4fb783a9a5080156916b4830b878b7a3fa0dd6d8f950b9aad","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/5571f7998e1d22279f51415852662a9ea9352c58c8561b37e6aa4598578f5cf0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_problems_and_solutions_02:3 -> audio/generated/tr-TR/dialogues/558fd0793f78007d8f26187396d6160cccb588dcde15386ae228f7816db330f6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2d832bdd-90a6-5957-85e4-d174c455f096', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_problems_and_solutions_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ba935e11a4a37dffa9bf19d6800e646d6c81197c1aeb967f01258096d7f07aa1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5daa19d3-ed22-5ce2-8904-25df9974631c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2d832bdd-90a6-5957-85e4-d174c455f096', 1), 'ba935e11a4a37dffa9bf19d6800e646d6c81197c1aeb967f01258096d7f07aa1',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/558fd0793f78007d8f26187396d6160cccb588dcde15386ae228f7816db330f6.mp3', 1515, '2026-09-13 17:56:09.546627', '5884c700f7ebe3c76db4e11d06d6c524e7fe89747f8ebde940af2db36105bc68', 'validated', '{"audio_key":"558fd0793f78007d8f26187396d6160cccb588dcde15386ae228f7816db330f6","entity_key":"d_problems_and_solutions_02:3","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5884c700f7ebe3c76db4e11d06d6c524e7fe89747f8ebde940af2db36105bc68","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/558fd0793f78007d8f26187396d6160cccb588dcde15386ae228f7816db330f6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_storytelling_sequence_02:2 -> audio/generated/tr-TR/dialogues/5dc6b8735c0e11b4b32e958d761a3f3ee58a2f8f47ed5bad6c29961244731925.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('115f71c3-d512-5306-9029-7a44d175fb1f', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_storytelling_sequence_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '99fdbb17bcfd0ce02501ace08f89434b43b37223a73b84ffbe466338258425e7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5252e673-177e-55ed-832d-1d3d72a60b28', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('115f71c3-d512-5306-9029-7a44d175fb1f', 1), '99fdbb17bcfd0ce02501ace08f89434b43b37223a73b84ffbe466338258425e7',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/5dc6b8735c0e11b4b32e958d761a3f3ee58a2f8f47ed5bad6c29961244731925.mp3', 2168, '2026-09-13 17:56:10.595642', '528d59e8531b41cb5c693be7bc11eaa9e4a29f53bf798b031e0f7d57ca480de9', 'validated', '{"audio_key":"5dc6b8735c0e11b4b32e958d761a3f3ee58a2f8f47ed5bad6c29961244731925","entity_key":"d_storytelling_sequence_02:2","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"528d59e8531b41cb5c693be7bc11eaa9e4a29f53bf798b031e0f7d57ca480de9","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/5dc6b8735c0e11b4b32e958d761a3f3ee58a2f8f47ed5bad6c29961244731925.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_and_sources_01:4 -> audio/generated/tr-TR/dialogues/5f55fc70e6eccf6a5eba3aecf0e11472758973f94c36a933a5e7f7a5ae18e9b5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('de9bb246-e300-5e28-9fb0-f0ee5f85379c', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_and_sources_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a22323fb62ce3014e3d48e1d5567c71b7e3044ff2cd891cbf8423863f76d1328'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0e98935c-ab7b-55d2-b07f-e6ea24dbc81c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('de9bb246-e300-5e28-9fb0-f0ee5f85379c', 1), 'a22323fb62ce3014e3d48e1d5567c71b7e3044ff2cd891cbf8423863f76d1328',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/5f55fc70e6eccf6a5eba3aecf0e11472758973f94c36a933a5e7f7a5ae18e9b5.mp3', 2324, '2026-09-13 17:56:10.876969', '7435a6534e61e83d14bc8a9831e51ef1d6e7d372035751ebc4282ada999da64b', 'validated', '{"audio_key":"5f55fc70e6eccf6a5eba3aecf0e11472758973f94c36a933a5e7f7a5ae18e9b5","entity_key":"d_media_and_sources_01:4","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7435a6534e61e83d14bc8a9831e51ef1d6e7d372035751ebc4282ada999da64b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/5f55fc70e6eccf6a5eba3aecf0e11472758973f94c36a933a5e7f7a5ae18e9b5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_and_sources_01:2 -> audio/generated/tr-TR/dialogues/5f910a0ab772bd8f6e2f1d0ca4f41872264d1875854e9d977ca182a3b0d38d77.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('195ec2ff-65c9-5fff-b119-06d520539c79', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_and_sources_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '410f72b727c1a13971d9843687f273c2db9f8a238620d90e7db1cdcdcbdba164'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e4e1709d-4ce1-519e-9e7d-90a702970ef0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('195ec2ff-65c9-5fff-b119-06d520539c79', 1), '410f72b727c1a13971d9843687f273c2db9f8a238620d90e7db1cdcdcbdba164',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/5f910a0ab772bd8f6e2f1d0ca4f41872264d1875854e9d977ca182a3b0d38d77.mp3', 2638, '2026-09-13 17:56:11.711669', 'cb66580fd90b515a6772f1e35419cfc86a446b138b9aff82bd734ec234a11127', 'validated', '{"audio_key":"5f910a0ab772bd8f6e2f1d0ca4f41872264d1875854e9d977ca182a3b0d38d77","entity_key":"d_media_and_sources_01:2","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cb66580fd90b515a6772f1e35419cfc86a446b138b9aff82bd734ec234a11127","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/5f910a0ab772bd8f6e2f1d0ca4f41872264d1875854e9d977ca182a3b0d38d77.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_and_evidence_01:2 -> audio/generated/tr-TR/dialogues/614a9918ce1c9e1e06d840e2704287c5d390672c54ae56690cc4acaa8fd01f14.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c8685440-724c-5a83-9a1f-d78ebb3a7401', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_evidence_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '99249b5f8f687f1b3086fc61e460602849395a25aa35a62f1df7912be8a7d5f0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f23ef842-58a6-5dbf-bb9a-7d93746457f9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c8685440-724c-5a83-9a1f-d78ebb3a7401', 1), '99249b5f8f687f1b3086fc61e460602849395a25aa35a62f1df7912be8a7d5f0',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/614a9918ce1c9e1e06d840e2704287c5d390672c54ae56690cc4acaa8fd01f14.mp3', 2168, '2026-09-13 17:56:11.938062', 'ad9f4ecdd6fd2d2f90f48ed1e83e80c202b65da9ad424488f5db1bbf31655123', 'validated', '{"audio_key":"614a9918ce1c9e1e06d840e2704287c5d390672c54ae56690cc4acaa8fd01f14","entity_key":"d_opinions_and_evidence_01:2","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ad9f4ecdd6fd2d2f90f48ed1e83e80c202b65da9ad424488f5db1bbf31655123","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/614a9918ce1c9e1e06d840e2704287c5d390672c54ae56690cc4acaa8fd01f14.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_experiences_and_change_01:3 -> audio/generated/tr-TR/dialogues/6c6c1ebdd5ec4d61423f4d89d819d4948e1fb32ee1791a7f47e2ff125c9d96a1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7b3ee64f-8e5c-5127-98c4-332367fdbaa0', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_experiences_and_change_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '364ea9e4a97acf3da55e1a2548b6db210fbebc10e115d6934136dcd5d6025890'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b2f7164a-bb67-50b5-a2c1-8cb20189e7e3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7b3ee64f-8e5c-5127-98c4-332367fdbaa0', 1), '364ea9e4a97acf3da55e1a2548b6db210fbebc10e115d6934136dcd5d6025890',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/6c6c1ebdd5ec4d61423f4d89d819d4948e1fb32ee1791a7f47e2ff125c9d96a1.mp3', 1985, '2026-09-13 17:56:12.775616', 'd410c4c15c4e7dbb60240eb1bf5aeca57c7a72b928fe77ecb9ee15671c6ed289', 'validated', '{"audio_key":"6c6c1ebdd5ec4d61423f4d89d819d4948e1fb32ee1791a7f47e2ff125c9d96a1","entity_key":"d_experiences_and_change_01:3","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d410c4c15c4e7dbb60240eb1bf5aeca57c7a72b928fe77ecb9ee15671c6ed289","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/6c6c1ebdd5ec4d61423f4d89d819d4948e1fb32ee1791a7f47e2ff125c9d96a1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_social_nuance_01:1 -> audio/generated/tr-TR/dialogues/6e2ec0105dd0ddf27d9811504964dfcb54be9589c58a77919444e0d9e0762525.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4e3f45f1-46eb-5c1b-8767-26123499006e', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_social_nuance_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7d5886b1c746c7d17de5a8bd1ca17fc5aeaa59f36b71d4c4c8aec07492be284c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2d9d871a-010a-5dab-87f6-948204eefd17', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4e3f45f1-46eb-5c1b-8767-26123499006e', 1), '7d5886b1c746c7d17de5a8bd1ca17fc5aeaa59f36b71d4c4c8aec07492be284c',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/6e2ec0105dd0ddf27d9811504964dfcb54be9589c58a77919444e0d9e0762525.mp3', 1985, '2026-09-13 17:56:12.977734', 'eea9a8d92178f91ef8fcc3d10ecd18215f5c984fc9be0b7d7f43efd99a1b2c46', 'validated', '{"audio_key":"6e2ec0105dd0ddf27d9811504964dfcb54be9589c58a77919444e0d9e0762525","entity_key":"d_social_nuance_01:1","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"eea9a8d92178f91ef8fcc3d10ecd18215f5c984fc9be0b7d7f43efd99a1b2c46","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/6e2ec0105dd0ddf27d9811504964dfcb54be9589c58a77919444e0d9e0762525.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_information_02:3 -> audio/generated/tr-TR/dialogues/6f0a5af658380fd38be4f1ad29fc1f26a2614728f339ad9ea4fb4fdcf62ace2d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ac28e0ae-81cb-51a9-8610-038e19a4fe70', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_information_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'af6637f14ace0db229a28002de993e7609eecbc7845eda0449fa649c88401e63'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6276ee7a-3e58-589d-974c-d5496678c09c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ac28e0ae-81cb-51a9-8610-038e19a4fe70', 1), 'af6637f14ace0db229a28002de993e7609eecbc7845eda0449fa649c88401e63',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/6f0a5af658380fd38be4f1ad29fc1f26a2614728f339ad9ea4fb4fdcf62ace2d.mp3', 1697, '2026-09-13 17:56:13.780404', '3c9261ab896f1b1e79a362f8ab66c233f1ed0b9581a714a7450fba82c68f8aad', 'validated', '{"audio_key":"6f0a5af658380fd38be4f1ad29fc1f26a2614728f339ad9ea4fb4fdcf62ace2d","entity_key":"d_reported_information_02:3","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3c9261ab896f1b1e79a362f8ab66c233f1ed0b9581a714a7450fba82c68f8aad","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/6f0a5af658380fd38be4f1ad29fc1f26a2614728f339ad9ea4fb4fdcf62ace2d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_information_01:1 -> audio/generated/tr-TR/dialogues/6fd6e8617ccde22869ac6fce0d582e42ff339cadcf384550b5dbc007d7a70a04.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cf96f277-749d-5b78-8257-3138ea878ac0', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_information_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd76e58d4d5764a566dff8ea21cb3f86562d66bb83057b1d7eaa93a5de1d29f27'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6b001c85-658a-5322-8b59-5ead1c7f69a8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cf96f277-749d-5b78-8257-3138ea878ac0', 1), 'd76e58d4d5764a566dff8ea21cb3f86562d66bb83057b1d7eaa93a5de1d29f27',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/6fd6e8617ccde22869ac6fce0d582e42ff339cadcf384550b5dbc007d7a70a04.mp3', 2351, '2026-09-13 17:56:14.033697', '70e0a447b56cad25e5fa6e0a694dac564719bab20e5c04410abf57628931378a', 'validated', '{"audio_key":"6fd6e8617ccde22869ac6fce0d582e42ff339cadcf384550b5dbc007d7a70a04","entity_key":"d_reported_information_01:1","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"70e0a447b56cad25e5fa6e0a694dac564719bab20e5c04410abf57628931378a","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/6fd6e8617ccde22869ac6fce0d582e42ff339cadcf384550b5dbc007d7a70a04.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_goals_and_effort_01:2 -> audio/generated/tr-TR/dialogues/7135b95ecf2a1e384c2f6726b5ecb96f2c9b66936296d852f9f85539eaac51b1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5e8ca2e7-7166-573c-9349-cec4d759ee10', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_goals_and_effort_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0c4f33f62a4e10b72f60004e7bdac1bc40b6513daae0c0812b9837a7906a5958'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('28e2d68a-6523-52ec-85d5-bdd09feb032b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5e8ca2e7-7166-573c-9349-cec4d759ee10', 1), '0c4f33f62a4e10b72f60004e7bdac1bc40b6513daae0c0812b9837a7906a5958',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/7135b95ecf2a1e384c2f6726b5ecb96f2c9b66936296d852f9f85539eaac51b1.mp3', 1802, '2026-09-13 17:56:14.810016', '1aeb797aea13884fac5b5278c93cbaffb37e49567febc7da8ee090f0456661c1', 'validated', '{"audio_key":"7135b95ecf2a1e384c2f6726b5ecb96f2c9b66936296d852f9f85539eaac51b1","entity_key":"d_goals_and_effort_01:2","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1aeb797aea13884fac5b5278c93cbaffb37e49567febc7da8ee090f0456661c1","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/7135b95ecf2a1e384c2f6726b5ecb96f2c9b66936296d852f9f85539eaac51b1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_experiences_and_change_01:2 -> audio/generated/tr-TR/dialogues/73718edf61009143ca63140f190cbc5dce9e0ad05dbb862fb6cf582f9aa53f77.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('059ff87d-d62a-526f-b74a-2682236bc91c', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_experiences_and_change_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fb90e20c35cc58a128c410bf5f39763216cc264e493cd1b5f88ae6e4433d22cd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c4ec99d6-4d4c-5836-8bac-9dd11591cc17', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('059ff87d-d62a-526f-b74a-2682236bc91c', 1), 'fb90e20c35cc58a128c410bf5f39763216cc264e493cd1b5f88ae6e4433d22cd',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/73718edf61009143ca63140f190cbc5dce9e0ad05dbb862fb6cf582f9aa53f77.mp3', 2220, '2026-09-13 17:56:15.066316', '3fff0721e1ead85e149a93c95539b634c841b33c035551c8cd75c69d925a2522', 'validated', '{"audio_key":"73718edf61009143ca63140f190cbc5dce9e0ad05dbb862fb6cf582f9aa53f77","entity_key":"d_experiences_and_change_01:2","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3fff0721e1ead85e149a93c95539b634c841b33c035551c8cd75c69d925a2522","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/73718edf61009143ca63140f190cbc5dce9e0ad05dbb862fb6cf582f9aa53f77.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_storytelling_sequence_01:4 -> audio/generated/tr-TR/dialogues/74a9ba8ce5c93695b8dd47b5da88019890f7f04210410c56539a2c6eff814190.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('66b75d7a-941d-53a2-af32-94cde83fc66f', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_storytelling_sequence_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cfc9fb33c9f80858bbce0b1c2e3e1a5ef92f9266086d875776ee3308def1f7da'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e18cb902-15ad-52f9-96b6-852fd16dd71f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('66b75d7a-941d-53a2-af32-94cde83fc66f', 1), 'cfc9fb33c9f80858bbce0b1c2e3e1a5ef92f9266086d875776ee3308def1f7da',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/74a9ba8ce5c93695b8dd47b5da88019890f7f04210410c56539a2c6eff814190.mp3', 2324, '2026-09-13 17:56:15.873771', 'f0d63a10f0bb2ddc31ff66c0059a41a3ad24d7c1212df8f2aadd7c18adc60178', 'validated', '{"audio_key":"74a9ba8ce5c93695b8dd47b5da88019890f7f04210410c56539a2c6eff814190","entity_key":"d_storytelling_sequence_01:4","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f0d63a10f0bb2ddc31ff66c0059a41a3ad24d7c1212df8f2aadd7c18adc60178","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/74a9ba8ce5c93695b8dd47b5da88019890f7f04210410c56539a2c6eff814190.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_problems_and_solutions_01:4 -> audio/generated/tr-TR/dialogues/756dc90c63415860a6114683059af48dda33e204b92d0daff33d4f42b7f29d84.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('19b1ba74-f21a-564f-aade-91b192f53c32', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_problems_and_solutions_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f685a5751ab4aab24003f5da1e671aae05623248a491f4ecefdc0a1c449ab994'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('04e8da00-bd98-5a8a-a52a-36152eca9c3d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('19b1ba74-f21a-564f-aade-91b192f53c32', 1), 'f685a5751ab4aab24003f5da1e671aae05623248a491f4ecefdc0a1c449ab994',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/756dc90c63415860a6114683059af48dda33e204b92d0daff33d4f42b7f29d84.mp3', 1697, '2026-09-13 17:56:16.098947', '630dbc1a4c21c340d0048291ce427e673e4c018230a8af917819b434c3dd91dd', 'validated', '{"audio_key":"756dc90c63415860a6114683059af48dda33e204b92d0daff33d4f42b7f29d84","entity_key":"d_problems_and_solutions_01:4","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"630dbc1a4c21c340d0048291ce427e673e4c018230a8af917819b434c3dd91dd","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/756dc90c63415860a6114683059af48dda33e204b92d0daff33d4f42b7f29d84.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_social_nuance_01:4 -> audio/generated/tr-TR/dialogues/78b4dc8b0cc5edc3dd3e800c94cb93e84aac8aba7f7bd7d4ad92ee2b65b5bfb8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('79beb110-31af-50a4-8955-a993cdcc5e09', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_social_nuance_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '378192df93c17e63c7e3bfe6393e582c8ff3015547bcca5aeebfdfe07c5a6f32'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('27d5697a-f164-578c-ac00-b90ef659a3a4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('79beb110-31af-50a4-8955-a993cdcc5e09', 1), '378192df93c17e63c7e3bfe6393e582c8ff3015547bcca5aeebfdfe07c5a6f32',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/78b4dc8b0cc5edc3dd3e800c94cb93e84aac8aba7f7bd7d4ad92ee2b65b5bfb8.mp3', 3343, '2026-09-13 17:56:17.129623', '29dd5c9e2a720538c87097dd1fd73b58ca93ac60897302dc2a81a94950f18e94', 'validated', '{"audio_key":"78b4dc8b0cc5edc3dd3e800c94cb93e84aac8aba7f7bd7d4ad92ee2b65b5bfb8","entity_key":"d_social_nuance_01:4","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"29dd5c9e2a720538c87097dd1fd73b58ca93ac60897302dc2a81a94950f18e94","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/78b4dc8b0cc5edc3dd3e800c94cb93e84aac8aba7f7bd7d4ad92ee2b65b5bfb8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_conditions_and_consequences_01:3 -> audio/generated/tr-TR/dialogues/79282613c9865dbe40707e633f352b6bb6fb371bbbfccea9f121253658c58ea9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1313aaf9-7fbf-5950-8f5d-1dca6b26a161', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_conditions_and_consequences_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd554971ffc0ccb00581b45b2b2546f1fcb0981bf67222aa7678ef7341e6c63fb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('719bf743-a04a-5765-8cfc-86e9208cd311', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1313aaf9-7fbf-5950-8f5d-1dca6b26a161', 1), 'd554971ffc0ccb00581b45b2b2546f1fcb0981bf67222aa7678ef7341e6c63fb',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/79282613c9865dbe40707e633f352b6bb6fb371bbbfccea9f121253658c58ea9.mp3', 1488, '2026-09-13 17:56:17.132827', '4cf5558ad41b35a805cbf8c24bf2ec5f205a364c044d69b579d8fdcea5aaf6ab', 'validated', '{"audio_key":"79282613c9865dbe40707e633f352b6bb6fb371bbbfccea9f121253658c58ea9","entity_key":"d_conditions_and_consequences_01:3","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4cf5558ad41b35a805cbf8c24bf2ec5f205a364c044d69b579d8fdcea5aaf6ab","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/79282613c9865dbe40707e633f352b6bb6fb371bbbfccea9f121253658c58ea9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_storytelling_sequence_02:1 -> audio/generated/tr-TR/dialogues/7b7f85bcbc22355e94656b0a1056862151ce496f0985e322fe4c0b3e2f178767.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a816d6c4-bc51-56ff-aa4e-bf29aa91538b', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_storytelling_sequence_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'abc1159b58401bfbfc8e7831358d7fef9c317ef7a9931d660932c2d497c3c295'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('326e3108-107b-5b61-abac-6c73115d7751', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a816d6c4-bc51-56ff-aa4e-bf29aa91538b', 1), 'abc1159b58401bfbfc8e7831358d7fef9c317ef7a9931d660932c2d497c3c295',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/7b7f85bcbc22355e94656b0a1056862151ce496f0985e322fe4c0b3e2f178767.mp3', 1933, '2026-09-13 17:56:18.438862', '6652834a9251433f09f25790f74f9a162e3d2a8dc2394524496992af6c6b3080', 'validated', '{"audio_key":"7b7f85bcbc22355e94656b0a1056862151ce496f0985e322fe4c0b3e2f178767","entity_key":"d_storytelling_sequence_02:1","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6652834a9251433f09f25790f74f9a162e3d2a8dc2394524496992af6c6b3080","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/7b7f85bcbc22355e94656b0a1056862151ce496f0985e322fe4c0b3e2f178767.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b1_city_project_capstone_01:1 -> audio/generated/tr-TR/dialogues/7f6247f0a7d00af2636fc7d8ca2ed6e1c7a785235349cdd8d727b1faeca53a84.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2f2a13f3-5c19-5fda-a77f-a27a87db71a6', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b1_city_project_capstone_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd944df44fb3aad6b887be535d287d109ca5cf70ac6810d371dc44099c75368a5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b9c322fe-4fa7-5639-a1e9-84477c064334', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2f2a13f3-5c19-5fda-a77f-a27a87db71a6', 1), 'd944df44fb3aad6b887be535d287d109ca5cf70ac6810d371dc44099c75368a5',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/7f6247f0a7d00af2636fc7d8ca2ed6e1c7a785235349cdd8d727b1faeca53a84.mp3', 2403, '2026-09-13 17:56:18.203778', 'b04bafb5f4b771013124813034cb04a40de5a86b3445b8936ca1ee763dbc2ded', 'validated', '{"audio_key":"7f6247f0a7d00af2636fc7d8ca2ed6e1c7a785235349cdd8d727b1faeca53a84","entity_key":"d_b1_city_project_capstone_01:1","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b04bafb5f4b771013124813034cb04a40de5a86b3445b8936ca1ee763dbc2ded","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/7f6247f0a7d00af2636fc7d8ca2ed6e1c7a785235349cdd8d727b1faeca53a84.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_problems_and_solutions_01:2 -> audio/generated/tr-TR/dialogues/804dbbc1ec908ee6efa6e01ed7441f6b680da118340ab03fc89c0d67dc5aaedb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('72539739-86ac-516e-85ae-5b830e0100e8', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_problems_and_solutions_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b15997767be1a312cd4b9ccdda5ae6916dfc821f0a8585e6bea944dbe1dd3bef'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('46069a2d-ed7e-5d4f-bafa-f95fd3c07210', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('72539739-86ac-516e-85ae-5b830e0100e8', 1), 'b15997767be1a312cd4b9ccdda5ae6916dfc821f0a8585e6bea944dbe1dd3bef',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/804dbbc1ec908ee6efa6e01ed7441f6b680da118340ab03fc89c0d67dc5aaedb.mp3', 1985, '2026-09-13 17:56:19.245708', '369d073c039920d744728423e7d88401992f0c9cdbb0eee58bc0eef5e779485f', 'validated', '{"audio_key":"804dbbc1ec908ee6efa6e01ed7441f6b680da118340ab03fc89c0d67dc5aaedb","entity_key":"d_problems_and_solutions_01:2","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"369d073c039920d744728423e7d88401992f0c9cdbb0eee58bc0eef5e779485f","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/804dbbc1ec908ee6efa6e01ed7441f6b680da118340ab03fc89c0d67dc5aaedb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b1_city_project_capstone_02:4 -> audio/generated/tr-TR/dialogues/8187b905d86b8e7949482ec321bc487ed3293edb744dd6a29f39dbe934326765.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f4de77f6-97da-57d6-b8b8-bed99d6ad5cc', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b1_city_project_capstone_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2f54543a73ccebe6bd6244335370cc3225f1bfe3e53d279d7d807f7075aa153e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('79302865-0523-5b0d-958d-fab36c1a4194', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f4de77f6-97da-57d6-b8b8-bed99d6ad5cc', 1), '2f54543a73ccebe6bd6244335370cc3225f1bfe3e53d279d7d807f7075aa153e',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/8187b905d86b8e7949482ec321bc487ed3293edb744dd6a29f39dbe934326765.mp3', 2403, '2026-09-13 17:56:19.522203', '7c533dc36ad3a0a7aa8854ea0cb3994c6137d4c6eb0eefc653fa2b74779ae732', 'validated', '{"audio_key":"8187b905d86b8e7949482ec321bc487ed3293edb744dd6a29f39dbe934326765","entity_key":"d_b1_city_project_capstone_02:4","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7c533dc36ad3a0a7aa8854ea0cb3994c6137d4c6eb0eefc653fa2b74779ae732","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/8187b905d86b8e7949482ec321bc487ed3293edb744dd6a29f39dbe934326765.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_conditions_and_consequences_02:2 -> audio/generated/tr-TR/dialogues/81f08aaa95f59cf8d677cc7b61cfb280b1c1e8a2520235ff41cf064767898d65.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6c5c9703-d0f7-52c9-83b0-292b611f82a0', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_conditions_and_consequences_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e6ebb6533dbc177f3996347f44511d7e45ea4fbbfb3d07cffcf43c605fcd3705'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4102d7c4-05a0-5b19-8772-96f72e9a57bf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6c5c9703-d0f7-52c9-83b0-292b611f82a0', 1), 'e6ebb6533dbc177f3996347f44511d7e45ea4fbbfb3d07cffcf43c605fcd3705',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/81f08aaa95f59cf8d677cc7b61cfb280b1c1e8a2520235ff41cf064767898d65.mp3', 1906, '2026-09-13 17:56:20.266981', '1576e0652529e167b5b5c349cc11fb193e16fcb1c332b313cfe8a2eb5a574900', 'validated', '{"audio_key":"81f08aaa95f59cf8d677cc7b61cfb280b1c1e8a2520235ff41cf064767898d65","entity_key":"d_conditions_and_consequences_02:2","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"1576e0652529e167b5b5c349cc11fb193e16fcb1c332b313cfe8a2eb5a574900","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/81f08aaa95f59cf8d677cc7b61cfb280b1c1e8a2520235ff41cf064767898d65.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b1_city_project_capstone_02:2 -> audio/generated/tr-TR/dialogues/8367144e7f033431137fcba3a8eababeeb8da38500abff127aa7bb47c0632426.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('312c6c71-a153-5622-94bc-f814baa5fe42', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b1_city_project_capstone_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'df2c1d611257652c3b5c4d1a7468af356aa3f524ebce034e67c68e5c119267b8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1f1d521b-17ae-5561-be4c-51caf4bc444b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('312c6c71-a153-5622-94bc-f814baa5fe42', 1), 'df2c1d611257652c3b5c4d1a7468af356aa3f524ebce034e67c68e5c119267b8',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/8367144e7f033431137fcba3a8eababeeb8da38500abff127aa7bb47c0632426.mp3', 2690, '2026-09-13 17:56:20.617160', 'f6b80261093a7376e5d93a09ccfad8e8b535334c68ae3e569d3fbaf91c196f9c', 'validated', '{"audio_key":"8367144e7f033431137fcba3a8eababeeb8da38500abff127aa7bb47c0632426","entity_key":"d_b1_city_project_capstone_02:2","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f6b80261093a7376e5d93a09ccfad8e8b535334c68ae3e569d3fbaf91c196f9c","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/8367144e7f033431137fcba3a8eababeeb8da38500abff127aa7bb47c0632426.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_conditions_and_consequences_01:4 -> audio/generated/tr-TR/dialogues/83b0bfb0d9af1c48f3fd7370cdfabcc62d8a299d6f29e3ae578c4b0acd09820c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('498cdb8d-67dc-555d-9ea5-115e52284b2e', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_conditions_and_consequences_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bc19e2f9c7d03a78fa509ccef5f113a1d95351a3a3d47e58f15c9ac1bde8501d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('18217ca5-856f-5880-84cd-c40b2e751372', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('498cdb8d-67dc-555d-9ea5-115e52284b2e', 1), 'bc19e2f9c7d03a78fa509ccef5f113a1d95351a3a3d47e58f15c9ac1bde8501d',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/83b0bfb0d9af1c48f3fd7370cdfabcc62d8a299d6f29e3ae578c4b0acd09820c.mp3', 1697, '2026-09-13 17:56:21.268724', 'a58208c756e34c34b77550ee73b398d65bd21379ab420b65c09c4bdede480ede', 'validated', '{"audio_key":"83b0bfb0d9af1c48f3fd7370cdfabcc62d8a299d6f29e3ae578c4b0acd09820c","entity_key":"d_conditions_and_consequences_01:4","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a58208c756e34c34b77550ee73b398d65bd21379ab420b65c09c4bdede480ede","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/83b0bfb0d9af1c48f3fd7370cdfabcc62d8a299d6f29e3ae578c4b0acd09820c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_problems_and_solutions_02:1 -> audio/generated/tr-TR/dialogues/87dda0f1459ac67ebd6537af0d54d4e77983b303dc7a916760ce38d13299ff79.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f1d2d6a7-1f6d-5440-9e37-cdeb6adcd6da', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_problems_and_solutions_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '98d321a281982b7636c91a08660354136cf93bce7ad97aa4450882b92638d026'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e60cc64f-91fa-53d3-8d26-a1116b02f6f7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f1d2d6a7-1f6d-5440-9e37-cdeb6adcd6da', 1), '98d321a281982b7636c91a08660354136cf93bce7ad97aa4450882b92638d026',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/87dda0f1459ac67ebd6537af0d54d4e77983b303dc7a916760ce38d13299ff79.mp3', 1985, '2026-09-13 17:56:21.721581', '51630dfa0d4c3af38b24a937be0b2d32030afdd609cb36074edc1f60cc262b1d', 'validated', '{"audio_key":"87dda0f1459ac67ebd6537af0d54d4e77983b303dc7a916760ce38d13299ff79","entity_key":"d_problems_and_solutions_02:1","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"51630dfa0d4c3af38b24a937be0b2d32030afdd609cb36074edc1f60cc262b1d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/87dda0f1459ac67ebd6537af0d54d4e77983b303dc7a916760ce38d13299ff79.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_and_evidence_02:4 -> audio/generated/tr-TR/dialogues/8bb17af363443a9e25b067907d46b5ab172efcc26caf7d9a2588510c7a1bcfc3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a772aafd-692c-52f7-b703-8e5d21533c9a', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_evidence_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2ba3c903ea49ce4150f1c7d427f68d7a745c7cb0054a14d62dddeef33f2336c4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c0c9c19e-514f-5792-b903-8c3107eccafa', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a772aafd-692c-52f7-b703-8e5d21533c9a', 1), '2ba3c903ea49ce4150f1c7d427f68d7a745c7cb0054a14d62dddeef33f2336c4',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/8bb17af363443a9e25b067907d46b5ab172efcc26caf7d9a2588510c7a1bcfc3.mp3', 1802, '2026-09-13 17:56:22.397388', '2fac095c9e0a05edace1e38c37853b655f7569dafd36b7020a6b5ca58595955a', 'validated', '{"audio_key":"8bb17af363443a9e25b067907d46b5ab172efcc26caf7d9a2588510c7a1bcfc3","entity_key":"d_opinions_and_evidence_02:4","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2fac095c9e0a05edace1e38c37853b655f7569dafd36b7020a6b5ca58595955a","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/8bb17af363443a9e25b067907d46b5ab172efcc26caf7d9a2588510c7a1bcfc3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_and_evidence_01:4 -> audio/generated/tr-TR/dialogues/94608f6cbf8965a2166cec5286d6d5a24b05679c59a8b54add755c11183bc4c9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2f2820d8-8330-5f09-9b86-ac412cf67104', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_evidence_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b16b0064f47ed66d7c28a736567fe57a3fcd5d0a8a086780f5ac53113a17b573'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dcdba44c-66a4-5b4c-aecd-b22bc1340141', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2f2820d8-8330-5f09-9b86-ac412cf67104', 1), 'b16b0064f47ed66d7c28a736567fe57a3fcd5d0a8a086780f5ac53113a17b573',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/94608f6cbf8965a2166cec5286d6d5a24b05679c59a8b54add755c11183bc4c9.mp3', 2168, '2026-09-13 17:56:22.797466', '9530bab5de34d30570b41705516237b23391a39eacd097370f495d7a3811a739', 'validated', '{"audio_key":"94608f6cbf8965a2166cec5286d6d5a24b05679c59a8b54add755c11183bc4c9","entity_key":"d_opinions_and_evidence_01:4","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9530bab5de34d30570b41705516237b23391a39eacd097370f495d7a3811a739","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/94608f6cbf8965a2166cec5286d6d5a24b05679c59a8b54add755c11183bc4c9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_storytelling_sequence_01:3 -> audio/generated/tr-TR/dialogues/9539d14cf226050331301bd1099d4ee77d18483f5ac1b5a5356056799ca4c716.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cbc37fbc-0551-533c-842c-b8e53aa2e6f3', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_storytelling_sequence_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '877d883b99cc90710ef6564d631597bf9a3f432a187fd201aaf832fe49fac1ff'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('79e6b9d2-9ea9-56c6-95a1-f0d39ce191f7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cbc37fbc-0551-533c-842c-b8e53aa2e6f3', 1), '877d883b99cc90710ef6564d631597bf9a3f432a187fd201aaf832fe49fac1ff',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/9539d14cf226050331301bd1099d4ee77d18483f5ac1b5a5356056799ca4c716.mp3', 1697, '2026-09-13 17:56:23.408212', 'e9131e7ab20ba9e6a9bf099f1801c1b71557613b1c4c96d445dbe1f5496df5a8', 'validated', '{"audio_key":"9539d14cf226050331301bd1099d4ee77d18483f5ac1b5a5356056799ca4c716","entity_key":"d_storytelling_sequence_01:3","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e9131e7ab20ba9e6a9bf099f1801c1b71557613b1c4c96d445dbe1f5496df5a8","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/9539d14cf226050331301bd1099d4ee77d18483f5ac1b5a5356056799ca4c716.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_problems_and_solutions_01:3 -> audio/generated/tr-TR/dialogues/9b900eee6924950f633496fdcc25b61b5fc3d29c2d056c592d8403c4b7d6b548.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('51735f1c-0485-5664-a533-29a7a39d7567', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_problems_and_solutions_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '92ad2a86a604d0cf150d1ca427c04be07db1710c8fddd227a7f1c360897e44d7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a639ac68-b074-5a33-b704-031c168a69c7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('51735f1c-0485-5664-a533-29a7a39d7567', 1), '92ad2a86a604d0cf150d1ca427c04be07db1710c8fddd227a7f1c360897e44d7',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/9b900eee6924950f633496fdcc25b61b5fc3d29c2d056c592d8403c4b7d6b548.mp3', 1750, '2026-09-13 17:56:23.804542', '3e89d67ed6c4a2c07ecdacd3656a95a7e64a3ea348ae713b835d85690dda0808', 'validated', '{"audio_key":"9b900eee6924950f633496fdcc25b61b5fc3d29c2d056c592d8403c4b7d6b548","entity_key":"d_problems_and_solutions_01:3","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3e89d67ed6c4a2c07ecdacd3656a95a7e64a3ea348ae713b835d85690dda0808","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/9b900eee6924950f633496fdcc25b61b5fc3d29c2d056c592d8403c4b7d6b548.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b1_city_project_capstone_01:2 -> audio/generated/tr-TR/dialogues/9c81ff4d641c2c7993731226568d79ab37f52dae4eeaa25b72f708168f590107.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f50904ee-2777-510f-99f0-91bd1a7c4698', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b1_city_project_capstone_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '56934c9584e9a6954a4c242f7bcee74fdd41ae472d4de8e26883d6023a88c4d7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5e440a49-2339-5f85-a44b-74cab5d244f3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f50904ee-2777-510f-99f0-91bd1a7c4698', 1), '56934c9584e9a6954a4c242f7bcee74fdd41ae472d4de8e26883d6023a88c4d7',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/9c81ff4d641c2c7993731226568d79ab37f52dae4eeaa25b72f708168f590107.mp3', 2455, '2026-09-13 17:56:24.501585', 'e68eff67cb04a5b17603c04c3ababcd3493c10eb9c053f02644c96ed90f7d87d', 'validated', '{"audio_key":"9c81ff4d641c2c7993731226568d79ab37f52dae4eeaa25b72f708168f590107","entity_key":"d_b1_city_project_capstone_01:2","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e68eff67cb04a5b17603c04c3ababcd3493c10eb9c053f02644c96ed90f7d87d","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/9c81ff4d641c2c7993731226568d79ab37f52dae4eeaa25b72f708168f590107.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_storytelling_sequence_02:4 -> audio/generated/tr-TR/dialogues/9e212da74e01efdb486437f745992bfe1dc24f68982749beeefa536ada281e85.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('601a7064-c1c5-5143-8eb1-7fc407ed9817', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_storytelling_sequence_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '22a8aedcf6579fc15a7199133f691c985af3f3919552a2c0a450dcc71cf8038c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ca3838cf-3003-5212-bdc0-d228069c5747', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('601a7064-c1c5-5143-8eb1-7fc407ed9817', 1), '22a8aedcf6579fc15a7199133f691c985af3f3919552a2c0a450dcc71cf8038c',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/9e212da74e01efdb486437f745992bfe1dc24f68982749beeefa536ada281e85.mp3', 1515, '2026-09-13 17:56:24.864103', 'b20ada86d251fceeabf7d19ccf7623f06af28a65b01831ee6f7af8776818a005', 'validated', '{"audio_key":"9e212da74e01efdb486437f745992bfe1dc24f68982749beeefa536ada281e85","entity_key":"d_storytelling_sequence_02:4","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"b20ada86d251fceeabf7d19ccf7623f06af28a65b01831ee6f7af8776818a005","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/9e212da74e01efdb486437f745992bfe1dc24f68982749beeefa536ada281e85.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_conditions_and_consequences_02:3 -> audio/generated/tr-TR/dialogues/a00c696f72f110528f7bf5ff95cccda7029b140dd4a9daf4e0c36f281e3ee90f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d04f2789-8b60-510f-b260-3f0c29c658c2', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_conditions_and_consequences_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aae86cdbca1a4a284e008057f77c98b981481c4171f289d7dc84b218c885f40c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7cca706d-f96e-5b99-97ce-3daa4dc2c587', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d04f2789-8b60-510f-b260-3f0c29c658c2', 1), 'aae86cdbca1a4a284e008057f77c98b981481c4171f289d7dc84b218c885f40c',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/a00c696f72f110528f7bf5ff95cccda7029b140dd4a9daf4e0c36f281e3ee90f.mp3', 1671, '2026-09-13 17:56:25.492419', '3e966ae8c0439cc8d9801b16b034e202acb33b728bc63139a1b265854cef9314', 'validated', '{"audio_key":"a00c696f72f110528f7bf5ff95cccda7029b140dd4a9daf4e0c36f281e3ee90f","entity_key":"d_conditions_and_consequences_02:3","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3e966ae8c0439cc8d9801b16b034e202acb33b728bc63139a1b265854cef9314","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/a00c696f72f110528f7bf5ff95cccda7029b140dd4a9daf4e0c36f281e3ee90f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_goals_and_effort_01:3 -> audio/generated/tr-TR/dialogues/a0f2d2a34dd44423e83f642b1b28b4a3116a7b3c284b3481c7328070530d80bf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('44aa464d-055c-55d7-9a74-fa5aaf0a087e', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_goals_and_effort_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '777f2d6760330f86970ea9df335625b9053529381307b1b680f7d55e9e98af30'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('73f74fae-3b1a-52ee-9210-6f217af56e26', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('44aa464d-055c-55d7-9a74-fa5aaf0a087e', 1), '777f2d6760330f86970ea9df335625b9053529381307b1b680f7d55e9e98af30',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/a0f2d2a34dd44423e83f642b1b28b4a3116a7b3c284b3481c7328070530d80bf.mp3', 1515, '2026-09-13 17:56:25.849616', 'bf718dc4c70aee2f3b48474f884aa1dd2a712098abff5b470e1baf0de52e1d53', 'validated', '{"audio_key":"a0f2d2a34dd44423e83f642b1b28b4a3116a7b3c284b3481c7328070530d80bf","entity_key":"d_goals_and_effort_01:3","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bf718dc4c70aee2f3b48474f884aa1dd2a712098abff5b470e1baf0de52e1d53","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/a0f2d2a34dd44423e83f642b1b28b4a3116a7b3c284b3481c7328070530d80bf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_information_02:2 -> audio/generated/tr-TR/dialogues/a2bba3fb890f7277d46e514a42e95f1f1d95e3fb7943b90b256ae240a20ec667.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('00c1c565-75f5-5b0b-8409-90307002d148', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_information_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ab641b0a25aeb88a49b5328b55244130d30ca383d3114610a53439b83860d5ee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('09524d47-caeb-5785-8c5c-fc77ac5ab037', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('00c1c565-75f5-5b0b-8409-90307002d148', 1), 'ab641b0a25aeb88a49b5328b55244130d30ca383d3114610a53439b83860d5ee',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/a2bba3fb890f7277d46e514a42e95f1f1d95e3fb7943b90b256ae240a20ec667.mp3', 1436, '2026-09-13 17:56:26.495804', '736d771dd5d64389706a0d01d18f821b2e09dcfb8b38aac07da5398cfcbbe2e4', 'validated', '{"audio_key":"a2bba3fb890f7277d46e514a42e95f1f1d95e3fb7943b90b256ae240a20ec667","entity_key":"d_reported_information_02:2","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"736d771dd5d64389706a0d01d18f821b2e09dcfb8b38aac07da5398cfcbbe2e4","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/a2bba3fb890f7277d46e514a42e95f1f1d95e3fb7943b90b256ae240a20ec667.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_and_sources_02:1 -> audio/generated/tr-TR/dialogues/b3868747b463f63e04a5cc37450f6be30c96b86a7cf3abaf06acf0d797ac35a5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e933c991-5054-5dc8-a786-814c37e8a121', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_and_sources_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '76f3acc370dae78268c49aad3e5c70f30f083dbec6efa9715f9bcb555e9e87ce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('64b269cc-fc09-5a53-b21a-81904ded7698', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e933c991-5054-5dc8-a786-814c37e8a121', 1), '76f3acc370dae78268c49aad3e5c70f30f083dbec6efa9715f9bcb555e9e87ce',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/b3868747b463f63e04a5cc37450f6be30c96b86a7cf3abaf06acf0d797ac35a5.mp3', 1671, '2026-09-13 17:56:26.911709', '79c32b696fc10e548be63a94b64c9df24a6b7ca78f18bd44d441f63857666294', 'validated', '{"audio_key":"b3868747b463f63e04a5cc37450f6be30c96b86a7cf3abaf06acf0d797ac35a5","entity_key":"d_media_and_sources_02:1","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"79c32b696fc10e548be63a94b64c9df24a6b7ca78f18bd44d441f63857666294","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/b3868747b463f63e04a5cc37450f6be30c96b86a7cf3abaf06acf0d797ac35a5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_storytelling_sequence_02:3 -> audio/generated/tr-TR/dialogues/b47e8d9189cfa12c52cb6f8baf4fba8843b7950b3fe535cee23a92e45b68b347.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e151c2a3-efde-530d-924f-ab865684f9aa', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_storytelling_sequence_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '781cb15031eb4318bdcada62ae0a85dab250a850d17fa62178d52213bd8766aa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('267a252a-3c5f-5ec8-9544-34669864fc78', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e151c2a3-efde-530d-924f-ab865684f9aa', 1), '781cb15031eb4318bdcada62ae0a85dab250a850d17fa62178d52213bd8766aa',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/b47e8d9189cfa12c52cb6f8baf4fba8843b7950b3fe535cee23a92e45b68b347.mp3', 1384, '2026-09-13 17:56:27.478908', '4b0fda886d182ee1f360e15905e9a9e643efb8b1331bd040bc314dc1ac547f39', 'validated', '{"audio_key":"b47e8d9189cfa12c52cb6f8baf4fba8843b7950b3fe535cee23a92e45b68b347","entity_key":"d_storytelling_sequence_02:3","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4b0fda886d182ee1f360e15905e9a9e643efb8b1331bd040bc314dc1ac547f39","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/b47e8d9189cfa12c52cb6f8baf4fba8843b7950b3fe535cee23a92e45b68b347.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_and_sources_02:4 -> audio/generated/tr-TR/dialogues/b643007ed50ec2151ad29ae72507cc1818521163c0c8955b85bb2b90a24dbe91.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fb590531-45b8-5b92-9fed-e9c02c57913c', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_and_sources_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7a1cd39ec10ce8bc33b637cb35393d9068fd636dbfd249303545275f5bb7cdae'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a6e41f47-2586-5309-8c64-d25d73be0748', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fb590531-45b8-5b92-9fed-e9c02c57913c', 1), '7a1cd39ec10ce8bc33b637cb35393d9068fd636dbfd249303545275f5bb7cdae',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/b643007ed50ec2151ad29ae72507cc1818521163c0c8955b85bb2b90a24dbe91.mp3', 2507, '2026-09-13 17:56:28.001566', 'a0d88eb04a2768bd76970633c74d05409bd37e138e3f320c4326bf583c638f97', 'validated', '{"audio_key":"b643007ed50ec2151ad29ae72507cc1818521163c0c8955b85bb2b90a24dbe91","entity_key":"d_media_and_sources_02:4","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a0d88eb04a2768bd76970633c74d05409bd37e138e3f320c4326bf583c638f97","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/b643007ed50ec2151ad29ae72507cc1818521163c0c8955b85bb2b90a24dbe91.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_experiences_and_change_01:1 -> audio/generated/tr-TR/dialogues/b645f2938479ee025c62fe6c4eb74ccd225a92551baccd253cbc21e75d50a23c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5ab345e3-cc17-54ca-b175-3a60c2a18dea', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_experiences_and_change_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '51d0a83c7e492ea3d70e63bdfee948d8edc81c0fba1b20fcfaa5de0f15840c10'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('900c8e11-ef00-550c-ad84-2b571b8c01d0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5ab345e3-cc17-54ca-b175-3a60c2a18dea', 1), '51d0a83c7e492ea3d70e63bdfee948d8edc81c0fba1b20fcfaa5de0f15840c10',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/b645f2938479ee025c62fe6c4eb74ccd225a92551baccd253cbc21e75d50a23c.mp3', 2324, '2026-09-13 17:56:28.536035', '6bec3bbe190ea415a45d5057b2c14c41184f49559ea3d52279266912601b987b', 'validated', '{"audio_key":"b645f2938479ee025c62fe6c4eb74ccd225a92551baccd253cbc21e75d50a23c","entity_key":"d_experiences_and_change_01:1","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6bec3bbe190ea415a45d5057b2c14c41184f49559ea3d52279266912601b987b","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/b645f2938479ee025c62fe6c4eb74ccd225a92551baccd253cbc21e75d50a23c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_social_nuance_01:2 -> audio/generated/tr-TR/dialogues/b9a7127bbf84af608ee8743b592d4cec592deea549c3695ade0fd0ac265a0929.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0c59a05b-e03b-5525-92cf-ceff9af5008c', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_social_nuance_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '726bbb5465aa3b2fc9dd50f200f33e663604771336efb22a6bc92c5c0228dc99'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a3ccbd9d-fb6d-5225-b6a3-897a1cb69942', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0c59a05b-e03b-5525-92cf-ceff9af5008c', 1), '726bbb5465aa3b2fc9dd50f200f33e663604771336efb22a6bc92c5c0228dc99',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/b9a7127bbf84af608ee8743b592d4cec592deea549c3695ade0fd0ac265a0929.mp3', 2324, '2026-09-13 17:56:29.095672', '74bd77820279d2590c03db3c037a327aa153e58d8328545223e9936d2359831f', 'validated', '{"audio_key":"b9a7127bbf84af608ee8743b592d4cec592deea549c3695ade0fd0ac265a0929","entity_key":"d_social_nuance_01:2","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"74bd77820279d2590c03db3c037a327aa153e58d8328545223e9936d2359831f","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/b9a7127bbf84af608ee8743b592d4cec592deea549c3695ade0fd0ac265a0929.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_information_01:2 -> audio/generated/tr-TR/dialogues/bb7fe040f8352b5353f1d6c02942acfbaa7238fe0428465861e58c302344be59.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('040d9a4f-bda7-5dfe-aeab-b7149af94dd8', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_information_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bfee283d7594fa1f2e8fc30a5b1bf5e674ce012991e7b018739d5ff3bae1cc33'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('34e15e81-a377-58c7-8aa4-54319d53bea6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('040d9a4f-bda7-5dfe-aeab-b7149af94dd8', 1), 'bfee283d7594fa1f2e8fc30a5b1bf5e674ce012991e7b018739d5ff3bae1cc33',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/bb7fe040f8352b5353f1d6c02942acfbaa7238fe0428465861e58c302344be59.mp3', 2351, '2026-09-13 17:56:29.705732', '7d2ab1f40bc6b3039af2a129ef6843764a2b145f3992c0b307885c3b7282bfba', 'validated', '{"audio_key":"bb7fe040f8352b5353f1d6c02942acfbaa7238fe0428465861e58c302344be59","entity_key":"d_reported_information_01:2","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"7d2ab1f40bc6b3039af2a129ef6843764a2b145f3992c0b307885c3b7282bfba","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/bb7fe040f8352b5353f1d6c02942acfbaa7238fe0428465861e58c302344be59.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b1_city_project_capstone_01:4 -> audio/generated/tr-TR/dialogues/bc28b9192ded2771031c4d91f557357f70824a49e71eb3c87ee6a2d0d70765e2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9b4943b1-ea7e-5496-8a8c-b27709afc037', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b1_city_project_capstone_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7c3bcfc0ba8b2b28be86ce6d841e334a25a7129529bdde70492d6441b2d6cdc0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dd4d4d75-a80b-5aa6-95ca-c5e0edff46d6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9b4943b1-ea7e-5496-8a8c-b27709afc037', 1), '7c3bcfc0ba8b2b28be86ce6d841e334a25a7129529bdde70492d6441b2d6cdc0',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/bc28b9192ded2771031c4d91f557357f70824a49e71eb3c87ee6a2d0d70765e2.mp3', 2586, '2026-09-13 17:56:30.214259', 'd4144c90e593116f96b7d7db42972f817def5b9b495a9f5ae735345d9dfa1930', 'validated', '{"audio_key":"bc28b9192ded2771031c4d91f557357f70824a49e71eb3c87ee6a2d0d70765e2","entity_key":"d_b1_city_project_capstone_01:4","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d4144c90e593116f96b7d7db42972f817def5b9b495a9f5ae735345d9dfa1930","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/bc28b9192ded2771031c4d91f557357f70824a49e71eb3c87ee6a2d0d70765e2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_and_evidence_02:3 -> audio/generated/tr-TR/dialogues/bdc8400b1ebc2a43dd7a53c3f2b770a0d286d3d2fcadcef0bd38420befc462ea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('72ddd2a9-c677-5f99-8823-ea4eae3a0c0e', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_evidence_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '599cbb9ac4ade6823cba9d68b8f9f5e3b6cceca7714437f4b865dedc168e141f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4527c17f-40de-5d3b-bd51-a1417fd86725', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('72ddd2a9-c677-5f99-8823-ea4eae3a0c0e', 1), '599cbb9ac4ade6823cba9d68b8f9f5e3b6cceca7714437f4b865dedc168e141f',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/bdc8400b1ebc2a43dd7a53c3f2b770a0d286d3d2fcadcef0bd38420befc462ea.mp3', 1280, '2026-09-13 17:56:30.702024', '05b90886b63e89a9471f983112c95dd08c9dab09e7b0878703e231773c87023d', 'validated', '{"audio_key":"bdc8400b1ebc2a43dd7a53c3f2b770a0d286d3d2fcadcef0bd38420befc462ea","entity_key":"d_opinions_and_evidence_02:3","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"05b90886b63e89a9471f983112c95dd08c9dab09e7b0878703e231773c87023d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/bdc8400b1ebc2a43dd7a53c3f2b770a0d286d3d2fcadcef0bd38420befc462ea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_goals_and_effort_02:4 -> audio/generated/tr-TR/dialogues/c03832c4dd8fe8e8f9c467ec79f7e6b5d745f15276fcdc629a0233a5c5fa4942.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('909a79a8-0c83-5b9f-b1e3-ae1a1479a980', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_goals_and_effort_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e3394ff4866e26e184dc99214d862678c32808d03725de0232fe2b71e1e4d4b3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2c45c465-db5c-5688-8ee2-e27e2fdebc18', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('909a79a8-0c83-5b9f-b1e3-ae1a1479a980', 1), 'e3394ff4866e26e184dc99214d862678c32808d03725de0232fe2b71e1e4d4b3',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/c03832c4dd8fe8e8f9c467ec79f7e6b5d745f15276fcdc629a0233a5c5fa4942.mp3', 2324, '2026-09-13 17:56:31.410300', '503d95b8637a8505244488b52b84666c7e667581a353c0fdc0c95f4ea3389dd3', 'validated', '{"audio_key":"c03832c4dd8fe8e8f9c467ec79f7e6b5d745f15276fcdc629a0233a5c5fa4942","entity_key":"d_goals_and_effort_02:4","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"503d95b8637a8505244488b52b84666c7e667581a353c0fdc0c95f4ea3389dd3","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/c03832c4dd8fe8e8f9c467ec79f7e6b5d745f15276fcdc629a0233a5c5fa4942.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_and_evidence_02:2 -> audio/generated/tr-TR/dialogues/c09947aee012090c56ce742f5708e7504e964e6bc4fb70af7231b3a82feccacc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1c53d6fd-a342-58ed-b9b8-083b90be7df8', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_evidence_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a3b55af35e58d9c767f1f51ba62bbd2b84496e0b8bb69cd61eaa7b9cf98df661'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('89761df1-7f55-5ca1-99de-01a89accac30', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1c53d6fd-a342-58ed-b9b8-083b90be7df8', 1), 'a3b55af35e58d9c767f1f51ba62bbd2b84496e0b8bb69cd61eaa7b9cf98df661',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/c09947aee012090c56ce742f5708e7504e964e6bc4fb70af7231b3a82feccacc.mp3', 1253, '2026-09-13 17:56:31.669899', '49968d8f4ee384f70953f99a03702d4b8d45334cd8fff56a84d2acb4246532e3', 'validated', '{"audio_key":"c09947aee012090c56ce742f5708e7504e964e6bc4fb70af7231b3a82feccacc","entity_key":"d_opinions_and_evidence_02:2","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"49968d8f4ee384f70953f99a03702d4b8d45334cd8fff56a84d2acb4246532e3","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/c09947aee012090c56ce742f5708e7504e964e6bc4fb70af7231b3a82feccacc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_and_sources_01:3 -> audio/generated/tr-TR/dialogues/c1bc6aa647e63b35ab26ad1e1d7f94088dcdb996116841797031c7e332b11c64.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0ee93507-af4c-5ede-a294-d99fb10e124e', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_and_sources_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '781b6eccb9840f003b34e0b894b24f74bfcf96858b3df41820d0747ec9ea4d27'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f72d0665-f634-5100-a91a-1319c1fc0975', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0ee93507-af4c-5ede-a294-d99fb10e124e', 1), '781b6eccb9840f003b34e0b894b24f74bfcf96858b3df41820d0747ec9ea4d27',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/c1bc6aa647e63b35ab26ad1e1d7f94088dcdb996116841797031c7e332b11c64.mp3', 1854, '2026-09-13 17:56:32.462929', '2218e7984953d6681fd8f39b540b9d3bc8841cad8a7aba8860a4fd35a00ebba3', 'validated', '{"audio_key":"c1bc6aa647e63b35ab26ad1e1d7f94088dcdb996116841797031c7e332b11c64","entity_key":"d_media_and_sources_01:3","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2218e7984953d6681fd8f39b540b9d3bc8841cad8a7aba8860a4fd35a00ebba3","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/c1bc6aa647e63b35ab26ad1e1d7f94088dcdb996116841797031c7e332b11c64.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_and_evidence_02:1 -> audio/generated/tr-TR/dialogues/c40f716c48845589d6aefe040c20dba6d8724c7b5ffb00078f6040f30a478e0c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('916c58e7-992c-533c-986c-4d442505c115', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_evidence_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd4a7e5f43a79fb9bd95b43dae0490611eb6666ee6920e56d0d1d134cdd9b34d3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a30ca357-73e5-5c94-9ac0-bc91a34742db', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('916c58e7-992c-533c-986c-4d442505c115', 1), 'd4a7e5f43a79fb9bd95b43dae0490611eb6666ee6920e56d0d1d134cdd9b34d3',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/c40f716c48845589d6aefe040c20dba6d8724c7b5ffb00078f6040f30a478e0c.mp3', 1567, '2026-09-13 17:56:32.689619', '9c3b14598c48c322a57731a33c873bd73aad960129b6469ed9de66299d2ac59a', 'validated', '{"audio_key":"c40f716c48845589d6aefe040c20dba6d8724c7b5ffb00078f6040f30a478e0c","entity_key":"d_opinions_and_evidence_02:1","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9c3b14598c48c322a57731a33c873bd73aad960129b6469ed9de66299d2ac59a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/c40f716c48845589d6aefe040c20dba6d8724c7b5ffb00078f6040f30a478e0c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_conditions_and_consequences_01:2 -> audio/generated/tr-TR/dialogues/cb4724f82df546c6a68e745af9669223fcf6a71135bba6fe723af6d7a51b564d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('24374e02-0173-5d80-beeb-0b4aa350514b', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_conditions_and_consequences_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '651ef6803ba7cc8c9fcdeac18251c409eb49223caccf4f2ebd13463237434377'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2f0e26c1-0987-563c-9a66-a72f6d9860db', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('24374e02-0173-5d80-beeb-0b4aa350514b', 1), '651ef6803ba7cc8c9fcdeac18251c409eb49223caccf4f2ebd13463237434377',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/cb4724f82df546c6a68e745af9669223fcf6a71135bba6fe723af6d7a51b564d.mp3', 1332, '2026-09-13 17:56:33.463804', '0ca27accc9ab3448fdbeef446e12913d01b8622ae689a9fcc4dbb06c6b897614', 'validated', '{"audio_key":"cb4724f82df546c6a68e745af9669223fcf6a71135bba6fe723af6d7a51b564d","entity_key":"d_conditions_and_consequences_01:2","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0ca27accc9ab3448fdbeef446e12913d01b8622ae689a9fcc4dbb06c6b897614","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/cb4724f82df546c6a68e745af9669223fcf6a71135bba6fe723af6d7a51b564d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_problems_and_solutions_02:4 -> audio/generated/tr-TR/dialogues/d289641862ba95bbe65020cb190103beb55e9ad7f228063e5ce9231265a3ecc5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('715dc4c0-0247-5604-bf80-cd6c4e5c1eca', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_problems_and_solutions_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '42aec44da9018b6c0c51a22e307a3a6ebbd2f58335fab34890cdb29e7d10955b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c4d77d98-8cc2-56e3-9f71-145beb916733', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('715dc4c0-0247-5604-bf80-cd6c4e5c1eca', 1), '42aec44da9018b6c0c51a22e307a3a6ebbd2f58335fab34890cdb29e7d10955b',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/d289641862ba95bbe65020cb190103beb55e9ad7f228063e5ce9231265a3ecc5.mp3', 1697, '2026-09-13 17:56:33.716730', '2836135081923f6e2c8da273dfa8721f2701adf8eda9ffd01ea8fc66c31d8ff5', 'validated', '{"audio_key":"d289641862ba95bbe65020cb190103beb55e9ad7f228063e5ce9231265a3ecc5","entity_key":"d_problems_and_solutions_02:4","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2836135081923f6e2c8da273dfa8721f2701adf8eda9ffd01ea8fc66c31d8ff5","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/d289641862ba95bbe65020cb190103beb55e9ad7f228063e5ce9231265a3ecc5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_conditions_and_consequences_02:4 -> audio/generated/tr-TR/dialogues/d2eed27467ae5e8aeebb64eadf226831909bd753f47e9fc4f8c17a6823760436.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('73b268f1-6745-51b6-9b58-931ea1589721', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_conditions_and_consequences_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b99a6887fa77cd419855f88c469c7d2db76ba984457bd513a33740ddf09b85c4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b395125e-8ff5-58a5-af39-237223561b87', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('73b268f1-6745-51b6-9b58-931ea1589721', 1), 'b99a6887fa77cd419855f88c469c7d2db76ba984457bd513a33740ddf09b85c4',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/d2eed27467ae5e8aeebb64eadf226831909bd753f47e9fc4f8c17a6823760436.mp3', 2351, '2026-09-13 17:56:34.591556', 'fedb6a547d8b6016c039a57566ccc751f0f9e6b2eaf56d0453ade1a8af042123', 'validated', '{"audio_key":"d2eed27467ae5e8aeebb64eadf226831909bd753f47e9fc4f8c17a6823760436","entity_key":"d_conditions_and_consequences_02:4","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"fedb6a547d8b6016c039a57566ccc751f0f9e6b2eaf56d0453ade1a8af042123","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/d2eed27467ae5e8aeebb64eadf226831909bd753f47e9fc4f8c17a6823760436.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_storytelling_sequence_01:2 -> audio/generated/tr-TR/dialogues/d93f04bfd251ed2a724773866ac0db48a2d0bfbf1121721f0bb7bbfa064a7460.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0ae154df-eed5-5343-b48d-352327b6e957', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_storytelling_sequence_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '67ad3f9088c884fa441ee038cb5e6f49508d4c2cba270c70490490f0eb927438'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8ec1293f-905e-5db1-b92b-a491b64e300a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0ae154df-eed5-5343-b48d-352327b6e957', 1), '67ad3f9088c884fa441ee038cb5e6f49508d4c2cba270c70490490f0eb927438',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/d93f04bfd251ed2a724773866ac0db48a2d0bfbf1121721f0bb7bbfa064a7460.mp3', 2533, '2026-09-13 17:56:34.794676', '49cfc7500646c06c8ba92ed2a9c26241a7aa313a718c9faaa35a9a80ad169aeb', 'validated', '{"audio_key":"d93f04bfd251ed2a724773866ac0db48a2d0bfbf1121721f0bb7bbfa064a7460","entity_key":"d_storytelling_sequence_01:2","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"49cfc7500646c06c8ba92ed2a9c26241a7aa313a718c9faaa35a9a80ad169aeb","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/d93f04bfd251ed2a724773866ac0db48a2d0bfbf1121721f0bb7bbfa064a7460.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_conditions_and_consequences_01:1 -> audio/generated/tr-TR/dialogues/df7c82706a7cdd0abc1ad3e7b32c9ef3ce381e7a0f868b65bc646686fdcce5a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6a59fb74-17f0-5cf4-b5cf-22224485eb02', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_conditions_and_consequences_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9739a715e7919de9198c64ebb8e23a93eb66b388a76b72e035a73b3129db2ea0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('70993be5-e3d7-5209-9744-3a0d735b07b5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6a59fb74-17f0-5cf4-b5cf-22224485eb02', 1), '9739a715e7919de9198c64ebb8e23a93eb66b388a76b72e035a73b3129db2ea0',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/df7c82706a7cdd0abc1ad3e7b32c9ef3ce381e7a0f868b65bc646686fdcce5a0.mp3', 2403, '2026-09-13 17:56:35.661393', 'c883c8b0b4ac60ad42ed3c85979e07eb4481c446d16c3ebdba3e2fa731dd33cf', 'validated', '{"audio_key":"df7c82706a7cdd0abc1ad3e7b32c9ef3ce381e7a0f868b65bc646686fdcce5a0","entity_key":"d_conditions_and_consequences_01:1","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c883c8b0b4ac60ad42ed3c85979e07eb4481c446d16c3ebdba3e2fa731dd33cf","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/df7c82706a7cdd0abc1ad3e7b32c9ef3ce381e7a0f868b65bc646686fdcce5a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_information_01:3 -> audio/generated/tr-TR/dialogues/e565b1dd1516cba9aa2bbb7bca2ca995a41eb4e99a71aff2d5490ea20fba9aca.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c98f8b5f-b01b-50e4-bff5-5aa729faa5df', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_information_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cbd80586f7dddc8514fb25063c5cbbbe4c61502cc82818bd49c646587d7a4210'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('abb89b94-b64f-5e56-b10d-b24cfce05dc2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c98f8b5f-b01b-50e4-bff5-5aa729faa5df', 1), 'cbd80586f7dddc8514fb25063c5cbbbe4c61502cc82818bd49c646587d7a4210',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/e565b1dd1516cba9aa2bbb7bca2ca995a41eb4e99a71aff2d5490ea20fba9aca.mp3', 1515, '2026-09-13 17:56:35.801260', '8a4f7895c0bca5d3b50872b41bf14d52df1bfd2a4a556c1ac3789604a648d907', 'validated', '{"audio_key":"e565b1dd1516cba9aa2bbb7bca2ca995a41eb4e99a71aff2d5490ea20fba9aca","entity_key":"d_reported_information_01:3","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8a4f7895c0bca5d3b50872b41bf14d52df1bfd2a4a556c1ac3789604a648d907","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/e565b1dd1516cba9aa2bbb7bca2ca995a41eb4e99a71aff2d5490ea20fba9aca.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_problems_and_solutions_02:2 -> audio/generated/tr-TR/dialogues/e8d29987e74af97346d896bf727af8e8207376e68e4388bcfa321b9d3d0fa572.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('280d54df-bef5-54d1-ac1c-a0685303395d', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_problems_and_solutions_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe4a20a852427e7a1fbb6415ee6d4ee20f932a91f3ed1df55d9394c9abb5ca6c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d6fd8c12-b1db-5657-8868-b66e58228aac', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('280d54df-bef5-54d1-ac1c-a0685303395d', 1), 'fe4a20a852427e7a1fbb6415ee6d4ee20f932a91f3ed1df55d9394c9abb5ca6c',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/e8d29987e74af97346d896bf727af8e8207376e68e4388bcfa321b9d3d0fa572.mp3', 1802, '2026-09-13 17:56:36.707325', '8ff00b3cc4fa0d89be418ecfe1c17bb6186e6e222c2b6ba7721dca46097aad7c', 'validated', '{"audio_key":"e8d29987e74af97346d896bf727af8e8207376e68e4388bcfa321b9d3d0fa572","entity_key":"d_problems_and_solutions_02:2","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8ff00b3cc4fa0d89be418ecfe1c17bb6186e6e222c2b6ba7721dca46097aad7c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/e8d29987e74af97346d896bf727af8e8207376e68e4388bcfa321b9d3d0fa572.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_and_sources_02:2 -> audio/generated/tr-TR/dialogues/e9a8df81ea2150b9ee84da75cb952b0d1ef26ad0e7fb0434fbb03468f93f61bb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('01221d8d-8e88-5703-bea3-c79fcfd1e4ec', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_and_sources_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '851c6010b961493203c071ba4703125dc5a4fc655275ce054d5520f283373ef9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('56aa8173-0cbd-557b-95a8-4ab1b45a4095', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('01221d8d-8e88-5703-bea3-c79fcfd1e4ec', 1), '851c6010b961493203c071ba4703125dc5a4fc655275ce054d5520f283373ef9',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/e9a8df81ea2150b9ee84da75cb952b0d1ef26ad0e7fb0434fbb03468f93f61bb.mp3', 1436, '2026-09-13 17:56:36.803194', '6a7a113f66f8ba1653fc4dce0e16d792723232267a68c6502699b9d455ccfaf4', 'validated', '{"audio_key":"e9a8df81ea2150b9ee84da75cb952b0d1ef26ad0e7fb0434fbb03468f93f61bb","entity_key":"d_media_and_sources_02:2","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6a7a113f66f8ba1653fc4dce0e16d792723232267a68c6502699b9d455ccfaf4","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/e9a8df81ea2150b9ee84da75cb952b0d1ef26ad0e7fb0434fbb03468f93f61bb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b1_city_project_capstone_01:3 -> audio/generated/tr-TR/dialogues/eb5897a56df8aec59fa744af49f3a3c824dbe2d4c28e2071a2a15233b61caf0c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e28551e3-df1f-5bdd-8693-4b62e83d3b0a', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b1_city_project_capstone_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2e12a12fcb41024879e5784c6a033c1434063dea1228ac69281191dd89b24ef4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('123bd7ab-b808-5dd4-b719-96b8cae5a084', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e28551e3-df1f-5bdd-8693-4b62e83d3b0a', 1), '2e12a12fcb41024879e5784c6a033c1434063dea1228ac69281191dd89b24ef4',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/eb5897a56df8aec59fa744af49f3a3c824dbe2d4c28e2071a2a15233b61caf0c.mp3', 2455, '2026-09-13 17:56:37.800632', '939b63604ca0ea16ab31e4b4269856dc1dda9c1361a19aa2fabdf764b44b21c0', 'validated', '{"audio_key":"eb5897a56df8aec59fa744af49f3a3c824dbe2d4c28e2071a2a15233b61caf0c","entity_key":"d_b1_city_project_capstone_01:3","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"939b63604ca0ea16ab31e4b4269856dc1dda9c1361a19aa2fabdf764b44b21c0","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/eb5897a56df8aec59fa744af49f3a3c824dbe2d4c28e2071a2a15233b61caf0c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_social_nuance_01:3 -> audio/generated/tr-TR/dialogues/ebb4716518ba3890bca26416444176a3e55844216da3d67964e05ac85912be88.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a89e2196-1e84-5354-a043-c4073bffae47', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_social_nuance_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '62388d1955c25e37b2a40bbe25aab03d1446d4a89e9ac83d2af7bd63be894f38'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d3e4171e-a723-5650-b443-846b588138e9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a89e2196-1e84-5354-a043-c4073bffae47', 1), '62388d1955c25e37b2a40bbe25aab03d1446d4a89e9ac83d2af7bd63be894f38',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/ebb4716518ba3890bca26416444176a3e55844216da3d67964e05ac85912be88.mp3', 1384, '2026-09-13 17:56:37.802031', 'b40c428f32cf0cd521bab76ae8d3dc981aad0b6cbb3aa9b7b17ee210e536c8b2', 'validated', '{"audio_key":"ebb4716518ba3890bca26416444176a3e55844216da3d67964e05ac85912be88","entity_key":"d_social_nuance_01:3","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b40c428f32cf0cd521bab76ae8d3dc981aad0b6cbb3aa9b7b17ee210e536c8b2","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/ebb4716518ba3890bca26416444176a3e55844216da3d67964e05ac85912be88.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b1_city_project_capstone_02:1 -> audio/generated/tr-TR/dialogues/eeaabc4a6f8707b17c1bd78b17a43cd12e9c2fc83f648801d6426fd7902c4084.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4ed704b4-5a57-5ed1-a55d-40612e573d31', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b1_city_project_capstone_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '56135937487ff4c0ad9163b0818c5452db6a4f908674e64435bb92273a460706'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('79ed91db-34f9-5078-b01d-a07a076b0b23', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4ed704b4-5a57-5ed1-a55d-40612e573d31', 1), '56135937487ff4c0ad9163b0818c5452db6a4f908674e64435bb92273a460706',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/eeaabc4a6f8707b17c1bd78b17a43cd12e9c2fc83f648801d6426fd7902c4084.mp3', 2220, '2026-09-13 17:56:38.922438', '5cdef95a0695efcb7ae412140aa1bf4671db8568d543eea60d99d4750e6c94be', 'validated', '{"audio_key":"eeaabc4a6f8707b17c1bd78b17a43cd12e9c2fc83f648801d6426fd7902c4084","entity_key":"d_b1_city_project_capstone_02:1","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5cdef95a0695efcb7ae412140aa1bf4671db8568d543eea60d99d4750e6c94be","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/eeaabc4a6f8707b17c1bd78b17a43cd12e9c2fc83f648801d6426fd7902c4084.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_information_01:4 -> audio/generated/tr-TR/dialogues/f10f8e13b81a27ae8d05aab9fdc521ab756f8bfdec9988325950441dc8cf00ec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d0c38492-068e-5e48-b89d-34c0068f4268', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_information_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '03532a7c270de78ae7b5ee9725121b0ac637fbd6b324b1871f42cfd82fd220e6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('526d74c2-ab35-5e56-bb84-247e7787f473', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d0c38492-068e-5e48-b89d-34c0068f4268', 1), '03532a7c270de78ae7b5ee9725121b0ac637fbd6b324b1871f42cfd82fd220e6',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/f10f8e13b81a27ae8d05aab9fdc521ab756f8bfdec9988325950441dc8cf00ec.mp3', 1697, '2026-09-13 17:56:38.839097', 'c030c8e0db2f655404981164894de2159340b0cceefcdb96ca8ca5e53835f051', 'validated', '{"audio_key":"f10f8e13b81a27ae8d05aab9fdc521ab756f8bfdec9988325950441dc8cf00ec","entity_key":"d_reported_information_01:4","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"c030c8e0db2f655404981164894de2159340b0cceefcdb96ca8ca5e53835f051","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/f10f8e13b81a27ae8d05aab9fdc521ab756f8bfdec9988325950441dc8cf00ec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_and_evidence_01:3 -> audio/generated/tr-TR/dialogues/f15c4d7c3d80ab068dc9dd95f387257f6b6e8d487884a8527c2e82abac3c7ee6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d4f31294-b767-5405-998e-f772232ad8dd', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_evidence_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '82f5117ccd6be01d589494ffff8908d560e59b272ab4e409a7732005e6ad8e47'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('65115325-492a-5109-8f2e-e23dc820f45f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d4f31294-b767-5405-998e-f772232ad8dd', 1), '82f5117ccd6be01d589494ffff8908d560e59b272ab4e409a7732005e6ad8e47',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/f15c4d7c3d80ab068dc9dd95f387257f6b6e8d487884a8527c2e82abac3c7ee6.mp3', 1750, '2026-09-13 17:56:39.840225', '22c6b836abc13893d795545a3313865e7fd50c15391fe017448bce9d2bf03b34', 'validated', '{"audio_key":"f15c4d7c3d80ab068dc9dd95f387257f6b6e8d487884a8527c2e82abac3c7ee6","entity_key":"d_opinions_and_evidence_01:3","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"22c6b836abc13893d795545a3313865e7fd50c15391fe017448bce9d2bf03b34","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/f15c4d7c3d80ab068dc9dd95f387257f6b6e8d487884a8527c2e82abac3c7ee6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_social_nuance_02:4 -> audio/generated/tr-TR/dialogues/f493ac9a567e11c1166c52c5d64270065b1da2a319093b09bc8e0dccabfc00c7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0b4cb550-f47c-5d60-a703-346fbd246929', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_social_nuance_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '51cb881d75a6e101bfea2cbfd0252aafe8e8e102637efdf7d806b9032277c702'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a78cf719-6b2e-5e27-8994-da1a6bdad5f2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0b4cb550-f47c-5d60-a703-346fbd246929', 1), '51cb881d75a6e101bfea2cbfd0252aafe8e8e102637efdf7d806b9032277c702',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/f493ac9a567e11c1166c52c5d64270065b1da2a319093b09bc8e0dccabfc00c7.mp3', 2272, '2026-09-13 17:56:40.057933', '14e65be32a6d0d89f4b25f818f154c31d76d790a84081a54d681bf4791903340', 'validated', '{"audio_key":"f493ac9a567e11c1166c52c5d64270065b1da2a319093b09bc8e0dccabfc00c7","entity_key":"d_social_nuance_02:4","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"14e65be32a6d0d89f4b25f818f154c31d76d790a84081a54d681bf4791903340","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/f493ac9a567e11c1166c52c5d64270065b1da2a319093b09bc8e0dccabfc00c7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_goals_and_effort_01:4 -> audio/generated/tr-TR/dialogues/f763978231a71b299ba8857553b44221a051ba15d2e5a36d86af3a6287e5c66a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('48bb7d4b-cfe7-5f44-860b-b742f1bc08fd', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_goals_and_effort_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '29ec503aeb6a60da272aa0874fd214badf7fc54ab844924a12ff1cc552435799'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d3966f9b-ad0c-5cb2-b2be-7b530d22ce9d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('48bb7d4b-cfe7-5f44-860b-b742f1bc08fd', 1), '29ec503aeb6a60da272aa0874fd214badf7fc54ab844924a12ff1cc552435799',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/f763978231a71b299ba8857553b44221a051ba15d2e5a36d86af3a6287e5c66a.mp3', 2089, '2026-09-13 17:56:40.894206', '4217f35e2c27bf4b05501c774ab275b1f4cde447f901d8fae78918bd8cf689c2', 'validated', '{"audio_key":"f763978231a71b299ba8857553b44221a051ba15d2e5a36d86af3a6287e5c66a","entity_key":"d_goals_and_effort_01:4","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4217f35e2c27bf4b05501c774ab275b1f4cde447f901d8fae78918bd8cf689c2","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/f763978231a71b299ba8857553b44221a051ba15d2e5a36d86af3a6287e5c66a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_social_nuance_03 -> audio/generated/tr-TR/lexical/07207dfdb89035987ee0a9d404251db1a2845d445c9ec348bc800dc07c07a505.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6106b9a3-cfea-59ba-8814-eb61a2432e36', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_social_nuance_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1f800517d9634c57c7f6d48f29207b72c2b246a70a3253806dcb055dba26ff0c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('31e85a43-64d1-51ef-bf0b-bb8ffb8fb67d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6106b9a3-cfea-59ba-8814-eb61a2432e36', 1), '1f800517d9634c57c7f6d48f29207b72c2b246a70a3253806dcb055dba26ff0c',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/07207dfdb89035987ee0a9d404251db1a2845d445c9ec348bc800dc07c07a505.mp3', 1149, '2026-09-13 17:56:41.039026', '0d9aaacd0ee9ece55d29dfdbdb5fab4a81bd1b96826b78741c355c4b4a7f0dd0', 'validated', '{"audio_key":"07207dfdb89035987ee0a9d404251db1a2845d445c9ec348bc800dc07c07a505","entity_key":"lx_social_nuance_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0d9aaacd0ee9ece55d29dfdbdb5fab4a81bd1b96826b78741c355c4b4a7f0dd0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/07207dfdb89035987ee0a9d404251db1a2845d445c9ec348bc800dc07c07a505.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_social_nuance_03 -> audio/generated/tr-TR/lexical/07207dfdb89035987ee0a9d404251db1a2845d445c9ec348bc800dc07c07a505.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2b10bebd-d7cf-53df-b14b-a2a4e94400fd', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_social_nuance_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1f800517d9634c57c7f6d48f29207b72c2b246a70a3253806dcb055dba26ff0c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b1967fd6-c31d-542d-8df7-c5d83775244f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2b10bebd-d7cf-53df-b14b-a2a4e94400fd', 1), '1f800517d9634c57c7f6d48f29207b72c2b246a70a3253806dcb055dba26ff0c',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/07207dfdb89035987ee0a9d404251db1a2845d445c9ec348bc800dc07c07a505.mp3', 1149, '2026-09-13 17:56:41.039026', '0d9aaacd0ee9ece55d29dfdbdb5fab4a81bd1b96826b78741c355c4b4a7f0dd0', 'validated', '{"audio_key":"07207dfdb89035987ee0a9d404251db1a2845d445c9ec348bc800dc07c07a505","entity_key":"wf_social_nuance_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0d9aaacd0ee9ece55d29dfdbdb5fab4a81bd1b96826b78741c355c4b4a7f0dd0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/07207dfdb89035987ee0a9d404251db1a2845d445c9ec348bc800dc07c07a505.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_storytelling_sequence_03 -> audio/generated/tr-TR/lexical/0d73348ba3df7fd3ba7fcf6a240e0c0f0968e357e3c0d286d9e00731da9fdf2d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c3dc1010-9757-56a6-90f6-7a6e3f6f0fc3', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_storytelling_sequence_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '40436988abcb2b578462cdc9f5d76c3e27e457531e8451629afd9a0d817e1d80'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('90fa67e1-97b2-5380-968c-31e2c9ef3742', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c3dc1010-9757-56a6-90f6-7a6e3f6f0fc3', 1), '40436988abcb2b578462cdc9f5d76c3e27e457531e8451629afd9a0d817e1d80',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/0d73348ba3df7fd3ba7fcf6a240e0c0f0968e357e3c0d286d9e00731da9fdf2d.mp3', 1332, '2026-09-13 17:56:41.846887', 'e579b97b482cfb679b8dfc5f82d0920792ae61018bf391a51fd5fa8fe55b2574', 'validated', '{"audio_key":"0d73348ba3df7fd3ba7fcf6a240e0c0f0968e357e3c0d286d9e00731da9fdf2d","entity_key":"lx_storytelling_sequence_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e579b97b482cfb679b8dfc5f82d0920792ae61018bf391a51fd5fa8fe55b2574","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/0d73348ba3df7fd3ba7fcf6a240e0c0f0968e357e3c0d286d9e00731da9fdf2d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_storytelling_sequence_03 -> audio/generated/tr-TR/lexical/0d73348ba3df7fd3ba7fcf6a240e0c0f0968e357e3c0d286d9e00731da9fdf2d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('bc0afc39-7528-5d9d-a6b3-649cc9e4baa2', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_storytelling_sequence_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '40436988abcb2b578462cdc9f5d76c3e27e457531e8451629afd9a0d817e1d80'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5fc1aacb-f0f5-5aca-927e-26bf3dcac1ce', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('bc0afc39-7528-5d9d-a6b3-649cc9e4baa2', 1), '40436988abcb2b578462cdc9f5d76c3e27e457531e8451629afd9a0d817e1d80',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/0d73348ba3df7fd3ba7fcf6a240e0c0f0968e357e3c0d286d9e00731da9fdf2d.mp3', 1332, '2026-09-13 17:56:41.846887', 'e579b97b482cfb679b8dfc5f82d0920792ae61018bf391a51fd5fa8fe55b2574', 'validated', '{"audio_key":"0d73348ba3df7fd3ba7fcf6a240e0c0f0968e357e3c0d286d9e00731da9fdf2d","entity_key":"wf_storytelling_sequence_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e579b97b482cfb679b8dfc5f82d0920792ae61018bf391a51fd5fa8fe55b2574","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/0d73348ba3df7fd3ba7fcf6a240e0c0f0968e357e3c0d286d9e00731da9fdf2d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_opinions_and_evidence_05 -> audio/generated/tr-TR/lexical/1234f080dbf15935822b9ef65d366b58aec0641aa1105ed61188ad8ed2f8f74b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3720c7cc-bb76-522d-b083-ab9000e80c7c', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_opinions_and_evidence_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3ad6c825b0ca916eed2ebcea64e3bf367da7d28de9d8d8097c9312cac7f43fb0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ac3a01dd-f67d-5613-8b63-59565112625c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3720c7cc-bb76-522d-b083-ab9000e80c7c', 1), '3ad6c825b0ca916eed2ebcea64e3bf367da7d28de9d8d8097c9312cac7f43fb0',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/1234f080dbf15935822b9ef65d366b58aec0641aa1105ed61188ad8ed2f8f74b.mp3', 1071, '2026-09-13 17:56:42.128361', 'fb7b9ac173429970c3941aa7c5034018d7c822552a2fb4fc26188e9a1fb0baf3', 'validated', '{"audio_key":"1234f080dbf15935822b9ef65d366b58aec0641aa1105ed61188ad8ed2f8f74b","entity_key":"lx_opinions_and_evidence_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fb7b9ac173429970c3941aa7c5034018d7c822552a2fb4fc26188e9a1fb0baf3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/1234f080dbf15935822b9ef65d366b58aec0641aa1105ed61188ad8ed2f8f74b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_opinions_and_evidence_05 -> audio/generated/tr-TR/lexical/1234f080dbf15935822b9ef65d366b58aec0641aa1105ed61188ad8ed2f8f74b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('60ca87e1-12cd-5d70-98b8-28adb004369d', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_opinions_and_evidence_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3ad6c825b0ca916eed2ebcea64e3bf367da7d28de9d8d8097c9312cac7f43fb0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9de59b40-bf4d-5a93-a1ca-b7b68840e395', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('60ca87e1-12cd-5d70-98b8-28adb004369d', 1), '3ad6c825b0ca916eed2ebcea64e3bf367da7d28de9d8d8097c9312cac7f43fb0',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/1234f080dbf15935822b9ef65d366b58aec0641aa1105ed61188ad8ed2f8f74b.mp3', 1071, '2026-09-13 17:56:42.128361', 'fb7b9ac173429970c3941aa7c5034018d7c822552a2fb4fc26188e9a1fb0baf3', 'validated', '{"audio_key":"1234f080dbf15935822b9ef65d366b58aec0641aa1105ed61188ad8ed2f8f74b","entity_key":"wf_opinions_and_evidence_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fb7b9ac173429970c3941aa7c5034018d7c822552a2fb4fc26188e9a1fb0baf3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/1234f080dbf15935822b9ef65d366b58aec0641aa1105ed61188ad8ed2f8f74b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_media_and_sources_01 -> audio/generated/tr-TR/lexical/13530c03e4fab001a2e1d5e9d163e563d15237e44680599dd85b46c67cce276e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('960a0105-b3e3-5314-a01a-ee4b55764102', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_media_and_sources_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd4178443a56767d281de4f7aa3d6d42de41b9444abd607ad508bfb70f2cd8d64'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b858a2c9-bbd3-5c4a-be8e-c5cb7df829f6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('960a0105-b3e3-5314-a01a-ee4b55764102', 1), 'd4178443a56767d281de4f7aa3d6d42de41b9444abd607ad508bfb70f2cd8d64',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/13530c03e4fab001a2e1d5e9d163e563d15237e44680599dd85b46c67cce276e.mp3', 1071, '2026-09-13 17:56:42.828404', 'ab43022df8d2fa1e93bffdceff0daf1cc9de05b02d8bec587f6425c575400c2c', 'validated', '{"audio_key":"13530c03e4fab001a2e1d5e9d163e563d15237e44680599dd85b46c67cce276e","entity_key":"lx_media_and_sources_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ab43022df8d2fa1e93bffdceff0daf1cc9de05b02d8bec587f6425c575400c2c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/13530c03e4fab001a2e1d5e9d163e563d15237e44680599dd85b46c67cce276e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_media_and_sources_01 -> audio/generated/tr-TR/lexical/13530c03e4fab001a2e1d5e9d163e563d15237e44680599dd85b46c67cce276e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c31e6ab4-f87d-5a00-8272-68a2d4c6b3ff', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_media_and_sources_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd4178443a56767d281de4f7aa3d6d42de41b9444abd607ad508bfb70f2cd8d64'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5ed3ddaf-946a-5f95-bef9-101df4436a1a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c31e6ab4-f87d-5a00-8272-68a2d4c6b3ff', 1), 'd4178443a56767d281de4f7aa3d6d42de41b9444abd607ad508bfb70f2cd8d64',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/13530c03e4fab001a2e1d5e9d163e563d15237e44680599dd85b46c67cce276e.mp3', 1071, '2026-09-13 17:56:42.828404', 'ab43022df8d2fa1e93bffdceff0daf1cc9de05b02d8bec587f6425c575400c2c', 'validated', '{"audio_key":"13530c03e4fab001a2e1d5e9d163e563d15237e44680599dd85b46c67cce276e","entity_key":"wf_media_and_sources_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ab43022df8d2fa1e93bffdceff0daf1cc9de05b02d8bec587f6425c575400c2c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/13530c03e4fab001a2e1d5e9d163e563d15237e44680599dd85b46c67cce276e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_goals_and_effort_01 -> audio/generated/tr-TR/lexical/207e8c9782c4e75a5749583e9aa56b1e0c736ec899763051d5ab25828c66b31a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b42011e4-bce5-550a-af36-d089f2c3b967', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_goals_and_effort_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b51dd9de0a288e23473f036bc7054c853f4757648cfdffa0de9a46f24790d866'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('285b590a-aa45-58b9-a965-a3f7532be261', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b42011e4-bce5-550a-af36-d089f2c3b967', 1), 'b51dd9de0a288e23473f036bc7054c853f4757648cfdffa0de9a46f24790d866',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/207e8c9782c4e75a5749583e9aa56b1e0c736ec899763051d5ab25828c66b31a.mp3', 1149, '2026-09-13 17:56:43.100703', '08d8f996557c3f7915ebb90618333d83d7aee4bebcb24b30d61d143bf39c0488', 'validated', '{"audio_key":"207e8c9782c4e75a5749583e9aa56b1e0c736ec899763051d5ab25828c66b31a","entity_key":"lx_goals_and_effort_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"08d8f996557c3f7915ebb90618333d83d7aee4bebcb24b30d61d143bf39c0488","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/207e8c9782c4e75a5749583e9aa56b1e0c736ec899763051d5ab25828c66b31a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_goals_and_effort_01 -> audio/generated/tr-TR/lexical/207e8c9782c4e75a5749583e9aa56b1e0c736ec899763051d5ab25828c66b31a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('479bb1fb-4723-5886-8ecf-9128b8e249db', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_goals_and_effort_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b51dd9de0a288e23473f036bc7054c853f4757648cfdffa0de9a46f24790d866'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('20dab9fc-11b7-5acf-91d3-10fa103a5f0a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('479bb1fb-4723-5886-8ecf-9128b8e249db', 1), 'b51dd9de0a288e23473f036bc7054c853f4757648cfdffa0de9a46f24790d866',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/207e8c9782c4e75a5749583e9aa56b1e0c736ec899763051d5ab25828c66b31a.mp3', 1149, '2026-09-13 17:56:43.100703', '08d8f996557c3f7915ebb90618333d83d7aee4bebcb24b30d61d143bf39c0488', 'validated', '{"audio_key":"207e8c9782c4e75a5749583e9aa56b1e0c736ec899763051d5ab25828c66b31a","entity_key":"wf_goals_and_effort_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"08d8f996557c3f7915ebb90618333d83d7aee4bebcb24b30d61d143bf39c0488","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/207e8c9782c4e75a5749583e9aa56b1e0c736ec899763051d5ab25828c66b31a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_conditions_and_consequences_02 -> audio/generated/tr-TR/lexical/22ea4311fd459ba2d1a3d01907645d8376b9d3b924f6efa8c999db89e5b1c73b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5da635a0-3dba-5313-a2dc-ea0d3f4c533e', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_conditions_and_consequences_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '54508d1b171839a51b2bb09ecdd6048661167dc23b439b6410f0111236ef584f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1c661ba7-e70d-577c-aad7-919af6f94609', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5da635a0-3dba-5313-a2dc-ea0d3f4c533e', 1), '54508d1b171839a51b2bb09ecdd6048661167dc23b439b6410f0111236ef584f',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/22ea4311fd459ba2d1a3d01907645d8376b9d3b924f6efa8c999db89e5b1c73b.mp3', 1071, '2026-09-13 17:56:43.805401', 'fde1ea3dbcdf113d79a77c6f424db0297305af0f1a4d372d889a639f8d7502af', 'validated', '{"audio_key":"22ea4311fd459ba2d1a3d01907645d8376b9d3b924f6efa8c999db89e5b1c73b","entity_key":"lx_conditions_and_consequences_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fde1ea3dbcdf113d79a77c6f424db0297305af0f1a4d372d889a639f8d7502af","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/22ea4311fd459ba2d1a3d01907645d8376b9d3b924f6efa8c999db89e5b1c73b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_conditions_and_consequences_02 -> audio/generated/tr-TR/lexical/22ea4311fd459ba2d1a3d01907645d8376b9d3b924f6efa8c999db89e5b1c73b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9c9f0b49-8e50-57b4-af38-0f8ba99a6745', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_conditions_and_consequences_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '54508d1b171839a51b2bb09ecdd6048661167dc23b439b6410f0111236ef584f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0e9f7626-91ea-5833-8959-f6e0be29b9dc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9c9f0b49-8e50-57b4-af38-0f8ba99a6745', 1), '54508d1b171839a51b2bb09ecdd6048661167dc23b439b6410f0111236ef584f',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/22ea4311fd459ba2d1a3d01907645d8376b9d3b924f6efa8c999db89e5b1c73b.mp3', 1071, '2026-09-13 17:56:43.805401', 'fde1ea3dbcdf113d79a77c6f424db0297305af0f1a4d372d889a639f8d7502af', 'validated', '{"audio_key":"22ea4311fd459ba2d1a3d01907645d8376b9d3b924f6efa8c999db89e5b1c73b","entity_key":"wf_conditions_and_consequences_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fde1ea3dbcdf113d79a77c6f424db0297305af0f1a4d372d889a639f8d7502af","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/22ea4311fd459ba2d1a3d01907645d8376b9d3b924f6efa8c999db89e5b1c73b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_storytelling_sequence_02 -> audio/generated/tr-TR/lexical/2a597cc8ad74119ebb8bfeabc1e135a4bb95ade384e922e8a86f552e32682634.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8e856a28-1b1e-5f44-b8f2-346bae001e16', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_storytelling_sequence_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f32ba47c5716df316d4230d06148c33285d02cde90ad325d691051be70c15de5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('322739da-0f51-502e-9007-4b544d5aef4d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8e856a28-1b1e-5f44-b8f2-346bae001e16', 1), 'f32ba47c5716df316d4230d06148c33285d02cde90ad325d691051be70c15de5',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/2a597cc8ad74119ebb8bfeabc1e135a4bb95ade384e922e8a86f552e32682634.mp3', 1149, '2026-09-13 17:56:44.071738', '3549dd10703b15312afd8a44fab13f3a0c98271976ca14acc457c2e02a925012', 'validated', '{"audio_key":"2a597cc8ad74119ebb8bfeabc1e135a4bb95ade384e922e8a86f552e32682634","entity_key":"lx_storytelling_sequence_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3549dd10703b15312afd8a44fab13f3a0c98271976ca14acc457c2e02a925012","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/2a597cc8ad74119ebb8bfeabc1e135a4bb95ade384e922e8a86f552e32682634.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_storytelling_sequence_02 -> audio/generated/tr-TR/lexical/2a597cc8ad74119ebb8bfeabc1e135a4bb95ade384e922e8a86f552e32682634.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4e7f19df-52e1-575d-b6e5-9d0fb6a251a8', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_storytelling_sequence_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f32ba47c5716df316d4230d06148c33285d02cde90ad325d691051be70c15de5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c24e0a1c-e2ae-5203-b916-e6ef22f38118', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4e7f19df-52e1-575d-b6e5-9d0fb6a251a8', 1), 'f32ba47c5716df316d4230d06148c33285d02cde90ad325d691051be70c15de5',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/2a597cc8ad74119ebb8bfeabc1e135a4bb95ade384e922e8a86f552e32682634.mp3', 1149, '2026-09-13 17:56:44.071738', '3549dd10703b15312afd8a44fab13f3a0c98271976ca14acc457c2e02a925012', 'validated', '{"audio_key":"2a597cc8ad74119ebb8bfeabc1e135a4bb95ade384e922e8a86f552e32682634","entity_key":"wf_storytelling_sequence_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3549dd10703b15312afd8a44fab13f3a0c98271976ca14acc457c2e02a925012","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/2a597cc8ad74119ebb8bfeabc1e135a4bb95ade384e922e8a86f552e32682634.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_media_and_sources_06 -> audio/generated/tr-TR/lexical/2d197c108ffd91d11d77af19c56f0e995656f7edbc12664804b687e6194d6b44.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3c34e481-79d0-56e8-9a27-c2dd2c7cf8e4', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_media_and_sources_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e61aa0324ade0a19d69e4fd411c39dc8888baa3571818a98c3e14f2cbf72daf4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8deb0362-b086-59a9-9d84-b8120d128cdf', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3c34e481-79d0-56e8-9a27-c2dd2c7cf8e4', 1), 'e61aa0324ade0a19d69e4fd411c39dc8888baa3571818a98c3e14f2cbf72daf4',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/2d197c108ffd91d11d77af19c56f0e995656f7edbc12664804b687e6194d6b44.mp3', 1097, '2026-09-13 17:56:44.767883', '477bf33f926b2e92ab3fce76b1bae8351c86b4716cf856fe142870ff1d873f67', 'validated', '{"audio_key":"2d197c108ffd91d11d77af19c56f0e995656f7edbc12664804b687e6194d6b44","entity_key":"lx_media_and_sources_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"477bf33f926b2e92ab3fce76b1bae8351c86b4716cf856fe142870ff1d873f67","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/2d197c108ffd91d11d77af19c56f0e995656f7edbc12664804b687e6194d6b44.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_media_and_sources_06 -> audio/generated/tr-TR/lexical/2d197c108ffd91d11d77af19c56f0e995656f7edbc12664804b687e6194d6b44.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8f7e84ff-e9d3-5b88-811b-3380b2ddcc37', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_media_and_sources_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e61aa0324ade0a19d69e4fd411c39dc8888baa3571818a98c3e14f2cbf72daf4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7ca618fa-6181-5c89-831f-6fc1aa6afaa7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8f7e84ff-e9d3-5b88-811b-3380b2ddcc37', 1), 'e61aa0324ade0a19d69e4fd411c39dc8888baa3571818a98c3e14f2cbf72daf4',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/2d197c108ffd91d11d77af19c56f0e995656f7edbc12664804b687e6194d6b44.mp3', 1097, '2026-09-13 17:56:44.767883', '477bf33f926b2e92ab3fce76b1bae8351c86b4716cf856fe142870ff1d873f67', 'validated', '{"audio_key":"2d197c108ffd91d11d77af19c56f0e995656f7edbc12664804b687e6194d6b44","entity_key":"wf_media_and_sources_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"477bf33f926b2e92ab3fce76b1bae8351c86b4716cf856fe142870ff1d873f67","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/2d197c108ffd91d11d77af19c56f0e995656f7edbc12664804b687e6194d6b44.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_experiences_and_change_02 -> audio/generated/tr-TR/lexical/365045864411decec47e4fb7caee6096276b5285ef0043ec080b0de7669382e0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('54c97d37-5495-53d9-9d0b-006b50f84b73', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_experiences_and_change_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '40c1a6574135610368a02ecc8e0c18fe4b57382755de294c20f2c3d8831d4ed8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5742bf16-6b20-56a6-b6b3-d59034a4a67b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('54c97d37-5495-53d9-9d0b-006b50f84b73', 1), '40c1a6574135610368a02ecc8e0c18fe4b57382755de294c20f2c3d8831d4ed8',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/365045864411decec47e4fb7caee6096276b5285ef0043ec080b0de7669382e0.mp3', 1018, '2026-09-13 17:56:45.048490', '4f9c68deef3550a2a0fd27cf75335112c4edd65eb54b82b4423f522a9c0c8043', 'validated', '{"audio_key":"365045864411decec47e4fb7caee6096276b5285ef0043ec080b0de7669382e0","entity_key":"lx_experiences_and_change_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4f9c68deef3550a2a0fd27cf75335112c4edd65eb54b82b4423f522a9c0c8043","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/365045864411decec47e4fb7caee6096276b5285ef0043ec080b0de7669382e0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_experiences_and_change_02 -> audio/generated/tr-TR/lexical/365045864411decec47e4fb7caee6096276b5285ef0043ec080b0de7669382e0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f0ba3e6e-7457-5b71-8ebe-765e8abd7255', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_experiences_and_change_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '40c1a6574135610368a02ecc8e0c18fe4b57382755de294c20f2c3d8831d4ed8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a4e5c233-1838-5144-98cf-e7caf16974f5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f0ba3e6e-7457-5b71-8ebe-765e8abd7255', 1), '40c1a6574135610368a02ecc8e0c18fe4b57382755de294c20f2c3d8831d4ed8',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/365045864411decec47e4fb7caee6096276b5285ef0043ec080b0de7669382e0.mp3', 1018, '2026-09-13 17:56:45.048490', '4f9c68deef3550a2a0fd27cf75335112c4edd65eb54b82b4423f522a9c0c8043', 'validated', '{"audio_key":"365045864411decec47e4fb7caee6096276b5285ef0043ec080b0de7669382e0","entity_key":"wf_experiences_and_change_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4f9c68deef3550a2a0fd27cf75335112c4edd65eb54b82b4423f522a9c0c8043","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/365045864411decec47e4fb7caee6096276b5285ef0043ec080b0de7669382e0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_social_nuance_05 -> audio/generated/tr-TR/lexical/43000feb8b1fba645033d830a17cb8663bd45b7fff7ec2c98746df79e371abdf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6ccb07be-6b7c-5388-9af7-59e8e578227a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_social_nuance_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd0ce799185b4c99871d8ffbc533c1be2867e888e11e55ec7d05355d6f7fe464a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fe74a5ea-2dd4-5a33-900d-225d108f8e64', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6ccb07be-6b7c-5388-9af7-59e8e578227a', 1), 'd0ce799185b4c99871d8ffbc533c1be2867e888e11e55ec7d05355d6f7fe464a',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/43000feb8b1fba645033d830a17cb8663bd45b7fff7ec2c98746df79e371abdf.mp3', 1149, '2026-09-13 17:56:45.965620', '73781ea87819d5b0e9f8f507bbdef43abee84a7e7c9539eb6f51032797fdb4ff', 'validated', '{"audio_key":"43000feb8b1fba645033d830a17cb8663bd45b7fff7ec2c98746df79e371abdf","entity_key":"lx_social_nuance_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"73781ea87819d5b0e9f8f507bbdef43abee84a7e7c9539eb6f51032797fdb4ff","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/43000feb8b1fba645033d830a17cb8663bd45b7fff7ec2c98746df79e371abdf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_social_nuance_05 -> audio/generated/tr-TR/lexical/43000feb8b1fba645033d830a17cb8663bd45b7fff7ec2c98746df79e371abdf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('882cca4a-9cb2-5653-a921-4406370efdd4', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_social_nuance_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd0ce799185b4c99871d8ffbc533c1be2867e888e11e55ec7d05355d6f7fe464a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('655bd874-8cf4-57c3-8b28-b019cdea126f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('882cca4a-9cb2-5653-a921-4406370efdd4', 1), 'd0ce799185b4c99871d8ffbc533c1be2867e888e11e55ec7d05355d6f7fe464a',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/43000feb8b1fba645033d830a17cb8663bd45b7fff7ec2c98746df79e371abdf.mp3', 1149, '2026-09-13 17:56:45.965620', '73781ea87819d5b0e9f8f507bbdef43abee84a7e7c9539eb6f51032797fdb4ff', 'validated', '{"audio_key":"43000feb8b1fba645033d830a17cb8663bd45b7fff7ec2c98746df79e371abdf","entity_key":"wf_social_nuance_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"73781ea87819d5b0e9f8f507bbdef43abee84a7e7c9539eb6f51032797fdb4ff","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/43000feb8b1fba645033d830a17cb8663bd45b7fff7ec2c98746df79e371abdf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_experiences_and_change_03 -> audio/generated/tr-TR/lexical/441168741590f726f8770ee83649f66222824aaab216bb8a06e32808fee1439d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('645ae337-af12-564a-995d-61ca21c36727', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_experiences_and_change_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8cb2c321c14ba6173c350627649d3188eaff75e1f052665bbed40aaedec339ce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8a330f3c-4628-5444-b6a8-65d0d6a14f51', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('645ae337-af12-564a-995d-61ca21c36727', 1), '8cb2c321c14ba6173c350627649d3188eaff75e1f052665bbed40aaedec339ce',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/441168741590f726f8770ee83649f66222824aaab216bb8a06e32808fee1439d.mp3', 1253, '2026-09-13 17:56:46.025429', '5641b9acf5afcaf6e77ed485d220b3f60a4442a4ea97044998dfc4e80c12e4de', 'validated', '{"audio_key":"441168741590f726f8770ee83649f66222824aaab216bb8a06e32808fee1439d","entity_key":"lx_experiences_and_change_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5641b9acf5afcaf6e77ed485d220b3f60a4442a4ea97044998dfc4e80c12e4de","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/441168741590f726f8770ee83649f66222824aaab216bb8a06e32808fee1439d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_experiences_and_change_03 -> audio/generated/tr-TR/lexical/441168741590f726f8770ee83649f66222824aaab216bb8a06e32808fee1439d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('050c6e74-b0c3-57d2-a503-0729a48fbfd1', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_experiences_and_change_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8cb2c321c14ba6173c350627649d3188eaff75e1f052665bbed40aaedec339ce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2ab7c649-f5b5-5f85-a2f7-23d86929f0cf', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('050c6e74-b0c3-57d2-a503-0729a48fbfd1', 1), '8cb2c321c14ba6173c350627649d3188eaff75e1f052665bbed40aaedec339ce',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/441168741590f726f8770ee83649f66222824aaab216bb8a06e32808fee1439d.mp3', 1253, '2026-09-13 17:56:46.025429', '5641b9acf5afcaf6e77ed485d220b3f60a4442a4ea97044998dfc4e80c12e4de', 'validated', '{"audio_key":"441168741590f726f8770ee83649f66222824aaab216bb8a06e32808fee1439d","entity_key":"wf_experiences_and_change_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5641b9acf5afcaf6e77ed485d220b3f60a4442a4ea97044998dfc4e80c12e4de","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/441168741590f726f8770ee83649f66222824aaab216bb8a06e32808fee1439d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_conditions_and_consequences_03 -> audio/generated/tr-TR/lexical/46376fa42882a8e3b3b7de88606bef2ad0ac51ef4c784b8509717f6a06d853d2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('09e620a6-dd24-5926-89e3-4094f67647ec', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_conditions_and_consequences_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8776d484d2f9d7b9831135ac632206e65f71a5c8dc658aff2059bf86a7258bac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d60ba250-5d57-53d7-b1ad-a07ca2fbd254', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('09e620a6-dd24-5926-89e3-4094f67647ec', 1), '8776d484d2f9d7b9831135ac632206e65f71a5c8dc658aff2059bf86a7258bac',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/46376fa42882a8e3b3b7de88606bef2ad0ac51ef4c784b8509717f6a06d853d2.mp3', 1149, '2026-09-13 17:56:46.975632', '8478a5491d5eb7b6d28cc486d5e69bae59e4516a54225e797dc65429f6fabc3a', 'validated', '{"audio_key":"46376fa42882a8e3b3b7de88606bef2ad0ac51ef4c784b8509717f6a06d853d2","entity_key":"lx_conditions_and_consequences_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8478a5491d5eb7b6d28cc486d5e69bae59e4516a54225e797dc65429f6fabc3a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/46376fa42882a8e3b3b7de88606bef2ad0ac51ef4c784b8509717f6a06d853d2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_conditions_and_consequences_03 -> audio/generated/tr-TR/lexical/46376fa42882a8e3b3b7de88606bef2ad0ac51ef4c784b8509717f6a06d853d2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5251ee1a-c01f-5d89-b9c9-a356e3e53620', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_conditions_and_consequences_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8776d484d2f9d7b9831135ac632206e65f71a5c8dc658aff2059bf86a7258bac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('121fdc63-c136-5bb1-9976-c755ff029115', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5251ee1a-c01f-5d89-b9c9-a356e3e53620', 1), '8776d484d2f9d7b9831135ac632206e65f71a5c8dc658aff2059bf86a7258bac',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/46376fa42882a8e3b3b7de88606bef2ad0ac51ef4c784b8509717f6a06d853d2.mp3', 1149, '2026-09-13 17:56:46.975632', '8478a5491d5eb7b6d28cc486d5e69bae59e4516a54225e797dc65429f6fabc3a', 'validated', '{"audio_key":"46376fa42882a8e3b3b7de88606bef2ad0ac51ef4c784b8509717f6a06d853d2","entity_key":"wf_conditions_and_consequences_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8478a5491d5eb7b6d28cc486d5e69bae59e4516a54225e797dc65429f6fabc3a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/46376fa42882a8e3b3b7de88606bef2ad0ac51ef4c784b8509717f6a06d853d2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_goals_and_effort_02 -> audio/generated/tr-TR/lexical/4e4610067cf1e7f439127cfd51c6f923a070d618f131fb36e0a8e171ee79cda3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('81fd8962-bf50-5960-999f-a475024ca7f3', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_goals_and_effort_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd58931120caed1a9d74bebf1ebb6114aa12232a94bd08a184fee662dbabdaf9c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bdc3a213-59bb-5dab-8a88-4a42a8d93344', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('81fd8962-bf50-5960-999f-a475024ca7f3', 1), 'd58931120caed1a9d74bebf1ebb6114aa12232a94bd08a184fee662dbabdaf9c',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/4e4610067cf1e7f439127cfd51c6f923a070d618f131fb36e0a8e171ee79cda3.mp3', 1097, '2026-09-13 17:56:47.030729', 'd75364ffe2c6bb84aacfb6be8865e5ab51336b6d81897a64372355c4de636544', 'validated', '{"audio_key":"4e4610067cf1e7f439127cfd51c6f923a070d618f131fb36e0a8e171ee79cda3","entity_key":"lx_goals_and_effort_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d75364ffe2c6bb84aacfb6be8865e5ab51336b6d81897a64372355c4de636544","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/4e4610067cf1e7f439127cfd51c6f923a070d618f131fb36e0a8e171ee79cda3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_goals_and_effort_02 -> audio/generated/tr-TR/lexical/4e4610067cf1e7f439127cfd51c6f923a070d618f131fb36e0a8e171ee79cda3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('57df3c4d-ba8a-51d3-9eae-f31deecd7abb', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_goals_and_effort_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd58931120caed1a9d74bebf1ebb6114aa12232a94bd08a184fee662dbabdaf9c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1a915e06-5869-5278-8830-3324c7ebb203', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('57df3c4d-ba8a-51d3-9eae-f31deecd7abb', 1), 'd58931120caed1a9d74bebf1ebb6114aa12232a94bd08a184fee662dbabdaf9c',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/4e4610067cf1e7f439127cfd51c6f923a070d618f131fb36e0a8e171ee79cda3.mp3', 1097, '2026-09-13 17:56:47.030729', 'd75364ffe2c6bb84aacfb6be8865e5ab51336b6d81897a64372355c4de636544', 'validated', '{"audio_key":"4e4610067cf1e7f439127cfd51c6f923a070d618f131fb36e0a8e171ee79cda3","entity_key":"wf_goals_and_effort_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d75364ffe2c6bb84aacfb6be8865e5ab51336b6d81897a64372355c4de636544","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/4e4610067cf1e7f439127cfd51c6f923a070d618f131fb36e0a8e171ee79cda3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reported_information_01 -> audio/generated/tr-TR/lexical/51a9c97cbdb67ebe08da87d5ca62defa41bacd299b56426b32721de64bfc2459.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('272d886f-9b59-5065-a8b2-4546c603f1de', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reported_information_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dcd95f2cb448b681514fcdf6e2d5dd3e46dda8442b1c2a81e33f80e68e9128c0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fc565033-bff4-5929-b179-31b21caf47cf', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('272d886f-9b59-5065-a8b2-4546c603f1de', 1), 'dcd95f2cb448b681514fcdf6e2d5dd3e46dda8442b1c2a81e33f80e68e9128c0',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/51a9c97cbdb67ebe08da87d5ca62defa41bacd299b56426b32721de64bfc2459.mp3', 1149, '2026-09-13 17:56:47.944402', 'cec924266cc84d2c72e021cf46c09f064b31fa75cb3ad09020e7e8139b9ee399', 'validated', '{"audio_key":"51a9c97cbdb67ebe08da87d5ca62defa41bacd299b56426b32721de64bfc2459","entity_key":"lx_reported_information_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cec924266cc84d2c72e021cf46c09f064b31fa75cb3ad09020e7e8139b9ee399","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/51a9c97cbdb67ebe08da87d5ca62defa41bacd299b56426b32721de64bfc2459.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reported_information_01 -> audio/generated/tr-TR/lexical/51a9c97cbdb67ebe08da87d5ca62defa41bacd299b56426b32721de64bfc2459.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('94830c7c-49cf-50a9-8055-98ea56cdf834', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reported_information_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dcd95f2cb448b681514fcdf6e2d5dd3e46dda8442b1c2a81e33f80e68e9128c0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f443525c-ad50-50b3-9db8-69fa9c83c05b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('94830c7c-49cf-50a9-8055-98ea56cdf834', 1), 'dcd95f2cb448b681514fcdf6e2d5dd3e46dda8442b1c2a81e33f80e68e9128c0',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/51a9c97cbdb67ebe08da87d5ca62defa41bacd299b56426b32721de64bfc2459.mp3', 1149, '2026-09-13 17:56:47.944402', 'cec924266cc84d2c72e021cf46c09f064b31fa75cb3ad09020e7e8139b9ee399', 'validated', '{"audio_key":"51a9c97cbdb67ebe08da87d5ca62defa41bacd299b56426b32721de64bfc2459","entity_key":"wf_reported_information_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cec924266cc84d2c72e021cf46c09f064b31fa75cb3ad09020e7e8139b9ee399","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/51a9c97cbdb67ebe08da87d5ca62defa41bacd299b56426b32721de64bfc2459.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_media_and_sources_04 -> audio/generated/tr-TR/lexical/56248ff66e064c2cbfb73506c7c79998590e6f3938ed87f5d1bd61a745cce018.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('022cb2fe-7c6f-5a57-af95-7bea4bebf249', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_media_and_sources_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '173dd1b88dd541f81ddeafc981d7a19a397799fbf7020bb79bbc7ec731bdeeee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('28d82aee-4604-5198-87e0-611fb8ed0a80', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('022cb2fe-7c6f-5a57-af95-7bea4bebf249', 1), '173dd1b88dd541f81ddeafc981d7a19a397799fbf7020bb79bbc7ec731bdeeee',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/56248ff66e064c2cbfb73506c7c79998590e6f3938ed87f5d1bd61a745cce018.mp3', 1488, '2026-09-13 17:56:48.004986', '0942b492c604d90295833a306a13a4b3567134b0141f306ffa1df515fa8f02d2', 'validated', '{"audio_key":"56248ff66e064c2cbfb73506c7c79998590e6f3938ed87f5d1bd61a745cce018","entity_key":"lx_media_and_sources_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0942b492c604d90295833a306a13a4b3567134b0141f306ffa1df515fa8f02d2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/56248ff66e064c2cbfb73506c7c79998590e6f3938ed87f5d1bd61a745cce018.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_media_and_sources_04 -> audio/generated/tr-TR/lexical/56248ff66e064c2cbfb73506c7c79998590e6f3938ed87f5d1bd61a745cce018.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('bb5308d6-ed4b-5978-a9fa-7c700e47286d', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_media_and_sources_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '173dd1b88dd541f81ddeafc981d7a19a397799fbf7020bb79bbc7ec731bdeeee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('63396c96-c773-543c-a217-32537e2e1459', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('bb5308d6-ed4b-5978-a9fa-7c700e47286d', 1), '173dd1b88dd541f81ddeafc981d7a19a397799fbf7020bb79bbc7ec731bdeeee',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/56248ff66e064c2cbfb73506c7c79998590e6f3938ed87f5d1bd61a745cce018.mp3', 1488, '2026-09-13 17:56:48.004986', '0942b492c604d90295833a306a13a4b3567134b0141f306ffa1df515fa8f02d2', 'validated', '{"audio_key":"56248ff66e064c2cbfb73506c7c79998590e6f3938ed87f5d1bd61a745cce018","entity_key":"wf_media_and_sources_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0942b492c604d90295833a306a13a4b3567134b0141f306ffa1df515fa8f02d2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/56248ff66e064c2cbfb73506c7c79998590e6f3938ed87f5d1bd61a745cce018.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_conditions_and_consequences_04 -> audio/generated/tr-TR/lexical/586ac94c0452c83c250b3ba7be053abd942e7fe33017f508b44b57b8fc08c03f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('60de4540-d6e4-5fcf-b66a-a32fcb0226a5', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_conditions_and_consequences_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3cecda3db278bfc761093e1bb162aef51c761ec7910380ed71bb0cc02ff12834'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ca701b61-fbd9-570e-80d8-51650c2ee7f5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('60de4540-d6e4-5fcf-b66a-a32fcb0226a5', 1), '3cecda3db278bfc761093e1bb162aef51c761ec7910380ed71bb0cc02ff12834',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/586ac94c0452c83c250b3ba7be053abd942e7fe33017f508b44b57b8fc08c03f.mp3', 1097, '2026-09-13 17:56:48.921377', '7f4d307f1c71ddf4b9681d3da422b1eba8b4c752da77637db21a412d7f30a2b4', 'validated', '{"audio_key":"586ac94c0452c83c250b3ba7be053abd942e7fe33017f508b44b57b8fc08c03f","entity_key":"lx_conditions_and_consequences_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7f4d307f1c71ddf4b9681d3da422b1eba8b4c752da77637db21a412d7f30a2b4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/586ac94c0452c83c250b3ba7be053abd942e7fe33017f508b44b57b8fc08c03f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_conditions_and_consequences_04 -> audio/generated/tr-TR/lexical/586ac94c0452c83c250b3ba7be053abd942e7fe33017f508b44b57b8fc08c03f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7922b8c8-bf26-5d2a-b1b1-846e243a4f7c', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_conditions_and_consequences_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3cecda3db278bfc761093e1bb162aef51c761ec7910380ed71bb0cc02ff12834'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('48cacc39-e05a-5fcd-84db-6787d0aee67c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7922b8c8-bf26-5d2a-b1b1-846e243a4f7c', 1), '3cecda3db278bfc761093e1bb162aef51c761ec7910380ed71bb0cc02ff12834',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/586ac94c0452c83c250b3ba7be053abd942e7fe33017f508b44b57b8fc08c03f.mp3', 1097, '2026-09-13 17:56:48.921377', '7f4d307f1c71ddf4b9681d3da422b1eba8b4c752da77637db21a412d7f30a2b4', 'validated', '{"audio_key":"586ac94c0452c83c250b3ba7be053abd942e7fe33017f508b44b57b8fc08c03f","entity_key":"wf_conditions_and_consequences_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7f4d307f1c71ddf4b9681d3da422b1eba8b4c752da77637db21a412d7f30a2b4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/586ac94c0452c83c250b3ba7be053abd942e7fe33017f508b44b57b8fc08c03f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_goals_and_effort_05 -> audio/generated/tr-TR/lexical/5d2354959c4c6534b5ccfd9ad439806619bb547c2c9fb3d9eda57f8ce134f784.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3e2c80be-391b-56bc-92a1-fea8e8f55311', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_goals_and_effort_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cf025a2f65fdbaaaa0859c5184d73a764859c7a7ef1a311641fd1216c057a6f4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a28afd31-cef8-5d0f-b5ec-cea1ec480546', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3e2c80be-391b-56bc-92a1-fea8e8f55311', 1), 'cf025a2f65fdbaaaa0859c5184d73a764859c7a7ef1a311641fd1216c057a6f4',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/5d2354959c4c6534b5ccfd9ad439806619bb547c2c9fb3d9eda57f8ce134f784.mp3', 1149, '2026-09-13 17:56:48.936457', 'd1f6395e5ff23ef84b19ec2d8283d4fd81fee530db7af17c6e4ca93ade879cef', 'validated', '{"audio_key":"5d2354959c4c6534b5ccfd9ad439806619bb547c2c9fb3d9eda57f8ce134f784","entity_key":"lx_goals_and_effort_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d1f6395e5ff23ef84b19ec2d8283d4fd81fee530db7af17c6e4ca93ade879cef","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/5d2354959c4c6534b5ccfd9ad439806619bb547c2c9fb3d9eda57f8ce134f784.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_goals_and_effort_05 -> audio/generated/tr-TR/lexical/5d2354959c4c6534b5ccfd9ad439806619bb547c2c9fb3d9eda57f8ce134f784.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('16f15e17-a61c-530e-9908-f963357f502e', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_goals_and_effort_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cf025a2f65fdbaaaa0859c5184d73a764859c7a7ef1a311641fd1216c057a6f4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('08bbaae7-2be8-514d-aa16-dd5a810eb2bc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('16f15e17-a61c-530e-9908-f963357f502e', 1), 'cf025a2f65fdbaaaa0859c5184d73a764859c7a7ef1a311641fd1216c057a6f4',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/5d2354959c4c6534b5ccfd9ad439806619bb547c2c9fb3d9eda57f8ce134f784.mp3', 1149, '2026-09-13 17:56:48.936457', 'd1f6395e5ff23ef84b19ec2d8283d4fd81fee530db7af17c6e4ca93ade879cef', 'validated', '{"audio_key":"5d2354959c4c6534b5ccfd9ad439806619bb547c2c9fb3d9eda57f8ce134f784","entity_key":"wf_goals_and_effort_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d1f6395e5ff23ef84b19ec2d8283d4fd81fee530db7af17c6e4ca93ade879cef","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/5d2354959c4c6534b5ccfd9ad439806619bb547c2c9fb3d9eda57f8ce134f784.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_b1_city_project_capstone_03 -> audio/generated/tr-TR/lexical/5d348762fc371067b43b7c20cfde0395e4c99b1cc48dd6cc2f3cb178297908c9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c7326ad3-1433-5488-b47e-52e4a91a7c57', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_b1_city_project_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '25e30b03aab1f628a3395db497f21a61b20565264556ff0fd2230937ad2b2abb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('950d4148-8471-5f66-8f53-ae0b0a342a26', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c7326ad3-1433-5488-b47e-52e4a91a7c57', 1), '25e30b03aab1f628a3395db497f21a61b20565264556ff0fd2230937ad2b2abb',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/5d348762fc371067b43b7c20cfde0395e4c99b1cc48dd6cc2f3cb178297908c9.mp3', 1149, '2026-09-13 17:56:49.862110', '25df081983368e6cf2967fa2417a9c37191773b065f51f17c56734e66a8537a4', 'validated', '{"audio_key":"5d348762fc371067b43b7c20cfde0395e4c99b1cc48dd6cc2f3cb178297908c9","entity_key":"lx_b1_city_project_capstone_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"25df081983368e6cf2967fa2417a9c37191773b065f51f17c56734e66a8537a4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/5d348762fc371067b43b7c20cfde0395e4c99b1cc48dd6cc2f3cb178297908c9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_b1_city_project_capstone_03 -> audio/generated/tr-TR/lexical/5d348762fc371067b43b7c20cfde0395e4c99b1cc48dd6cc2f3cb178297908c9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8938e45a-cf0d-52a8-a3dd-5ba4ece2b427', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_b1_city_project_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '25e30b03aab1f628a3395db497f21a61b20565264556ff0fd2230937ad2b2abb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a9441f67-26d6-5a18-b5d9-5c0ce340c808', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8938e45a-cf0d-52a8-a3dd-5ba4ece2b427', 1), '25e30b03aab1f628a3395db497f21a61b20565264556ff0fd2230937ad2b2abb',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/5d348762fc371067b43b7c20cfde0395e4c99b1cc48dd6cc2f3cb178297908c9.mp3', 1149, '2026-09-13 17:56:49.862110', '25df081983368e6cf2967fa2417a9c37191773b065f51f17c56734e66a8537a4', 'validated', '{"audio_key":"5d348762fc371067b43b7c20cfde0395e4c99b1cc48dd6cc2f3cb178297908c9","entity_key":"wf_b1_city_project_capstone_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"25df081983368e6cf2967fa2417a9c37191773b065f51f17c56734e66a8537a4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/5d348762fc371067b43b7c20cfde0395e4c99b1cc48dd6cc2f3cb178297908c9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_conditions_and_consequences_05 -> audio/generated/tr-TR/lexical/60fb7e3f9277445de39281cdd2c90143c3ea703d309e8c923180e3c2d8c2fdad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e0389cb2-f2c2-5513-ab7f-09132ad4bacb', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_conditions_and_consequences_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fd2d641c1741b232738a4a560ff981f41c7e9221231ba0cb4a2613a0dbe8e46d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cbf7759a-f6fa-5440-8da4-732b2c9bd047', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e0389cb2-f2c2-5513-ab7f-09132ad4bacb', 1), 'fd2d641c1741b232738a4a560ff981f41c7e9221231ba0cb4a2613a0dbe8e46d',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/60fb7e3f9277445de39281cdd2c90143c3ea703d309e8c923180e3c2d8c2fdad.mp3', 1253, '2026-09-13 17:08:22.792629', 'dcbfb99f19a4ff511385883d1100ded956688cc418c31af74c76ee7289328668', 'validated', '{"audio_key":"60fb7e3f9277445de39281cdd2c90143c3ea703d309e8c923180e3c2d8c2fdad","entity_key":"lx_conditions_and_consequences_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dcbfb99f19a4ff511385883d1100ded956688cc418c31af74c76ee7289328668","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/60fb7e3f9277445de39281cdd2c90143c3ea703d309e8c923180e3c2d8c2fdad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_conditions_and_consequences_05 -> audio/generated/tr-TR/lexical/60fb7e3f9277445de39281cdd2c90143c3ea703d309e8c923180e3c2d8c2fdad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e8d96382-f822-5440-8882-429d7918983c', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_conditions_and_consequences_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fd2d641c1741b232738a4a560ff981f41c7e9221231ba0cb4a2613a0dbe8e46d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('67caacaa-2603-5052-b9d5-aafe148de80c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e8d96382-f822-5440-8882-429d7918983c', 1), 'fd2d641c1741b232738a4a560ff981f41c7e9221231ba0cb4a2613a0dbe8e46d',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/60fb7e3f9277445de39281cdd2c90143c3ea703d309e8c923180e3c2d8c2fdad.mp3', 1253, '2026-09-13 17:08:22.792629', 'dcbfb99f19a4ff511385883d1100ded956688cc418c31af74c76ee7289328668', 'validated', '{"audio_key":"60fb7e3f9277445de39281cdd2c90143c3ea703d309e8c923180e3c2d8c2fdad","entity_key":"wf_conditions_and_consequences_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dcbfb99f19a4ff511385883d1100ded956688cc418c31af74c76ee7289328668","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/60fb7e3f9277445de39281cdd2c90143c3ea703d309e8c923180e3c2d8c2fdad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_problems_and_solutions_05 -> audio/generated/tr-TR/lexical/70a80ff6921a863a8d0610c5755e6c2001eb400948cfb23f24b8d2fb1179f0e9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('850133c8-3511-5065-b110-4408746098cf', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_problems_and_solutions_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '059c7dc86e2d3fca7b2e566460907bbac32148e3958c693642519d7f314b79c8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cf8e4caa-ea21-5523-8b51-9cf12d5dd360', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('850133c8-3511-5065-b110-4408746098cf', 1), '059c7dc86e2d3fca7b2e566460907bbac32148e3958c693642519d7f314b79c8',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/70a80ff6921a863a8d0610c5755e6c2001eb400948cfb23f24b8d2fb1179f0e9.mp3', 1018, '2026-09-13 17:08:24.715058', '2b610d98e5fbe3264a0cf9419f5fb21381b922327b6f850f7bb3e905ccefb13c', 'validated', '{"audio_key":"70a80ff6921a863a8d0610c5755e6c2001eb400948cfb23f24b8d2fb1179f0e9","entity_key":"lx_problems_and_solutions_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2b610d98e5fbe3264a0cf9419f5fb21381b922327b6f850f7bb3e905ccefb13c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/70a80ff6921a863a8d0610c5755e6c2001eb400948cfb23f24b8d2fb1179f0e9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_problems_and_solutions_05 -> audio/generated/tr-TR/lexical/70a80ff6921a863a8d0610c5755e6c2001eb400948cfb23f24b8d2fb1179f0e9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f6296875-225e-5d1b-b9c4-075539b90526', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_problems_and_solutions_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '059c7dc86e2d3fca7b2e566460907bbac32148e3958c693642519d7f314b79c8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('064dbc6d-6239-5adf-88ed-21b1336e0a10', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f6296875-225e-5d1b-b9c4-075539b90526', 1), '059c7dc86e2d3fca7b2e566460907bbac32148e3958c693642519d7f314b79c8',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/70a80ff6921a863a8d0610c5755e6c2001eb400948cfb23f24b8d2fb1179f0e9.mp3', 1018, '2026-09-13 17:08:24.715058', '2b610d98e5fbe3264a0cf9419f5fb21381b922327b6f850f7bb3e905ccefb13c', 'validated', '{"audio_key":"70a80ff6921a863a8d0610c5755e6c2001eb400948cfb23f24b8d2fb1179f0e9","entity_key":"wf_problems_and_solutions_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2b610d98e5fbe3264a0cf9419f5fb21381b922327b6f850f7bb3e905ccefb13c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/70a80ff6921a863a8d0610c5755e6c2001eb400948cfb23f24b8d2fb1179f0e9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_goals_and_effort_04 -> audio/generated/tr-TR/lexical/716bd162b081fb4dcc29f7ca5f0ee42586726182485b09fd9e3ba72670b2945d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d155b019-5634-50c4-ad8b-451276b46e88', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_goals_and_effort_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '26a71c65383999a612cd17b6eef44a6cff954d6996434f2db18ec3ba0c862fe3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('21098b9c-1c1e-50e0-875e-9906e02822ae', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d155b019-5634-50c4-ad8b-451276b46e88', 1), '26a71c65383999a612cd17b6eef44a6cff954d6996434f2db18ec3ba0c862fe3',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/716bd162b081fb4dcc29f7ca5f0ee42586726182485b09fd9e3ba72670b2945d.mp3', 1253, '2026-09-13 17:56:49.889103', '2d6f598737c0f2e7da41a7079eea337af0428aa8f3ffbbabe0eb193b62b0c5fd', 'validated', '{"audio_key":"716bd162b081fb4dcc29f7ca5f0ee42586726182485b09fd9e3ba72670b2945d","entity_key":"lx_goals_and_effort_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2d6f598737c0f2e7da41a7079eea337af0428aa8f3ffbbabe0eb193b62b0c5fd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/716bd162b081fb4dcc29f7ca5f0ee42586726182485b09fd9e3ba72670b2945d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_goals_and_effort_04 -> audio/generated/tr-TR/lexical/716bd162b081fb4dcc29f7ca5f0ee42586726182485b09fd9e3ba72670b2945d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c783549b-d6d9-5d4b-a27c-17365b3d329f', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_goals_and_effort_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '26a71c65383999a612cd17b6eef44a6cff954d6996434f2db18ec3ba0c862fe3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c1021e4f-80bc-5aa9-b152-1f0356b1f57b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c783549b-d6d9-5d4b-a27c-17365b3d329f', 1), '26a71c65383999a612cd17b6eef44a6cff954d6996434f2db18ec3ba0c862fe3',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/716bd162b081fb4dcc29f7ca5f0ee42586726182485b09fd9e3ba72670b2945d.mp3', 1253, '2026-09-13 17:56:49.889103', '2d6f598737c0f2e7da41a7079eea337af0428aa8f3ffbbabe0eb193b62b0c5fd', 'validated', '{"audio_key":"716bd162b081fb4dcc29f7ca5f0ee42586726182485b09fd9e3ba72670b2945d","entity_key":"wf_goals_and_effort_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2d6f598737c0f2e7da41a7079eea337af0428aa8f3ffbbabe0eb193b62b0c5fd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/716bd162b081fb4dcc29f7ca5f0ee42586726182485b09fd9e3ba72670b2945d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_b1_city_project_capstone_05 -> audio/generated/tr-TR/lexical/7240e4373d14983042d79d14d2c2252171eb12a69665cb0de55869f976285f08.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5fb20e89-7b0b-5a19-ae61-5d316faa3281', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_b1_city_project_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c44a739c5d3c985bf361c95d43b071952915996a9d58b36746aefee2fc8c5e4c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ccf95923-3eeb-5faf-86f0-8834b94c91e8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5fb20e89-7b0b-5a19-ae61-5d316faa3281', 1), 'c44a739c5d3c985bf361c95d43b071952915996a9d58b36746aefee2fc8c5e4c',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/7240e4373d14983042d79d14d2c2252171eb12a69665cb0de55869f976285f08.mp3', 1201, '2026-09-13 17:56:50.843601', 'bb0d8dbf9c1079a401619e7a9e2a4cdeca2391ec12b85a368dcb134665e32c4f', 'validated', '{"audio_key":"7240e4373d14983042d79d14d2c2252171eb12a69665cb0de55869f976285f08","entity_key":"lx_b1_city_project_capstone_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bb0d8dbf9c1079a401619e7a9e2a4cdeca2391ec12b85a368dcb134665e32c4f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/7240e4373d14983042d79d14d2c2252171eb12a69665cb0de55869f976285f08.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_b1_city_project_capstone_05 -> audio/generated/tr-TR/lexical/7240e4373d14983042d79d14d2c2252171eb12a69665cb0de55869f976285f08.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('600cb79c-18c9-5db9-ad9c-3a4ebcd67d25', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_b1_city_project_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c44a739c5d3c985bf361c95d43b071952915996a9d58b36746aefee2fc8c5e4c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('161e7468-d8cd-5659-ad47-f8fcd1153b17', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('600cb79c-18c9-5db9-ad9c-3a4ebcd67d25', 1), 'c44a739c5d3c985bf361c95d43b071952915996a9d58b36746aefee2fc8c5e4c',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/7240e4373d14983042d79d14d2c2252171eb12a69665cb0de55869f976285f08.mp3', 1201, '2026-09-13 17:56:50.843601', 'bb0d8dbf9c1079a401619e7a9e2a4cdeca2391ec12b85a368dcb134665e32c4f', 'validated', '{"audio_key":"7240e4373d14983042d79d14d2c2252171eb12a69665cb0de55869f976285f08","entity_key":"wf_b1_city_project_capstone_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bb0d8dbf9c1079a401619e7a9e2a4cdeca2391ec12b85a368dcb134665e32c4f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/7240e4373d14983042d79d14d2c2252171eb12a69665cb0de55869f976285f08.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reported_information_06 -> audio/generated/tr-TR/lexical/75972d432fc6744f788188ec188229a555ca84e827c653fecc7b49ca5cc96eb7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6dd8ed45-bea9-51a2-bf76-55dd3dbc294c', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reported_information_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3e9d639bbef54b14c34e55fca5385d24fc8d764731f2808653d6be7e44695d4e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f31432fa-e1ef-5661-bae1-f139967f7d16', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6dd8ed45-bea9-51a2-bf76-55dd3dbc294c', 1), '3e9d639bbef54b14c34e55fca5385d24fc8d764731f2808653d6be7e44695d4e',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/75972d432fc6744f788188ec188229a555ca84e827c653fecc7b49ca5cc96eb7.mp3', 1201, '2026-09-13 17:56:50.870316', '1d33c9759daf193b9aa936da9827136694a4d07edc1bdd3d5e4fa9909810e2ad', 'validated', '{"audio_key":"75972d432fc6744f788188ec188229a555ca84e827c653fecc7b49ca5cc96eb7","entity_key":"lx_reported_information_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1d33c9759daf193b9aa936da9827136694a4d07edc1bdd3d5e4fa9909810e2ad","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/75972d432fc6744f788188ec188229a555ca84e827c653fecc7b49ca5cc96eb7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reported_information_06 -> audio/generated/tr-TR/lexical/75972d432fc6744f788188ec188229a555ca84e827c653fecc7b49ca5cc96eb7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('bfc8e8db-f292-5ac3-b8f0-e977f87158a2', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reported_information_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3e9d639bbef54b14c34e55fca5385d24fc8d764731f2808653d6be7e44695d4e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2901f886-7019-5af4-b56d-db83703b31f0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('bfc8e8db-f292-5ac3-b8f0-e977f87158a2', 1), '3e9d639bbef54b14c34e55fca5385d24fc8d764731f2808653d6be7e44695d4e',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/75972d432fc6744f788188ec188229a555ca84e827c653fecc7b49ca5cc96eb7.mp3', 1201, '2026-09-13 17:56:50.870316', '1d33c9759daf193b9aa936da9827136694a4d07edc1bdd3d5e4fa9909810e2ad', 'validated', '{"audio_key":"75972d432fc6744f788188ec188229a555ca84e827c653fecc7b49ca5cc96eb7","entity_key":"wf_reported_information_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1d33c9759daf193b9aa936da9827136694a4d07edc1bdd3d5e4fa9909810e2ad","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/75972d432fc6744f788188ec188229a555ca84e827c653fecc7b49ca5cc96eb7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_experiences_and_change_05 -> audio/generated/tr-TR/lexical/764224ff768afa4c1dbe769dc25e2f9679534b2cc072a8fa9e379211408ea151.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('78146a9b-9bd2-54ad-9137-6dc788c8e5d6', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_experiences_and_change_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9b6f7c17917c6d77a41498300a322f716b2639eeeb458103a9a19c729919ba47'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('daa3939a-cc0c-5f4f-8564-ad7f694cbe4f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('78146a9b-9bd2-54ad-9137-6dc788c8e5d6', 1), '9b6f7c17917c6d77a41498300a322f716b2639eeeb458103a9a19c729919ba47',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/764224ff768afa4c1dbe769dc25e2f9679534b2cc072a8fa9e379211408ea151.mp3', 1280, '2026-09-13 17:56:51.801702', '49ffcb1988aa693f38bafcf2251d0cce54fa926d5535d5c64909e8635929f7f3', 'validated', '{"audio_key":"764224ff768afa4c1dbe769dc25e2f9679534b2cc072a8fa9e379211408ea151","entity_key":"lx_experiences_and_change_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"49ffcb1988aa693f38bafcf2251d0cce54fa926d5535d5c64909e8635929f7f3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/764224ff768afa4c1dbe769dc25e2f9679534b2cc072a8fa9e379211408ea151.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_experiences_and_change_05 -> audio/generated/tr-TR/lexical/764224ff768afa4c1dbe769dc25e2f9679534b2cc072a8fa9e379211408ea151.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('48c48d81-061e-5291-90b9-d336297e24a1', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_experiences_and_change_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9b6f7c17917c6d77a41498300a322f716b2639eeeb458103a9a19c729919ba47'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c9a58566-65d7-50e0-900c-90aaabe5aae1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('48c48d81-061e-5291-90b9-d336297e24a1', 1), '9b6f7c17917c6d77a41498300a322f716b2639eeeb458103a9a19c729919ba47',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/764224ff768afa4c1dbe769dc25e2f9679534b2cc072a8fa9e379211408ea151.mp3', 1280, '2026-09-13 17:56:51.801702', '49ffcb1988aa693f38bafcf2251d0cce54fa926d5535d5c64909e8635929f7f3', 'validated', '{"audio_key":"764224ff768afa4c1dbe769dc25e2f9679534b2cc072a8fa9e379211408ea151","entity_key":"wf_experiences_and_change_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"49ffcb1988aa693f38bafcf2251d0cce54fa926d5535d5c64909e8635929f7f3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/764224ff768afa4c1dbe769dc25e2f9679534b2cc072a8fa9e379211408ea151.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reported_information_02 -> audio/generated/tr-TR/lexical/77d68872d4668968ccd7b3754ce4dc6b163531e2416517709d62a4d9eb9a06bc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ddd595d9-8363-50b5-97ce-91662fd79233', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reported_information_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'acdc66048720c08ee3e12c990e1e6df720c81f82652dda407fdd71aca5f28bdf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4865b11d-fd30-567d-93dd-61dd71a8b98c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ddd595d9-8363-50b5-97ce-91662fd79233', 1), 'acdc66048720c08ee3e12c990e1e6df720c81f82652dda407fdd71aca5f28bdf',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/77d68872d4668968ccd7b3754ce4dc6b163531e2416517709d62a4d9eb9a06bc.mp3', 1018, '2026-09-13 17:56:51.830175', '8d3e171a37271794d9d31d6f36d32cf61fa7e20028ad2991628e7fae033d38d4', 'validated', '{"audio_key":"77d68872d4668968ccd7b3754ce4dc6b163531e2416517709d62a4d9eb9a06bc","entity_key":"lx_reported_information_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8d3e171a37271794d9d31d6f36d32cf61fa7e20028ad2991628e7fae033d38d4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/77d68872d4668968ccd7b3754ce4dc6b163531e2416517709d62a4d9eb9a06bc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reported_information_02 -> audio/generated/tr-TR/lexical/77d68872d4668968ccd7b3754ce4dc6b163531e2416517709d62a4d9eb9a06bc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7ec92d52-08b7-5a0f-b13f-4d4e46c4793c', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reported_information_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'acdc66048720c08ee3e12c990e1e6df720c81f82652dda407fdd71aca5f28bdf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f2df2a1d-a4ca-59b5-b69b-8db2c9fff250', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7ec92d52-08b7-5a0f-b13f-4d4e46c4793c', 1), 'acdc66048720c08ee3e12c990e1e6df720c81f82652dda407fdd71aca5f28bdf',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/77d68872d4668968ccd7b3754ce4dc6b163531e2416517709d62a4d9eb9a06bc.mp3', 1018, '2026-09-13 17:56:51.830175', '8d3e171a37271794d9d31d6f36d32cf61fa7e20028ad2991628e7fae033d38d4', 'validated', '{"audio_key":"77d68872d4668968ccd7b3754ce4dc6b163531e2416517709d62a4d9eb9a06bc","entity_key":"wf_reported_information_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8d3e171a37271794d9d31d6f36d32cf61fa7e20028ad2991628e7fae033d38d4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/77d68872d4668968ccd7b3754ce4dc6b163531e2416517709d62a4d9eb9a06bc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_goals_and_effort_06 -> audio/generated/tr-TR/lexical/7ce2e3cc8ef5a578cfd9bf3b2cf6ae4ec254e55f0d9d348c39410b12e547450b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('84fb2055-e4b9-5ec1-bb3d-46b8d9ff28c7', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_goals_and_effort_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f227e17749c936a0779e3eb11248727f76d615792ca706be50e6fd57d3af686b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7764286d-d798-5c40-ba26-5fb30a22f22a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('84fb2055-e4b9-5ec1-bb3d-46b8d9ff28c7', 1), 'f227e17749c936a0779e3eb11248727f76d615792ca706be50e6fd57d3af686b',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/7ce2e3cc8ef5a578cfd9bf3b2cf6ae4ec254e55f0d9d348c39410b12e547450b.mp3', 1018, '2026-09-13 17:56:52.745477', '77fb08d4ca673b9723176993324b26f54932c4a708a770fb46b253d25b0e0741', 'validated', '{"audio_key":"7ce2e3cc8ef5a578cfd9bf3b2cf6ae4ec254e55f0d9d348c39410b12e547450b","entity_key":"lx_goals_and_effort_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"77fb08d4ca673b9723176993324b26f54932c4a708a770fb46b253d25b0e0741","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/7ce2e3cc8ef5a578cfd9bf3b2cf6ae4ec254e55f0d9d348c39410b12e547450b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_goals_and_effort_06 -> audio/generated/tr-TR/lexical/7ce2e3cc8ef5a578cfd9bf3b2cf6ae4ec254e55f0d9d348c39410b12e547450b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d3038f31-09b8-5d58-9482-a8d00faa8024', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_goals_and_effort_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f227e17749c936a0779e3eb11248727f76d615792ca706be50e6fd57d3af686b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b6f833ea-9098-5234-b03e-531c000eb16e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d3038f31-09b8-5d58-9482-a8d00faa8024', 1), 'f227e17749c936a0779e3eb11248727f76d615792ca706be50e6fd57d3af686b',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/7ce2e3cc8ef5a578cfd9bf3b2cf6ae4ec254e55f0d9d348c39410b12e547450b.mp3', 1018, '2026-09-13 17:56:52.745477', '77fb08d4ca673b9723176993324b26f54932c4a708a770fb46b253d25b0e0741', 'validated', '{"audio_key":"7ce2e3cc8ef5a578cfd9bf3b2cf6ae4ec254e55f0d9d348c39410b12e547450b","entity_key":"wf_goals_and_effort_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"77fb08d4ca673b9723176993324b26f54932c4a708a770fb46b253d25b0e0741","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/7ce2e3cc8ef5a578cfd9bf3b2cf6ae4ec254e55f0d9d348c39410b12e547450b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_opinions_and_evidence_02 -> audio/generated/tr-TR/lexical/7d103749fb0279b21438e4a04f9b7f5e2092a44f9415963cebcd370e23b579d4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('afdd28e9-5f21-5f84-af9f-2e7d3012df3e', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_opinions_and_evidence_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7043ace92182a0fdf4c987fc5c92c0a269a66b7b9df3df555aa67b131060d845'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c75e5f6e-17fb-593c-b985-9ca145cbc4e9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('afdd28e9-5f21-5f84-af9f-2e7d3012df3e', 1), '7043ace92182a0fdf4c987fc5c92c0a269a66b7b9df3df555aa67b131060d845',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/7d103749fb0279b21438e4a04f9b7f5e2092a44f9415963cebcd370e23b579d4.mp3', 1018, '2026-09-13 17:56:52.762280', 'e8d8a9a6955fd8d29f78c200cdd6523b5a140e67e0689da22d3ee581c52018c2', 'validated', '{"audio_key":"7d103749fb0279b21438e4a04f9b7f5e2092a44f9415963cebcd370e23b579d4","entity_key":"lx_opinions_and_evidence_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e8d8a9a6955fd8d29f78c200cdd6523b5a140e67e0689da22d3ee581c52018c2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/7d103749fb0279b21438e4a04f9b7f5e2092a44f9415963cebcd370e23b579d4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_opinions_and_evidence_02 -> audio/generated/tr-TR/lexical/7d103749fb0279b21438e4a04f9b7f5e2092a44f9415963cebcd370e23b579d4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ce83cec3-3f92-5a1b-a415-afc074752613', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_opinions_and_evidence_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7043ace92182a0fdf4c987fc5c92c0a269a66b7b9df3df555aa67b131060d845'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6332a1a2-7d2c-5718-bc43-f52dacc64bee', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ce83cec3-3f92-5a1b-a415-afc074752613', 1), '7043ace92182a0fdf4c987fc5c92c0a269a66b7b9df3df555aa67b131060d845',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/7d103749fb0279b21438e4a04f9b7f5e2092a44f9415963cebcd370e23b579d4.mp3', 1018, '2026-09-13 17:56:52.762280', 'e8d8a9a6955fd8d29f78c200cdd6523b5a140e67e0689da22d3ee581c52018c2', 'validated', '{"audio_key":"7d103749fb0279b21438e4a04f9b7f5e2092a44f9415963cebcd370e23b579d4","entity_key":"wf_opinions_and_evidence_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e8d8a9a6955fd8d29f78c200cdd6523b5a140e67e0689da22d3ee581c52018c2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/7d103749fb0279b21438e4a04f9b7f5e2092a44f9415963cebcd370e23b579d4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_storytelling_sequence_06 -> audio/generated/tr-TR/lexical/83217bdb098b5cf6fb9cf705612af9565ff3dba3e7ebbe80f05e5c3154b6c2a6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0252c252-3f24-5d19-a09d-3e2f91e2ea8a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_storytelling_sequence_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '60561229bd6f55480b9ec10a2ea457c72c73b4533e9b22a2dc8959b8501a400c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8d2e4447-38c1-514a-936b-72ba6a24f3f1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0252c252-3f24-5d19-a09d-3e2f91e2ea8a', 1), '60561229bd6f55480b9ec10a2ea457c72c73b4533e9b22a2dc8959b8501a400c',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/83217bdb098b5cf6fb9cf705612af9565ff3dba3e7ebbe80f05e5c3154b6c2a6.mp3', 1149, '2026-09-13 17:56:53.681296', '972ac07541bbc0986da106018fbc7909ab8d1a3b07d3a94f27924a4b5f0b6774', 'validated', '{"audio_key":"83217bdb098b5cf6fb9cf705612af9565ff3dba3e7ebbe80f05e5c3154b6c2a6","entity_key":"lx_storytelling_sequence_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"972ac07541bbc0986da106018fbc7909ab8d1a3b07d3a94f27924a4b5f0b6774","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/83217bdb098b5cf6fb9cf705612af9565ff3dba3e7ebbe80f05e5c3154b6c2a6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_storytelling_sequence_06 -> audio/generated/tr-TR/lexical/83217bdb098b5cf6fb9cf705612af9565ff3dba3e7ebbe80f05e5c3154b6c2a6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('82205839-07eb-5070-9b83-ff9b4d32e78e', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_storytelling_sequence_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '60561229bd6f55480b9ec10a2ea457c72c73b4533e9b22a2dc8959b8501a400c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e66fa60c-e043-59e3-8b58-25f3c5ab724a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('82205839-07eb-5070-9b83-ff9b4d32e78e', 1), '60561229bd6f55480b9ec10a2ea457c72c73b4533e9b22a2dc8959b8501a400c',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/83217bdb098b5cf6fb9cf705612af9565ff3dba3e7ebbe80f05e5c3154b6c2a6.mp3', 1149, '2026-09-13 17:56:53.681296', '972ac07541bbc0986da106018fbc7909ab8d1a3b07d3a94f27924a4b5f0b6774', 'validated', '{"audio_key":"83217bdb098b5cf6fb9cf705612af9565ff3dba3e7ebbe80f05e5c3154b6c2a6","entity_key":"wf_storytelling_sequence_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"972ac07541bbc0986da106018fbc7909ab8d1a3b07d3a94f27924a4b5f0b6774","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/83217bdb098b5cf6fb9cf705612af9565ff3dba3e7ebbe80f05e5c3154b6c2a6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_problems_and_solutions_01 -> audio/generated/tr-TR/lexical/86ff72462480e2ff20c0d74166ee06dcc5b87609cb45ca60271ceaed61058eff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b074fc1e-e6dc-5173-8ab6-f5f314978955', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_problems_and_solutions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9a7c94a5811c9808db21cf524b40b0b6bd0d134c2aba8714b7a48e4940a87c00'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7a25ddf5-cea2-54ed-8afc-5978ebaf6cf8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b074fc1e-e6dc-5173-8ab6-f5f314978955', 1), '9a7c94a5811c9808db21cf524b40b0b6bd0d134c2aba8714b7a48e4940a87c00',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/86ff72462480e2ff20c0d74166ee06dcc5b87609cb45ca60271ceaed61058eff.mp3', 1071, '2026-09-13 17:08:28.636052', '3317bb3062bf6429cd538889f806f5d86fbc0a84365648e4c09e0ca160934624', 'validated', '{"audio_key":"86ff72462480e2ff20c0d74166ee06dcc5b87609cb45ca60271ceaed61058eff","entity_key":"lx_problems_and_solutions_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3317bb3062bf6429cd538889f806f5d86fbc0a84365648e4c09e0ca160934624","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/86ff72462480e2ff20c0d74166ee06dcc5b87609cb45ca60271ceaed61058eff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_problems_and_solutions_01 -> audio/generated/tr-TR/lexical/86ff72462480e2ff20c0d74166ee06dcc5b87609cb45ca60271ceaed61058eff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0144a3c9-b7bf-54c9-88df-f30f9710c41e', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_problems_and_solutions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9a7c94a5811c9808db21cf524b40b0b6bd0d134c2aba8714b7a48e4940a87c00'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e384c63e-6ba6-5769-83f7-c0e0ae46dec4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0144a3c9-b7bf-54c9-88df-f30f9710c41e', 1), '9a7c94a5811c9808db21cf524b40b0b6bd0d134c2aba8714b7a48e4940a87c00',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/86ff72462480e2ff20c0d74166ee06dcc5b87609cb45ca60271ceaed61058eff.mp3', 1071, '2026-09-13 17:08:28.636052', '3317bb3062bf6429cd538889f806f5d86fbc0a84365648e4c09e0ca160934624', 'validated', '{"audio_key":"86ff72462480e2ff20c0d74166ee06dcc5b87609cb45ca60271ceaed61058eff","entity_key":"wf_problems_and_solutions_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3317bb3062bf6429cd538889f806f5d86fbc0a84365648e4c09e0ca160934624","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/86ff72462480e2ff20c0d74166ee06dcc5b87609cb45ca60271ceaed61058eff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_social_nuance_06 -> audio/generated/tr-TR/lexical/89e03975a867351caf0964b62466f9f3f002cb679a1bba937cba8b5ec9a0804b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e8c78102-60f2-5068-b50a-9dae71566311', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_social_nuance_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b821040017c1cfb61415a2ebf10abbd22c44a3d01f17aa2371dfcef743ec685a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('20155be9-5165-50ae-92c1-31ee0e011f28', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e8c78102-60f2-5068-b50a-9dae71566311', 1), 'b821040017c1cfb61415a2ebf10abbd22c44a3d01f17aa2371dfcef743ec685a',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/89e03975a867351caf0964b62466f9f3f002cb679a1bba937cba8b5ec9a0804b.mp3', 1097, '2026-09-13 17:56:53.753880', '8d411d801e3a00683fd7eaec3341d17a4e2cccf6a2abbb51cfe6604f3068aee2', 'validated', '{"audio_key":"89e03975a867351caf0964b62466f9f3f002cb679a1bba937cba8b5ec9a0804b","entity_key":"lx_social_nuance_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8d411d801e3a00683fd7eaec3341d17a4e2cccf6a2abbb51cfe6604f3068aee2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/89e03975a867351caf0964b62466f9f3f002cb679a1bba937cba8b5ec9a0804b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_social_nuance_06 -> audio/generated/tr-TR/lexical/89e03975a867351caf0964b62466f9f3f002cb679a1bba937cba8b5ec9a0804b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9d4b1ff2-92a8-5c0c-8231-165dd663e719', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_social_nuance_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b821040017c1cfb61415a2ebf10abbd22c44a3d01f17aa2371dfcef743ec685a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('71c9246b-5c61-52f1-be58-cfcfc566d3f4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9d4b1ff2-92a8-5c0c-8231-165dd663e719', 1), 'b821040017c1cfb61415a2ebf10abbd22c44a3d01f17aa2371dfcef743ec685a',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/89e03975a867351caf0964b62466f9f3f002cb679a1bba937cba8b5ec9a0804b.mp3', 1097, '2026-09-13 17:56:53.753880', '8d411d801e3a00683fd7eaec3341d17a4e2cccf6a2abbb51cfe6604f3068aee2', 'validated', '{"audio_key":"89e03975a867351caf0964b62466f9f3f002cb679a1bba937cba8b5ec9a0804b","entity_key":"wf_social_nuance_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8d411d801e3a00683fd7eaec3341d17a4e2cccf6a2abbb51cfe6604f3068aee2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/89e03975a867351caf0964b62466f9f3f002cb679a1bba937cba8b5ec9a0804b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_problems_and_solutions_02 -> audio/generated/tr-TR/lexical/8b07a37210c9dbe3d323a27e70528fdcf6c347e69eb79d43d947526e680bd41e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5ee270f6-4256-5af5-8bea-8b89a3235841', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_problems_and_solutions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '888350113b4928694b6e4b66156da0cd88dd67c1528398122e24685c650df120'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cd4c6d2c-e78e-55a7-8bee-5d3e28fba332', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5ee270f6-4256-5af5-8bea-8b89a3235841', 1), '888350113b4928694b6e4b66156da0cd88dd67c1528398122e24685c650df120',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/8b07a37210c9dbe3d323a27e70528fdcf6c347e69eb79d43d947526e680bd41e.mp3', 1071, '2026-09-13 17:08:30.146121', 'b3694d8c501ce55cb20e4da77ee3edb9b67b7e175461f364b761b5cc976cf3e5', 'validated', '{"audio_key":"8b07a37210c9dbe3d323a27e70528fdcf6c347e69eb79d43d947526e680bd41e","entity_key":"lx_problems_and_solutions_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b3694d8c501ce55cb20e4da77ee3edb9b67b7e175461f364b761b5cc976cf3e5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/8b07a37210c9dbe3d323a27e70528fdcf6c347e69eb79d43d947526e680bd41e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_problems_and_solutions_02 -> audio/generated/tr-TR/lexical/8b07a37210c9dbe3d323a27e70528fdcf6c347e69eb79d43d947526e680bd41e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ea688db0-58ad-5400-824e-d69a08c1fec2', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_problems_and_solutions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '888350113b4928694b6e4b66156da0cd88dd67c1528398122e24685c650df120'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5e43b9a4-368b-5521-81e3-3e923ad4601b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ea688db0-58ad-5400-824e-d69a08c1fec2', 1), '888350113b4928694b6e4b66156da0cd88dd67c1528398122e24685c650df120',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/8b07a37210c9dbe3d323a27e70528fdcf6c347e69eb79d43d947526e680bd41e.mp3', 1071, '2026-09-13 17:08:30.146121', 'b3694d8c501ce55cb20e4da77ee3edb9b67b7e175461f364b761b5cc976cf3e5', 'validated', '{"audio_key":"8b07a37210c9dbe3d323a27e70528fdcf6c347e69eb79d43d947526e680bd41e","entity_key":"wf_problems_and_solutions_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b3694d8c501ce55cb20e4da77ee3edb9b67b7e175461f364b761b5cc976cf3e5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/8b07a37210c9dbe3d323a27e70528fdcf6c347e69eb79d43d947526e680bd41e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_b1_city_project_capstone_01 -> audio/generated/tr-TR/lexical/952d3d10869ee90d5e4e3fb99271ffd857d6d6ddad7835392683fba97d854732.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('20e63e24-2c7b-558f-b056-46f60f06c862', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_b1_city_project_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd5d6b34ec24d82e6cc0bab41f4c6e87775b1b599ac2e100c8394aa6c5d90d438'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('81cf8e29-7fb1-525f-8783-ee3b843e052e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('20e63e24-2c7b-558f-b056-46f60f06c862', 1), 'd5d6b34ec24d82e6cc0bab41f4c6e87775b1b599ac2e100c8394aa6c5d90d438',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/952d3d10869ee90d5e4e3fb99271ffd857d6d6ddad7835392683fba97d854732.mp3', 1097, '2026-09-13 17:56:54.651935', 'b466aef89ee65324a317e96a596318adde89b4fe460c14d2f52c048da51d21b7', 'validated', '{"audio_key":"952d3d10869ee90d5e4e3fb99271ffd857d6d6ddad7835392683fba97d854732","entity_key":"lx_b1_city_project_capstone_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b466aef89ee65324a317e96a596318adde89b4fe460c14d2f52c048da51d21b7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/952d3d10869ee90d5e4e3fb99271ffd857d6d6ddad7835392683fba97d854732.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_b1_city_project_capstone_01 -> audio/generated/tr-TR/lexical/952d3d10869ee90d5e4e3fb99271ffd857d6d6ddad7835392683fba97d854732.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1eef4101-44f2-5d9a-a47f-c149a528c08c', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_b1_city_project_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd5d6b34ec24d82e6cc0bab41f4c6e87775b1b599ac2e100c8394aa6c5d90d438'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b073ee6b-13ad-5bad-b83c-7bcdd230dbe4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1eef4101-44f2-5d9a-a47f-c149a528c08c', 1), 'd5d6b34ec24d82e6cc0bab41f4c6e87775b1b599ac2e100c8394aa6c5d90d438',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/952d3d10869ee90d5e4e3fb99271ffd857d6d6ddad7835392683fba97d854732.mp3', 1097, '2026-09-13 17:56:54.651935', 'b466aef89ee65324a317e96a596318adde89b4fe460c14d2f52c048da51d21b7', 'validated', '{"audio_key":"952d3d10869ee90d5e4e3fb99271ffd857d6d6ddad7835392683fba97d854732","entity_key":"wf_b1_city_project_capstone_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b466aef89ee65324a317e96a596318adde89b4fe460c14d2f52c048da51d21b7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/952d3d10869ee90d5e4e3fb99271ffd857d6d6ddad7835392683fba97d854732.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_opinions_and_evidence_03 -> audio/generated/tr-TR/lexical/96acdf831d0b93e7b7682b559c5e8ee34f46130816cc1ff31484c5afff1ae095.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d42d6832-0c12-5ccc-bf65-a5aaea93abc6', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_opinions_and_evidence_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0e264c607b9194e8571a6d355b515806c7eca1a936c463f0f00508a6b316c5ee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8fd58677-8208-5160-b84a-1efbed512ab7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d42d6832-0c12-5ccc-bf65-a5aaea93abc6', 1), '0e264c607b9194e8571a6d355b515806c7eca1a936c463f0f00508a6b316c5ee',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/96acdf831d0b93e7b7682b559c5e8ee34f46130816cc1ff31484c5afff1ae095.mp3', 1071, '2026-09-13 17:56:54.719584', '8517b50fb13594790ad1ca57d415c9d2ee7a275bb874e430dd6e034472357b3c', 'validated', '{"audio_key":"96acdf831d0b93e7b7682b559c5e8ee34f46130816cc1ff31484c5afff1ae095","entity_key":"lx_opinions_and_evidence_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8517b50fb13594790ad1ca57d415c9d2ee7a275bb874e430dd6e034472357b3c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/96acdf831d0b93e7b7682b559c5e8ee34f46130816cc1ff31484c5afff1ae095.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_opinions_and_evidence_03 -> audio/generated/tr-TR/lexical/96acdf831d0b93e7b7682b559c5e8ee34f46130816cc1ff31484c5afff1ae095.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('388bb775-6ec7-54f0-8223-eb3092aa395e', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_opinions_and_evidence_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0e264c607b9194e8571a6d355b515806c7eca1a936c463f0f00508a6b316c5ee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('380ee237-daa6-5830-b4d1-345db456dbef', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('388bb775-6ec7-54f0-8223-eb3092aa395e', 1), '0e264c607b9194e8571a6d355b515806c7eca1a936c463f0f00508a6b316c5ee',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/96acdf831d0b93e7b7682b559c5e8ee34f46130816cc1ff31484c5afff1ae095.mp3', 1071, '2026-09-13 17:56:54.719584', '8517b50fb13594790ad1ca57d415c9d2ee7a275bb874e430dd6e034472357b3c', 'validated', '{"audio_key":"96acdf831d0b93e7b7682b559c5e8ee34f46130816cc1ff31484c5afff1ae095","entity_key":"wf_opinions_and_evidence_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8517b50fb13594790ad1ca57d415c9d2ee7a275bb874e430dd6e034472357b3c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/96acdf831d0b93e7b7682b559c5e8ee34f46130816cc1ff31484c5afff1ae095.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_goals_and_effort_03 -> audio/generated/tr-TR/lexical/97550000c5ebf953c114574928d53fff9fe620d091b4d55f6b943ddc44a69941.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('31994196-85b0-5e2b-9e04-1d6f191bf0e4', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_goals_and_effort_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'af09c7b9dacab23703f5caf13a5a4e1fdf9641cfb9c7f8d18028b47cda299727'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('53e20279-1875-52e5-a232-d8888a42a752', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('31994196-85b0-5e2b-9e04-1d6f191bf0e4', 1), 'af09c7b9dacab23703f5caf13a5a4e1fdf9641cfb9c7f8d18028b47cda299727',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/97550000c5ebf953c114574928d53fff9fe620d091b4d55f6b943ddc44a69941.mp3', 1201, '2026-09-13 17:56:55.624976', '9f83cc71617585a3a0dc95680c2850ed9eb37829a37ab0c1f0e0a0c991790396', 'validated', '{"audio_key":"97550000c5ebf953c114574928d53fff9fe620d091b4d55f6b943ddc44a69941","entity_key":"lx_goals_and_effort_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9f83cc71617585a3a0dc95680c2850ed9eb37829a37ab0c1f0e0a0c991790396","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/97550000c5ebf953c114574928d53fff9fe620d091b4d55f6b943ddc44a69941.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_goals_and_effort_03 -> audio/generated/tr-TR/lexical/97550000c5ebf953c114574928d53fff9fe620d091b4d55f6b943ddc44a69941.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f5dad81e-db07-52e7-9fc5-0f74ed1c0fb2', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_goals_and_effort_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'af09c7b9dacab23703f5caf13a5a4e1fdf9641cfb9c7f8d18028b47cda299727'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('349275fb-50b5-5464-9499-21e8bb127f6e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f5dad81e-db07-52e7-9fc5-0f74ed1c0fb2', 1), 'af09c7b9dacab23703f5caf13a5a4e1fdf9641cfb9c7f8d18028b47cda299727',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/97550000c5ebf953c114574928d53fff9fe620d091b4d55f6b943ddc44a69941.mp3', 1201, '2026-09-13 17:56:55.624976', '9f83cc71617585a3a0dc95680c2850ed9eb37829a37ab0c1f0e0a0c991790396', 'validated', '{"audio_key":"97550000c5ebf953c114574928d53fff9fe620d091b4d55f6b943ddc44a69941","entity_key":"wf_goals_and_effort_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9f83cc71617585a3a0dc95680c2850ed9eb37829a37ab0c1f0e0a0c991790396","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/97550000c5ebf953c114574928d53fff9fe620d091b4d55f6b943ddc44a69941.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_storytelling_sequence_05 -> audio/generated/tr-TR/lexical/98bc61866f95eae3b09158b0bddad3e0c48cc569e34b279d05de2f757bb32011.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('049bf027-8a72-5f0e-bec9-2df1d9eb158f', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_storytelling_sequence_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e6034f0efbe28977f25fec34a5636c276dc9bf1d5fd68069e03e22f85c0630c6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f933aae6-bca1-50f1-92aa-b9d36b3edcb7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('049bf027-8a72-5f0e-bec9-2df1d9eb158f', 1), 'e6034f0efbe28977f25fec34a5636c276dc9bf1d5fd68069e03e22f85c0630c6',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/98bc61866f95eae3b09158b0bddad3e0c48cc569e34b279d05de2f757bb32011.mp3', 1149, '2026-09-13 17:56:55.653737', '1253030706de47d72ff501cc8a1d3e37f836305d67d66561680e4d7c8408fa9e', 'validated', '{"audio_key":"98bc61866f95eae3b09158b0bddad3e0c48cc569e34b279d05de2f757bb32011","entity_key":"lx_storytelling_sequence_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1253030706de47d72ff501cc8a1d3e37f836305d67d66561680e4d7c8408fa9e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/98bc61866f95eae3b09158b0bddad3e0c48cc569e34b279d05de2f757bb32011.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_storytelling_sequence_05 -> audio/generated/tr-TR/lexical/98bc61866f95eae3b09158b0bddad3e0c48cc569e34b279d05de2f757bb32011.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('44cb89dd-1e4f-5705-95ba-08b1ae6d6de9', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_storytelling_sequence_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e6034f0efbe28977f25fec34a5636c276dc9bf1d5fd68069e03e22f85c0630c6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bde2a5bd-e5c4-54d6-8022-9bfc063bc715', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('44cb89dd-1e4f-5705-95ba-08b1ae6d6de9', 1), 'e6034f0efbe28977f25fec34a5636c276dc9bf1d5fd68069e03e22f85c0630c6',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/98bc61866f95eae3b09158b0bddad3e0c48cc569e34b279d05de2f757bb32011.mp3', 1149, '2026-09-13 17:56:55.653737', '1253030706de47d72ff501cc8a1d3e37f836305d67d66561680e4d7c8408fa9e', 'validated', '{"audio_key":"98bc61866f95eae3b09158b0bddad3e0c48cc569e34b279d05de2f757bb32011","entity_key":"wf_storytelling_sequence_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1253030706de47d72ff501cc8a1d3e37f836305d67d66561680e4d7c8408fa9e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/98bc61866f95eae3b09158b0bddad3e0c48cc569e34b279d05de2f757bb32011.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_social_nuance_01 -> audio/generated/tr-TR/lexical/9a1764b69aa867fddecd19254e4d8a79ccdf1cb6ff6278333bbe6bca989f9466.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2d5f562f-9d43-51e2-93c3-29ce04ea1c66', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_social_nuance_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2984a6687048e19263e2c2fd9a9bc39c1ba0a7ddbda409cb4c87c85c69d543f0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('42755bae-cc79-5624-b272-2a59abb50f12', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2d5f562f-9d43-51e2-93c3-29ce04ea1c66', 1), '2984a6687048e19263e2c2fd9a9bc39c1ba0a7ddbda409cb4c87c85c69d543f0',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/9a1764b69aa867fddecd19254e4d8a79ccdf1cb6ff6278333bbe6bca989f9466.mp3', 1515, '2026-09-13 17:56:56.652042', '8f58dd8500e04ec94e646d9dae8443079ffd85cd3e9b34b78d29711ad06e1f70', 'validated', '{"audio_key":"9a1764b69aa867fddecd19254e4d8a79ccdf1cb6ff6278333bbe6bca989f9466","entity_key":"lx_social_nuance_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8f58dd8500e04ec94e646d9dae8443079ffd85cd3e9b34b78d29711ad06e1f70","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/9a1764b69aa867fddecd19254e4d8a79ccdf1cb6ff6278333bbe6bca989f9466.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_social_nuance_01 -> audio/generated/tr-TR/lexical/9a1764b69aa867fddecd19254e4d8a79ccdf1cb6ff6278333bbe6bca989f9466.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a2c5c0f7-8542-51fb-a733-f9ecf994706a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_social_nuance_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2984a6687048e19263e2c2fd9a9bc39c1ba0a7ddbda409cb4c87c85c69d543f0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ec690a12-88ef-5665-bae6-b9b7526e1a8d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a2c5c0f7-8542-51fb-a733-f9ecf994706a', 1), '2984a6687048e19263e2c2fd9a9bc39c1ba0a7ddbda409cb4c87c85c69d543f0',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/9a1764b69aa867fddecd19254e4d8a79ccdf1cb6ff6278333bbe6bca989f9466.mp3', 1515, '2026-09-13 17:56:56.652042', '8f58dd8500e04ec94e646d9dae8443079ffd85cd3e9b34b78d29711ad06e1f70', 'validated', '{"audio_key":"9a1764b69aa867fddecd19254e4d8a79ccdf1cb6ff6278333bbe6bca989f9466","entity_key":"wf_social_nuance_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8f58dd8500e04ec94e646d9dae8443079ffd85cd3e9b34b78d29711ad06e1f70","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/9a1764b69aa867fddecd19254e4d8a79ccdf1cb6ff6278333bbe6bca989f9466.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_b1_city_project_capstone_06 -> audio/generated/tr-TR/lexical/a30e1d81d9c5a6d278560cfa13d54ee0591cc3df73f81ccf7b8aef55a9192c2e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('70fd7b7e-6a81-5189-9b30-b2578b8c1f13', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_b1_city_project_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f6a7221b5e62e348715b5c9f0618e7754a54112e90fe5f33fdea90d30ef0b5f9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3084b12e-aa2d-535f-ba7b-90856a27e5bf', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('70fd7b7e-6a81-5189-9b30-b2578b8c1f13', 1), 'f6a7221b5e62e348715b5c9f0618e7754a54112e90fe5f33fdea90d30ef0b5f9',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/a30e1d81d9c5a6d278560cfa13d54ee0591cc3df73f81ccf7b8aef55a9192c2e.mp3', 1515, '2026-09-13 17:56:56.623743', '8bbe4ed8f5b304b860133d96ca55c7d68e35c74ad40dc39656fd167e31d91ddb', 'validated', '{"audio_key":"a30e1d81d9c5a6d278560cfa13d54ee0591cc3df73f81ccf7b8aef55a9192c2e","entity_key":"lx_b1_city_project_capstone_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8bbe4ed8f5b304b860133d96ca55c7d68e35c74ad40dc39656fd167e31d91ddb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/a30e1d81d9c5a6d278560cfa13d54ee0591cc3df73f81ccf7b8aef55a9192c2e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_b1_city_project_capstone_06 -> audio/generated/tr-TR/lexical/a30e1d81d9c5a6d278560cfa13d54ee0591cc3df73f81ccf7b8aef55a9192c2e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('50f06bfc-3149-5efd-8232-a37413416f0d', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_b1_city_project_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f6a7221b5e62e348715b5c9f0618e7754a54112e90fe5f33fdea90d30ef0b5f9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('239f0e07-5857-5838-8f26-1e918b617f30', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('50f06bfc-3149-5efd-8232-a37413416f0d', 1), 'f6a7221b5e62e348715b5c9f0618e7754a54112e90fe5f33fdea90d30ef0b5f9',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/a30e1d81d9c5a6d278560cfa13d54ee0591cc3df73f81ccf7b8aef55a9192c2e.mp3', 1515, '2026-09-13 17:56:56.623743', '8bbe4ed8f5b304b860133d96ca55c7d68e35c74ad40dc39656fd167e31d91ddb', 'validated', '{"audio_key":"a30e1d81d9c5a6d278560cfa13d54ee0591cc3df73f81ccf7b8aef55a9192c2e","entity_key":"wf_b1_city_project_capstone_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8bbe4ed8f5b304b860133d96ca55c7d68e35c74ad40dc39656fd167e31d91ddb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/a30e1d81d9c5a6d278560cfa13d54ee0591cc3df73f81ccf7b8aef55a9192c2e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_problems_and_solutions_03 -> audio/generated/tr-TR/lexical/a7feba16b30e92d5ed265ca8fb0b2b80bdf13f1e9f1e431f43acd7d71f39a879.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fa86dc3b-4c59-5839-abaf-64ff2cf1030f', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_problems_and_solutions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '46b362b7d6be1a08d815e98a6b2eafefbd272babd2688b4defbbc9b33ee44cee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d7654355-e210-5bb9-a16d-91503400fb6b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fa86dc3b-4c59-5839-abaf-64ff2cf1030f', 1), '46b362b7d6be1a08d815e98a6b2eafefbd272babd2688b4defbbc9b33ee44cee',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/a7feba16b30e92d5ed265ca8fb0b2b80bdf13f1e9f1e431f43acd7d71f39a879.mp3', 1280, '2026-09-13 17:56:57.652710', '8deb7a4b8c030df775d8d9336a567edc9f6dcf38efedf036c7e1aadb627ad3ab', 'validated', '{"audio_key":"a7feba16b30e92d5ed265ca8fb0b2b80bdf13f1e9f1e431f43acd7d71f39a879","entity_key":"lx_problems_and_solutions_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8deb7a4b8c030df775d8d9336a567edc9f6dcf38efedf036c7e1aadb627ad3ab","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/a7feba16b30e92d5ed265ca8fb0b2b80bdf13f1e9f1e431f43acd7d71f39a879.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_problems_and_solutions_03 -> audio/generated/tr-TR/lexical/a7feba16b30e92d5ed265ca8fb0b2b80bdf13f1e9f1e431f43acd7d71f39a879.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('86db24d9-51e6-5c9d-ad45-12a53de61f81', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_problems_and_solutions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '46b362b7d6be1a08d815e98a6b2eafefbd272babd2688b4defbbc9b33ee44cee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b0cfcd81-93d6-54a0-afa4-0bcb87f68c35', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('86db24d9-51e6-5c9d-ad45-12a53de61f81', 1), '46b362b7d6be1a08d815e98a6b2eafefbd272babd2688b4defbbc9b33ee44cee',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/a7feba16b30e92d5ed265ca8fb0b2b80bdf13f1e9f1e431f43acd7d71f39a879.mp3', 1280, '2026-09-13 17:56:57.652710', '8deb7a4b8c030df775d8d9336a567edc9f6dcf38efedf036c7e1aadb627ad3ab', 'validated', '{"audio_key":"a7feba16b30e92d5ed265ca8fb0b2b80bdf13f1e9f1e431f43acd7d71f39a879","entity_key":"wf_problems_and_solutions_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8deb7a4b8c030df775d8d9336a567edc9f6dcf38efedf036c7e1aadb627ad3ab","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/a7feba16b30e92d5ed265ca8fb0b2b80bdf13f1e9f1e431f43acd7d71f39a879.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reported_information_05 -> audio/generated/tr-TR/lexical/a8a5153523ba66fad96d973cd1e4c7568c5b647d8f5b6858c41cd2b72695244b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0ef7f34e-e269-5f94-a4d4-8f9536e13786', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reported_information_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aa46e2423706ef65de374e3c0846d0dd257d39c855e514a223a80cc173ae1e66'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7f78955a-f33b-5b15-8da0-014087325a3d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0ef7f34e-e269-5f94-a4d4-8f9536e13786', 1), 'aa46e2423706ef65de374e3c0846d0dd257d39c855e514a223a80cc173ae1e66',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/a8a5153523ba66fad96d973cd1e4c7568c5b647d8f5b6858c41cd2b72695244b.mp3', 1149, '2026-09-13 17:56:57.614112', '848fb7fc0972c339467c270cab010bc463cb80bc04bc1ef89b47ce688258fceb', 'validated', '{"audio_key":"a8a5153523ba66fad96d973cd1e4c7568c5b647d8f5b6858c41cd2b72695244b","entity_key":"lx_reported_information_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"848fb7fc0972c339467c270cab010bc463cb80bc04bc1ef89b47ce688258fceb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/a8a5153523ba66fad96d973cd1e4c7568c5b647d8f5b6858c41cd2b72695244b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reported_information_05 -> audio/generated/tr-TR/lexical/a8a5153523ba66fad96d973cd1e4c7568c5b647d8f5b6858c41cd2b72695244b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('29e87c97-dd9c-5820-9fff-bdf2236f80d1', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reported_information_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aa46e2423706ef65de374e3c0846d0dd257d39c855e514a223a80cc173ae1e66'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d438593a-b084-5b0f-a601-dfe5632188f5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('29e87c97-dd9c-5820-9fff-bdf2236f80d1', 1), 'aa46e2423706ef65de374e3c0846d0dd257d39c855e514a223a80cc173ae1e66',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/a8a5153523ba66fad96d973cd1e4c7568c5b647d8f5b6858c41cd2b72695244b.mp3', 1149, '2026-09-13 17:56:57.614112', '848fb7fc0972c339467c270cab010bc463cb80bc04bc1ef89b47ce688258fceb', 'validated', '{"audio_key":"a8a5153523ba66fad96d973cd1e4c7568c5b647d8f5b6858c41cd2b72695244b","entity_key":"wf_reported_information_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"848fb7fc0972c339467c270cab010bc463cb80bc04bc1ef89b47ce688258fceb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/a8a5153523ba66fad96d973cd1e4c7568c5b647d8f5b6858c41cd2b72695244b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_social_nuance_04 -> audio/generated/tr-TR/lexical/a8a5153523ba66fad96d973cd1e4c7568c5b647d8f5b6858c41cd2b72695244b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0ef7f34e-e269-5f94-a4d4-8f9536e13786', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_social_nuance_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aa46e2423706ef65de374e3c0846d0dd257d39c855e514a223a80cc173ae1e66'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7f78955a-f33b-5b15-8da0-014087325a3d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0ef7f34e-e269-5f94-a4d4-8f9536e13786', 1), 'aa46e2423706ef65de374e3c0846d0dd257d39c855e514a223a80cc173ae1e66',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/a8a5153523ba66fad96d973cd1e4c7568c5b647d8f5b6858c41cd2b72695244b.mp3', 1149, '2026-09-13 17:56:57.614112', '848fb7fc0972c339467c270cab010bc463cb80bc04bc1ef89b47ce688258fceb', 'validated', '{"audio_key":"a8a5153523ba66fad96d973cd1e4c7568c5b647d8f5b6858c41cd2b72695244b","entity_key":"lx_social_nuance_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"848fb7fc0972c339467c270cab010bc463cb80bc04bc1ef89b47ce688258fceb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/a8a5153523ba66fad96d973cd1e4c7568c5b647d8f5b6858c41cd2b72695244b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_social_nuance_04 -> audio/generated/tr-TR/lexical/a8a5153523ba66fad96d973cd1e4c7568c5b647d8f5b6858c41cd2b72695244b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('83f7fca4-06d9-5981-a696-0090b90301a5', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_social_nuance_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aa46e2423706ef65de374e3c0846d0dd257d39c855e514a223a80cc173ae1e66'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('34441911-e05b-5e8f-8bd3-e79d8f0cc264', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('83f7fca4-06d9-5981-a696-0090b90301a5', 1), 'aa46e2423706ef65de374e3c0846d0dd257d39c855e514a223a80cc173ae1e66',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/a8a5153523ba66fad96d973cd1e4c7568c5b647d8f5b6858c41cd2b72695244b.mp3', 1149, '2026-09-13 17:56:57.614112', '848fb7fc0972c339467c270cab010bc463cb80bc04bc1ef89b47ce688258fceb', 'validated', '{"audio_key":"a8a5153523ba66fad96d973cd1e4c7568c5b647d8f5b6858c41cd2b72695244b","entity_key":"wf_social_nuance_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"848fb7fc0972c339467c270cab010bc463cb80bc04bc1ef89b47ce688258fceb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/a8a5153523ba66fad96d973cd1e4c7568c5b647d8f5b6858c41cd2b72695244b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_problems_and_solutions_04 -> audio/generated/tr-TR/lexical/aa00a81cae72b4b9ab8028720198f3af2ce20741809e72fa41352ed050ccab0d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a65cba96-b427-5534-9395-afd18f850892', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_problems_and_solutions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1cdbf487dad14b1514b62548d0f6c4ad3048fb9e6e663dff36a743f6d95f7197'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('72427930-dbd6-55c5-b8b1-98aad6e124b0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a65cba96-b427-5534-9395-afd18f850892', 1), '1cdbf487dad14b1514b62548d0f6c4ad3048fb9e6e663dff36a743f6d95f7197',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/aa00a81cae72b4b9ab8028720198f3af2ce20741809e72fa41352ed050ccab0d.mp3', 1201, '2026-09-13 17:56:58.596238', 'fa295ad526561b3a20a33518a43804201cc2ef098a4793285e76b43d502dcc27', 'validated', '{"audio_key":"aa00a81cae72b4b9ab8028720198f3af2ce20741809e72fa41352ed050ccab0d","entity_key":"lx_problems_and_solutions_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fa295ad526561b3a20a33518a43804201cc2ef098a4793285e76b43d502dcc27","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/aa00a81cae72b4b9ab8028720198f3af2ce20741809e72fa41352ed050ccab0d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_problems_and_solutions_04 -> audio/generated/tr-TR/lexical/aa00a81cae72b4b9ab8028720198f3af2ce20741809e72fa41352ed050ccab0d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('20990a96-877e-54d8-8d8d-fa67f39fd66e', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_problems_and_solutions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1cdbf487dad14b1514b62548d0f6c4ad3048fb9e6e663dff36a743f6d95f7197'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a17c6e77-ad78-5b80-941f-95e175af0c34', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('20990a96-877e-54d8-8d8d-fa67f39fd66e', 1), '1cdbf487dad14b1514b62548d0f6c4ad3048fb9e6e663dff36a743f6d95f7197',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/aa00a81cae72b4b9ab8028720198f3af2ce20741809e72fa41352ed050ccab0d.mp3', 1201, '2026-09-13 17:56:58.596238', 'fa295ad526561b3a20a33518a43804201cc2ef098a4793285e76b43d502dcc27', 'validated', '{"audio_key":"aa00a81cae72b4b9ab8028720198f3af2ce20741809e72fa41352ed050ccab0d","entity_key":"wf_problems_and_solutions_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fa295ad526561b3a20a33518a43804201cc2ef098a4793285e76b43d502dcc27","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/aa00a81cae72b4b9ab8028720198f3af2ce20741809e72fa41352ed050ccab0d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_b1_city_project_capstone_02 -> audio/generated/tr-TR/lexical/b5df5af658c12e5505ab63edad2a28b720536a14fda09a1bad275dd16085bc38.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3040dcbe-99bc-5d0d-91c5-977206fadf3a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_b1_city_project_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '223c4f96c9881a364a3b8095972029e7a742759f837d186a45034606225de3f8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('72e063f2-376d-5257-9609-deb4e42aab55', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3040dcbe-99bc-5d0d-91c5-977206fadf3a', 1), '223c4f96c9881a364a3b8095972029e7a742759f837d186a45034606225de3f8',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/b5df5af658c12e5505ab63edad2a28b720536a14fda09a1bad275dd16085bc38.mp3', 1071, '2026-09-13 17:56:58.629213', '5389adbe743cf96d255992b60e4dcde3bdf609fb45582025b80f99367101b229', 'validated', '{"audio_key":"b5df5af658c12e5505ab63edad2a28b720536a14fda09a1bad275dd16085bc38","entity_key":"lx_b1_city_project_capstone_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5389adbe743cf96d255992b60e4dcde3bdf609fb45582025b80f99367101b229","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/b5df5af658c12e5505ab63edad2a28b720536a14fda09a1bad275dd16085bc38.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_b1_city_project_capstone_02 -> audio/generated/tr-TR/lexical/b5df5af658c12e5505ab63edad2a28b720536a14fda09a1bad275dd16085bc38.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c0ba91ca-fdd7-5720-9ae4-15df474ac536', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_b1_city_project_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '223c4f96c9881a364a3b8095972029e7a742759f837d186a45034606225de3f8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('35a4af38-7c88-5a4b-acda-ce4f2a30d6c4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c0ba91ca-fdd7-5720-9ae4-15df474ac536', 1), '223c4f96c9881a364a3b8095972029e7a742759f837d186a45034606225de3f8',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/b5df5af658c12e5505ab63edad2a28b720536a14fda09a1bad275dd16085bc38.mp3', 1071, '2026-09-13 17:56:58.629213', '5389adbe743cf96d255992b60e4dcde3bdf609fb45582025b80f99367101b229', 'validated', '{"audio_key":"b5df5af658c12e5505ab63edad2a28b720536a14fda09a1bad275dd16085bc38","entity_key":"wf_b1_city_project_capstone_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5389adbe743cf96d255992b60e4dcde3bdf609fb45582025b80f99367101b229","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/b5df5af658c12e5505ab63edad2a28b720536a14fda09a1bad275dd16085bc38.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_experiences_and_change_06 -> audio/generated/tr-TR/lexical/be2846e012bc0f10d57b0cfe7d026eb95cc3f23f49324bb789667c9ddaa1c6e2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4a087cdf-f8c3-5a3a-8155-7c51f8bf4e9e', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_experiences_and_change_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d4aa99ed1b2331af93d272a7a16a185291e8f8f7227503113d608d218e9f1f2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7aaa1a24-90a4-5b60-8724-0c64bf717ca8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4a087cdf-f8c3-5a3a-8155-7c51f8bf4e9e', 1), '8d4aa99ed1b2331af93d272a7a16a185291e8f8f7227503113d608d218e9f1f2',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/be2846e012bc0f10d57b0cfe7d026eb95cc3f23f49324bb789667c9ddaa1c6e2.mp3', 1201, '2026-09-13 17:56:59.627582', 'c2637f4db60d6b40a01066ce73e7fcefea360e2ea5255bcaf7061221eca71fe8', 'validated', '{"audio_key":"be2846e012bc0f10d57b0cfe7d026eb95cc3f23f49324bb789667c9ddaa1c6e2","entity_key":"lx_experiences_and_change_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c2637f4db60d6b40a01066ce73e7fcefea360e2ea5255bcaf7061221eca71fe8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/be2846e012bc0f10d57b0cfe7d026eb95cc3f23f49324bb789667c9ddaa1c6e2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_experiences_and_change_06 -> audio/generated/tr-TR/lexical/be2846e012bc0f10d57b0cfe7d026eb95cc3f23f49324bb789667c9ddaa1c6e2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c6323137-0bf7-538f-87cf-1c5e8bade792', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_experiences_and_change_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d4aa99ed1b2331af93d272a7a16a185291e8f8f7227503113d608d218e9f1f2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b8a98187-aa7f-5b02-88b7-6e7d175c0130', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c6323137-0bf7-538f-87cf-1c5e8bade792', 1), '8d4aa99ed1b2331af93d272a7a16a185291e8f8f7227503113d608d218e9f1f2',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/be2846e012bc0f10d57b0cfe7d026eb95cc3f23f49324bb789667c9ddaa1c6e2.mp3', 1201, '2026-09-13 17:56:59.627582', 'c2637f4db60d6b40a01066ce73e7fcefea360e2ea5255bcaf7061221eca71fe8', 'validated', '{"audio_key":"be2846e012bc0f10d57b0cfe7d026eb95cc3f23f49324bb789667c9ddaa1c6e2","entity_key":"wf_experiences_and_change_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c2637f4db60d6b40a01066ce73e7fcefea360e2ea5255bcaf7061221eca71fe8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/be2846e012bc0f10d57b0cfe7d026eb95cc3f23f49324bb789667c9ddaa1c6e2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_storytelling_sequence_01 -> audio/generated/tr-TR/lexical/bf61d3e48b621f37fed3ef7b3ab4ce855fabec52e2adfe317646292c4301911e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('cef3f9bb-d09a-557a-b177-8a4f08625300', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_storytelling_sequence_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1129e6f195d97e9ec38c6251da5e449a52bb1369fa0801e77002106637bf90b7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('42955b04-ae4b-53dc-9bd2-8955d8e799b4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('cef3f9bb-d09a-557a-b177-8a4f08625300', 1), '1129e6f195d97e9ec38c6251da5e449a52bb1369fa0801e77002106637bf90b7',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/bf61d3e48b621f37fed3ef7b3ab4ce855fabec52e2adfe317646292c4301911e.mp3', 1071, '2026-09-13 17:56:59.558027', 'd2d7afc6b629299071d8ebdfb43f2745ee3e676f73bc6d96d4aca165f3647b6b', 'validated', '{"audio_key":"bf61d3e48b621f37fed3ef7b3ab4ce855fabec52e2adfe317646292c4301911e","entity_key":"lx_storytelling_sequence_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d2d7afc6b629299071d8ebdfb43f2745ee3e676f73bc6d96d4aca165f3647b6b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/bf61d3e48b621f37fed3ef7b3ab4ce855fabec52e2adfe317646292c4301911e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_storytelling_sequence_01 -> audio/generated/tr-TR/lexical/bf61d3e48b621f37fed3ef7b3ab4ce855fabec52e2adfe317646292c4301911e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3a4f43ee-d7b4-5741-8ace-e297c434518d', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_storytelling_sequence_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1129e6f195d97e9ec38c6251da5e449a52bb1369fa0801e77002106637bf90b7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a265fff7-81c1-51cc-8af0-eaee7bc2723f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3a4f43ee-d7b4-5741-8ace-e297c434518d', 1), '1129e6f195d97e9ec38c6251da5e449a52bb1369fa0801e77002106637bf90b7',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/bf61d3e48b621f37fed3ef7b3ab4ce855fabec52e2adfe317646292c4301911e.mp3', 1071, '2026-09-13 17:56:59.558027', 'd2d7afc6b629299071d8ebdfb43f2745ee3e676f73bc6d96d4aca165f3647b6b', 'validated', '{"audio_key":"bf61d3e48b621f37fed3ef7b3ab4ce855fabec52e2adfe317646292c4301911e","entity_key":"wf_storytelling_sequence_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d2d7afc6b629299071d8ebdfb43f2745ee3e676f73bc6d96d4aca165f3647b6b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/bf61d3e48b621f37fed3ef7b3ab4ce855fabec52e2adfe317646292c4301911e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_social_nuance_02 -> audio/generated/tr-TR/lexical/c2ff6d01fae568fb1227b3a565ccc740cd315247da79a543c365c792fbac85fb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('542a3cb7-69d4-503c-9ab4-51f751902322', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_social_nuance_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd6fcc81f6077cda1019b1ee5ef76864da147c068647302256003036c047e1898'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f2d11cfb-538d-514c-ba7c-edd12647bd3d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('542a3cb7-69d4-503c-9ab4-51f751902322', 1), 'd6fcc81f6077cda1019b1ee5ef76864da147c068647302256003036c047e1898',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/c2ff6d01fae568fb1227b3a565ccc740cd315247da79a543c365c792fbac85fb.mp3', 1332, '2026-09-13 17:57:00.514219', 'f5132f2599cdf5624a49ea2570ef473dcc02040d1675b884c945e8c4f261769e', 'validated', '{"audio_key":"c2ff6d01fae568fb1227b3a565ccc740cd315247da79a543c365c792fbac85fb","entity_key":"lx_social_nuance_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f5132f2599cdf5624a49ea2570ef473dcc02040d1675b884c945e8c4f261769e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/c2ff6d01fae568fb1227b3a565ccc740cd315247da79a543c365c792fbac85fb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_social_nuance_02 -> audio/generated/tr-TR/lexical/c2ff6d01fae568fb1227b3a565ccc740cd315247da79a543c365c792fbac85fb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0dae395e-7094-510b-8ca9-57b3c091d7f4', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_social_nuance_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd6fcc81f6077cda1019b1ee5ef76864da147c068647302256003036c047e1898'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a00e5c15-6bb1-53a1-9f39-4a1fee6f68cf', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0dae395e-7094-510b-8ca9-57b3c091d7f4', 1), 'd6fcc81f6077cda1019b1ee5ef76864da147c068647302256003036c047e1898',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/c2ff6d01fae568fb1227b3a565ccc740cd315247da79a543c365c792fbac85fb.mp3', 1332, '2026-09-13 17:57:00.514219', 'f5132f2599cdf5624a49ea2570ef473dcc02040d1675b884c945e8c4f261769e', 'validated', '{"audio_key":"c2ff6d01fae568fb1227b3a565ccc740cd315247da79a543c365c792fbac85fb","entity_key":"wf_social_nuance_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f5132f2599cdf5624a49ea2570ef473dcc02040d1675b884c945e8c4f261769e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/c2ff6d01fae568fb1227b3a565ccc740cd315247da79a543c365c792fbac85fb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_storytelling_sequence_04 -> audio/generated/tr-TR/lexical/c514d062dfce6dc14e46b48082665334381f3b4f686350f40998da1ec506d011.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4b8c1d34-80a1-5f04-9388-a81dc4fcf162', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_storytelling_sequence_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '48ffa51af5617ca73a02e489374f1add26a64d17f145ae88aa4fc3b8760be1d5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('27f93a94-f2fe-54c8-906a-1d8fe3cca426', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4b8c1d34-80a1-5f04-9388-a81dc4fcf162', 1), '48ffa51af5617ca73a02e489374f1add26a64d17f145ae88aa4fc3b8760be1d5',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/c514d062dfce6dc14e46b48082665334381f3b4f686350f40998da1ec506d011.mp3', 1253, '2026-09-13 17:57:00.601514', '77d9bbac74560e911687383014e3f8a7a3e16ff63b702eb8fe0de5f16e233f23', 'validated', '{"audio_key":"c514d062dfce6dc14e46b48082665334381f3b4f686350f40998da1ec506d011","entity_key":"lx_storytelling_sequence_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"77d9bbac74560e911687383014e3f8a7a3e16ff63b702eb8fe0de5f16e233f23","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/c514d062dfce6dc14e46b48082665334381f3b4f686350f40998da1ec506d011.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_storytelling_sequence_04 -> audio/generated/tr-TR/lexical/c514d062dfce6dc14e46b48082665334381f3b4f686350f40998da1ec506d011.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f574be4d-e530-5146-b3aa-587d6f4c145b', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_storytelling_sequence_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '48ffa51af5617ca73a02e489374f1add26a64d17f145ae88aa4fc3b8760be1d5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e9c21189-7221-5191-a7fc-11556aae4110', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f574be4d-e530-5146-b3aa-587d6f4c145b', 1), '48ffa51af5617ca73a02e489374f1add26a64d17f145ae88aa4fc3b8760be1d5',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/c514d062dfce6dc14e46b48082665334381f3b4f686350f40998da1ec506d011.mp3', 1253, '2026-09-13 17:57:00.601514', '77d9bbac74560e911687383014e3f8a7a3e16ff63b702eb8fe0de5f16e233f23', 'validated', '{"audio_key":"c514d062dfce6dc14e46b48082665334381f3b4f686350f40998da1ec506d011","entity_key":"wf_storytelling_sequence_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"77d9bbac74560e911687383014e3f8a7a3e16ff63b702eb8fe0de5f16e233f23","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/c514d062dfce6dc14e46b48082665334381f3b4f686350f40998da1ec506d011.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_conditions_and_consequences_01 -> audio/generated/tr-TR/lexical/d57085a62a73534ae5a49dc6bb1a511e35c3d457bac5664513c1af6b251daa59.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('201137ff-4895-588a-b811-951290676808', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_conditions_and_consequences_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '17e4b78da059dae8e10e678f99ce2cb48d18aa9b68d0ef4d0c7d0ea051ea3172'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b1aaefc0-2c3a-5f7d-8bcc-c442d679b2b7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('201137ff-4895-588a-b811-951290676808', 1), '17e4b78da059dae8e10e678f99ce2cb48d18aa9b68d0ef4d0c7d0ea051ea3172',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/d57085a62a73534ae5a49dc6bb1a511e35c3d457bac5664513c1af6b251daa59.mp3', 1018, '2026-09-13 17:57:01.463584', '7048c217123233bc827a57955af34275cd3fadb3bd7ce54f1f8c23ff639333f0', 'validated', '{"audio_key":"d57085a62a73534ae5a49dc6bb1a511e35c3d457bac5664513c1af6b251daa59","entity_key":"lx_conditions_and_consequences_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7048c217123233bc827a57955af34275cd3fadb3bd7ce54f1f8c23ff639333f0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/d57085a62a73534ae5a49dc6bb1a511e35c3d457bac5664513c1af6b251daa59.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_conditions_and_consequences_01 -> audio/generated/tr-TR/lexical/d57085a62a73534ae5a49dc6bb1a511e35c3d457bac5664513c1af6b251daa59.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('aec1b5df-e961-5d52-a692-7fa7b0d29cdb', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_conditions_and_consequences_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '17e4b78da059dae8e10e678f99ce2cb48d18aa9b68d0ef4d0c7d0ea051ea3172'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2530b5fa-3a8f-55fb-a439-df183d792592', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('aec1b5df-e961-5d52-a692-7fa7b0d29cdb', 1), '17e4b78da059dae8e10e678f99ce2cb48d18aa9b68d0ef4d0c7d0ea051ea3172',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/d57085a62a73534ae5a49dc6bb1a511e35c3d457bac5664513c1af6b251daa59.mp3', 1018, '2026-09-13 17:57:01.463584', '7048c217123233bc827a57955af34275cd3fadb3bd7ce54f1f8c23ff639333f0', 'validated', '{"audio_key":"d57085a62a73534ae5a49dc6bb1a511e35c3d457bac5664513c1af6b251daa59","entity_key":"wf_conditions_and_consequences_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7048c217123233bc827a57955af34275cd3fadb3bd7ce54f1f8c23ff639333f0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/d57085a62a73534ae5a49dc6bb1a511e35c3d457bac5664513c1af6b251daa59.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_b1_city_project_capstone_04 -> audio/generated/tr-TR/lexical/d7495cb77b20788609dd18be50b47e0dbe6ce6cdabf54f4a6288eeae88b3ba87.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7025fa57-8689-50de-b046-c4c2f6e26ce7', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_b1_city_project_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '541aab0bd5f9377cfb389f95d974e7d589cb9a07a6b603a204c90b0ac818189f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8531c75a-dfa2-5600-8948-2436c38e4ed5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7025fa57-8689-50de-b046-c4c2f6e26ce7', 1), '541aab0bd5f9377cfb389f95d974e7d589cb9a07a6b603a204c90b0ac818189f',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/d7495cb77b20788609dd18be50b47e0dbe6ce6cdabf54f4a6288eeae88b3ba87.mp3', 1071, '2026-09-13 17:57:01.545029', '1601bb16b0a5b485c66837e824004727f1fcca73c190b28ff6bffca89c916615', 'validated', '{"audio_key":"d7495cb77b20788609dd18be50b47e0dbe6ce6cdabf54f4a6288eeae88b3ba87","entity_key":"lx_b1_city_project_capstone_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1601bb16b0a5b485c66837e824004727f1fcca73c190b28ff6bffca89c916615","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/d7495cb77b20788609dd18be50b47e0dbe6ce6cdabf54f4a6288eeae88b3ba87.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_b1_city_project_capstone_04 -> audio/generated/tr-TR/lexical/d7495cb77b20788609dd18be50b47e0dbe6ce6cdabf54f4a6288eeae88b3ba87.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('bb138b9b-e5e8-5cf8-a0b5-24e8e8a3d10b', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_b1_city_project_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '541aab0bd5f9377cfb389f95d974e7d589cb9a07a6b603a204c90b0ac818189f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5082530b-82fd-52c9-bf00-7b35c561d1da', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('bb138b9b-e5e8-5cf8-a0b5-24e8e8a3d10b', 1), '541aab0bd5f9377cfb389f95d974e7d589cb9a07a6b603a204c90b0ac818189f',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/d7495cb77b20788609dd18be50b47e0dbe6ce6cdabf54f4a6288eeae88b3ba87.mp3', 1071, '2026-09-13 17:57:01.545029', '1601bb16b0a5b485c66837e824004727f1fcca73c190b28ff6bffca89c916615', 'validated', '{"audio_key":"d7495cb77b20788609dd18be50b47e0dbe6ce6cdabf54f4a6288eeae88b3ba87","entity_key":"wf_b1_city_project_capstone_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1601bb16b0a5b485c66837e824004727f1fcca73c190b28ff6bffca89c916615","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/d7495cb77b20788609dd18be50b47e0dbe6ce6cdabf54f4a6288eeae88b3ba87.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reported_information_03 -> audio/generated/tr-TR/lexical/d9dcc31ff07e5af9c2f0669abc348b54a6c94f83c29a1daf74c22c1967002304.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1c96d2c9-6c5f-50dc-bf81-7f4924e2570b', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reported_information_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aa6756800e5b3659a15dc82b61d47879856764e885be3990a622607e5aee0228'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fb70dc21-8d06-5852-a9b7-74ea468109b1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1c96d2c9-6c5f-50dc-bf81-7f4924e2570b', 1), 'aa6756800e5b3659a15dc82b61d47879856764e885be3990a622607e5aee0228',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/d9dcc31ff07e5af9c2f0669abc348b54a6c94f83c29a1daf74c22c1967002304.mp3', 1253, '2026-09-13 17:57:02.422078', '88e9b23e32b2a5d9e59e7d2e54c87770d3d9b7977081930f74b0b1e6f6e21ced', 'validated', '{"audio_key":"d9dcc31ff07e5af9c2f0669abc348b54a6c94f83c29a1daf74c22c1967002304","entity_key":"lx_reported_information_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"88e9b23e32b2a5d9e59e7d2e54c87770d3d9b7977081930f74b0b1e6f6e21ced","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/d9dcc31ff07e5af9c2f0669abc348b54a6c94f83c29a1daf74c22c1967002304.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reported_information_03 -> audio/generated/tr-TR/lexical/d9dcc31ff07e5af9c2f0669abc348b54a6c94f83c29a1daf74c22c1967002304.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a3094fde-dcc1-5ca3-acfe-01dea78430b9', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reported_information_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aa6756800e5b3659a15dc82b61d47879856764e885be3990a622607e5aee0228'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7c315b63-ddcd-5ddc-bd92-33745f789aa1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a3094fde-dcc1-5ca3-acfe-01dea78430b9', 1), 'aa6756800e5b3659a15dc82b61d47879856764e885be3990a622607e5aee0228',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/d9dcc31ff07e5af9c2f0669abc348b54a6c94f83c29a1daf74c22c1967002304.mp3', 1253, '2026-09-13 17:57:02.422078', '88e9b23e32b2a5d9e59e7d2e54c87770d3d9b7977081930f74b0b1e6f6e21ced', 'validated', '{"audio_key":"d9dcc31ff07e5af9c2f0669abc348b54a6c94f83c29a1daf74c22c1967002304","entity_key":"wf_reported_information_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"88e9b23e32b2a5d9e59e7d2e54c87770d3d9b7977081930f74b0b1e6f6e21ced","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/d9dcc31ff07e5af9c2f0669abc348b54a6c94f83c29a1daf74c22c1967002304.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reported_information_04 -> audio/generated/tr-TR/lexical/e0158cea2523a8f24a18beacf90d78277ed6cf2d090731fdd157a728807bcff3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3b7f615f-ca4a-56de-9281-75807f7ae74c', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reported_information_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7192716435c7df0b6a2819abe8b6e4c6bbcc2c4a25dddca1c37fcd4e638c0765'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('80d160d1-fbe5-5318-8801-4b782a7064b9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3b7f615f-ca4a-56de-9281-75807f7ae74c', 1), '7192716435c7df0b6a2819abe8b6e4c6bbcc2c4a25dddca1c37fcd4e638c0765',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e0158cea2523a8f24a18beacf90d78277ed6cf2d090731fdd157a728807bcff3.mp3', 1253, '2026-09-13 17:57:02.483079', '7d4e94e75aeac0f4141710941c2bcc4a2d0798a7ae085b0448ad558908122250', 'validated', '{"audio_key":"e0158cea2523a8f24a18beacf90d78277ed6cf2d090731fdd157a728807bcff3","entity_key":"lx_reported_information_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7d4e94e75aeac0f4141710941c2bcc4a2d0798a7ae085b0448ad558908122250","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e0158cea2523a8f24a18beacf90d78277ed6cf2d090731fdd157a728807bcff3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reported_information_04 -> audio/generated/tr-TR/lexical/e0158cea2523a8f24a18beacf90d78277ed6cf2d090731fdd157a728807bcff3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e8163afe-ccd8-507e-a947-f87c8dc6c863', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reported_information_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7192716435c7df0b6a2819abe8b6e4c6bbcc2c4a25dddca1c37fcd4e638c0765'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5994d220-8f9e-5e86-bccc-434c440e4ba7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e8163afe-ccd8-507e-a947-f87c8dc6c863', 1), '7192716435c7df0b6a2819abe8b6e4c6bbcc2c4a25dddca1c37fcd4e638c0765',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e0158cea2523a8f24a18beacf90d78277ed6cf2d090731fdd157a728807bcff3.mp3', 1253, '2026-09-13 17:57:02.483079', '7d4e94e75aeac0f4141710941c2bcc4a2d0798a7ae085b0448ad558908122250', 'validated', '{"audio_key":"e0158cea2523a8f24a18beacf90d78277ed6cf2d090731fdd157a728807bcff3","entity_key":"wf_reported_information_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7d4e94e75aeac0f4141710941c2bcc4a2d0798a7ae085b0448ad558908122250","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e0158cea2523a8f24a18beacf90d78277ed6cf2d090731fdd157a728807bcff3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_conditions_and_consequences_06 -> audio/generated/tr-TR/lexical/e0c05be1f968daaa2154f29d40fb17b8b8dca8d292a3b589585e03bd1accb0c5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d9c6d294-3912-5bf9-9a6d-a7454d8ccb01', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_conditions_and_consequences_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bebb1cd1fe8e94b7916503bc14e72da87991d5ad0309eb37195e1b167d31114a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('572db9ca-c7cb-5c01-ae49-84873b7e39de', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d9c6d294-3912-5bf9-9a6d-a7454d8ccb01', 1), 'bebb1cd1fe8e94b7916503bc14e72da87991d5ad0309eb37195e1b167d31114a',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e0c05be1f968daaa2154f29d40fb17b8b8dca8d292a3b589585e03bd1accb0c5.mp3', 1018, '2026-09-13 17:57:03.346861', '63c3233c7abf73795c644dfd0fadb9e3c7eba1dd7ebc986194464b23844a1a29', 'validated', '{"audio_key":"e0c05be1f968daaa2154f29d40fb17b8b8dca8d292a3b589585e03bd1accb0c5","entity_key":"lx_conditions_and_consequences_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"63c3233c7abf73795c644dfd0fadb9e3c7eba1dd7ebc986194464b23844a1a29","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e0c05be1f968daaa2154f29d40fb17b8b8dca8d292a3b589585e03bd1accb0c5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_conditions_and_consequences_06 -> audio/generated/tr-TR/lexical/e0c05be1f968daaa2154f29d40fb17b8b8dca8d292a3b589585e03bd1accb0c5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('cbb2ef06-4329-5898-8045-b4939ba605a2', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_conditions_and_consequences_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bebb1cd1fe8e94b7916503bc14e72da87991d5ad0309eb37195e1b167d31114a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6242191e-fd11-52df-9cf8-4d9b8c69f266', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('cbb2ef06-4329-5898-8045-b4939ba605a2', 1), 'bebb1cd1fe8e94b7916503bc14e72da87991d5ad0309eb37195e1b167d31114a',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e0c05be1f968daaa2154f29d40fb17b8b8dca8d292a3b589585e03bd1accb0c5.mp3', 1018, '2026-09-13 17:57:03.346861', '63c3233c7abf73795c644dfd0fadb9e3c7eba1dd7ebc986194464b23844a1a29', 'validated', '{"audio_key":"e0c05be1f968daaa2154f29d40fb17b8b8dca8d292a3b589585e03bd1accb0c5","entity_key":"wf_conditions_and_consequences_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"63c3233c7abf73795c644dfd0fadb9e3c7eba1dd7ebc986194464b23844a1a29","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e0c05be1f968daaa2154f29d40fb17b8b8dca8d292a3b589585e03bd1accb0c5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_experiences_and_change_04 -> audio/generated/tr-TR/lexical/e48675e4289f7bcad4358ea414dd3e9602511377756a8157ddb8c8a47620c703.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('42cc0263-f109-5345-ada6-2db8d1f88e9a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_experiences_and_change_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f6c53673ba0acb10b443f78a6e5a80c5a042cbf3b14a0162cd8df89a0def8b57'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f483b12b-b64c-55fe-a096-5af3bda7ade0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('42cc0263-f109-5345-ada6-2db8d1f88e9a', 1), 'f6c53673ba0acb10b443f78a6e5a80c5a042cbf3b14a0162cd8df89a0def8b57',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e48675e4289f7bcad4358ea414dd3e9602511377756a8157ddb8c8a47620c703.mp3', 1071, '2026-09-13 17:57:03.451274', '6e3a54252a079aa2f9c969f403d8b2e46842fae87b747bdfce9b293b35c4804e', 'validated', '{"audio_key":"e48675e4289f7bcad4358ea414dd3e9602511377756a8157ddb8c8a47620c703","entity_key":"lx_experiences_and_change_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6e3a54252a079aa2f9c969f403d8b2e46842fae87b747bdfce9b293b35c4804e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e48675e4289f7bcad4358ea414dd3e9602511377756a8157ddb8c8a47620c703.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_experiences_and_change_04 -> audio/generated/tr-TR/lexical/e48675e4289f7bcad4358ea414dd3e9602511377756a8157ddb8c8a47620c703.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f4d6e66c-256b-5405-b59e-5b1e24d54c2a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_experiences_and_change_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f6c53673ba0acb10b443f78a6e5a80c5a042cbf3b14a0162cd8df89a0def8b57'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5b252bd6-a299-5bb1-afea-3d2399a6d477', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f4d6e66c-256b-5405-b59e-5b1e24d54c2a', 1), 'f6c53673ba0acb10b443f78a6e5a80c5a042cbf3b14a0162cd8df89a0def8b57',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e48675e4289f7bcad4358ea414dd3e9602511377756a8157ddb8c8a47620c703.mp3', 1071, '2026-09-13 17:57:03.451274', '6e3a54252a079aa2f9c969f403d8b2e46842fae87b747bdfce9b293b35c4804e', 'validated', '{"audio_key":"e48675e4289f7bcad4358ea414dd3e9602511377756a8157ddb8c8a47620c703","entity_key":"wf_experiences_and_change_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6e3a54252a079aa2f9c969f403d8b2e46842fae87b747bdfce9b293b35c4804e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e48675e4289f7bcad4358ea414dd3e9602511377756a8157ddb8c8a47620c703.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_opinions_and_evidence_04 -> audio/generated/tr-TR/lexical/e635d90a85e9e2913ca31ba59efec65c4a271083c8f5368d5820e8e691592c0c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8313305c-3c4c-5239-8572-b3071c7f365d', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_opinions_and_evidence_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd8eed1219284da51e5879b382ec60466e29e043afa8b6ca5daa50ccbfa5fce7f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('21937827-7495-55c6-9f6e-11c6e90d8933', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8313305c-3c4c-5239-8572-b3071c7f365d', 1), 'd8eed1219284da51e5879b382ec60466e29e043afa8b6ca5daa50ccbfa5fce7f',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e635d90a85e9e2913ca31ba59efec65c4a271083c8f5368d5820e8e691592c0c.mp3', 1201, '2026-09-13 17:57:04.332211', '8b2853987b0bccf4731bff5d498c462ede79722cff68a611f47d66a977232a54', 'validated', '{"audio_key":"e635d90a85e9e2913ca31ba59efec65c4a271083c8f5368d5820e8e691592c0c","entity_key":"lx_opinions_and_evidence_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8b2853987b0bccf4731bff5d498c462ede79722cff68a611f47d66a977232a54","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e635d90a85e9e2913ca31ba59efec65c4a271083c8f5368d5820e8e691592c0c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_opinions_and_evidence_04 -> audio/generated/tr-TR/lexical/e635d90a85e9e2913ca31ba59efec65c4a271083c8f5368d5820e8e691592c0c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d8799ec5-3427-50be-8b91-14744ff423bb', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_opinions_and_evidence_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd8eed1219284da51e5879b382ec60466e29e043afa8b6ca5daa50ccbfa5fce7f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('303318ac-57c2-570e-a4c2-3b17a0fba390', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d8799ec5-3427-50be-8b91-14744ff423bb', 1), 'd8eed1219284da51e5879b382ec60466e29e043afa8b6ca5daa50ccbfa5fce7f',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e635d90a85e9e2913ca31ba59efec65c4a271083c8f5368d5820e8e691592c0c.mp3', 1201, '2026-09-13 17:57:04.332211', '8b2853987b0bccf4731bff5d498c462ede79722cff68a611f47d66a977232a54', 'validated', '{"audio_key":"e635d90a85e9e2913ca31ba59efec65c4a271083c8f5368d5820e8e691592c0c","entity_key":"wf_opinions_and_evidence_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8b2853987b0bccf4731bff5d498c462ede79722cff68a611f47d66a977232a54","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e635d90a85e9e2913ca31ba59efec65c4a271083c8f5368d5820e8e691592c0c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_media_and_sources_03 -> audio/generated/tr-TR/lexical/ea9598fc335676f47344be286272459b07143fd29899e2f8bc7fac1bd920a839.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('522d4138-3ff3-548c-873a-65092f1001a8', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_media_and_sources_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5224541662f865fe9e08423a23fe2c58a8b8e293ae0e665fdcb900f0a4eb0c67'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('17d26e34-5a36-546f-9342-a7ddeb5f08f7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('522d4138-3ff3-548c-873a-65092f1001a8', 1), '5224541662f865fe9e08423a23fe2c58a8b8e293ae0e665fdcb900f0a4eb0c67',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/ea9598fc335676f47344be286272459b07143fd29899e2f8bc7fac1bd920a839.mp3', 1253, '2026-09-13 17:57:04.451971', '7ea3f05e67a91db19f11ddf28ac3c89eb35565b1229b66ae9b52ad984d4497c6', 'validated', '{"audio_key":"ea9598fc335676f47344be286272459b07143fd29899e2f8bc7fac1bd920a839","entity_key":"lx_media_and_sources_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7ea3f05e67a91db19f11ddf28ac3c89eb35565b1229b66ae9b52ad984d4497c6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/ea9598fc335676f47344be286272459b07143fd29899e2f8bc7fac1bd920a839.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_media_and_sources_03 -> audio/generated/tr-TR/lexical/ea9598fc335676f47344be286272459b07143fd29899e2f8bc7fac1bd920a839.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d375bbc7-da06-52f4-8e95-555a1bad2d30', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_media_and_sources_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5224541662f865fe9e08423a23fe2c58a8b8e293ae0e665fdcb900f0a4eb0c67'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c2e499e1-63ce-5db8-ab51-13b84ee6483c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d375bbc7-da06-52f4-8e95-555a1bad2d30', 1), '5224541662f865fe9e08423a23fe2c58a8b8e293ae0e665fdcb900f0a4eb0c67',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/ea9598fc335676f47344be286272459b07143fd29899e2f8bc7fac1bd920a839.mp3', 1253, '2026-09-13 17:57:04.451971', '7ea3f05e67a91db19f11ddf28ac3c89eb35565b1229b66ae9b52ad984d4497c6', 'validated', '{"audio_key":"ea9598fc335676f47344be286272459b07143fd29899e2f8bc7fac1bd920a839","entity_key":"wf_media_and_sources_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7ea3f05e67a91db19f11ddf28ac3c89eb35565b1229b66ae9b52ad984d4497c6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/ea9598fc335676f47344be286272459b07143fd29899e2f8bc7fac1bd920a839.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_experiences_and_change_01 -> audio/generated/tr-TR/lexical/ec34eb4fa28d5deb1d97ebaa3ecf76df71a1dc2bd426e1e7fb9d41d12866b097.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('56e47b0e-9c37-58d2-a2b3-7e17ac010f9f', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_experiences_and_change_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9d763d3c0dd97e6fc13fb11da104b48956346694f614e6bb8d5cd22d9bd1111f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('11c0dc4f-ae23-53f7-8229-3a8a15bb95a3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('56e47b0e-9c37-58d2-a2b3-7e17ac010f9f', 1), '9d763d3c0dd97e6fc13fb11da104b48956346694f614e6bb8d5cd22d9bd1111f',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/ec34eb4fa28d5deb1d97ebaa3ecf76df71a1dc2bd426e1e7fb9d41d12866b097.mp3', 1097, '2026-09-13 17:57:05.271445', '69cfee5d256d6ae51ba8663efdf3ad9578937e2063b89b4c1575a1e9bb912099', 'validated', '{"audio_key":"ec34eb4fa28d5deb1d97ebaa3ecf76df71a1dc2bd426e1e7fb9d41d12866b097","entity_key":"lx_experiences_and_change_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"69cfee5d256d6ae51ba8663efdf3ad9578937e2063b89b4c1575a1e9bb912099","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/ec34eb4fa28d5deb1d97ebaa3ecf76df71a1dc2bd426e1e7fb9d41d12866b097.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_experiences_and_change_01 -> audio/generated/tr-TR/lexical/ec34eb4fa28d5deb1d97ebaa3ecf76df71a1dc2bd426e1e7fb9d41d12866b097.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('41160deb-90ae-55f9-bbcf-7a8187fd3a93', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_experiences_and_change_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9d763d3c0dd97e6fc13fb11da104b48956346694f614e6bb8d5cd22d9bd1111f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f464875c-04e5-58b1-a118-127fb743d5dc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('41160deb-90ae-55f9-bbcf-7a8187fd3a93', 1), '9d763d3c0dd97e6fc13fb11da104b48956346694f614e6bb8d5cd22d9bd1111f',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/ec34eb4fa28d5deb1d97ebaa3ecf76df71a1dc2bd426e1e7fb9d41d12866b097.mp3', 1097, '2026-09-13 17:57:05.271445', '69cfee5d256d6ae51ba8663efdf3ad9578937e2063b89b4c1575a1e9bb912099', 'validated', '{"audio_key":"ec34eb4fa28d5deb1d97ebaa3ecf76df71a1dc2bd426e1e7fb9d41d12866b097","entity_key":"wf_experiences_and_change_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"69cfee5d256d6ae51ba8663efdf3ad9578937e2063b89b4c1575a1e9bb912099","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/ec34eb4fa28d5deb1d97ebaa3ecf76df71a1dc2bd426e1e7fb9d41d12866b097.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_media_and_sources_02 -> audio/generated/tr-TR/lexical/f4d5c6d16caea0dbbd37a6969e9bde7da21d94b267ce5f7135e31e89b77e9b1f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('bad22330-7baa-53d6-b4d2-cfa08aec5de5', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_media_and_sources_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c4b2648f3a95611b25e8f367714168a0e1e539faac0df8ebb8e678c556b82fa4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('460d46b0-8403-563c-b4cc-bc7f19f14320', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('bad22330-7baa-53d6-b4d2-cfa08aec5de5', 1), 'c4b2648f3a95611b25e8f367714168a0e1e539faac0df8ebb8e678c556b82fa4',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f4d5c6d16caea0dbbd37a6969e9bde7da21d94b267ce5f7135e31e89b77e9b1f.mp3', 1253, '2026-09-13 17:57:05.442283', '16489cdd67d39b54472b14df1c6de8f42f4efb2dfdd059a89c44d4c673e0df3e', 'validated', '{"audio_key":"f4d5c6d16caea0dbbd37a6969e9bde7da21d94b267ce5f7135e31e89b77e9b1f","entity_key":"lx_media_and_sources_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"16489cdd67d39b54472b14df1c6de8f42f4efb2dfdd059a89c44d4c673e0df3e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f4d5c6d16caea0dbbd37a6969e9bde7da21d94b267ce5f7135e31e89b77e9b1f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_media_and_sources_02 -> audio/generated/tr-TR/lexical/f4d5c6d16caea0dbbd37a6969e9bde7da21d94b267ce5f7135e31e89b77e9b1f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d36c3b9e-5078-56ca-ac19-4200b3a37ae8', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_media_and_sources_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c4b2648f3a95611b25e8f367714168a0e1e539faac0df8ebb8e678c556b82fa4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('49fde4f5-6297-5a91-9bfa-f56ddf39df8b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d36c3b9e-5078-56ca-ac19-4200b3a37ae8', 1), 'c4b2648f3a95611b25e8f367714168a0e1e539faac0df8ebb8e678c556b82fa4',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f4d5c6d16caea0dbbd37a6969e9bde7da21d94b267ce5f7135e31e89b77e9b1f.mp3', 1253, '2026-09-13 17:57:05.442283', '16489cdd67d39b54472b14df1c6de8f42f4efb2dfdd059a89c44d4c673e0df3e', 'validated', '{"audio_key":"f4d5c6d16caea0dbbd37a6969e9bde7da21d94b267ce5f7135e31e89b77e9b1f","entity_key":"wf_media_and_sources_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"16489cdd67d39b54472b14df1c6de8f42f4efb2dfdd059a89c44d4c673e0df3e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f4d5c6d16caea0dbbd37a6969e9bde7da21d94b267ce5f7135e31e89b77e9b1f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_problems_and_solutions_06 -> audio/generated/tr-TR/lexical/f5ff36a16a644ebdce37e96056208fcb3482a3944a53a78c412cbc0d72890bb1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0a63d531-14b1-5e7d-949e-3d296b91ce9e', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_problems_and_solutions_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f2fd9da885c6f50721bb4b296d1ac40613dcf7dad2f1891ef0fa026f9debbe19'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('94a2914d-7397-59bf-8025-5e11861b03b1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0a63d531-14b1-5e7d-949e-3d296b91ce9e', 1), 'f2fd9da885c6f50721bb4b296d1ac40613dcf7dad2f1891ef0fa026f9debbe19',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f5ff36a16a644ebdce37e96056208fcb3482a3944a53a78c412cbc0d72890bb1.mp3', 1201, '2026-09-13 17:57:06.364216', 'af1bf13b40d6df9fafba896c22ec9d55084642b59bb25e142fb4d91989c6dddd', 'validated', '{"audio_key":"f5ff36a16a644ebdce37e96056208fcb3482a3944a53a78c412cbc0d72890bb1","entity_key":"lx_problems_and_solutions_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"af1bf13b40d6df9fafba896c22ec9d55084642b59bb25e142fb4d91989c6dddd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f5ff36a16a644ebdce37e96056208fcb3482a3944a53a78c412cbc0d72890bb1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_problems_and_solutions_06 -> audio/generated/tr-TR/lexical/f5ff36a16a644ebdce37e96056208fcb3482a3944a53a78c412cbc0d72890bb1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4a5e0d3c-cf72-5200-870d-8946420970d4', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_problems_and_solutions_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f2fd9da885c6f50721bb4b296d1ac40613dcf7dad2f1891ef0fa026f9debbe19'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('db77cdd9-21e5-5955-b18b-2bae1b33d373', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4a5e0d3c-cf72-5200-870d-8946420970d4', 1), 'f2fd9da885c6f50721bb4b296d1ac40613dcf7dad2f1891ef0fa026f9debbe19',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f5ff36a16a644ebdce37e96056208fcb3482a3944a53a78c412cbc0d72890bb1.mp3', 1201, '2026-09-13 17:57:06.364216', 'af1bf13b40d6df9fafba896c22ec9d55084642b59bb25e142fb4d91989c6dddd', 'validated', '{"audio_key":"f5ff36a16a644ebdce37e96056208fcb3482a3944a53a78c412cbc0d72890bb1","entity_key":"wf_problems_and_solutions_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"af1bf13b40d6df9fafba896c22ec9d55084642b59bb25e142fb4d91989c6dddd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f5ff36a16a644ebdce37e96056208fcb3482a3944a53a78c412cbc0d72890bb1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_opinions_and_evidence_01 -> audio/generated/tr-TR/lexical/f64d7fc2d3c5b28a9cad1b4c6f8be7e26824fb71c4c5e93aa09a068966837cd4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('78599ce6-18bb-5a49-b375-890b718c81fd', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_opinions_and_evidence_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '153e2d4655e03d146166eaffa92bbd28d5da09d44f06c6ee75676894fb1beda6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('86d3a566-820a-54ee-a427-424a792a496d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('78599ce6-18bb-5a49-b375-890b718c81fd', 1), '153e2d4655e03d146166eaffa92bbd28d5da09d44f06c6ee75676894fb1beda6',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f64d7fc2d3c5b28a9cad1b4c6f8be7e26824fb71c4c5e93aa09a068966837cd4.mp3', 1097, '2026-09-13 17:08:39.682181', '4af29de0848eb692a0afb27fd53c5ba513196da51249667a264c1f44f77817bd', 'validated', '{"audio_key":"f64d7fc2d3c5b28a9cad1b4c6f8be7e26824fb71c4c5e93aa09a068966837cd4","entity_key":"lx_opinions_and_evidence_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4af29de0848eb692a0afb27fd53c5ba513196da51249667a264c1f44f77817bd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f64d7fc2d3c5b28a9cad1b4c6f8be7e26824fb71c4c5e93aa09a068966837cd4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_opinions_and_evidence_01 -> audio/generated/tr-TR/lexical/f64d7fc2d3c5b28a9cad1b4c6f8be7e26824fb71c4c5e93aa09a068966837cd4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('495edfb3-e46c-5819-a32a-71cf28f5be39', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_opinions_and_evidence_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '153e2d4655e03d146166eaffa92bbd28d5da09d44f06c6ee75676894fb1beda6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c1434367-cea1-5989-ab65-7ad7a3157b88', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('495edfb3-e46c-5819-a32a-71cf28f5be39', 1), '153e2d4655e03d146166eaffa92bbd28d5da09d44f06c6ee75676894fb1beda6',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f64d7fc2d3c5b28a9cad1b4c6f8be7e26824fb71c4c5e93aa09a068966837cd4.mp3', 1097, '2026-09-13 17:08:39.682181', '4af29de0848eb692a0afb27fd53c5ba513196da51249667a264c1f44f77817bd', 'validated', '{"audio_key":"f64d7fc2d3c5b28a9cad1b4c6f8be7e26824fb71c4c5e93aa09a068966837cd4","entity_key":"wf_opinions_and_evidence_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4af29de0848eb692a0afb27fd53c5ba513196da51249667a264c1f44f77817bd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f64d7fc2d3c5b28a9cad1b4c6f8be7e26824fb71c4c5e93aa09a068966837cd4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_media_and_sources_05 -> audio/generated/tr-TR/lexical/f99f61ecd5c9cb0a3f737af5f82aef568f9f99639452da036b4f36520c48b918.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6c61255f-b0c2-5d34-965e-12f9034c36c7', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_media_and_sources_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '821e8244b8db9f3a27b5b25062a3783a6d0c78e37e091daa0766baf0efc0688a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1d9280f3-b70a-5171-a7f3-fb8e6e8e0aac', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6c61255f-b0c2-5d34-965e-12f9034c36c7', 1), '821e8244b8db9f3a27b5b25062a3783a6d0c78e37e091daa0766baf0efc0688a',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f99f61ecd5c9cb0a3f737af5f82aef568f9f99639452da036b4f36520c48b918.mp3', 1097, '2026-09-13 17:57:06.388358', 'fbff684abb20a5b4bad1734b30b890d6113d6cff2a87cdf2ff3b774f7f02eb05', 'validated', '{"audio_key":"f99f61ecd5c9cb0a3f737af5f82aef568f9f99639452da036b4f36520c48b918","entity_key":"lx_media_and_sources_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fbff684abb20a5b4bad1734b30b890d6113d6cff2a87cdf2ff3b774f7f02eb05","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f99f61ecd5c9cb0a3f737af5f82aef568f9f99639452da036b4f36520c48b918.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_media_and_sources_05 -> audio/generated/tr-TR/lexical/f99f61ecd5c9cb0a3f737af5f82aef568f9f99639452da036b4f36520c48b918.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('dc01f24e-a92e-545d-8007-cb8344e043f7', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_media_and_sources_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '821e8244b8db9f3a27b5b25062a3783a6d0c78e37e091daa0766baf0efc0688a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9ebf7f96-d255-50c2-a21c-3f21cb3ce5f1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('dc01f24e-a92e-545d-8007-cb8344e043f7', 1), '821e8244b8db9f3a27b5b25062a3783a6d0c78e37e091daa0766baf0efc0688a',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f99f61ecd5c9cb0a3f737af5f82aef568f9f99639452da036b4f36520c48b918.mp3', 1097, '2026-09-13 17:57:06.388358', 'fbff684abb20a5b4bad1734b30b890d6113d6cff2a87cdf2ff3b774f7f02eb05', 'validated', '{"audio_key":"f99f61ecd5c9cb0a3f737af5f82aef568f9f99639452da036b4f36520c48b918","entity_key":"wf_media_and_sources_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fbff684abb20a5b4bad1734b30b890d6113d6cff2a87cdf2ff3b774f7f02eb05","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f99f61ecd5c9cb0a3f737af5f82aef568f9f99639452da036b4f36520c48b918.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_opinions_and_evidence_06 -> audio/generated/tr-TR/lexical/faf48c3b075de855e71ac2e94be66c1c4439cec33e06e8acf460945081b8cc59.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3d4e07f4-c421-5e1f-b2df-92500d315b05', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_opinions_and_evidence_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f7026c6feadbb44057ffd637b0ed3a88b26a0629489939f8a425a8be3882de1d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0bb6b09a-2f79-558c-9238-039e9c1aea4a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3d4e07f4-c421-5e1f-b2df-92500d315b05', 1), 'f7026c6feadbb44057ffd637b0ed3a88b26a0629489939f8a425a8be3882de1d',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/faf48c3b075de855e71ac2e94be66c1c4439cec33e06e8acf460945081b8cc59.mp3', 1149, '2026-09-13 17:57:07.332991', '84a9b0271e87cad04899432320e53a461e056a1dd1ae999580c8ec979308830e', 'validated', '{"audio_key":"faf48c3b075de855e71ac2e94be66c1c4439cec33e06e8acf460945081b8cc59","entity_key":"lx_opinions_and_evidence_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"84a9b0271e87cad04899432320e53a461e056a1dd1ae999580c8ec979308830e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/faf48c3b075de855e71ac2e94be66c1c4439cec33e06e8acf460945081b8cc59.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_opinions_and_evidence_06 -> audio/generated/tr-TR/lexical/faf48c3b075de855e71ac2e94be66c1c4439cec33e06e8acf460945081b8cc59.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7e9db4dc-b2b8-5a8a-8402-4655a610dccf', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_opinions_and_evidence_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f7026c6feadbb44057ffd637b0ed3a88b26a0629489939f8a425a8be3882de1d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('47744667-12ce-512e-bb45-5f54525bb8e5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7e9db4dc-b2b8-5a8a-8402-4655a610dccf', 1), 'f7026c6feadbb44057ffd637b0ed3a88b26a0629489939f8a425a8be3882de1d',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/faf48c3b075de855e71ac2e94be66c1c4439cec33e06e8acf460945081b8cc59.mp3', 1149, '2026-09-13 17:57:07.332991', '84a9b0271e87cad04899432320e53a461e056a1dd1ae999580c8ec979308830e', 'validated', '{"audio_key":"faf48c3b075de855e71ac2e94be66c1c4439cec33e06e8acf460945081b8cc59","entity_key":"wf_opinions_and_evidence_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"84a9b0271e87cad04899432320e53a461e056a1dd1ae999580c8ec979308830e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/faf48c3b075de855e71ac2e94be66c1c4439cec33e06e8acf460945081b8cc59.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_goals_and_effort_02 -> audio/generated/tr-TR/utterances/012f012f171558a6c8d29bff8528e2b21c58f5a54ee19bc2e21f08f6609f4955.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('85d6555e-f75f-5ef8-9461-cb0e2b116c7b', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_goals_and_effort_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a980d2ec760aa9d47fa174e0267af77a8e74967d31a058ecdaafe2946959ac51'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('39612b76-f170-57c2-b894-c65bb1fa3b1a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('85d6555e-f75f-5ef8-9461-cb0e2b116c7b', 1), 'a980d2ec760aa9d47fa174e0267af77a8e74967d31a058ecdaafe2946959ac51',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/012f012f171558a6c8d29bff8528e2b21c58f5a54ee19bc2e21f08f6609f4955.mp3', 3291, '2026-09-13 17:57:07.586665', 'bef33742380dd4329b78d85129ad49db5e612b24397aa787edefd005f8548dda', 'validated', '{"audio_key":"012f012f171558a6c8d29bff8528e2b21c58f5a54ee19bc2e21f08f6609f4955","entity_key":"u_goals_and_effort_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bef33742380dd4329b78d85129ad49db5e612b24397aa787edefd005f8548dda","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/012f012f171558a6c8d29bff8528e2b21c58f5a54ee19bc2e21f08f6609f4955.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_goals_and_effort_01_listen -> audio/generated/tr-TR/utterances/012f012f171558a6c8d29bff8528e2b21c58f5a54ee19bc2e21f08f6609f4955.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c3ab9921-830b-5239-8255-a3859643eca2', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_goals_and_effort_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a980d2ec760aa9d47fa174e0267af77a8e74967d31a058ecdaafe2946959ac51'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4bbf50a3-7f0e-599e-bb89-c45e901b7665', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c3ab9921-830b-5239-8255-a3859643eca2', 1), 'a980d2ec760aa9d47fa174e0267af77a8e74967d31a058ecdaafe2946959ac51',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/012f012f171558a6c8d29bff8528e2b21c58f5a54ee19bc2e21f08f6609f4955.mp3', 3291, '2026-09-13 17:57:07.586665', 'bef33742380dd4329b78d85129ad49db5e612b24397aa787edefd005f8548dda', 'validated', '{"audio_key":"012f012f171558a6c8d29bff8528e2b21c58f5a54ee19bc2e21f08f6609f4955","entity_key":"e_goals_and_effort_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bef33742380dd4329b78d85129ad49db5e612b24397aa787edefd005f8548dda","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/012f012f171558a6c8d29bff8528e2b21c58f5a54ee19bc2e21f08f6609f4955.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_goals_and_effort_01 -> audio/generated/tr-TR/utterances/09eab572ef314e25319fe8669d75475083f626cc6552da28acede48ae7b55471.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('cd54d52c-d736-5df1-bdd6-f42fc280834f', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_goals_and_effort_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1b8df2f30e3631c952b4700b66215634ef83d4b18d2c3f5200c04daa8e337900'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d0ba3520-67e7-5bea-a29a-7d2a43c82937', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('cd54d52c-d736-5df1-bdd6-f42fc280834f', 1), '1b8df2f30e3631c952b4700b66215634ef83d4b18d2c3f5200c04daa8e337900',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/09eab572ef314e25319fe8669d75475083f626cc6552da28acede48ae7b55471.mp3', 3056, '2026-09-13 17:57:08.457722', 'fffc1e0ede75590c30d4995505b9292ef8e3267466e20bae4974ef7cf08fc6fb', 'validated', '{"audio_key":"09eab572ef314e25319fe8669d75475083f626cc6552da28acede48ae7b55471","entity_key":"u_goals_and_effort_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fffc1e0ede75590c30d4995505b9292ef8e3267466e20bae4974ef7cf08fc6fb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/09eab572ef314e25319fe8669d75475083f626cc6552da28acede48ae7b55471.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_storytelling_sequence_03 -> audio/generated/tr-TR/utterances/0c888923e156ca6a20c6082eda30f1396a94baf78326521808206edacc7b7859.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bc18f7a2-f898-589f-a4f3-a4555e7f1950', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_storytelling_sequence_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '620096fb1663184b294ad76a804fc7c148962912682addfbce2fca113da2976f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('da41d8e7-da5f-5b99-b075-dc66e81037dd', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bc18f7a2-f898-589f-a4f3-a4555e7f1950', 1), '620096fb1663184b294ad76a804fc7c148962912682addfbce2fca113da2976f',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/0c888923e156ca6a20c6082eda30f1396a94baf78326521808206edacc7b7859.mp3', 2533, '2026-09-13 17:57:08.638192', '9a2dfbc19f42e81361e74a14d25da7ca7b9bf149a720a2b7f5c1c3b1f036dd25', 'validated', '{"audio_key":"0c888923e156ca6a20c6082eda30f1396a94baf78326521808206edacc7b7859","entity_key":"u_storytelling_sequence_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9a2dfbc19f42e81361e74a14d25da7ca7b9bf149a720a2b7f5c1c3b1f036dd25","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/0c888923e156ca6a20c6082eda30f1396a94baf78326521808206edacc7b7859.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_storytelling_sequence_01 -> audio/generated/tr-TR/utterances/0e97703a84f72bd66a519c631004305080e13bd2a2d906a15fe29de9a49318c3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('de95e3cb-2874-5b88-a55c-e9928ea4fab1', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_storytelling_sequence_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '82eabb0f24423880d9f5a100121dae51409018651c0b1ac184386f87c74e2245'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ada635d1-d719-517a-b8d4-2b282f039181', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('de95e3cb-2874-5b88-a55c-e9928ea4fab1', 1), '82eabb0f24423880d9f5a100121dae51409018651c0b1ac184386f87c74e2245',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/0e97703a84f72bd66a519c631004305080e13bd2a2d906a15fe29de9a49318c3.mp3', 2690, '2026-09-13 17:57:09.559397', '756f24154f2bd664d892745405512eaa9378b642279ad93bcff4d17c464a1dbf', 'validated', '{"audio_key":"0e97703a84f72bd66a519c631004305080e13bd2a2d906a15fe29de9a49318c3","entity_key":"u_storytelling_sequence_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"756f24154f2bd664d892745405512eaa9378b642279ad93bcff4d17c464a1dbf","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/0e97703a84f72bd66a519c631004305080e13bd2a2d906a15fe29de9a49318c3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_media_and_sources_02 -> audio/generated/tr-TR/utterances/0f1b5723db11bac84de3ca23465c6e120076eefe5ead48902cb047855505379b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1a4c8839-6211-56cc-a946-835e242a4696', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_media_and_sources_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c61bce26c1fb4caca67a12a72d6f0b5c3249ad09d33848b95640d66d15cafea4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fd4b4fc9-8e74-573a-902f-52faa579fc66', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1a4c8839-6211-56cc-a946-835e242a4696', 1), 'c61bce26c1fb4caca67a12a72d6f0b5c3249ad09d33848b95640d66d15cafea4',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/0f1b5723db11bac84de3ca23465c6e120076eefe5ead48902cb047855505379b.mp3', 2507, '2026-09-13 17:57:09.714078', '3593f2718acb4d25af51e27b313d5b0f6b91eb636bf11177a998f0664c207f2a', 'validated', '{"audio_key":"0f1b5723db11bac84de3ca23465c6e120076eefe5ead48902cb047855505379b","entity_key":"u_media_and_sources_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3593f2718acb4d25af51e27b313d5b0f6b91eb636bf11177a998f0664c207f2a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/0f1b5723db11bac84de3ca23465c6e120076eefe5ead48902cb047855505379b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_media_and_sources_01_listen -> audio/generated/tr-TR/utterances/0f1b5723db11bac84de3ca23465c6e120076eefe5ead48902cb047855505379b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('07f24ad4-1fdc-592d-847b-285274e36905', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_media_and_sources_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c61bce26c1fb4caca67a12a72d6f0b5c3249ad09d33848b95640d66d15cafea4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('24fb401f-fc4d-5bc5-b1f9-a66f4120c3b8', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('07f24ad4-1fdc-592d-847b-285274e36905', 1), 'c61bce26c1fb4caca67a12a72d6f0b5c3249ad09d33848b95640d66d15cafea4',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/0f1b5723db11bac84de3ca23465c6e120076eefe5ead48902cb047855505379b.mp3', 2507, '2026-09-13 17:57:09.714078', '3593f2718acb4d25af51e27b313d5b0f6b91eb636bf11177a998f0664c207f2a', 'validated', '{"audio_key":"0f1b5723db11bac84de3ca23465c6e120076eefe5ead48902cb047855505379b","entity_key":"e_media_and_sources_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3593f2718acb4d25af51e27b313d5b0f6b91eb636bf11177a998f0664c207f2a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/0f1b5723db11bac84de3ca23465c6e120076eefe5ead48902cb047855505379b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_problems_and_solutions_01 -> audio/generated/tr-TR/utterances/0f63384080e1cdc6dea50d58d8911a4977cac278838260751d0927036cf0cf71.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a5ca7d61-2d5f-5fda-b623-2c510758c3a2', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_problems_and_solutions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da8d18b49254ee36f1955cf8b1b7ef24af39a0f62858fd98edb40407c363be5a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8cd306e9-8e58-57ce-aba0-67015b10960b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a5ca7d61-2d5f-5fda-b623-2c510758c3a2', 1), 'da8d18b49254ee36f1955cf8b1b7ef24af39a0f62858fd98edb40407c363be5a',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/0f63384080e1cdc6dea50d58d8911a4977cac278838260751d0927036cf0cf71.mp3', 1802, '2026-09-13 17:57:10.605693', 'afb28714ed01fd76e28119561eddecdab4738a1ec2728c297253ca6a87ae0bc6', 'validated', '{"audio_key":"0f63384080e1cdc6dea50d58d8911a4977cac278838260751d0927036cf0cf71","entity_key":"u_problems_and_solutions_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"afb28714ed01fd76e28119561eddecdab4738a1ec2728c297253ca6a87ae0bc6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/0f63384080e1cdc6dea50d58d8911a4977cac278838260751d0927036cf0cf71.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_reported_information_04 -> audio/generated/tr-TR/utterances/1084027a272f22c5c0d8ab3fe103dbb35fe148138bbb54d28816bca5c262fae3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('123c1187-c961-5571-ba4a-64f0011ab72b', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_reported_information_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '104f4159c12a5b78349812a9402dfe0d6299da439eedac38c289ce279a3048c0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c912f64c-3bf2-5253-aa24-67c9be9078c3', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('123c1187-c961-5571-ba4a-64f0011ab72b', 1), '104f4159c12a5b78349812a9402dfe0d6299da439eedac38c289ce279a3048c0',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/1084027a272f22c5c0d8ab3fe103dbb35fe148138bbb54d28816bca5c262fae3.mp3', 2089, '2026-09-13 17:57:10.769572', 'b0abbad0bcb69698e40a6ea35524ab3c74f2639532f039c9c74392b0912a653b', 'validated', '{"audio_key":"1084027a272f22c5c0d8ab3fe103dbb35fe148138bbb54d28816bca5c262fae3","entity_key":"u_reported_information_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b0abbad0bcb69698e40a6ea35524ab3c74f2639532f039c9c74392b0912a653b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/1084027a272f22c5c0d8ab3fe103dbb35fe148138bbb54d28816bca5c262fae3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_reported_information_02_listen -> audio/generated/tr-TR/utterances/1084027a272f22c5c0d8ab3fe103dbb35fe148138bbb54d28816bca5c262fae3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ce744317-4c28-5b32-a7e6-f0be2e861e40', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_reported_information_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '104f4159c12a5b78349812a9402dfe0d6299da439eedac38c289ce279a3048c0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('223c94ce-82c6-54c0-b3e0-a58be3fb5fef', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ce744317-4c28-5b32-a7e6-f0be2e861e40', 1), '104f4159c12a5b78349812a9402dfe0d6299da439eedac38c289ce279a3048c0',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/1084027a272f22c5c0d8ab3fe103dbb35fe148138bbb54d28816bca5c262fae3.mp3', 2089, '2026-09-13 17:57:10.769572', 'b0abbad0bcb69698e40a6ea35524ab3c74f2639532f039c9c74392b0912a653b', 'validated', '{"audio_key":"1084027a272f22c5c0d8ab3fe103dbb35fe148138bbb54d28816bca5c262fae3","entity_key":"e_reported_information_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b0abbad0bcb69698e40a6ea35524ab3c74f2639532f039c9c74392b0912a653b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/1084027a272f22c5c0d8ab3fe103dbb35fe148138bbb54d28816bca5c262fae3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_opinions_and_evidence_01 -> audio/generated/tr-TR/utterances/10de8e619682f19a2c3a5741a7daa055ca88eeb47f07896c2a135eea361ce014.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a0bdf49c-9135-5ace-b6e9-b54fe18ec905', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_opinions_and_evidence_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f47236f2d1eccb55cf4d5863bd01fe51ac25e9b9a2ed09c245148ab90a98b9fa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('22b043ee-9d5b-51f2-a094-9771a823e505', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a0bdf49c-9135-5ace-b6e9-b54fe18ec905', 1), 'f47236f2d1eccb55cf4d5863bd01fe51ac25e9b9a2ed09c245148ab90a98b9fa',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/10de8e619682f19a2c3a5741a7daa055ca88eeb47f07896c2a135eea361ce014.mp3', 1906, '2026-09-13 17:57:11.644991', 'a45097bd0a40bcfc7fc9537a3aef491cd4e3ee6109aa719981e806579f9c0f76', 'validated', '{"audio_key":"10de8e619682f19a2c3a5741a7daa055ca88eeb47f07896c2a135eea361ce014","entity_key":"u_opinions_and_evidence_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a45097bd0a40bcfc7fc9537a3aef491cd4e3ee6109aa719981e806579f9c0f76","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/10de8e619682f19a2c3a5741a7daa055ca88eeb47f07896c2a135eea361ce014.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_b1_city_project_capstone_04 -> audio/generated/tr-TR/utterances/15918a24103a0ea6ce797376714bedae1229ad596fb95ab66e2a9c604f1ba078.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('85b39529-257c-50ef-bb0b-a49a76fb4763', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_b1_city_project_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da21e3ba983569a380988e6a735e713f07d554bb0d91fb0b75fc1e7e65250787'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('840da1a6-f6b0-57c7-9ba7-e150f4bc3532', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('85b39529-257c-50ef-bb0b-a49a76fb4763', 1), 'da21e3ba983569a380988e6a735e713f07d554bb0d91fb0b75fc1e7e65250787',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/15918a24103a0ea6ce797376714bedae1229ad596fb95ab66e2a9c604f1ba078.mp3', 3239, '2026-09-13 17:57:11.953324', '1a81247c07c67b79af123a115e335b054da1043f8bd783f3222249733f53c4e6', 'validated', '{"audio_key":"15918a24103a0ea6ce797376714bedae1229ad596fb95ab66e2a9c604f1ba078","entity_key":"u_b1_city_project_capstone_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1a81247c07c67b79af123a115e335b054da1043f8bd783f3222249733f53c4e6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/15918a24103a0ea6ce797376714bedae1229ad596fb95ab66e2a9c604f1ba078.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_b1_city_project_capstone_02_listen -> audio/generated/tr-TR/utterances/15918a24103a0ea6ce797376714bedae1229ad596fb95ab66e2a9c604f1ba078.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('6bdb1ade-facd-52bd-b631-6eead75feb86', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_b1_city_project_capstone_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da21e3ba983569a380988e6a735e713f07d554bb0d91fb0b75fc1e7e65250787'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c8b37d77-18fe-5f7b-9eb2-37b09c55a6f0', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('6bdb1ade-facd-52bd-b631-6eead75feb86', 1), 'da21e3ba983569a380988e6a735e713f07d554bb0d91fb0b75fc1e7e65250787',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/15918a24103a0ea6ce797376714bedae1229ad596fb95ab66e2a9c604f1ba078.mp3', 3239, '2026-09-13 17:57:11.953324', '1a81247c07c67b79af123a115e335b054da1043f8bd783f3222249733f53c4e6', 'validated', '{"audio_key":"15918a24103a0ea6ce797376714bedae1229ad596fb95ab66e2a9c604f1ba078","entity_key":"e_b1_city_project_capstone_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1a81247c07c67b79af123a115e335b054da1043f8bd783f3222249733f53c4e6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/15918a24103a0ea6ce797376714bedae1229ad596fb95ab66e2a9c604f1ba078.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_opinions_and_evidence_03 -> audio/generated/tr-TR/utterances/1a3ae4aa60135633d12cc76457a95a7ed143f47ca665acd0a68deb8e235434dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4e4dcc0f-f0fd-5544-be60-cee98bd858a9', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_opinions_and_evidence_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '805e96c94f6b6bc5ea6bb5ac2179e7dab6782ed57c7728c43436159bea064423'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('48bcd57f-2245-5935-87bd-7da03db512ce', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4e4dcc0f-f0fd-5544-be60-cee98bd858a9', 1), '805e96c94f6b6bc5ea6bb5ac2179e7dab6782ed57c7728c43436159bea064423',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/1a3ae4aa60135633d12cc76457a95a7ed143f47ca665acd0a68deb8e235434dd.mp3', 1854, '2026-09-13 17:57:12.715701', 'd4399b57b6df6ac8fea29fe10f50a0d3a3f687fcc57493c67733e7e814008d96', 'validated', '{"audio_key":"1a3ae4aa60135633d12cc76457a95a7ed143f47ca665acd0a68deb8e235434dd","entity_key":"u_opinions_and_evidence_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d4399b57b6df6ac8fea29fe10f50a0d3a3f687fcc57493c67733e7e814008d96","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/1a3ae4aa60135633d12cc76457a95a7ed143f47ca665acd0a68deb8e235434dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_experiences_and_change_04 -> audio/generated/tr-TR/utterances/38ab9e3c514656809c6becea21b4d9d1f1b8662d7401be5a79d56e2c5e6262fa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f1f027f6-5410-5980-bbbe-4515d6f61e0e', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_experiences_and_change_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd0117ea54ed69415576ba4a100da0108451b4bab4a5acbfc5a0727dd9ed2a7c2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e8f13910-7215-5038-9d13-106df178c77a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f1f027f6-5410-5980-bbbe-4515d6f61e0e', 1), 'd0117ea54ed69415576ba4a100da0108451b4bab4a5acbfc5a0727dd9ed2a7c2',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/38ab9e3c514656809c6becea21b4d9d1f1b8662d7401be5a79d56e2c5e6262fa.mp3', 2037, '2026-09-13 17:57:13.002057', '08e914c4deefd5038b5e7764772a0e1983cae6de0f583f99b02e56dec1d86097', 'validated', '{"audio_key":"38ab9e3c514656809c6becea21b4d9d1f1b8662d7401be5a79d56e2c5e6262fa","entity_key":"u_experiences_and_change_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"08e914c4deefd5038b5e7764772a0e1983cae6de0f583f99b02e56dec1d86097","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/38ab9e3c514656809c6becea21b4d9d1f1b8662d7401be5a79d56e2c5e6262fa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_experiences_and_change_02_listen -> audio/generated/tr-TR/utterances/38ab9e3c514656809c6becea21b4d9d1f1b8662d7401be5a79d56e2c5e6262fa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('f1e3c123-fbae-5a4f-91ec-345b1fdc10a4', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_experiences_and_change_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd0117ea54ed69415576ba4a100da0108451b4bab4a5acbfc5a0727dd9ed2a7c2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cd907e7c-d8b8-571c-a5f6-e818b04cd072', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('f1e3c123-fbae-5a4f-91ec-345b1fdc10a4', 1), 'd0117ea54ed69415576ba4a100da0108451b4bab4a5acbfc5a0727dd9ed2a7c2',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/38ab9e3c514656809c6becea21b4d9d1f1b8662d7401be5a79d56e2c5e6262fa.mp3', 2037, '2026-09-13 17:57:13.002057', '08e914c4deefd5038b5e7764772a0e1983cae6de0f583f99b02e56dec1d86097', 'validated', '{"audio_key":"38ab9e3c514656809c6becea21b4d9d1f1b8662d7401be5a79d56e2c5e6262fa","entity_key":"e_experiences_and_change_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"08e914c4deefd5038b5e7764772a0e1983cae6de0f583f99b02e56dec1d86097","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/38ab9e3c514656809c6becea21b4d9d1f1b8662d7401be5a79d56e2c5e6262fa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_reported_information_01 -> audio/generated/tr-TR/utterances/3992c126c60b75eab17bdba0bf5b95e44115b43c9deb96080dad16f31cb0de82.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('dfaee2fc-b9c7-5a91-9713-b8575a7f49a5', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_reported_information_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6d983ceeaaa2f6b1b17386951d6540da8ee7ed35542c3a374b472c9787b09895'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f34790ef-5c4a-58b9-a1ab-9d0c8183c9c2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('dfaee2fc-b9c7-5a91-9713-b8575a7f49a5', 1), '6d983ceeaaa2f6b1b17386951d6540da8ee7ed35542c3a374b472c9787b09895',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/3992c126c60b75eab17bdba0bf5b95e44115b43c9deb96080dad16f31cb0de82.mp3', 2351, '2026-09-13 17:57:13.786736', '1b2bab0ddcbce1b4adf2eb035c0b806eea875ca19dae096649eae5c2a04b4cd5', 'validated', '{"audio_key":"3992c126c60b75eab17bdba0bf5b95e44115b43c9deb96080dad16f31cb0de82","entity_key":"u_reported_information_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1b2bab0ddcbce1b4adf2eb035c0b806eea875ca19dae096649eae5c2a04b4cd5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/3992c126c60b75eab17bdba0bf5b95e44115b43c9deb96080dad16f31cb0de82.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_problems_and_solutions_03 -> audio/generated/tr-TR/utterances/3d25703ef6fa3a40ca00c188864ffe6a510e590f3922aceebcb45181d071dcba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('86b15f4a-a625-54e2-b679-ce13a5e38884', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_problems_and_solutions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '765c758a7c6b2106d39dc85bb6b82717bb823240f264837a8b13123cb1775d22'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('694914c1-5484-5d7e-81e5-827b61ffe207', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('86b15f4a-a625-54e2-b679-ce13a5e38884', 1), '765c758a7c6b2106d39dc85bb6b82717bb823240f264837a8b13123cb1775d22',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/3d25703ef6fa3a40ca00c188864ffe6a510e590f3922aceebcb45181d071dcba.mp3', 2507, '2026-09-13 17:57:14.077719', 'a85e10dbc41dd3d60ed79702615da2bd0d92c5ce38c39abaa3942754e689712e', 'validated', '{"audio_key":"3d25703ef6fa3a40ca00c188864ffe6a510e590f3922aceebcb45181d071dcba","entity_key":"u_problems_and_solutions_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a85e10dbc41dd3d60ed79702615da2bd0d92c5ce38c39abaa3942754e689712e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/3d25703ef6fa3a40ca00c188864ffe6a510e590f3922aceebcb45181d071dcba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_conditions_and_consequences_01 -> audio/generated/tr-TR/utterances/451536ace3891147f378548c4c1e86a6223bd1807b600ae597fdfc888bec0323.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('40dc2628-e725-542c-8282-e0d5909b3fef', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_conditions_and_consequences_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f412dad69d784f02f9a6fd249071ef955dfed5a9d99f19376d6ea9cc9ec07dc1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ad44cd39-6abb-5547-bb1c-8c8589d49ac3', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('40dc2628-e725-542c-8282-e0d5909b3fef', 1), 'f412dad69d784f02f9a6fd249071ef955dfed5a9d99f19376d6ea9cc9ec07dc1',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/451536ace3891147f378548c4c1e86a6223bd1807b600ae597fdfc888bec0323.mp3', 1854, '2026-09-13 17:57:14.829005', '320873ff377c7df2dacd421dbd4a915d4b30d03e3ab339a997eda4af5836103d', 'validated', '{"audio_key":"451536ace3891147f378548c4c1e86a6223bd1807b600ae597fdfc888bec0323","entity_key":"u_conditions_and_consequences_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"320873ff377c7df2dacd421dbd4a915d4b30d03e3ab339a997eda4af5836103d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/451536ace3891147f378548c4c1e86a6223bd1807b600ae597fdfc888bec0323.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_reported_information_03 -> audio/generated/tr-TR/utterances/45b455d828781827dc85a7086124c5561ac5fe40a7bcf440379afdf015aed8f1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('42e490b7-f659-5ef6-8e09-1b0e1380248c', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_reported_information_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4ec4051a6939e2bf6d844fd44fb070d16eaaff01a2e493850677c51a066fcf60'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('026ccd48-f5c7-5aa6-b208-8957e360d883', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('42e490b7-f659-5ef6-8e09-1b0e1380248c', 1), '4ec4051a6939e2bf6d844fd44fb070d16eaaff01a2e493850677c51a066fcf60',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/45b455d828781827dc85a7086124c5561ac5fe40a7bcf440379afdf015aed8f1.mp3', 2351, '2026-09-13 17:57:15.116035', 'd01d7565774c36de2078b25b4c96b7ddf4aa59c51156bfc5eabd17a3ff399dae', 'validated', '{"audio_key":"45b455d828781827dc85a7086124c5561ac5fe40a7bcf440379afdf015aed8f1","entity_key":"u_reported_information_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d01d7565774c36de2078b25b4c96b7ddf4aa59c51156bfc5eabd17a3ff399dae","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/45b455d828781827dc85a7086124c5561ac5fe40a7bcf440379afdf015aed8f1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_experiences_and_change_02 -> audio/generated/tr-TR/utterances/521df93b6e254ae46c3e24f742e2b9f417916e77043dc19b80461b89fa641e55.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b873afc6-26e4-5f97-ac8e-010a50b51be8', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_experiences_and_change_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '51bfce12c41614645f323e4ce4224aed91b62a8b541112cd7f35433daee828e1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3024e78e-a376-5074-a100-606c6a9d00bc', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b873afc6-26e4-5f97-ac8e-010a50b51be8', 1), '51bfce12c41614645f323e4ce4224aed91b62a8b541112cd7f35433daee828e1',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/521df93b6e254ae46c3e24f742e2b9f417916e77043dc19b80461b89fa641e55.mp3', 2324, '2026-09-13 17:57:15.865765', 'a26f662a9e433c7811054bf8bc3eeeb7c24522d5753d020fe576bf41b5513373', 'validated', '{"audio_key":"521df93b6e254ae46c3e24f742e2b9f417916e77043dc19b80461b89fa641e55","entity_key":"u_experiences_and_change_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a26f662a9e433c7811054bf8bc3eeeb7c24522d5753d020fe576bf41b5513373","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/521df93b6e254ae46c3e24f742e2b9f417916e77043dc19b80461b89fa641e55.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_experiences_and_change_01_listen -> audio/generated/tr-TR/utterances/521df93b6e254ae46c3e24f742e2b9f417916e77043dc19b80461b89fa641e55.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('a8734c54-c384-5d46-bf33-a5e4d3c9d046', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_experiences_and_change_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '51bfce12c41614645f323e4ce4224aed91b62a8b541112cd7f35433daee828e1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('05818688-587a-5af1-8f2b-c06792313b83', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('a8734c54-c384-5d46-bf33-a5e4d3c9d046', 1), '51bfce12c41614645f323e4ce4224aed91b62a8b541112cd7f35433daee828e1',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/521df93b6e254ae46c3e24f742e2b9f417916e77043dc19b80461b89fa641e55.mp3', 2324, '2026-09-13 17:57:15.865765', 'a26f662a9e433c7811054bf8bc3eeeb7c24522d5753d020fe576bf41b5513373', 'validated', '{"audio_key":"521df93b6e254ae46c3e24f742e2b9f417916e77043dc19b80461b89fa641e55","entity_key":"e_experiences_and_change_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a26f662a9e433c7811054bf8bc3eeeb7c24522d5753d020fe576bf41b5513373","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/521df93b6e254ae46c3e24f742e2b9f417916e77043dc19b80461b89fa641e55.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_conditions_and_consequences_02 -> audio/generated/tr-TR/utterances/52ee12d77df1e27378aa508509b8031de8b9c2723a7a6765f3a8a5d63a789945.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('117c749d-9e33-5975-9d16-67749c22d59b', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_conditions_and_consequences_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f3e6f9526cca737c1e38f40b6b1fee449b7ca083c5c8b45c4cdfe95e46a700c1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8d07a0b0-cdfd-51f0-92a4-d6bf11a9c7e9', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('117c749d-9e33-5975-9d16-67749c22d59b', 1), 'f3e6f9526cca737c1e38f40b6b1fee449b7ca083c5c8b45c4cdfe95e46a700c1',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/52ee12d77df1e27378aa508509b8031de8b9c2723a7a6765f3a8a5d63a789945.mp3', 2533, '2026-09-13 17:57:16.213447', '05e5f94be11a9ea2b958c2743ebaca684c1361e27cc0ba4aa31f9554995bc829', 'validated', '{"audio_key":"52ee12d77df1e27378aa508509b8031de8b9c2723a7a6765f3a8a5d63a789945","entity_key":"u_conditions_and_consequences_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"05e5f94be11a9ea2b958c2743ebaca684c1361e27cc0ba4aa31f9554995bc829","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/52ee12d77df1e27378aa508509b8031de8b9c2723a7a6765f3a8a5d63a789945.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_conditions_and_consequences_01_listen -> audio/generated/tr-TR/utterances/52ee12d77df1e27378aa508509b8031de8b9c2723a7a6765f3a8a5d63a789945.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('b5722b7b-9150-5c1d-9370-169bf31f9003', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_conditions_and_consequences_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f3e6f9526cca737c1e38f40b6b1fee449b7ca083c5c8b45c4cdfe95e46a700c1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('33fc7482-2287-5011-9104-0fbfd9f3ea51', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('b5722b7b-9150-5c1d-9370-169bf31f9003', 1), 'f3e6f9526cca737c1e38f40b6b1fee449b7ca083c5c8b45c4cdfe95e46a700c1',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/52ee12d77df1e27378aa508509b8031de8b9c2723a7a6765f3a8a5d63a789945.mp3', 2533, '2026-09-13 17:57:16.213447', '05e5f94be11a9ea2b958c2743ebaca684c1361e27cc0ba4aa31f9554995bc829', 'validated', '{"audio_key":"52ee12d77df1e27378aa508509b8031de8b9c2723a7a6765f3a8a5d63a789945","entity_key":"e_conditions_and_consequences_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"05e5f94be11a9ea2b958c2743ebaca684c1361e27cc0ba4aa31f9554995bc829","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/52ee12d77df1e27378aa508509b8031de8b9c2723a7a6765f3a8a5d63a789945.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_media_and_sources_04 -> audio/generated/tr-TR/utterances/5f18807fab87c44e1ca732f4bb271e56bb9fb4a9a3109fd393e1fb75a12b7354.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('daba77e5-6736-5b06-954f-c05bdf57330e', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_media_and_sources_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dd63eaf9984a0cfe33557a2bc40b1643140a5a2206f85f225c54797827515f47'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a24a9850-9a8c-5dc4-bbd5-e1f45aaeb833', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('daba77e5-6736-5b06-954f-c05bdf57330e', 1), 'dd63eaf9984a0cfe33557a2bc40b1643140a5a2206f85f225c54797827515f47',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/5f18807fab87c44e1ca732f4bb271e56bb9fb4a9a3109fd393e1fb75a12b7354.mp3', 2324, '2026-09-13 17:57:16.906855', '26c4d64c5491164bdb20e736775f6d036a0672393ae9623c75838c6300240df9', 'validated', '{"audio_key":"5f18807fab87c44e1ca732f4bb271e56bb9fb4a9a3109fd393e1fb75a12b7354","entity_key":"u_media_and_sources_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"26c4d64c5491164bdb20e736775f6d036a0672393ae9623c75838c6300240df9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/5f18807fab87c44e1ca732f4bb271e56bb9fb4a9a3109fd393e1fb75a12b7354.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_media_and_sources_02_listen -> audio/generated/tr-TR/utterances/5f18807fab87c44e1ca732f4bb271e56bb9fb4a9a3109fd393e1fb75a12b7354.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('844cffcf-02f4-5ed0-85ec-0de2618f8966', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_media_and_sources_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dd63eaf9984a0cfe33557a2bc40b1643140a5a2206f85f225c54797827515f47'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f2f8da3e-3b9d-55fc-8629-1f86bb10b792', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('844cffcf-02f4-5ed0-85ec-0de2618f8966', 1), 'dd63eaf9984a0cfe33557a2bc40b1643140a5a2206f85f225c54797827515f47',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/5f18807fab87c44e1ca732f4bb271e56bb9fb4a9a3109fd393e1fb75a12b7354.mp3', 2324, '2026-09-13 17:57:16.906855', '26c4d64c5491164bdb20e736775f6d036a0672393ae9623c75838c6300240df9', 'validated', '{"audio_key":"5f18807fab87c44e1ca732f4bb271e56bb9fb4a9a3109fd393e1fb75a12b7354","entity_key":"e_media_and_sources_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"26c4d64c5491164bdb20e736775f6d036a0672393ae9623c75838c6300240df9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/5f18807fab87c44e1ca732f4bb271e56bb9fb4a9a3109fd393e1fb75a12b7354.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_b1_city_project_capstone_01 -> audio/generated/tr-TR/utterances/601b2b66928815e14d7013237828d9938457f688867de6c2dbbbd0b87b9d09e4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7b317e29-d5ee-5566-aa0f-231e11c3133e', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_b1_city_project_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f160d6c01727fab603ab10de91727bd2abca074841e02d6b5ffd4437f7be689d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('135ed56c-b3c0-510d-adf9-7b9b601ab407', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7b317e29-d5ee-5566-aa0f-231e11c3133e', 1), 'f160d6c01727fab603ab10de91727bd2abca074841e02d6b5ffd4437f7be689d',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/601b2b66928815e14d7013237828d9938457f688867de6c2dbbbd0b87b9d09e4.mp3', 2533, '2026-09-13 17:57:17.326950', 'e46477df71120b6c7c2f9729e04f707db5089b9f2ecb7cdc45757c22f09e769a', 'validated', '{"audio_key":"601b2b66928815e14d7013237828d9938457f688867de6c2dbbbd0b87b9d09e4","entity_key":"u_b1_city_project_capstone_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e46477df71120b6c7c2f9729e04f707db5089b9f2ecb7cdc45757c22f09e769a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/601b2b66928815e14d7013237828d9938457f688867de6c2dbbbd0b87b9d09e4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_b1_city_project_capstone_03 -> audio/generated/tr-TR/utterances/6250122ef66b79a5c324f73e3b91e8cd524533e3c234775a89b646abe9cc7683.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b480edf6-62dd-5695-b704-14fa771bb721', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_b1_city_project_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c88816224f7f80a3c16ba51fa258811f47d8d00e65294c4523c45f2bf3047b5f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d431aef2-2452-5d4e-9630-50829a47fc5b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b480edf6-62dd-5695-b704-14fa771bb721', 1), 'c88816224f7f80a3c16ba51fa258811f47d8d00e65294c4523c45f2bf3047b5f',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/6250122ef66b79a5c324f73e3b91e8cd524533e3c234775a89b646abe9cc7683.mp3', 3526, '2026-09-13 17:57:18.098895', 'd61e21d9e97636769eb8871e8a09dbcba2f80dabff73ccba554a9263809cc970', 'validated', '{"audio_key":"6250122ef66b79a5c324f73e3b91e8cd524533e3c234775a89b646abe9cc7683","entity_key":"u_b1_city_project_capstone_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d61e21d9e97636769eb8871e8a09dbcba2f80dabff73ccba554a9263809cc970","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/6250122ef66b79a5c324f73e3b91e8cd524533e3c234775a89b646abe9cc7683.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_problems_and_solutions_02 -> audio/generated/tr-TR/utterances/632f1cc81a9721c2edf189a349349756febd85e0a072b0460224969d12051aed.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0d11fa33-b3e5-573d-a5dc-bf8b447a072d', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_problems_and_solutions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '77825fba2020df8a44d788ca026e183510019852771977e2a01d4932d62d599f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('064c4f19-c99f-5759-9b5d-bd8e3a8cd2b8', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0d11fa33-b3e5-573d-a5dc-bf8b447a072d', 1), '77825fba2020df8a44d788ca026e183510019852771977e2a01d4932d62d599f',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/632f1cc81a9721c2edf189a349349756febd85e0a072b0460224969d12051aed.mp3', 2403, '2026-09-13 17:57:18.556880', '4c5df5e56b91b4658d5a1477f0759fc0a3e01b1e03870c2476d978e4d3234f33', 'validated', '{"audio_key":"632f1cc81a9721c2edf189a349349756febd85e0a072b0460224969d12051aed","entity_key":"u_problems_and_solutions_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4c5df5e56b91b4658d5a1477f0759fc0a3e01b1e03870c2476d978e4d3234f33","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/632f1cc81a9721c2edf189a349349756febd85e0a072b0460224969d12051aed.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_problems_and_solutions_01_listen -> audio/generated/tr-TR/utterances/632f1cc81a9721c2edf189a349349756febd85e0a072b0460224969d12051aed.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('051da40b-6b4c-533b-a5f2-2185137c2ec8', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_problems_and_solutions_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '77825fba2020df8a44d788ca026e183510019852771977e2a01d4932d62d599f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1e4799e4-5382-5bc8-b32e-c6f4696d7092', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('051da40b-6b4c-533b-a5f2-2185137c2ec8', 1), '77825fba2020df8a44d788ca026e183510019852771977e2a01d4932d62d599f',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/632f1cc81a9721c2edf189a349349756febd85e0a072b0460224969d12051aed.mp3', 2403, '2026-09-13 17:57:18.556880', '4c5df5e56b91b4658d5a1477f0759fc0a3e01b1e03870c2476d978e4d3234f33', 'validated', '{"audio_key":"632f1cc81a9721c2edf189a349349756febd85e0a072b0460224969d12051aed","entity_key":"e_problems_and_solutions_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4c5df5e56b91b4658d5a1477f0759fc0a3e01b1e03870c2476d978e4d3234f33","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/632f1cc81a9721c2edf189a349349756febd85e0a072b0460224969d12051aed.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_goals_and_effort_04 -> audio/generated/tr-TR/utterances/6b713a980df13f61f6c0ff8d746bff796912b4ce4a142f1c11c04b3cdfce206e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a11e1ff3-21e0-5f7e-8fac-6f6f06911a60', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_goals_and_effort_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9a4b7aa529aed17a0126bc90a371c00f5a8a6d6a19f5d6cc529f93d9d20c26fb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('171769ee-7924-50e9-8d2b-a3b0e32edf3f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a11e1ff3-21e0-5f7e-8fac-6f6f06911a60', 1), '9a4b7aa529aed17a0126bc90a371c00f5a8a6d6a19f5d6cc529f93d9d20c26fb',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/6b713a980df13f61f6c0ff8d746bff796912b4ce4a142f1c11c04b3cdfce206e.mp3', 2220, '2026-09-13 17:57:19.158270', 'd2603a0aa29fc175cec1f4e1a4e6af309ab874b46f7c5fddcfa74815f925e28c', 'validated', '{"audio_key":"6b713a980df13f61f6c0ff8d746bff796912b4ce4a142f1c11c04b3cdfce206e","entity_key":"u_goals_and_effort_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d2603a0aa29fc175cec1f4e1a4e6af309ab874b46f7c5fddcfa74815f925e28c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/6b713a980df13f61f6c0ff8d746bff796912b4ce4a142f1c11c04b3cdfce206e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_goals_and_effort_02_listen -> audio/generated/tr-TR/utterances/6b713a980df13f61f6c0ff8d746bff796912b4ce4a142f1c11c04b3cdfce206e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('0d30be8f-1c06-5f26-8588-1f6151fad1ed', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_goals_and_effort_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9a4b7aa529aed17a0126bc90a371c00f5a8a6d6a19f5d6cc529f93d9d20c26fb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7a3566cd-7df7-53da-808e-989fd69c52fd', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('0d30be8f-1c06-5f26-8588-1f6151fad1ed', 1), '9a4b7aa529aed17a0126bc90a371c00f5a8a6d6a19f5d6cc529f93d9d20c26fb',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/6b713a980df13f61f6c0ff8d746bff796912b4ce4a142f1c11c04b3cdfce206e.mp3', 2220, '2026-09-13 17:57:19.158270', 'd2603a0aa29fc175cec1f4e1a4e6af309ab874b46f7c5fddcfa74815f925e28c', 'validated', '{"audio_key":"6b713a980df13f61f6c0ff8d746bff796912b4ce4a142f1c11c04b3cdfce206e","entity_key":"e_goals_and_effort_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d2603a0aa29fc175cec1f4e1a4e6af309ab874b46f7c5fddcfa74815f925e28c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/6b713a980df13f61f6c0ff8d746bff796912b4ce4a142f1c11c04b3cdfce206e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_social_nuance_04 -> audio/generated/tr-TR/utterances/6bf6acd1e3a53b5c3d98190854b83a10df9facfd12640fd812153250d96255f8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('fd2ca37c-2516-5f61-97f9-42c0fd745482', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_social_nuance_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f3cdbb01a5c609ebe0ab02f2ebdc007e394a26e158a519f2304150e7b55fe1f7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c37f99f4-b50b-5bce-bd6e-e5c41b7a1be9', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('fd2ca37c-2516-5f61-97f9-42c0fd745482', 1), 'f3cdbb01a5c609ebe0ab02f2ebdc007e394a26e158a519f2304150e7b55fe1f7',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/6bf6acd1e3a53b5c3d98190854b83a10df9facfd12640fd812153250d96255f8.mp3', 2324, '2026-09-13 17:57:19.634719', 'ae4d0b1c18f475c6a5c51210d6fe7eac83b9f7efedd7ca190b0c146561be714a', 'validated', '{"audio_key":"6bf6acd1e3a53b5c3d98190854b83a10df9facfd12640fd812153250d96255f8","entity_key":"u_social_nuance_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ae4d0b1c18f475c6a5c51210d6fe7eac83b9f7efedd7ca190b0c146561be714a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/6bf6acd1e3a53b5c3d98190854b83a10df9facfd12640fd812153250d96255f8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_social_nuance_02_listen -> audio/generated/tr-TR/utterances/6bf6acd1e3a53b5c3d98190854b83a10df9facfd12640fd812153250d96255f8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('1eeb0619-6309-5cbe-92ff-9093e66e5636', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_social_nuance_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f3cdbb01a5c609ebe0ab02f2ebdc007e394a26e158a519f2304150e7b55fe1f7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ef18d434-3157-518f-934f-b0d4e4c57a58', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('1eeb0619-6309-5cbe-92ff-9093e66e5636', 1), 'f3cdbb01a5c609ebe0ab02f2ebdc007e394a26e158a519f2304150e7b55fe1f7',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/6bf6acd1e3a53b5c3d98190854b83a10df9facfd12640fd812153250d96255f8.mp3', 2324, '2026-09-13 17:57:19.634719', 'ae4d0b1c18f475c6a5c51210d6fe7eac83b9f7efedd7ca190b0c146561be714a', 'validated', '{"audio_key":"6bf6acd1e3a53b5c3d98190854b83a10df9facfd12640fd812153250d96255f8","entity_key":"e_social_nuance_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ae4d0b1c18f475c6a5c51210d6fe7eac83b9f7efedd7ca190b0c146561be714a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/6bf6acd1e3a53b5c3d98190854b83a10df9facfd12640fd812153250d96255f8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_media_and_sources_01 -> audio/generated/tr-TR/utterances/6eac5e5d84e362914d4137806d006adb224d2f47f63e06c20049407c66787559.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('80b42ca9-dfbe-5b6e-a5c1-94864853d842', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_media_and_sources_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '64c48b37ca6d0c229bb166adb45c0c446ad2856bf8881bc5454cdce40723a557'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d83bd371-4aa3-57ee-bd92-7572dfb25902', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('80b42ca9-dfbe-5b6e-a5c1-94864853d842', 1), '64c48b37ca6d0c229bb166adb45c0c446ad2856bf8881bc5454cdce40723a557',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/6eac5e5d84e362914d4137806d006adb224d2f47f63e06c20049407c66787559.mp3', 2351, '2026-09-13 17:57:20.291953', '1de01554c79e812c2f44dccfb99c96179c465379bf3d7dd0cbcfc1f040e2d5d2', 'validated', '{"audio_key":"6eac5e5d84e362914d4137806d006adb224d2f47f63e06c20049407c66787559","entity_key":"u_media_and_sources_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1de01554c79e812c2f44dccfb99c96179c465379bf3d7dd0cbcfc1f040e2d5d2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/6eac5e5d84e362914d4137806d006adb224d2f47f63e06c20049407c66787559.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_reported_information_02 -> audio/generated/tr-TR/utterances/8012bbfe9e627d4260cfe2040ebe4cd7369e508b70faebdd20f74d10054140f5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0eea396d-0597-5588-9b71-6798dbe69f8c', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_reported_information_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3b0da30fb60acc78a49c56408eba3d03551d16df97e42d0fd7be0332592442ba'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f0a616b3-884d-573d-a65f-203424fcd899', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0eea396d-0597-5588-9b71-6798dbe69f8c', 1), '3b0da30fb60acc78a49c56408eba3d03551d16df97e42d0fd7be0332592442ba',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/8012bbfe9e627d4260cfe2040ebe4cd7369e508b70faebdd20f74d10054140f5.mp3', 2037, '2026-09-13 17:57:20.692250', 'f192437e1cafcf0163a7c54ad8b2a834977bba31be660ff45e8b3c8d0bb527ed', 'validated', '{"audio_key":"8012bbfe9e627d4260cfe2040ebe4cd7369e508b70faebdd20f74d10054140f5","entity_key":"u_reported_information_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f192437e1cafcf0163a7c54ad8b2a834977bba31be660ff45e8b3c8d0bb527ed","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/8012bbfe9e627d4260cfe2040ebe4cd7369e508b70faebdd20f74d10054140f5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_reported_information_01_listen -> audio/generated/tr-TR/utterances/8012bbfe9e627d4260cfe2040ebe4cd7369e508b70faebdd20f74d10054140f5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('398cf92b-9542-5346-abfa-89051b111605', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_reported_information_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3b0da30fb60acc78a49c56408eba3d03551d16df97e42d0fd7be0332592442ba'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('956cdf14-ba4d-5bad-9e22-a59f099ac214', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('398cf92b-9542-5346-abfa-89051b111605', 1), '3b0da30fb60acc78a49c56408eba3d03551d16df97e42d0fd7be0332592442ba',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/8012bbfe9e627d4260cfe2040ebe4cd7369e508b70faebdd20f74d10054140f5.mp3', 2037, '2026-09-13 17:57:20.692250', 'f192437e1cafcf0163a7c54ad8b2a834977bba31be660ff45e8b3c8d0bb527ed', 'validated', '{"audio_key":"8012bbfe9e627d4260cfe2040ebe4cd7369e508b70faebdd20f74d10054140f5","entity_key":"e_reported_information_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f192437e1cafcf0163a7c54ad8b2a834977bba31be660ff45e8b3c8d0bb527ed","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/8012bbfe9e627d4260cfe2040ebe4cd7369e508b70faebdd20f74d10054140f5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_experiences_and_change_03 -> audio/generated/tr-TR/utterances/8e1c92c741a87a5469777f22dc36086da9885c31437e46c9f5a6d055de9c9d38.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('14f4355b-9249-586b-9fc7-8461e1d04f29', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_experiences_and_change_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '146034f1ee6eeba84ae46bc371442701be46c3e3eabffdc093d9ee114985d5d3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0b223523-e3ec-5b49-b23d-a5861bf9a862', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('14f4355b-9249-586b-9fc7-8461e1d04f29', 1), '146034f1ee6eeba84ae46bc371442701be46c3e3eabffdc093d9ee114985d5d3',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/8e1c92c741a87a5469777f22dc36086da9885c31437e46c9f5a6d055de9c9d38.mp3', 1697, '2026-09-13 17:57:21.303067', '652af25acb47b4e62a9d67240070de11136e67e0c518d2d8ab1bfb056aef2dbe', 'validated', '{"audio_key":"8e1c92c741a87a5469777f22dc36086da9885c31437e46c9f5a6d055de9c9d38","entity_key":"u_experiences_and_change_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"652af25acb47b4e62a9d67240070de11136e67e0c518d2d8ab1bfb056aef2dbe","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/8e1c92c741a87a5469777f22dc36086da9885c31437e46c9f5a6d055de9c9d38.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_experiences_and_change_01 -> audio/generated/tr-TR/utterances/9c3c504c630ac7e8e6c1132a88006b1d5f43916303421481df2a65596e56b6d2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d8383e44-b26d-5beb-bd6e-9f5a03a2a909', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_experiences_and_change_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f0552f3f99eddbcc1b354959ab8c9c7a1c85f13a7be4ce539670263757460aa3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('104b972c-bed3-558a-8044-670d04c1ecb4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d8383e44-b26d-5beb-bd6e-9f5a03a2a909', 1), 'f0552f3f99eddbcc1b354959ab8c9c7a1c85f13a7be4ce539670263757460aa3',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/9c3c504c630ac7e8e6c1132a88006b1d5f43916303421481df2a65596e56b6d2.mp3', 2037, '2026-09-13 17:57:21.762768', '9f1e8f1e881a15d429db64f37d4716aaf24bbfb5bdffbf8c749de5fbf38ae712', 'validated', '{"audio_key":"9c3c504c630ac7e8e6c1132a88006b1d5f43916303421481df2a65596e56b6d2","entity_key":"u_experiences_and_change_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9f1e8f1e881a15d429db64f37d4716aaf24bbfb5bdffbf8c749de5fbf38ae712","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/9c3c504c630ac7e8e6c1132a88006b1d5f43916303421481df2a65596e56b6d2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_storytelling_sequence_04 -> audio/generated/tr-TR/utterances/abd5e39ca5371df8cb1e40cae745ae14be32c5a0f4d79559ee3947f825960103.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6caf2182-8458-59c4-bba3-462b20a2a9b0', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_storytelling_sequence_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7a24c16bba27cd431b121d59564793fe8aa12575b9f2235f5fca4195afdc4d6e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2b044258-ce91-5c46-b362-2f258af8ab63', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6caf2182-8458-59c4-bba3-462b20a2a9b0', 1), '7a24c16bba27cd431b121d59564793fe8aa12575b9f2235f5fca4195afdc4d6e',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/abd5e39ca5371df8cb1e40cae745ae14be32c5a0f4d79559ee3947f825960103.mp3', 2089, '2026-09-13 17:57:22.355143', '7807abc44364fdb0667abce29cc26ed8cb7da1214e39069bd535c9c622e3fbd2', 'validated', '{"audio_key":"abd5e39ca5371df8cb1e40cae745ae14be32c5a0f4d79559ee3947f825960103","entity_key":"u_storytelling_sequence_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7807abc44364fdb0667abce29cc26ed8cb7da1214e39069bd535c9c622e3fbd2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/abd5e39ca5371df8cb1e40cae745ae14be32c5a0f4d79559ee3947f825960103.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_storytelling_sequence_02_listen -> audio/generated/tr-TR/utterances/abd5e39ca5371df8cb1e40cae745ae14be32c5a0f4d79559ee3947f825960103.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('96fa39e6-e762-587c-b0bc-b74cbeb1f3ea', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_storytelling_sequence_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7a24c16bba27cd431b121d59564793fe8aa12575b9f2235f5fca4195afdc4d6e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e4a5ae91-4a80-5c68-9b1a-200185b19663', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('96fa39e6-e762-587c-b0bc-b74cbeb1f3ea', 1), '7a24c16bba27cd431b121d59564793fe8aa12575b9f2235f5fca4195afdc4d6e',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/abd5e39ca5371df8cb1e40cae745ae14be32c5a0f4d79559ee3947f825960103.mp3', 2089, '2026-09-13 17:57:22.355143', '7807abc44364fdb0667abce29cc26ed8cb7da1214e39069bd535c9c622e3fbd2', 'validated', '{"audio_key":"abd5e39ca5371df8cb1e40cae745ae14be32c5a0f4d79559ee3947f825960103","entity_key":"e_storytelling_sequence_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7807abc44364fdb0667abce29cc26ed8cb7da1214e39069bd535c9c622e3fbd2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/abd5e39ca5371df8cb1e40cae745ae14be32c5a0f4d79559ee3947f825960103.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_problems_and_solutions_04 -> audio/generated/tr-TR/utterances/b3f5a2b7e450513c7af9a515df3bdc92895003ed80e534ee83336b260620653a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5a35308c-580c-5853-9ef2-9e5834d03fb5', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_problems_and_solutions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f9a70cb0c10e05a304269d6a806abfde7e5ba7d1c4336a8c60adbe5491d44d6d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5d266ed6-239e-5432-a697-39d23b9402d6', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5a35308c-580c-5853-9ef2-9e5834d03fb5', 1), 'f9a70cb0c10e05a304269d6a806abfde7e5ba7d1c4336a8c60adbe5491d44d6d',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/b3f5a2b7e450513c7af9a515df3bdc92895003ed80e534ee83336b260620653a.mp3', 1985, '2026-09-13 17:57:22.783427', 'e0956b14f2028ef80359f65eb57fbe544a3c348f6cf3853425a88fbe45a8fff0', 'validated', '{"audio_key":"b3f5a2b7e450513c7af9a515df3bdc92895003ed80e534ee83336b260620653a","entity_key":"u_problems_and_solutions_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e0956b14f2028ef80359f65eb57fbe544a3c348f6cf3853425a88fbe45a8fff0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/b3f5a2b7e450513c7af9a515df3bdc92895003ed80e534ee83336b260620653a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_problems_and_solutions_02_listen -> audio/generated/tr-TR/utterances/b3f5a2b7e450513c7af9a515df3bdc92895003ed80e534ee83336b260620653a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('2af49ce6-9b8e-57b3-8647-13949f11c541', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_problems_and_solutions_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f9a70cb0c10e05a304269d6a806abfde7e5ba7d1c4336a8c60adbe5491d44d6d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0eec4a3a-2842-5da2-b665-d8898a9bd764', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('2af49ce6-9b8e-57b3-8647-13949f11c541', 1), 'f9a70cb0c10e05a304269d6a806abfde7e5ba7d1c4336a8c60adbe5491d44d6d',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/b3f5a2b7e450513c7af9a515df3bdc92895003ed80e534ee83336b260620653a.mp3', 1985, '2026-09-13 17:57:22.783427', 'e0956b14f2028ef80359f65eb57fbe544a3c348f6cf3853425a88fbe45a8fff0', 'validated', '{"audio_key":"b3f5a2b7e450513c7af9a515df3bdc92895003ed80e534ee83336b260620653a","entity_key":"e_problems_and_solutions_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e0956b14f2028ef80359f65eb57fbe544a3c348f6cf3853425a88fbe45a8fff0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/b3f5a2b7e450513c7af9a515df3bdc92895003ed80e534ee83336b260620653a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_goals_and_effort_03 -> audio/generated/tr-TR/utterances/c63fa8d8d3f861878af63dd66dd5f6b7db141bc7e1b68e1450aacce47e6ce8ec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('176345fe-77c6-5a86-be30-5ad2f45fd3ac', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_goals_and_effort_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '13532a4cf5839143a4136ac0b95f46882014a018d021cbd22689553cb0ccbad1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c4d55db6-b7f5-5a42-88ec-5fb01cb486bc', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('176345fe-77c6-5a86-be30-5ad2f45fd3ac', 1), '13532a4cf5839143a4136ac0b95f46882014a018d021cbd22689553cb0ccbad1',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/c63fa8d8d3f861878af63dd66dd5f6b7db141bc7e1b68e1450aacce47e6ce8ec.mp3', 3004, '2026-09-13 17:57:23.532428', 'd115f8e4e23ae890b6c4e8c01aef2aa2bea54717f45942ee1af21f87b295fbb4', 'validated', '{"audio_key":"c63fa8d8d3f861878af63dd66dd5f6b7db141bc7e1b68e1450aacce47e6ce8ec","entity_key":"u_goals_and_effort_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d115f8e4e23ae890b6c4e8c01aef2aa2bea54717f45942ee1af21f87b295fbb4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/c63fa8d8d3f861878af63dd66dd5f6b7db141bc7e1b68e1450aacce47e6ce8ec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_social_nuance_02 -> audio/generated/tr-TR/utterances/c6a99678cbff1ce120e6af18b56abee9225234758d72a0b1bf3299c2a11093ea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7c0ad0cc-4612-55c7-9c52-a128fe6679d0', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_social_nuance_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c519980baed40312755dd108444aad5be10a793ce21c46e0eeaa8c9983385a5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6dcdd702-1589-54d8-ae3d-5ee07f3f32ce', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7c0ad0cc-4612-55c7-9c52-a128fe6679d0', 1), '2c519980baed40312755dd108444aad5be10a793ce21c46e0eeaa8c9983385a5',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/c6a99678cbff1ce120e6af18b56abee9225234758d72a0b1bf3299c2a11093ea.mp3', 3604, '2026-09-13 17:57:24.027872', 'fe708890e6f1562f67aecc1a17e1e790c545fdc4281338a944d780fd51dc3bc1', 'validated', '{"audio_key":"c6a99678cbff1ce120e6af18b56abee9225234758d72a0b1bf3299c2a11093ea","entity_key":"u_social_nuance_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fe708890e6f1562f67aecc1a17e1e790c545fdc4281338a944d780fd51dc3bc1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/c6a99678cbff1ce120e6af18b56abee9225234758d72a0b1bf3299c2a11093ea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_social_nuance_01_listen -> audio/generated/tr-TR/utterances/c6a99678cbff1ce120e6af18b56abee9225234758d72a0b1bf3299c2a11093ea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('41d2224a-cbc3-52bd-8316-e39d5b8c2c25', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_social_nuance_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c519980baed40312755dd108444aad5be10a793ce21c46e0eeaa8c9983385a5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c2eea092-2694-5230-86c1-288ba528233f', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('41d2224a-cbc3-52bd-8316-e39d5b8c2c25', 1), '2c519980baed40312755dd108444aad5be10a793ce21c46e0eeaa8c9983385a5',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/c6a99678cbff1ce120e6af18b56abee9225234758d72a0b1bf3299c2a11093ea.mp3', 3604, '2026-09-13 17:57:24.027872', 'fe708890e6f1562f67aecc1a17e1e790c545fdc4281338a944d780fd51dc3bc1', 'validated', '{"audio_key":"c6a99678cbff1ce120e6af18b56abee9225234758d72a0b1bf3299c2a11093ea","entity_key":"e_social_nuance_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fe708890e6f1562f67aecc1a17e1e790c545fdc4281338a944d780fd51dc3bc1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/c6a99678cbff1ce120e6af18b56abee9225234758d72a0b1bf3299c2a11093ea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_b1_city_project_capstone_02 -> audio/generated/tr-TR/utterances/cb5395055e5c3a0fbc8fe39e40b24e5e7ed34d2d01b7519c0fd9dc2ad6c4bd53.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6264ceaf-23b6-5a0c-b77a-48a172102deb', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_b1_city_project_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ed65b7193245f1266e41a11dcea67ac9af1257856e957eb9b70a7b120e750117'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('70ce22dc-72ad-5b9b-a3d1-5f02b9d9670d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6264ceaf-23b6-5a0c-b77a-48a172102deb', 1), 'ed65b7193245f1266e41a11dcea67ac9af1257856e957eb9b70a7b120e750117',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/cb5395055e5c3a0fbc8fe39e40b24e5e7ed34d2d01b7519c0fd9dc2ad6c4bd53.mp3', 3369, '2026-09-13 17:57:24.706580', 'b94dd99f07a03928b655ba1ca28145c726bcace48d81f85c3d6b9ddb188062ae', 'validated', '{"audio_key":"cb5395055e5c3a0fbc8fe39e40b24e5e7ed34d2d01b7519c0fd9dc2ad6c4bd53","entity_key":"u_b1_city_project_capstone_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b94dd99f07a03928b655ba1ca28145c726bcace48d81f85c3d6b9ddb188062ae","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/cb5395055e5c3a0fbc8fe39e40b24e5e7ed34d2d01b7519c0fd9dc2ad6c4bd53.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_b1_city_project_capstone_01_listen -> audio/generated/tr-TR/utterances/cb5395055e5c3a0fbc8fe39e40b24e5e7ed34d2d01b7519c0fd9dc2ad6c4bd53.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('cd75c532-1649-5953-b7ca-2e3a171b1fc3', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_b1_city_project_capstone_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ed65b7193245f1266e41a11dcea67ac9af1257856e957eb9b70a7b120e750117'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('81f5b3ca-7f7b-59e3-b3ce-178ed3877666', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('cd75c532-1649-5953-b7ca-2e3a171b1fc3', 1), 'ed65b7193245f1266e41a11dcea67ac9af1257856e957eb9b70a7b120e750117',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/cb5395055e5c3a0fbc8fe39e40b24e5e7ed34d2d01b7519c0fd9dc2ad6c4bd53.mp3', 3369, '2026-09-13 17:57:24.706580', 'b94dd99f07a03928b655ba1ca28145c726bcace48d81f85c3d6b9ddb188062ae', 'validated', '{"audio_key":"cb5395055e5c3a0fbc8fe39e40b24e5e7ed34d2d01b7519c0fd9dc2ad6c4bd53","entity_key":"e_b1_city_project_capstone_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b94dd99f07a03928b655ba1ca28145c726bcace48d81f85c3d6b9ddb188062ae","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/cb5395055e5c3a0fbc8fe39e40b24e5e7ed34d2d01b7519c0fd9dc2ad6c4bd53.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_opinions_and_evidence_04 -> audio/generated/tr-TR/utterances/d7e27d501d00b2472bf24edebed11e24bffc89f954a9d78fae8d684cbc74d037.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('693d2268-5348-5fe4-85a1-46f85bd01fe8', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_opinions_and_evidence_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '30290ded4e6c2abe3fdca3dda37a5becd3b561c81db2cf9af267f5fbed5a7faa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ab1de7eb-dd14-5df2-8079-094f74724a51', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('693d2268-5348-5fe4-85a1-46f85bd01fe8', 1), '30290ded4e6c2abe3fdca3dda37a5becd3b561c81db2cf9af267f5fbed5a7faa',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/d7e27d501d00b2472bf24edebed11e24bffc89f954a9d78fae8d684cbc74d037.mp3', 2403, '2026-09-13 17:57:25.100814', '75725a27affd837e6f6b0b81b8204083c5f41016f961518dbee7d95545c74d5d', 'validated', '{"audio_key":"d7e27d501d00b2472bf24edebed11e24bffc89f954a9d78fae8d684cbc74d037","entity_key":"u_opinions_and_evidence_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"75725a27affd837e6f6b0b81b8204083c5f41016f961518dbee7d95545c74d5d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/d7e27d501d00b2472bf24edebed11e24bffc89f954a9d78fae8d684cbc74d037.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_opinions_and_evidence_02_listen -> audio/generated/tr-TR/utterances/d7e27d501d00b2472bf24edebed11e24bffc89f954a9d78fae8d684cbc74d037.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('06447894-92d4-502d-9ced-4414bf685d8b', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_opinions_and_evidence_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '30290ded4e6c2abe3fdca3dda37a5becd3b561c81db2cf9af267f5fbed5a7faa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('46dd5c5c-261b-53b0-884c-cf4b0861c894', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('06447894-92d4-502d-9ced-4414bf685d8b', 1), '30290ded4e6c2abe3fdca3dda37a5becd3b561c81db2cf9af267f5fbed5a7faa',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/d7e27d501d00b2472bf24edebed11e24bffc89f954a9d78fae8d684cbc74d037.mp3', 2403, '2026-09-13 17:57:25.100814', '75725a27affd837e6f6b0b81b8204083c5f41016f961518dbee7d95545c74d5d', 'validated', '{"audio_key":"d7e27d501d00b2472bf24edebed11e24bffc89f954a9d78fae8d684cbc74d037","entity_key":"e_opinions_and_evidence_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"75725a27affd837e6f6b0b81b8204083c5f41016f961518dbee7d95545c74d5d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/d7e27d501d00b2472bf24edebed11e24bffc89f954a9d78fae8d684cbc74d037.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_storytelling_sequence_02 -> audio/generated/tr-TR/utterances/d82bfab5738d58283d6c4b71e38ea642e5aa5c7a30399ec066527cac36faf6fb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('26b82689-1b6c-5528-a90b-5eeab0abfd62', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_storytelling_sequence_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '554f9e089bc91e578b9eb41c7a63c7b4ce0a3a37a42b90e1ac31c9936b4ce4e2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2401bcaf-62f3-594f-94bd-f1bc9a9596e7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('26b82689-1b6c-5528-a90b-5eeab0abfd62', 1), '554f9e089bc91e578b9eb41c7a63c7b4ce0a3a37a42b90e1ac31c9936b4ce4e2',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/d82bfab5738d58283d6c4b71e38ea642e5aa5c7a30399ec066527cac36faf6fb.mp3', 2690, '2026-09-13 17:57:25.827456', '3ab3fca85a3de221acb8330b422460593b713e674bd345cb9dc592355d0a8f00', 'validated', '{"audio_key":"d82bfab5738d58283d6c4b71e38ea642e5aa5c7a30399ec066527cac36faf6fb","entity_key":"u_storytelling_sequence_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3ab3fca85a3de221acb8330b422460593b713e674bd345cb9dc592355d0a8f00","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/d82bfab5738d58283d6c4b71e38ea642e5aa5c7a30399ec066527cac36faf6fb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_storytelling_sequence_01_listen -> audio/generated/tr-TR/utterances/d82bfab5738d58283d6c4b71e38ea642e5aa5c7a30399ec066527cac36faf6fb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('03b2ee00-57c7-5352-91cf-517b1a8591ae', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_storytelling_sequence_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '554f9e089bc91e578b9eb41c7a63c7b4ce0a3a37a42b90e1ac31c9936b4ce4e2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4c8152cf-4b87-5eb7-9fd8-60a99cf0ed2b', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('03b2ee00-57c7-5352-91cf-517b1a8591ae', 1), '554f9e089bc91e578b9eb41c7a63c7b4ce0a3a37a42b90e1ac31c9936b4ce4e2',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/d82bfab5738d58283d6c4b71e38ea642e5aa5c7a30399ec066527cac36faf6fb.mp3', 2690, '2026-09-13 17:57:25.827456', '3ab3fca85a3de221acb8330b422460593b713e674bd345cb9dc592355d0a8f00', 'validated', '{"audio_key":"d82bfab5738d58283d6c4b71e38ea642e5aa5c7a30399ec066527cac36faf6fb","entity_key":"e_storytelling_sequence_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3ab3fca85a3de221acb8330b422460593b713e674bd345cb9dc592355d0a8f00","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/d82bfab5738d58283d6c4b71e38ea642e5aa5c7a30399ec066527cac36faf6fb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_conditions_and_consequences_04 -> audio/generated/tr-TR/utterances/dc73605b19675fde4130186eecf94d2631cf2a0e388a745222baf2a5d28ce473.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0e8c967a-8f2f-5be2-ad5f-c44236bed726', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_conditions_and_consequences_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e9514bccd92c48fd16df0cbc193292e948b386a1db00a9912d157af89225a633'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c42c5700-79c1-5bc5-9e57-e705a470ef4c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0e8c967a-8f2f-5be2-ad5f-c44236bed726', 1), 'e9514bccd92c48fd16df0cbc193292e948b386a1db00a9912d157af89225a633',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/dc73605b19675fde4130186eecf94d2631cf2a0e388a745222baf2a5d28ce473.mp3', 3369, '2026-09-13 17:57:26.323674', '35026c7fead441986094d39f7b996e5ae221de3730fe1e2aa7defda66796d222', 'validated', '{"audio_key":"dc73605b19675fde4130186eecf94d2631cf2a0e388a745222baf2a5d28ce473","entity_key":"u_conditions_and_consequences_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"35026c7fead441986094d39f7b996e5ae221de3730fe1e2aa7defda66796d222","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/dc73605b19675fde4130186eecf94d2631cf2a0e388a745222baf2a5d28ce473.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_conditions_and_consequences_02_listen -> audio/generated/tr-TR/utterances/dc73605b19675fde4130186eecf94d2631cf2a0e388a745222baf2a5d28ce473.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('269e267c-cf57-5607-8f05-0f0f54a0333c', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_conditions_and_consequences_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e9514bccd92c48fd16df0cbc193292e948b386a1db00a9912d157af89225a633'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ebb71278-7487-5ae4-b260-3b4c2dc71c8c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('269e267c-cf57-5607-8f05-0f0f54a0333c', 1), 'e9514bccd92c48fd16df0cbc193292e948b386a1db00a9912d157af89225a633',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/dc73605b19675fde4130186eecf94d2631cf2a0e388a745222baf2a5d28ce473.mp3', 3369, '2026-09-13 17:57:26.323674', '35026c7fead441986094d39f7b996e5ae221de3730fe1e2aa7defda66796d222', 'validated', '{"audio_key":"dc73605b19675fde4130186eecf94d2631cf2a0e388a745222baf2a5d28ce473","entity_key":"e_conditions_and_consequences_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"35026c7fead441986094d39f7b996e5ae221de3730fe1e2aa7defda66796d222","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/dc73605b19675fde4130186eecf94d2631cf2a0e388a745222baf2a5d28ce473.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_social_nuance_03 -> audio/generated/tr-TR/utterances/dc83383fdc43f2ec0909cef6f08d1fce1648a9b710ea05af30a5bfda9b56ac1d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('648867ad-66a1-5827-ab71-e6ecbe56dd40', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_social_nuance_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '221497a93128a6f668fed6d8962e7aa1425ba0a4a7bbf0848774732453025c6b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('80be594e-b884-59ad-ab70-0e73467d6208', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('648867ad-66a1-5827-ab71-e6ecbe56dd40', 1), '221497a93128a6f668fed6d8962e7aa1425ba0a4a7bbf0848774732453025c6b',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/dc83383fdc43f2ec0909cef6f08d1fce1648a9b710ea05af30a5bfda9b56ac1d.mp3', 1697, '2026-09-13 17:57:26.848266', '5677cbfa67a88c281d23fd476dc136e91e377c2dd2c265c61c099288fe769aa1', 'validated', '{"audio_key":"dc83383fdc43f2ec0909cef6f08d1fce1648a9b710ea05af30a5bfda9b56ac1d","entity_key":"u_social_nuance_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5677cbfa67a88c281d23fd476dc136e91e377c2dd2c265c61c099288fe769aa1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/dc83383fdc43f2ec0909cef6f08d1fce1648a9b710ea05af30a5bfda9b56ac1d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_media_and_sources_03 -> audio/generated/tr-TR/utterances/e02f571600f109cf1eb448b1c77bae42ae2491b2e97383602218feb13eba7405.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3ca71b76-3dd8-54bf-a43f-884d24ab85db', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_media_and_sources_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'afad1f4be63684f4e63c75dff77aa92f550a847085b068470b203fb92638a935'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8ab3296a-c5af-58a5-865c-0366577510b1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3ca71b76-3dd8-54bf-a43f-884d24ab85db', 1), 'afad1f4be63684f4e63c75dff77aa92f550a847085b068470b203fb92638a935',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/e02f571600f109cf1eb448b1c77bae42ae2491b2e97383602218feb13eba7405.mp3', 2533, '2026-09-13 17:57:27.421764', 'ad3c5cd583e28041a532f341de24673d102a3423a3f545faf496a7d0764ff268', 'validated', '{"audio_key":"e02f571600f109cf1eb448b1c77bae42ae2491b2e97383602218feb13eba7405","entity_key":"u_media_and_sources_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ad3c5cd583e28041a532f341de24673d102a3423a3f545faf496a7d0764ff268","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/e02f571600f109cf1eb448b1c77bae42ae2491b2e97383602218feb13eba7405.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_conditions_and_consequences_03 -> audio/generated/tr-TR/utterances/e0321d6d46c1bfc23d2a6a1325de460afde7621a847afc090f892da831ff2a92.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8f6bf153-3348-58f4-af72-c04c986c8050', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_conditions_and_consequences_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1bb0b591048bf6261c585f0e2d83a34f574aa952e0e7a7f6bcb0dcf00569ee53'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('af84d97f-1d3f-5038-b3de-c0cf4c01675d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8f6bf153-3348-58f4-af72-c04c986c8050', 1), '1bb0b591048bf6261c585f0e2d83a34f574aa952e0e7a7f6bcb0dcf00569ee53',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/e0321d6d46c1bfc23d2a6a1325de460afde7621a847afc090f892da831ff2a92.mp3', 1802, '2026-09-13 17:57:27.923920', '54f64695ebb4c99b883a709a0fcfd5b3f544f2e8921a193ae4303b2448860e19', 'validated', '{"audio_key":"e0321d6d46c1bfc23d2a6a1325de460afde7621a847afc090f892da831ff2a92","entity_key":"u_conditions_and_consequences_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"54f64695ebb4c99b883a709a0fcfd5b3f544f2e8921a193ae4303b2448860e19","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/e0321d6d46c1bfc23d2a6a1325de460afde7621a847afc090f892da831ff2a92.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_social_nuance_01 -> audio/generated/tr-TR/utterances/e07dff28b36fb52605fc05e3da4e1c3ee2f2c43f4fa2473ebd82274439cda8bc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f5bd660a-93a9-5b25-946f-b67cba2858d6', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_social_nuance_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '75d9676463c9678173e7f72e63f1bde49c483de6c056463edadb19778b340b65'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9a9f43f4-ee8a-57bf-887c-1ff529082efa', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f5bd660a-93a9-5b25-946f-b67cba2858d6', 1), '75d9676463c9678173e7f72e63f1bde49c483de6c056463edadb19778b340b65',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/e07dff28b36fb52605fc05e3da4e1c3ee2f2c43f4fa2473ebd82274439cda8bc.mp3', 2507, '2026-09-13 17:57:28.489748', '26e696238db92327efb9ea9bb149489fbf497b2d9bf901a91a284a4e43aa3429', 'validated', '{"audio_key":"e07dff28b36fb52605fc05e3da4e1c3ee2f2c43f4fa2473ebd82274439cda8bc","entity_key":"u_social_nuance_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"26e696238db92327efb9ea9bb149489fbf497b2d9bf901a91a284a4e43aa3429","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/e07dff28b36fb52605fc05e3da4e1c3ee2f2c43f4fa2473ebd82274439cda8bc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_opinions_and_evidence_02 -> audio/generated/tr-TR/utterances/e15eb061b3fe7a19b1712ae188472efc2ba9667b9dfe6dfca78daeed68b744c6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('461903bb-e3c0-5696-a53c-8cc53243925d', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_opinions_and_evidence_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd8b0d5a1ba698aef8f31c04be2e7df2af08bca71e10b46da7ae9d552f4a5dbec'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9e095739-9073-51d7-9d42-ca3fe2ad0b97', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('461903bb-e3c0-5696-a53c-8cc53243925d', 1), 'd8b0d5a1ba698aef8f31c04be2e7df2af08bca71e10b46da7ae9d552f4a5dbec',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/e15eb061b3fe7a19b1712ae188472efc2ba9667b9dfe6dfca78daeed68b744c6.mp3', 1985, '2026-09-13 17:57:28.936339', '13d2b63928806f5203702403a95f346373e3bd909d7c278237a553ef3f7d4e4d', 'validated', '{"audio_key":"e15eb061b3fe7a19b1712ae188472efc2ba9667b9dfe6dfca78daeed68b744c6","entity_key":"u_opinions_and_evidence_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"13d2b63928806f5203702403a95f346373e3bd909d7c278237a553ef3f7d4e4d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/e15eb061b3fe7a19b1712ae188472efc2ba9667b9dfe6dfca78daeed68b744c6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_opinions_and_evidence_01_listen -> audio/generated/tr-TR/utterances/e15eb061b3fe7a19b1712ae188472efc2ba9667b9dfe6dfca78daeed68b744c6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('4182347e-bd6c-512c-9c10-f27d3d536d6a', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_opinions_and_evidence_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd8b0d5a1ba698aef8f31c04be2e7df2af08bca71e10b46da7ae9d552f4a5dbec'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d50419a6-7147-5342-897f-ebe7edabe052', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('4182347e-bd6c-512c-9c10-f27d3d536d6a', 1), 'd8b0d5a1ba698aef8f31c04be2e7df2af08bca71e10b46da7ae9d552f4a5dbec',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/e15eb061b3fe7a19b1712ae188472efc2ba9667b9dfe6dfca78daeed68b744c6.mp3', 1985, '2026-09-13 17:57:28.936339', '13d2b63928806f5203702403a95f346373e3bd909d7c278237a553ef3f7d4e4d', 'validated', '{"audio_key":"e15eb061b3fe7a19b1712ae188472efc2ba9667b9dfe6dfca78daeed68b744c6","entity_key":"e_opinions_and_evidence_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"13d2b63928806f5203702403a95f346373e3bd909d7c278237a553ef3f7d4e4d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/e15eb061b3fe7a19b1712ae188472efc2ba9667b9dfe6dfca78daeed68b744c6.mp3"}'
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

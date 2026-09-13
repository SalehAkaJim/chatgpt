-- Generated audio link import for tr-TR C2
-- Source manifest: audio/manifests/tr/C2.json
-- Generated rows: 260
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'tr' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'tr-TR' LIMIT 1);
START TRANSACTION;

-- d_multi_source_synthesis_02:1 -> audio/generated/tr-TR/dialogues/00a4a40ad4484aa93d091e953431d73997fa72dee8e74f1bf9f89f25b8acf358.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('71016804-914d-5bc8-972c-2660d935ceab', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_multi_source_synthesis_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7c75734f2bf8859631e7ec634201ac571ef87e4fe7a3d4d81ed93040f0de4e4e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('67dae614-0c40-53cb-933b-3e7abcbc5652', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('71016804-914d-5bc8-972c-2660d935ceab', 1), '7c75734f2bf8859631e7ec634201ac571ef87e4fe7a3d4d81ed93040f0de4e4e',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/00a4a40ad4484aa93d091e953431d73997fa72dee8e74f1bf9f89f25b8acf358.mp3', 3474, '2026-09-13 20:01:23.344737', '367871b4a8535aff17b477dc634174662c2616021bd96a462d0b5832af360e32', 'validated', '{"audio_key":"00a4a40ad4484aa93d091e953431d73997fa72dee8e74f1bf9f89f25b8acf358","entity_key":"d_multi_source_synthesis_02:1","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"367871b4a8535aff17b477dc634174662c2616021bd96a462d0b5832af360e32","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/00a4a40ad4484aa93d091e953431d73997fa72dee8e74f1bf9f89f25b8acf358.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_semantic_boundaries_01:2 -> audio/generated/tr-TR/dialogues/031548dc179e730643a399e52a53c86a5dc01c606e6e8b9eb6f8bb632c915d26.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b5813325-4f49-57f9-a66f-1792611b5821', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_semantic_boundaries_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8725178d8eb22c42c0e8d43026d8285276180a63e4f2892bc20a2266593329ad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b5296dc7-b609-5009-8b84-d5ae9a011ce2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b5813325-4f49-57f9-a66f-1792611b5821', 1), '8725178d8eb22c42c0e8d43026d8285276180a63e4f2892bc20a2266593329ad',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/031548dc179e730643a399e52a53c86a5dc01c606e6e8b9eb6f8bb632c915d26.mp3', 2455, '2026-09-13 20:01:23.296535', '9a092da3252f9ee9ebc6017d9e0e17f254b7422d5fb4a22179b0c830beaf87f8', 'validated', '{"audio_key":"031548dc179e730643a399e52a53c86a5dc01c606e6e8b9eb6f8bb632c915d26","entity_key":"d_semantic_boundaries_01:2","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9a092da3252f9ee9ebc6017d9e0e17f254b7422d5fb4a22179b0c830beaf87f8","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/031548dc179e730643a399e52a53c86a5dc01c606e6e8b9eb6f8bb632c915d26.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_rhetorical_compression_02:1 -> audio/generated/tr-TR/dialogues/038f8900871200e2baeb1ab176081c407908e4af428ed31df8f33faebbd080df.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('79bb8239-f1be-5fed-8952-b325059f41be', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_rhetorical_compression_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9909f7595095e7d90208dbd1ccb678a479b81e410f7b38a3e51e64b35513eb91'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0cf82d45-84e0-5c4e-b541-eca09a3e0848', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('79bb8239-f1be-5fed-8952-b325059f41be', 1), '9909f7595095e7d90208dbd1ccb678a479b81e410f7b38a3e51e64b35513eb91',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/038f8900871200e2baeb1ab176081c407908e4af428ed31df8f33faebbd080df.mp3', 4257, '2026-09-13 20:01:24.793207', '3b6b6996ee297491a44c6581144d4d9401c081de96af6346cf5458245fa79e5c', 'validated', '{"audio_key":"038f8900871200e2baeb1ab176081c407908e4af428ed31df8f33faebbd080df","entity_key":"d_rhetorical_compression_02:1","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3b6b6996ee297491a44c6581144d4d9401c081de96af6346cf5458245fa79e5c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/038f8900871200e2baeb1ab176081c407908e4af428ed31df8f33faebbd080df.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_multi_source_synthesis_01:2 -> audio/generated/tr-TR/dialogues/05775e7eb5b436218c66cd25f26dc87a12119d9c747e6408c49696647aeea606.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7c7e8932-defa-5659-9ad1-bdf3b67fff20', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_multi_source_synthesis_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd4e5095418698dff91bde9f8935df6a1f8d9bd4497f323a66471c5ebdae16439'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8e46412a-0495-5616-b64d-453891278f76', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7c7e8932-defa-5659-9ad1-bdf3b67fff20', 1), 'd4e5095418698dff91bde9f8935df6a1f8d9bd4497f323a66471c5ebdae16439',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/05775e7eb5b436218c66cd25f26dc87a12119d9c747e6408c49696647aeea606.mp3', 4780, '2026-09-13 20:01:24.811628', 'a9416eef9ac1ae47e425373f5c194acc89145c796020cebcf622d24b54698177', 'validated', '{"audio_key":"05775e7eb5b436218c66cd25f26dc87a12119d9c747e6408c49696647aeea606","entity_key":"d_multi_source_synthesis_01:2","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"a9416eef9ac1ae47e425373f5c194acc89145c796020cebcf622d24b54698177","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/05775e7eb5b436218c66cd25f26dc87a12119d9c747e6408c49696647aeea606.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_rhetorical_compression_02:3 -> audio/generated/tr-TR/dialogues/0e05ad419a60a774e7edf50960fa70dd5a4de5b4b3b441cdd4b554f02b90d25f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d4357808-f8ab-5f23-8490-c320c23da37b', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_rhetorical_compression_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '935521315794acd19e34ca59710b585e19bfdfee494848669e24120f05707ce3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('601fef0c-c6ae-51da-9053-bea0a423f2ca', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d4357808-f8ab-5f23-8490-c320c23da37b', 1), '935521315794acd19e34ca59710b585e19bfdfee494848669e24120f05707ce3',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/0e05ad419a60a774e7edf50960fa70dd5a4de5b4b3b441cdd4b554f02b90d25f.mp3', 2586, '2026-09-13 20:01:26.015714', '298913ad16d55017c91d5c11f1b501302faf007a8441bf02d6170566546eb277', 'validated', '{"audio_key":"0e05ad419a60a774e7edf50960fa70dd5a4de5b4b3b441cdd4b554f02b90d25f","entity_key":"d_rhetorical_compression_02:3","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"298913ad16d55017c91d5c11f1b501302faf007a8441bf02d6170566546eb277","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/0e05ad419a60a774e7edf50960fa70dd5a4de5b4b3b441cdd4b554f02b90d25f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_epistemic_layering_01:4 -> audio/generated/tr-TR/dialogues/104ce81618765e5188c1d102f276d0a5bef5885134fe39ceb79b6fc50369011b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5319dd08-27c8-58ea-b4a0-892bbee2969b', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_epistemic_layering_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7516a60339bc1e9c19ad57001e8ca19ebcd72496dc9ef03ce1d7da2292f2d55b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('11ace762-3433-5567-b44d-f5ecca07f4a2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5319dd08-27c8-58ea-b4a0-892bbee2969b', 1), '7516a60339bc1e9c19ad57001e8ca19ebcd72496dc9ef03ce1d7da2292f2d55b',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/104ce81618765e5188c1d102f276d0a5bef5885134fe39ceb79b6fc50369011b.mp3', 3108, '2026-09-13 20:01:26.083241', '4a3728bd4c0a91c6687a386a172bae902570c8a17e64e7bbd56082d1cf1c11ac', 'validated', '{"audio_key":"104ce81618765e5188c1d102f276d0a5bef5885134fe39ceb79b6fc50369011b","entity_key":"d_epistemic_layering_01:4","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4a3728bd4c0a91c6687a386a172bae902570c8a17e64e7bbd56082d1cf1c11ac","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/104ce81618765e5188c1d102f276d0a5bef5885134fe39ceb79b6fc50369011b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_live_reformulation_02:2 -> audio/generated/tr-TR/dialogues/11cec089a0103a48c5faab8de095cc531f31a7e81116fa346fd0891813faa64d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cdbdb43c-bef7-5fad-bdb1-18a7501ae15d', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_live_reformulation_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '67bbf720a28d6cab5dc055c1bed745cca4af4436251b1c27fbc27a47ec99404c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f92ec5df-9d23-5a27-8787-f750731dcb14', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cdbdb43c-bef7-5fad-bdb1-18a7501ae15d', 1), '67bbf720a28d6cab5dc055c1bed745cca4af4436251b1c27fbc27a47ec99404c',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/11cec089a0103a48c5faab8de095cc531f31a7e81116fa346fd0891813faa64d.mp3', 2037, '2026-09-13 20:01:27.054635', '565a396aac525646e6b3a55d1c51120917ce28f3cf0641a4ad9c1aefd51c2dba', 'validated', '{"audio_key":"11cec089a0103a48c5faab8de095cc531f31a7e81116fa346fd0891813faa64d","entity_key":"d_live_reformulation_02:2","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"565a396aac525646e6b3a55d1c51120917ce28f3cf0641a4ad9c1aefd51c2dba","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/11cec089a0103a48c5faab8de095cc531f31a7e81116fa346fd0891813faa64d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_rhetorical_compression_01:3 -> audio/generated/tr-TR/dialogues/12438861521544fe33b55a62127aa28e85c7d4421feef62cb8bc0e055c1fc13d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dcd18ddb-2999-5776-b67e-fc135798f128', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_rhetorical_compression_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8189e1fee1f8861d75a0704014eb547a866b42e3ca980b8c64fc8952bbfd33e2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('60b59ef8-80aa-5751-9ae7-dc085bbf4cf7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dcd18ddb-2999-5776-b67e-fc135798f128', 1), '8189e1fee1f8861d75a0704014eb547a866b42e3ca980b8c64fc8952bbfd33e2',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/12438861521544fe33b55a62127aa28e85c7d4421feef62cb8bc0e055c1fc13d.mp3', 2272, '2026-09-13 20:01:27.313962', '418db5e80f4ccd511f39d67040ff061c797160b5f49719e8500e1f6891d4a26c', 'validated', '{"audio_key":"12438861521544fe33b55a62127aa28e85c7d4421feef62cb8bc0e055c1fc13d","entity_key":"d_rhetorical_compression_01:3","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"418db5e80f4ccd511f39d67040ff061c797160b5f49719e8500e1f6891d4a26c","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/12438861521544fe33b55a62127aa28e85c7d4421feef62cb8bc0e055c1fc13d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_semantic_boundaries_02:1 -> audio/generated/tr-TR/dialogues/14ce31f794ac7a0f85262b09b8b223800f11967fbc23811ccda90446e8418325.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1b59f9cc-088a-553b-b764-ee5948c94cd7', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_semantic_boundaries_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6ff4d3591886cb696a81c9c88187614200b2f7838764d752557e183de9feeff9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('77cb96a7-d3a4-5393-90cb-39318ae6494e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1b59f9cc-088a-553b-b764-ee5948c94cd7', 1), '6ff4d3591886cb696a81c9c88187614200b2f7838764d752557e183de9feeff9',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/14ce31f794ac7a0f85262b09b8b223800f11967fbc23811ccda90446e8418325.mp3', 2220, '2026-09-13 20:01:28.241212', 'e2e022140e03e2e2b6916e8cd5474fbfe33fe0e165c3917c9089d75fbf2a9db2', 'validated', '{"audio_key":"14ce31f794ac7a0f85262b09b8b223800f11967fbc23811ccda90446e8418325","entity_key":"d_semantic_boundaries_02:1","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e2e022140e03e2e2b6916e8cd5474fbfe33fe0e165c3917c9089d75fbf2a9db2","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/14ce31f794ac7a0f85262b09b8b223800f11967fbc23811ccda90446e8418325.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_rhetorical_compression_02:2 -> audio/generated/tr-TR/dialogues/16c620397e9acf7097f3efa9fd569ee10a18ee244f21d3274ee6442a49b026e8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e140a179-b2b6-5a6b-998c-0667e33eca5c', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_rhetorical_compression_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'db82ad15a0d73d23e559e65a9d49ee1f61f5bf57b76c0e4b3f470ff06049b4b6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d6422bfb-c32e-537a-845d-77754b5cacbf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e140a179-b2b6-5a6b-998c-0667e33eca5c', 1), 'db82ad15a0d73d23e559e65a9d49ee1f61f5bf57b76c0e4b3f470ff06049b4b6',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/16c620397e9acf7097f3efa9fd569ee10a18ee244f21d3274ee6442a49b026e8.mp3', 2324, '2026-09-13 20:01:28.405309', '966a0cbe59179a47b0c2a5541e0067d8cb7dee3670f9766dac94fadc55b8cba2', 'validated', '{"audio_key":"16c620397e9acf7097f3efa9fd569ee10a18ee244f21d3274ee6442a49b026e8","entity_key":"d_rhetorical_compression_02:2","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"966a0cbe59179a47b0c2a5541e0067d8cb7dee3670f9766dac94fadc55b8cba2","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/16c620397e9acf7097f3efa9fd569ee10a18ee244f21d3274ee6442a49b026e8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_implicature_and_pragmatics_02:2 -> audio/generated/tr-TR/dialogues/1738ac8831b15f80f02680475030807df36e2a1b71338b6bef0150b6c2d34658.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8a6a34ae-d05a-5371-b412-9b56ee2817de', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_implicature_and_pragmatics_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b18b2ed4f58ea014bdccc9622b1c7324b6041dcb9d7b8569bae350448b53d3af'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('02c429b0-1ab4-5dde-a7d4-cb6eff2d14f9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8a6a34ae-d05a-5371-b412-9b56ee2817de', 1), 'b18b2ed4f58ea014bdccc9622b1c7324b6041dcb9d7b8569bae350448b53d3af',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/1738ac8831b15f80f02680475030807df36e2a1b71338b6bef0150b6c2d34658.mp3', 3604, '2026-09-13 20:01:29.572644', '8304cab439158ea8d41ed10498c71ef915da789eec149dbb4f03d3eae08ae3fe', 'validated', '{"audio_key":"1738ac8831b15f80f02680475030807df36e2a1b71338b6bef0150b6c2d34658","entity_key":"d_implicature_and_pragmatics_02:2","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8304cab439158ea8d41ed10498c71ef915da789eec149dbb4f03d3eae08ae3fe","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/1738ac8831b15f80f02680475030807df36e2a1b71338b6bef0150b6c2d34658.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_legal_institutional_nuance_02:2 -> audio/generated/tr-TR/dialogues/1a5dd31608f1dd6fa63b390399605e1630173001d9f0cff23a05ce21a49305e7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f33aeafe-cb5f-53de-b5e8-8d62aa3b5a5d', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_legal_institutional_nuance_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0ad7f258f0674f1e330e3ab11c5195f6aacf21faaccc36f73c41895f7d94b149'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b0c338f3-9f44-5bbb-811b-9fa2e5a83569', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f33aeafe-cb5f-53de-b5e8-8d62aa3b5a5d', 1), '0ad7f258f0674f1e330e3ab11c5195f6aacf21faaccc36f73c41895f7d94b149',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/1a5dd31608f1dd6fa63b390399605e1630173001d9f0cff23a05ce21a49305e7.mp3', 3474, '2026-09-13 20:01:29.602729', '8e77bee6b159a531d8e84544621435e31221b7ffd3b665bea6f6fc7aa889d4e8', 'validated', '{"audio_key":"1a5dd31608f1dd6fa63b390399605e1630173001d9f0cff23a05ce21a49305e7","entity_key":"d_legal_institutional_nuance_02:2","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8e77bee6b159a531d8e84544621435e31221b7ffd3b665bea6f6fc7aa889d4e8","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/1a5dd31608f1dd6fa63b390399605e1630173001d9f0cff23a05ce21a49305e7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cross_framework_mediation_02:1 -> audio/generated/tr-TR/dialogues/1ca679a6e170e72cc34694505ef8bb181af158421df64f9b409fa5bb36e360a5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7058ce9b-ee40-5796-8383-edb4f09f7635', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cross_framework_mediation_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f986f5aa818b9a0717c3b9face60837a09f4730eaed801af290b80dbd84a496c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('53025777-a587-5f57-9754-c892b0a11dec', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7058ce9b-ee40-5796-8383-edb4f09f7635', 1), 'f986f5aa818b9a0717c3b9face60837a09f4730eaed801af290b80dbd84a496c',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/1ca679a6e170e72cc34694505ef8bb181af158421df64f9b409fa5bb36e360a5.mp3', 3657, '2026-09-13 20:01:30.805757', '5813f4a6536fa05266d36eea4e71e9f882d6ecf7549a8705b05d3a5c904029de', 'validated', '{"audio_key":"1ca679a6e170e72cc34694505ef8bb181af158421df64f9b409fa5bb36e360a5","entity_key":"d_cross_framework_mediation_02:1","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5813f4a6536fa05266d36eea4e71e9f882d6ecf7549a8705b05d3a5c904029de","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/1ca679a6e170e72cc34694505ef8bb181af158421df64f9b409fa5bb36e360a5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_epistemic_layering_02:3 -> audio/generated/tr-TR/dialogues/1d02948c70d4e592f62ddeaa8cadfc41ffd9dbb966c2e35be85e26ca49105ead.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('01957fb2-584e-5d7b-b34d-17b38b6b28e5', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_epistemic_layering_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ee0713f07f14bbaa5d688b1272ae5f0feec2f4519015ceb24e5b9463615b561f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6b600766-6510-57f7-afe0-98378d77d4f9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('01957fb2-584e-5d7b-b34d-17b38b6b28e5', 1), 'ee0713f07f14bbaa5d688b1272ae5f0feec2f4519015ceb24e5b9463615b561f',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/1d02948c70d4e592f62ddeaa8cadfc41ffd9dbb966c2e35be85e26ca49105ead.mp3', 2507, '2026-09-13 20:01:30.741082', '56b237e9e8d348ddc9b688107f04562796d20c8e854899b231f9e3c024f0a5d5', 'validated', '{"audio_key":"1d02948c70d4e592f62ddeaa8cadfc41ffd9dbb966c2e35be85e26ca49105ead","entity_key":"d_epistemic_layering_02:3","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"56b237e9e8d348ddc9b688107f04562796d20c8e854899b231f9e3c024f0a5d5","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/1d02948c70d4e592f62ddeaa8cadfc41ffd9dbb966c2e35be85e26ca49105ead.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_multi_source_synthesis_02:2 -> audio/generated/tr-TR/dialogues/1d239b644b15ca74f6559204c0d32e7dcd117b4c921eabc19cb1fc8fae09ee67.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f55d1426-ef3d-5922-8a76-27a40a56161d', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_multi_source_synthesis_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '64406846604ae6d191cda830319439fb13a68d48f9b419b8739946e737c64c4f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7605dda5-f437-5808-a54b-57ce5385c4bd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f55d1426-ef3d-5922-8a76-27a40a56161d', 1), '64406846604ae6d191cda830319439fb13a68d48f9b419b8739946e737c64c4f',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/1d239b644b15ca74f6559204c0d32e7dcd117b4c921eabc19cb1fc8fae09ee67.mp3', 4022, '2026-09-13 20:01:32.042369', '866d997a73ded9fcf64881571428764e57d0081a17735ef587470ebbda3b6802', 'validated', '{"audio_key":"1d239b644b15ca74f6559204c0d32e7dcd117b4c921eabc19cb1fc8fae09ee67","entity_key":"d_multi_source_synthesis_02:2","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"866d997a73ded9fcf64881571428764e57d0081a17735ef587470ebbda3b6802","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/1d239b644b15ca74f6559204c0d32e7dcd117b4c921eabc19cb1fc8fae09ee67.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_counterfactual_causality_01:2 -> audio/generated/tr-TR/dialogues/20f2782dfd406ec49a3ffd77193c07d85bad4cfb16193db90a48657edeb2d017.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c06a7fc8-6e45-5179-9676-1fabaf0bc50d', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_counterfactual_causality_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aac9da7f851f18de8de738e0660b0df1335a8792b407642c5dd78c9b3f9dba5c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c2da90b6-589f-5f6e-b03f-4e8e57d211c1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c06a7fc8-6e45-5179-9676-1fabaf0bc50d', 1), 'aac9da7f851f18de8de738e0660b0df1335a8792b407642c5dd78c9b3f9dba5c',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/20f2782dfd406ec49a3ffd77193c07d85bad4cfb16193db90a48657edeb2d017.mp3', 3578, '2026-09-13 20:01:32.036138', 'a117a9a21c05837453490036a548494e9d1add2e32aef4507d6d6c624b0f96d9', 'validated', '{"audio_key":"20f2782dfd406ec49a3ffd77193c07d85bad4cfb16193db90a48657edeb2d017","entity_key":"d_counterfactual_causality_01:2","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a117a9a21c05837453490036a548494e9d1add2e32aef4507d6d6c624b0f96d9","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/20f2782dfd406ec49a3ffd77193c07d85bad4cfb16193db90a48657edeb2d017.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_live_reformulation_01:2 -> audio/generated/tr-TR/dialogues/267bd550c04b0aabcf431dd9d89c5bb579072dabed4d123faa555be86f62b185.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0ef6512e-77ae-5467-b1fc-0833099ab1ed', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_live_reformulation_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4a819b17a4e67bb405d9429fc6c1ead494de36355cc02a8b8c1dfdf78f15df9d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4e834cbe-de65-5799-90ca-026559070e80', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0ef6512e-77ae-5467-b1fc-0833099ab1ed', 1), '4a819b17a4e67bb405d9429fc6c1ead494de36355cc02a8b8c1dfdf78f15df9d',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/267bd550c04b0aabcf431dd9d89c5bb579072dabed4d123faa555be86f62b185.mp3', 4414, '2026-09-13 20:01:33.427112', 'cbc4f566c4dc3e2310f226c2cc67da6453650819fa4defb543800cc91344263a', 'validated', '{"audio_key":"267bd550c04b0aabcf431dd9d89c5bb579072dabed4d123faa555be86f62b185","entity_key":"d_live_reformulation_01:2","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cbc4f566c4dc3e2310f226c2cc67da6453650819fa4defb543800cc91344263a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/267bd550c04b0aabcf431dd9d89c5bb579072dabed4d123faa555be86f62b185.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_implicature_and_pragmatics_01:4 -> audio/generated/tr-TR/dialogues/272b596152e92225f22ca9bd5610e054790cf54cab2807232fcc762ccf7b23be.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('33d8dd63-f440-54f2-98f1-5a20c1cd4ca4', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_implicature_and_pragmatics_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd38aeca7c288b9830bcca224a7b29ba743fd160cbd20a9f7eafab4263f9a8258'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('af75d525-11ef-5937-b585-442e0e44250d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('33d8dd63-f440-54f2-98f1-5a20c1cd4ca4', 1), 'd38aeca7c288b9830bcca224a7b29ba743fd160cbd20a9f7eafab4263f9a8258',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/272b596152e92225f22ca9bd5610e054790cf54cab2807232fcc762ccf7b23be.mp3', 3604, '2026-09-13 20:01:33.345616', 'c0a9d3367e21f9e100fa6808e8bfeb4cf3c44661045a02b252fdb4441b51fe0f', 'validated', '{"audio_key":"272b596152e92225f22ca9bd5610e054790cf54cab2807232fcc762ccf7b23be","entity_key":"d_implicature_and_pragmatics_01:4","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"c0a9d3367e21f9e100fa6808e8bfeb4cf3c44661045a02b252fdb4441b51fe0f","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/272b596152e92225f22ca9bd5610e054790cf54cab2807232fcc762ccf7b23be.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c2_expert_briefing_capstone_01:3 -> audio/generated/tr-TR/dialogues/2babb9100e506f6c038d0a0d9f26aea5b49202943600d9c20ebebdcc0a5fe4fe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f86dac03-efe6-5d4b-a806-fdc8d3907ba9', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c2_expert_briefing_capstone_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a9a1a8d1280cfcae7e47310247d40120e41da010f794ed854f7bc36a6e60a1d7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('88900ec4-551f-5b01-9402-fd7c0f325320', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f86dac03-efe6-5d4b-a806-fdc8d3907ba9', 1), 'a9a1a8d1280cfcae7e47310247d40120e41da010f794ed854f7bc36a6e60a1d7',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/2babb9100e506f6c038d0a0d9f26aea5b49202943600d9c20ebebdcc0a5fe4fe.mp3', 2873, '2026-09-13 20:01:34.522192', '8adec9c133df3ecc19cf0a9bb8cb8f15d7f4bd61921e5decb777cf1ff3e32250', 'validated', '{"audio_key":"2babb9100e506f6c038d0a0d9f26aea5b49202943600d9c20ebebdcc0a5fe4fe","entity_key":"d_c2_expert_briefing_capstone_01:3","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8adec9c133df3ecc19cf0a9bb8cb8f15d7f4bd61921e5decb777cf1ff3e32250","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/2babb9100e506f6c038d0a0d9f26aea5b49202943600d9c20ebebdcc0a5fe4fe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cross_framework_mediation_01:2 -> audio/generated/tr-TR/dialogues/2e2b5b78fe62dedff9626877b51e905497eada201b6ea0faf7fb37de0ba11972.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8073d220-ead9-556c-9dd1-ef073d899ef8', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cross_framework_mediation_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd72a45f0ef668133cc17c9df8f19236d1574c811bde5511bc1c44db81510a7fa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f6c03336-09d0-58f9-86ce-82879ef5edbe', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8073d220-ead9-556c-9dd1-ef073d899ef8', 1), 'd72a45f0ef668133cc17c9df8f19236d1574c811bde5511bc1c44db81510a7fa',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/2e2b5b78fe62dedff9626877b51e905497eada201b6ea0faf7fb37de0ba11972.mp3', 4179, '2026-09-13 20:01:34.721495', '31e92258fd064dfbc12c61a3225501805547d36870d4813ce22cadf281b1e3e5', 'validated', '{"audio_key":"2e2b5b78fe62dedff9626877b51e905497eada201b6ea0faf7fb37de0ba11972","entity_key":"d_cross_framework_mediation_01:2","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"31e92258fd064dfbc12c61a3225501805547d36870d4813ce22cadf281b1e3e5","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/2e2b5b78fe62dedff9626877b51e905497eada201b6ea0faf7fb37de0ba11972.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_legal_institutional_nuance_01:2 -> audio/generated/tr-TR/dialogues/30d5f5c50d099d468f872170d61e12ed1fa3d90af979c90a353b2c28a238677a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('967d2248-65c1-539f-859c-2186fa3ebad9', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_legal_institutional_nuance_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '448f5993ab8cfc9fde7f6f8567145ce3c674065c7902689d63aefdadd9168675'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f1258409-ec83-5466-8ffd-af23cd924790', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('967d2248-65c1-539f-859c-2186fa3ebad9', 1), '448f5993ab8cfc9fde7f6f8567145ce3c674065c7902689d63aefdadd9168675',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/30d5f5c50d099d468f872170d61e12ed1fa3d90af979c90a353b2c28a238677a.mp3', 3787, '2026-09-13 20:01:36.151219', '3f14a0ea2b2253cb1a6ea9953db08c6ef8e05285a01a9d3644b44c4b032750f9', 'validated', '{"audio_key":"30d5f5c50d099d468f872170d61e12ed1fa3d90af979c90a353b2c28a238677a","entity_key":"d_legal_institutional_nuance_01:2","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"3f14a0ea2b2253cb1a6ea9953db08c6ef8e05285a01a9d3644b44c4b032750f9","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/30d5f5c50d099d468f872170d61e12ed1fa3d90af979c90a353b2c28a238677a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c2_expert_briefing_capstone_02:4 -> audio/generated/tr-TR/dialogues/31338ee81d31caed9bba4032791531d827e6d6d78aae2c82c81c7f4367d3e26c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e8652b63-1929-59d8-b15d-383c98cf0a00', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c2_expert_briefing_capstone_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a56776c10fb45a1407ca5662549d8bb918e4d81c4564168a29c7a4fc0cb73794'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a1da122a-bb5c-56b3-8710-2287e7a9dfcb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e8652b63-1929-59d8-b15d-383c98cf0a00', 1), 'a56776c10fb45a1407ca5662549d8bb918e4d81c4564168a29c7a4fc0cb73794',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/31338ee81d31caed9bba4032791531d827e6d6d78aae2c82c81c7f4367d3e26c.mp3', 3604, '2026-09-13 20:01:35.921154', '42a053042edcf42abc7e28aa423e65bb91b5f27ba9d2bddc5d91a89e827b21a1', 'validated', '{"audio_key":"31338ee81d31caed9bba4032791531d827e6d6d78aae2c82c81c7f4367d3e26c","entity_key":"d_c2_expert_briefing_capstone_02:4","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"42a053042edcf42abc7e28aa423e65bb91b5f27ba9d2bddc5d91a89e827b21a1","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/31338ee81d31caed9bba4032791531d827e6d6d78aae2c82c81c7f4367d3e26c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c2_expert_briefing_capstone_01:1 -> audio/generated/tr-TR/dialogues/3389fb684d55c9f4208498e153b4bd65c301e8ede880920e7738f9f2eedfd6f7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cb4c6290-0d2f-52ba-b26a-74b7a1ad3535', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c2_expert_briefing_capstone_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'faafbf04f7d536e0913a526ed53baaf31e857a660420f994ae2acc3a08458778'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ab7a432d-653d-554c-944c-4033774ce948', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cb4c6290-0d2f-52ba-b26a-74b7a1ad3535', 1), 'faafbf04f7d536e0913a526ed53baaf31e857a660420f994ae2acc3a08458778',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/3389fb684d55c9f4208498e153b4bd65c301e8ede880920e7738f9f2eedfd6f7.mp3', 2533, '2026-09-13 20:01:37.067017', '1ba9bd05f6e26cb70c49f137120df28c66dd7ed828815bd2379d0ca4845613a3', 'validated', '{"audio_key":"3389fb684d55c9f4208498e153b4bd65c301e8ede880920e7738f9f2eedfd6f7","entity_key":"d_c2_expert_briefing_capstone_01:1","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1ba9bd05f6e26cb70c49f137120df28c66dd7ed828815bd2379d0ca4845613a3","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/3389fb684d55c9f4208498e153b4bd65c301e8ede880920e7738f9f2eedfd6f7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_semantic_boundaries_01:4 -> audio/generated/tr-TR/dialogues/349ea368973fdbfb2fb546bb71fd85db57799c66732400f61553c2c2919eb4eb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('adc3ed39-adcc-5027-8fca-cb51f20946ef', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_semantic_boundaries_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c3958452235f5c6bb5f509726b8c09ba5a588730e3fd59da973a18ca0c32e8f1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c608844b-64aa-5929-b45c-33ccf5d054d6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('adc3ed39-adcc-5027-8fca-cb51f20946ef', 1), 'c3958452235f5c6bb5f509726b8c09ba5a588730e3fd59da973a18ca0c32e8f1',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/349ea368973fdbfb2fb546bb71fd85db57799c66732400f61553c2c2919eb4eb.mp3', 2403, '2026-09-13 20:01:37.213836', '1bacb7b651cf4297d5831d299f7d17253e72c193ca3cd94af86891300f405f6c', 'validated', '{"audio_key":"349ea368973fdbfb2fb546bb71fd85db57799c66732400f61553c2c2919eb4eb","entity_key":"d_semantic_boundaries_01:4","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1bacb7b651cf4297d5831d299f7d17253e72c193ca3cd94af86891300f405f6c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/349ea368973fdbfb2fb546bb71fd85db57799c66732400f61553c2c2919eb4eb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_epistemic_layering_02:1 -> audio/generated/tr-TR/dialogues/3b0b48af04809e0ed31aa430b30e2b9cb3b9e87c2a73551bf6cdc187e24fae78.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ca99296d-914e-5e2e-83fb-7bd61c9a95ad', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_epistemic_layering_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '34afeb44bd82b712a83aaad8c158a078684da78878189d10f741e6f1acc4d69b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('97f707b3-6b22-554e-b5e6-381e90c9afaf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ca99296d-914e-5e2e-83fb-7bd61c9a95ad', 1), '34afeb44bd82b712a83aaad8c158a078684da78878189d10f741e6f1acc4d69b',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/3b0b48af04809e0ed31aa430b30e2b9cb3b9e87c2a73551bf6cdc187e24fae78.mp3', 3578, '2026-09-13 20:01:38.291815', '4f78e5d457d5281d99a733384818fbaefe5fbfc897cebab9dfc2886fd3de6999', 'validated', '{"audio_key":"3b0b48af04809e0ed31aa430b30e2b9cb3b9e87c2a73551bf6cdc187e24fae78","entity_key":"d_epistemic_layering_02:1","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4f78e5d457d5281d99a733384818fbaefe5fbfc897cebab9dfc2886fd3de6999","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/3b0b48af04809e0ed31aa430b30e2b9cb3b9e87c2a73551bf6cdc187e24fae78.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_epistemic_layering_01:1 -> audio/generated/tr-TR/dialogues/4894ef6d0b75883361787d048b66805f23d75cf9d099829fc293999313d2402f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cc3556a0-e405-5b7f-b15d-9166f69a49d0', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_epistemic_layering_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'efeeb0084174e5dc5d28a9d6a0b3bc67332a157ed7db98b0d3af533290a92526'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2ed21215-6aae-5caf-9256-261658d8d00b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cc3556a0-e405-5b7f-b15d-9166f69a49d0', 1), 'efeeb0084174e5dc5d28a9d6a0b3bc67332a157ed7db98b0d3af533290a92526',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/4894ef6d0b75883361787d048b66805f23d75cf9d099829fc293999313d2402f.mp3', 3578, '2026-09-13 20:01:38.425366', '94e738771f6d0bde9457f7f4edd4b1db6dcaee74c328a1407b8e1addda458416', 'validated', '{"audio_key":"4894ef6d0b75883361787d048b66805f23d75cf9d099829fc293999313d2402f","entity_key":"d_epistemic_layering_01:1","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"94e738771f6d0bde9457f7f4edd4b1db6dcaee74c328a1407b8e1addda458416","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/4894ef6d0b75883361787d048b66805f23d75cf9d099829fc293999313d2402f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_live_reformulation_02:4 -> audio/generated/tr-TR/dialogues/4cb7e54be366ca41e651190d871180aa7d008d19695203d782a7ef5abeba0a55.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('104cac86-fc23-5711-8cf3-f4cbbfc1792d', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_live_reformulation_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f1838afe604314baf97318976f92f896181936901b01078ac72792e24461ad13'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eeef87ea-7279-58f3-94b4-9acf0d7dfe5d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('104cac86-fc23-5711-8cf3-f4cbbfc1792d', 1), 'f1838afe604314baf97318976f92f896181936901b01078ac72792e24461ad13',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/4cb7e54be366ca41e651190d871180aa7d008d19695203d782a7ef5abeba0a55.mp3', 4127, '2026-09-13 20:01:39.605061', '96ba42d0f171dbe1b71ea5255f019260f466b00ed8a1d8357059fddbc6840e45', 'validated', '{"audio_key":"4cb7e54be366ca41e651190d871180aa7d008d19695203d782a7ef5abeba0a55","entity_key":"d_live_reformulation_02:4","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"96ba42d0f171dbe1b71ea5255f019260f466b00ed8a1d8357059fddbc6840e45","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/4cb7e54be366ca41e651190d871180aa7d008d19695203d782a7ef5abeba0a55.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_legal_institutional_nuance_01:3 -> audio/generated/tr-TR/dialogues/54a6b5bad0b74a07f38320bdfbc1474053910768fd3e0d49d18234f8044127af.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('50e0031e-e8e0-50a4-a6f6-dfc54fd4cdfb', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_legal_institutional_nuance_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b71040474c2700128e989ceca9a0f4a6b98c602c72625daf66fab8e4c3ed0d61'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('75009f65-2e45-5d91-9d6f-fae8d862328a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('50e0031e-e8e0-50a4-a6f6-dfc54fd4cdfb', 1), 'b71040474c2700128e989ceca9a0f4a6b98c602c72625daf66fab8e4c3ed0d61',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/54a6b5bad0b74a07f38320bdfbc1474053910768fd3e0d49d18234f8044127af.mp3', 1854, '2026-09-13 20:01:39.474607', '76e5b1d7789c8fd4291d73849c28e099e3c5a106360a138b166ab3f258a3761d', 'validated', '{"audio_key":"54a6b5bad0b74a07f38320bdfbc1474053910768fd3e0d49d18234f8044127af","entity_key":"d_legal_institutional_nuance_01:3","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"76e5b1d7789c8fd4291d73849c28e099e3c5a106360a138b166ab3f258a3761d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/54a6b5bad0b74a07f38320bdfbc1474053910768fd3e0d49d18234f8044127af.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_counterfactual_causality_01:1 -> audio/generated/tr-TR/dialogues/574360bebc0b0076b7f2e44b5e6cfa1bc19f054df80a69da09432d10859c85d0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('11c1f93a-a26d-580b-a2ce-131bb66d085d', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_counterfactual_causality_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3f5e1b7a45e2eae6d34e2cad6a4137f07e896e78b37a5eccb7276ebbce494de2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('563baedc-bb2d-5750-80a5-3f5502359167', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('11c1f93a-a26d-580b-a2ce-131bb66d085d', 1), '3f5e1b7a45e2eae6d34e2cad6a4137f07e896e78b37a5eccb7276ebbce494de2',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/574360bebc0b0076b7f2e44b5e6cfa1bc19f054df80a69da09432d10859c85d0.mp3', 3369, '2026-09-13 20:01:40.763214', '9e65c4270962e0c2adc22d3e27a64dad507205bd5a4097b9f073058ec9226770', 'validated', '{"audio_key":"574360bebc0b0076b7f2e44b5e6cfa1bc19f054df80a69da09432d10859c85d0","entity_key":"d_counterfactual_causality_01:1","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9e65c4270962e0c2adc22d3e27a64dad507205bd5a4097b9f073058ec9226770","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/574360bebc0b0076b7f2e44b5e6cfa1bc19f054df80a69da09432d10859c85d0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_counterfactual_causality_02:3 -> audio/generated/tr-TR/dialogues/5802201a44577a43c8d91539368624eec8dc5ce4fd35b4acc9554abc92e26174.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d453cd22-5b17-5dc5-a2ce-759235c5c37e', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_counterfactual_causality_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c9e71a84908f2ac34799cec552a87efb12295a80e9162e2a0979403f829aeb87'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cf1bf269-302c-57f8-af35-8530afa51cc8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d453cd22-5b17-5dc5-a2ce-759235c5c37e', 1), 'c9e71a84908f2ac34799cec552a87efb12295a80e9162e2a0979403f829aeb87',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/5802201a44577a43c8d91539368624eec8dc5ce4fd35b4acc9554abc92e26174.mp3', 2951, '2026-09-13 20:01:40.724779', '99e5ec3ed9831e7ac59cd5ddd147d048e510c18d9d404ce9ae5c92c53e121203', 'validated', '{"audio_key":"5802201a44577a43c8d91539368624eec8dc5ce4fd35b4acc9554abc92e26174","entity_key":"d_counterfactual_causality_02:3","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"99e5ec3ed9831e7ac59cd5ddd147d048e510c18d9d404ce9ae5c92c53e121203","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/5802201a44577a43c8d91539368624eec8dc5ce4fd35b4acc9554abc92e26174.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_rhetorical_compression_01:1 -> audio/generated/tr-TR/dialogues/5b9114ad08c0693f05cb0b7008bd22b7b25291d97b1e25ede26b7ed80c6f80b4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('761a0e3f-c140-50ec-a98b-5f3c59aad99c', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_rhetorical_compression_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6a4443a6ae5fc87c3bacfdead66eeb238239b7e06f1cba3061d9470a0d382c2f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('084bea37-4a96-5a4a-917a-f133c18de62f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('761a0e3f-c140-50ec-a98b-5f3c59aad99c', 1), '6a4443a6ae5fc87c3bacfdead66eeb238239b7e06f1cba3061d9470a0d382c2f',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/5b9114ad08c0693f05cb0b7008bd22b7b25291d97b1e25ede26b7ed80c6f80b4.mp3', 3474, '2026-09-13 20:01:41.935150', '62cbf014971508b47c3e667275091b6c9c3f3cdc093807fdd2faef1efd7a778b', 'validated', '{"audio_key":"5b9114ad08c0693f05cb0b7008bd22b7b25291d97b1e25ede26b7ed80c6f80b4","entity_key":"d_rhetorical_compression_01:1","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"62cbf014971508b47c3e667275091b6c9c3f3cdc093807fdd2faef1efd7a778b","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/5b9114ad08c0693f05cb0b7008bd22b7b25291d97b1e25ede26b7ed80c6f80b4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c2_expert_briefing_capstone_02:1 -> audio/generated/tr-TR/dialogues/5e024d706623a0b844f4bfef7982626038550e20951d49b4e2c667468ce87a4c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f06a48fb-9214-5f3d-bca8-ca082c72afb2', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c2_expert_briefing_capstone_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cc4d33c50748c95320ab5e1b42521548fd741de6ca0422c549502866d4804210'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cac0a0b4-7bfd-51ce-a22e-1bc7879a6dbc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f06a48fb-9214-5f3d-bca8-ca082c72afb2', 1), 'cc4d33c50748c95320ab5e1b42521548fd741de6ca0422c549502866d4804210',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/5e024d706623a0b844f4bfef7982626038550e20951d49b4e2c667468ce87a4c.mp3', 3004, '2026-09-13 20:01:41.923020', '6c4528d6052d7bb736c696a28edd0058c85454fbb7d6b9dbc3199ff5b9530d3e', 'validated', '{"audio_key":"5e024d706623a0b844f4bfef7982626038550e20951d49b4e2c667468ce87a4c","entity_key":"d_c2_expert_briefing_capstone_02:1","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6c4528d6052d7bb736c696a28edd0058c85454fbb7d6b9dbc3199ff5b9530d3e","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/5e024d706623a0b844f4bfef7982626038550e20951d49b4e2c667468ce87a4c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_rhetorical_compression_01:4 -> audio/generated/tr-TR/dialogues/60757c780afb4ef27b761c16f5c8f8b78f4050660f8cc8dbc3dfa359ed47a625.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('776673b3-1000-522a-950c-fdfc5183ca8f', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_rhetorical_compression_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6fa5d38dd8b773488f6176a3759493d6b5bcba0a642ef20f299ee9f1597f3411'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6167c469-4c70-531e-b501-c91261245a5b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('776673b3-1000-522a-950c-fdfc5183ca8f', 1), '6fa5d38dd8b773488f6176a3759493d6b5bcba0a642ef20f299ee9f1597f3411',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/60757c780afb4ef27b761c16f5c8f8b78f4050660f8cc8dbc3dfa359ed47a625.mp3', 3004, '2026-09-13 20:01:43.201484', '83d4ef59e837f19d335faebd9e74c90034db43747cafca1b9c007bb6393892d8', 'validated', '{"audio_key":"60757c780afb4ef27b761c16f5c8f8b78f4050660f8cc8dbc3dfa359ed47a625","entity_key":"d_rhetorical_compression_01:4","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"83d4ef59e837f19d335faebd9e74c90034db43747cafca1b9c007bb6393892d8","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/60757c780afb4ef27b761c16f5c8f8b78f4050660f8cc8dbc3dfa359ed47a625.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_counterfactual_causality_01:3 -> audio/generated/tr-TR/dialogues/6189d2bb81bfbaa29dc15920cedc22a5d6d92092d16bc697daa20f0b195937f1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('10954ea2-8489-5355-8b6c-d79247bef2a0', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_counterfactual_causality_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '37f6bb1ef2a3ac4fa335b73d41e298654115178ff7d5bd3e378f86fc4766df24'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('057fe24c-633a-5ea1-a432-14ba9243ad19', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('10954ea2-8489-5355-8b6c-d79247bef2a0', 1), '37f6bb1ef2a3ac4fa335b73d41e298654115178ff7d5bd3e378f86fc4766df24',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/6189d2bb81bfbaa29dc15920cedc22a5d6d92092d16bc697daa20f0b195937f1.mp3', 2925, '2026-09-13 20:01:43.080410', '9c522fd9e87b397293ee7441a82497e30be69d712e4428cfad4b2cfbc0f9c048', 'validated', '{"audio_key":"6189d2bb81bfbaa29dc15920cedc22a5d6d92092d16bc697daa20f0b195937f1","entity_key":"d_counterfactual_causality_01:3","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9c522fd9e87b397293ee7441a82497e30be69d712e4428cfad4b2cfbc0f9c048","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/6189d2bb81bfbaa29dc15920cedc22a5d6d92092d16bc697daa20f0b195937f1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_implicature_and_pragmatics_02:4 -> audio/generated/tr-TR/dialogues/6235a9a14ce388a7be72c9d539445f51968f21658756372da6ddd1c233d4715f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a60e8a56-ae0f-59d2-a83d-acebb133c758', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_implicature_and_pragmatics_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5ecee98939a2e0ae63c702e26301792b3f7498921136ddad0e06398be9d40dec'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f9bddcbd-d45c-5b94-af7d-c81259e2d10e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a60e8a56-ae0f-59d2-a83d-acebb133c758', 1), '5ecee98939a2e0ae63c702e26301792b3f7498921136ddad0e06398be9d40dec',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/6235a9a14ce388a7be72c9d539445f51968f21658756372da6ddd1c233d4715f.mp3', 3239, '2026-09-13 20:01:44.310447', 'e365803e355f42b09766d5907721d6845b316723ae8c7a10489bf2e887a9caa5', 'validated', '{"audio_key":"6235a9a14ce388a7be72c9d539445f51968f21658756372da6ddd1c233d4715f","entity_key":"d_implicature_and_pragmatics_02:4","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e365803e355f42b09766d5907721d6845b316723ae8c7a10489bf2e887a9caa5","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/6235a9a14ce388a7be72c9d539445f51968f21658756372da6ddd1c233d4715f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_live_reformulation_01:3 -> audio/generated/tr-TR/dialogues/63bf60fd9023678ccc33c4cb0e49cd6ae83864636099e670e5a28c9d4b8c127c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0dc8efcc-2f44-5c97-ba91-b8a8e50d2552', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_live_reformulation_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '57a54cb913d1cd11ee53d8ff107cf923f31e1f7cb588fe268e656017c68ce4c4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('58904109-0cf7-53ff-83a6-f0ef06fead29', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0dc8efcc-2f44-5c97-ba91-b8a8e50d2552', 1), '57a54cb913d1cd11ee53d8ff107cf923f31e1f7cb588fe268e656017c68ce4c4',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/63bf60fd9023678ccc33c4cb0e49cd6ae83864636099e670e5a28c9d4b8c127c.mp3', 3787, '2026-09-13 20:01:44.626090', '19552d0dd76899ece3bf74fb0f9bbcf454bff5f8ea5b06b3424cc6268c82daf4', 'validated', '{"audio_key":"63bf60fd9023678ccc33c4cb0e49cd6ae83864636099e670e5a28c9d4b8c127c","entity_key":"d_live_reformulation_01:3","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"19552d0dd76899ece3bf74fb0f9bbcf454bff5f8ea5b06b3424cc6268c82daf4","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/63bf60fd9023678ccc33c4cb0e49cd6ae83864636099e670e5a28c9d4b8c127c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_legal_institutional_nuance_02:1 -> audio/generated/tr-TR/dialogues/645442675b977f681f207d91447681d7dc20b13a3d1dc1d3297fc3d3da5e15f7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c0ecc972-5265-51b8-80aa-06e3872d07c5', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_legal_institutional_nuance_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '74912120b9c63668a1895c09a4776b7b1dacb520e5c7d3637de321b8c5ee2c68'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8a66100c-3e9c-5402-8f71-98fb8a9d8ce5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c0ecc972-5265-51b8-80aa-06e3872d07c5', 1), '74912120b9c63668a1895c09a4776b7b1dacb520e5c7d3637de321b8c5ee2c68',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/645442675b977f681f207d91447681d7dc20b13a3d1dc1d3297fc3d3da5e15f7.mp3', 3761, '2026-09-13 20:01:45.571128', 'f311db427079890082c6d5ba081e3be7a18f919ecc94787bc44178db81ab00b5', 'validated', '{"audio_key":"645442675b977f681f207d91447681d7dc20b13a3d1dc1d3297fc3d3da5e15f7","entity_key":"d_legal_institutional_nuance_02:1","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f311db427079890082c6d5ba081e3be7a18f919ecc94787bc44178db81ab00b5","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/645442675b977f681f207d91447681d7dc20b13a3d1dc1d3297fc3d3da5e15f7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_live_reformulation_02:1 -> audio/generated/tr-TR/dialogues/65bf779a37bb0fc9bd09c6567bcbf1326eb6bb791c2ae633cd0eae41209465c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1c231afc-757b-557d-b164-5c90b44f0ae8', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_live_reformulation_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f2b19ce185b1a5868665aef8bd64bc69035e4c867e3333651b760375f1c2973c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('abc89b37-4aec-575d-909a-708a3e6fd18e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1c231afc-757b-557d-b164-5c90b44f0ae8', 1), 'f2b19ce185b1a5868665aef8bd64bc69035e4c867e3333651b760375f1c2973c',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/65bf779a37bb0fc9bd09c6567bcbf1326eb6bb791c2ae633cd0eae41209465c8.mp3', 3291, '2026-09-13 20:01:45.821144', '5e621afacdba3809b13f23be3035ace319d998adef1b0f5629d38fd40a5a909f', 'validated', '{"audio_key":"65bf779a37bb0fc9bd09c6567bcbf1326eb6bb791c2ae633cd0eae41209465c8","entity_key":"d_live_reformulation_02:1","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5e621afacdba3809b13f23be3035ace319d998adef1b0f5629d38fd40a5a909f","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/65bf779a37bb0fc9bd09c6567bcbf1326eb6bb791c2ae633cd0eae41209465c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_live_reformulation_02:3 -> audio/generated/tr-TR/dialogues/66cc376caefad4614ba3deb92661e29146815e65334cfa482cadee601048449b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('410b6c2f-ef2a-5608-be88-68d94c61425d', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_live_reformulation_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9bd7d688fdfe2112946f374124edf75718885b009bc06da878e2d57794d45c57'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2d49d363-d429-5bb1-8a00-5d850fed89e0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('410b6c2f-ef2a-5608-be88-68d94c61425d', 1), '9bd7d688fdfe2112946f374124edf75718885b009bc06da878e2d57794d45c57',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/66cc376caefad4614ba3deb92661e29146815e65334cfa482cadee601048449b.mp3', 1985, '2026-09-13 20:01:46.818207', '535ca61fe91ac80a9261c00275c8f651f184fec42366b4d327ac7e205252ca12', 'validated', '{"audio_key":"66cc376caefad4614ba3deb92661e29146815e65334cfa482cadee601048449b","entity_key":"d_live_reformulation_02:3","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"535ca61fe91ac80a9261c00275c8f651f184fec42366b4d327ac7e205252ca12","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/66cc376caefad4614ba3deb92661e29146815e65334cfa482cadee601048449b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_counterfactual_causality_01:4 -> audio/generated/tr-TR/dialogues/6a8882dc0a7f50720120a84e3284e72223c24e9d2ea7c71938e417592f3b9f84.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0126aabf-bbae-55c0-82c6-156d1fb4c5da', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_counterfactual_causality_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5a7316095c68e91a1a9edef08510bca08852646bd94d6a0f93273ff26e446380'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('70436d55-fe8f-56f0-aaab-3d0e41ca33cc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0126aabf-bbae-55c0-82c6-156d1fb4c5da', 1), '5a7316095c68e91a1a9edef08510bca08852646bd94d6a0f93273ff26e446380',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/6a8882dc0a7f50720120a84e3284e72223c24e9d2ea7c71938e417592f3b9f84.mp3', 4022, '2026-09-13 20:01:47.091257', 'e1480e7a1b9ac85e737e4f8cdb103ef6b151ae8437cf8da52dad7ab24664a33a', 'validated', '{"audio_key":"6a8882dc0a7f50720120a84e3284e72223c24e9d2ea7c71938e417592f3b9f84","entity_key":"d_counterfactual_causality_01:4","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e1480e7a1b9ac85e737e4f8cdb103ef6b151ae8437cf8da52dad7ab24664a33a","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/6a8882dc0a7f50720120a84e3284e72223c24e9d2ea7c71938e417592f3b9f84.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_implicature_and_pragmatics_01:2 -> audio/generated/tr-TR/dialogues/6cb520459cd55c53dfff723257861ba34a09eec0ac9a3fb9233202c0d7943441.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a63bd839-4dc0-53aa-b05d-c13660e72bce', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_implicature_and_pragmatics_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3e3e1a5e641cf6223f7a017462360eebd14392502696feae4eea66cd4fead103'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3e25fc87-450e-5570-b8a4-15761469b2f7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a63bd839-4dc0-53aa-b05d-c13660e72bce', 1), '3e3e1a5e641cf6223f7a017462360eebd14392502696feae4eea66cd4fead103',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/6cb520459cd55c53dfff723257861ba34a09eec0ac9a3fb9233202c0d7943441.mp3', 3657, '2026-09-13 20:01:48.027741', 'c79635888ad216950e78d062052dc9cdba3df8ad8309380635a5d3f4c33e1e27', 'validated', '{"audio_key":"6cb520459cd55c53dfff723257861ba34a09eec0ac9a3fb9233202c0d7943441","entity_key":"d_implicature_and_pragmatics_01:2","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"c79635888ad216950e78d062052dc9cdba3df8ad8309380635a5d3f4c33e1e27","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/6cb520459cd55c53dfff723257861ba34a09eec0ac9a3fb9233202c0d7943441.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_epistemic_layering_01:2 -> audio/generated/tr-TR/dialogues/6cbd6176c1e9674e9d850bbcf0fdf564c6f1423be6c86ca7f054b5a53445b2e4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4c2440ab-3c32-5307-aa34-38855dbdb181', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_epistemic_layering_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1942383c7add11ce4139ae7bb855e33467d2d22175b050f7d0ad466653873260'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3cceda87-5f69-54b0-9442-750d159113a6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4c2440ab-3c32-5307-aa34-38855dbdb181', 1), '1942383c7add11ce4139ae7bb855e33467d2d22175b050f7d0ad466653873260',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/6cbd6176c1e9674e9d850bbcf0fdf564c6f1423be6c86ca7f054b5a53445b2e4.mp3', 3291, '2026-09-13 20:01:48.279757', 'e0fb779a2c014b4d239db9cfd595d5aa800983e4bacd8f3a335074174b287748', 'validated', '{"audio_key":"6cbd6176c1e9674e9d850bbcf0fdf564c6f1423be6c86ca7f054b5a53445b2e4","entity_key":"d_epistemic_layering_01:2","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e0fb779a2c014b4d239db9cfd595d5aa800983e4bacd8f3a335074174b287748","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/6cbd6176c1e9674e9d850bbcf0fdf564c6f1423be6c86ca7f054b5a53445b2e4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_multi_source_synthesis_01:1 -> audio/generated/tr-TR/dialogues/6db142fddba6774786045a53c7111e60c5d280f460a9158f6741f1ae50c21962.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ce35038b-793d-59af-8d60-029b0c9af747', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_multi_source_synthesis_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '68a3838b57685aaa7e7af4fcd5d285fcd21c897582838ec64bc8520a5adc5427'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('62f75255-f2b0-5784-bd7a-fb6f056270da', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ce35038b-793d-59af-8d60-029b0c9af747', 1), '68a3838b57685aaa7e7af4fcd5d285fcd21c897582838ec64bc8520a5adc5427',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/6db142fddba6774786045a53c7111e60c5d280f460a9158f6741f1ae50c21962.mp3', 5093, '2026-09-13 20:01:49.416915', '5bb718456aca61f8c4218b7631ff7676cdbd16eac4128e06aaffc80ba946d6f0', 'validated', '{"audio_key":"6db142fddba6774786045a53c7111e60c5d280f460a9158f6741f1ae50c21962","entity_key":"d_multi_source_synthesis_01:1","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5bb718456aca61f8c4218b7631ff7676cdbd16eac4128e06aaffc80ba946d6f0","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/6db142fddba6774786045a53c7111e60c5d280f460a9158f6741f1ae50c21962.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_multi_source_synthesis_01:3 -> audio/generated/tr-TR/dialogues/6e6542f1f7f1144721198338808815e7c7022411729f78ee9052e910c0d3c72a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('58a8c6d4-322a-5f49-a944-d3b0715a8f99', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_multi_source_synthesis_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7ba20abc4a5fcb2811c549eda0f0c1c0352f57bce23b3d4d004abddad1a1fb8f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4bd87e9f-3210-5210-a1b9-75881b773454', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('58a8c6d4-322a-5f49-a944-d3b0715a8f99', 1), '7ba20abc4a5fcb2811c549eda0f0c1c0352f57bce23b3d4d004abddad1a1fb8f',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/6e6542f1f7f1144721198338808815e7c7022411729f78ee9052e910c0d3c72a.mp3', 2455, '2026-09-13 20:01:49.407519', '95d500233362fb4320ac67cdafac3abb6bb785356aea787e5bed146012219f81', 'validated', '{"audio_key":"6e6542f1f7f1144721198338808815e7c7022411729f78ee9052e910c0d3c72a","entity_key":"d_multi_source_synthesis_01:3","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"95d500233362fb4320ac67cdafac3abb6bb785356aea787e5bed146012219f81","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/6e6542f1f7f1144721198338808815e7c7022411729f78ee9052e910c0d3c72a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_legal_institutional_nuance_01:4 -> audio/generated/tr-TR/dialogues/6ec23f302d69d7de0afeb960656735f8377bae3ee577f679013d3cd3d551f270.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7f2b32e5-2dae-55d4-a13b-5171f8d86134', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_legal_institutional_nuance_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec8db0615e50b0a5503064db4923203bee41f8107b80465051e187c569a02d70'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d380f545-acff-5c7b-a761-8a0a73872e09', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7f2b32e5-2dae-55d4-a13b-5171f8d86134', 1), 'ec8db0615e50b0a5503064db4923203bee41f8107b80465051e187c569a02d70',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/6ec23f302d69d7de0afeb960656735f8377bae3ee577f679013d3cd3d551f270.mp3', 3761, '2026-09-13 20:01:50.647890', '616b414e1eca37f19698154e8d99edd8c4f5aaa0992829eaae63a234a8bef682', 'validated', '{"audio_key":"6ec23f302d69d7de0afeb960656735f8377bae3ee577f679013d3cd3d551f270","entity_key":"d_legal_institutional_nuance_01:4","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"616b414e1eca37f19698154e8d99edd8c4f5aaa0992829eaae63a234a8bef682","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/6ec23f302d69d7de0afeb960656735f8377bae3ee577f679013d3cd3d551f270.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_counterfactual_causality_02:2 -> audio/generated/tr-TR/dialogues/6f33ac2699e2a371f4302043514e2a901ff8e57cdea9ff725f7be1a17dc1ab2f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cb312729-9726-5eca-8b7c-93f2cab62c84', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_counterfactual_causality_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2fb30b552c2cd627187dd384340c0f2a433306190388be335f2350e96191a28a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('de42de3b-a258-5e96-9f82-ffbe387d3cf9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cb312729-9726-5eca-8b7c-93f2cab62c84', 1), '2fb30b552c2cd627187dd384340c0f2a433306190388be335f2350e96191a28a',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/6f33ac2699e2a371f4302043514e2a901ff8e57cdea9ff725f7be1a17dc1ab2f.mp3', 3526, '2026-09-13 20:01:50.836640', '5fa16265787638ceda103a1df36ee735400f67d92517f55863616e52287ea900', 'validated', '{"audio_key":"6f33ac2699e2a371f4302043514e2a901ff8e57cdea9ff725f7be1a17dc1ab2f","entity_key":"d_counterfactual_causality_02:2","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"5fa16265787638ceda103a1df36ee735400f67d92517f55863616e52287ea900","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/6f33ac2699e2a371f4302043514e2a901ff8e57cdea9ff725f7be1a17dc1ab2f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_legal_institutional_nuance_02:3 -> audio/generated/tr-TR/dialogues/74d693da63ef7cb66a3f0fe05eb5663ea7a8447be1f638e8cf840a5efcf6a7ec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('45c9c558-7f06-53a8-9f19-7a4aa6885281', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_legal_institutional_nuance_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b74ed5943cba96e41a2211657c0d38ffa9e76996f94a42553daa6f48c3c01367'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9a34ca1f-0265-546c-9061-ea80f98c03aa', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('45c9c558-7f06-53a8-9f19-7a4aa6885281', 1), 'b74ed5943cba96e41a2211657c0d38ffa9e76996f94a42553daa6f48c3c01367',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/74d693da63ef7cb66a3f0fe05eb5663ea7a8447be1f638e8cf840a5efcf6a7ec.mp3', 2821, '2026-09-13 20:01:51.812071', '87f4028cddf6529042777a07b608b1c971da746198dd9599b9ea217692e3dee8', 'validated', '{"audio_key":"74d693da63ef7cb66a3f0fe05eb5663ea7a8447be1f638e8cf840a5efcf6a7ec","entity_key":"d_legal_institutional_nuance_02:3","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"87f4028cddf6529042777a07b608b1c971da746198dd9599b9ea217692e3dee8","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/74d693da63ef7cb66a3f0fe05eb5663ea7a8447be1f638e8cf840a5efcf6a7ec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_semantic_boundaries_02:2 -> audio/generated/tr-TR/dialogues/777f0d1558f533f42a04ef89bd2fbb6a6694209606072e31b84bfe63a450d93c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5f5a21f9-9157-5f42-a3e7-9a2946e91cec', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_semantic_boundaries_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5c7636b885d6d4c57f5016c1bd35eee030256bd6bc8ae343c99498d7776a326e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('59d1d054-b93a-5ff5-88e2-a23a2f6b54af', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5f5a21f9-9157-5f42-a3e7-9a2946e91cec', 1), '5c7636b885d6d4c57f5016c1bd35eee030256bd6bc8ae343c99498d7776a326e',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/777f0d1558f533f42a04ef89bd2fbb6a6694209606072e31b84bfe63a450d93c.mp3', 3369, '2026-09-13 20:01:52.072294', '06d594fb237c8f2efbdd60807d65f87ffd32d3dc2bd3084a7ce2e244bbb1f886', 'validated', '{"audio_key":"777f0d1558f533f42a04ef89bd2fbb6a6694209606072e31b84bfe63a450d93c","entity_key":"d_semantic_boundaries_02:2","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"06d594fb237c8f2efbdd60807d65f87ffd32d3dc2bd3084a7ce2e244bbb1f886","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/777f0d1558f533f42a04ef89bd2fbb6a6694209606072e31b84bfe63a450d93c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cross_framework_mediation_01:4 -> audio/generated/tr-TR/dialogues/78f688dd1cd5148a32ff0cff6446db30e2614054c19cc9e0b778820b30f4864c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f0b07cbb-24a4-5e9b-9bfc-28dd935f2f3d', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cross_framework_mediation_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '90d3650fbd6e3789d85dbe8afbde103a04569468f4b470a23354c22f3246381a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d5dddee1-4f9e-57d3-8955-5bd176783c38', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f0b07cbb-24a4-5e9b-9bfc-28dd935f2f3d', 1), '90d3650fbd6e3789d85dbe8afbde103a04569468f4b470a23354c22f3246381a',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/78f688dd1cd5148a32ff0cff6446db30e2614054c19cc9e0b778820b30f4864c.mp3', 3056, '2026-09-13 20:01:52.985336', '29d4ede4da4f9770f5c2377508f91d0be72b4039e00b8c106a6b9a3d7470d3fb', 'validated', '{"audio_key":"78f688dd1cd5148a32ff0cff6446db30e2614054c19cc9e0b778820b30f4864c","entity_key":"d_cross_framework_mediation_01:4","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"29d4ede4da4f9770f5c2377508f91d0be72b4039e00b8c106a6b9a3d7470d3fb","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/78f688dd1cd5148a32ff0cff6446db30e2614054c19cc9e0b778820b30f4864c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cross_framework_mediation_02:3 -> audio/generated/tr-TR/dialogues/795e61c860f1c0ae203f2fc6b15213d66a93699918463860b337d41b89f7988a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4c129bed-af6a-5542-9f74-618741f87da3', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cross_framework_mediation_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '68c526b6bb86bcc82223a8c300725a77973d0f0d14ae297b6b4e87f1f561563a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('970c1b2d-8210-5ca9-8c3d-fa24ff0cb4c0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4c129bed-af6a-5542-9f74-618741f87da3', 1), '68c526b6bb86bcc82223a8c300725a77973d0f0d14ae297b6b4e87f1f561563a',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/795e61c860f1c0ae203f2fc6b15213d66a93699918463860b337d41b89f7988a.mp3', 3056, '2026-09-13 20:01:53.260049', '9121888f80558a572c674669c33d993547af8cbd3b8db3bf55fff7c957000c77', 'validated', '{"audio_key":"795e61c860f1c0ae203f2fc6b15213d66a93699918463860b337d41b89f7988a","entity_key":"d_cross_framework_mediation_02:3","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9121888f80558a572c674669c33d993547af8cbd3b8db3bf55fff7c957000c77","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/795e61c860f1c0ae203f2fc6b15213d66a93699918463860b337d41b89f7988a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_epistemic_layering_02:2 -> audio/generated/tr-TR/dialogues/7e178ea332ae6230b2680cd852d4e4d79e6e046bf2d5f86cf626da1d629fda93.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('faec6f10-aa14-59b3-8693-8e9ed00aaf15', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_epistemic_layering_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2844e9cca0988a0683ed061250d9c091ef041b04796e49f61d34a074b2e2b5f2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9ce8350b-b14b-5e24-8972-f153babffc08', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('faec6f10-aa14-59b3-8693-8e9ed00aaf15', 1), '2844e9cca0988a0683ed061250d9c091ef041b04796e49f61d34a074b2e2b5f2',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/7e178ea332ae6230b2680cd852d4e4d79e6e046bf2d5f86cf626da1d629fda93.mp3', 4127, '2026-09-13 20:01:54.234487', 'e8ad0efc87f1293f7e5d645ba1f03a025a1fa4c788e1a7e4b1a72b996195f5b1', 'validated', '{"audio_key":"7e178ea332ae6230b2680cd852d4e4d79e6e046bf2d5f86cf626da1d629fda93","entity_key":"d_epistemic_layering_02:2","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e8ad0efc87f1293f7e5d645ba1f03a025a1fa4c788e1a7e4b1a72b996195f5b1","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/7e178ea332ae6230b2680cd852d4e4d79e6e046bf2d5f86cf626da1d629fda93.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c2_expert_briefing_capstone_02:3 -> audio/generated/tr-TR/dialogues/8060ae0ce436af8347df444de419b462dc03d3c64b0d2b954633275858c05b0d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a4148eff-69ea-5a67-b358-33ceb8e6f217', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c2_expert_briefing_capstone_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cd99a720edf0f98c5d516ef8b08285cecc7a394bf1c213193af02f75f79331e4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0ec48893-9472-5b6b-b8f1-ac6fcb1a6ee4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a4148eff-69ea-5a67-b358-33ceb8e6f217', 1), 'cd99a720edf0f98c5d516ef8b08285cecc7a394bf1c213193af02f75f79331e4',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/8060ae0ce436af8347df444de419b462dc03d3c64b0d2b954633275858c05b0d.mp3', 3474, '2026-09-13 20:01:54.458121', '7cc0486daff26b1051d3e67af429372405a6bbafc223b5692f22fbea3fb5d1b6', 'validated', '{"audio_key":"8060ae0ce436af8347df444de419b462dc03d3c64b0d2b954633275858c05b0d","entity_key":"d_c2_expert_briefing_capstone_02:3","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7cc0486daff26b1051d3e67af429372405a6bbafc223b5692f22fbea3fb5d1b6","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/8060ae0ce436af8347df444de419b462dc03d3c64b0d2b954633275858c05b0d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cross_framework_mediation_02:4 -> audio/generated/tr-TR/dialogues/827aa388c33d293032c8cb568ff7a80d9b47ddb37a5755d6faf6bdc42d21dce9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0b69e99a-94b2-503a-9af4-bb5406be8ce3', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cross_framework_mediation_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2844f0c6ce0dea25a10ebf78b55b2e9d1518e44f3f24e13118a3caeae94e7b80'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('29e06b3c-0474-5aa4-88c5-a5d9d9d50a66', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0b69e99a-94b2-503a-9af4-bb5406be8ce3', 1), '2844f0c6ce0dea25a10ebf78b55b2e9d1518e44f3f24e13118a3caeae94e7b80',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/827aa388c33d293032c8cb568ff7a80d9b47ddb37a5755d6faf6bdc42d21dce9.mp3', 3892, '2026-09-13 20:01:55.554666', '77f2f8ce8da83a4e01bd8862dd144153b143b38aab1a0687ba4792916a2c77ba', 'validated', '{"audio_key":"827aa388c33d293032c8cb568ff7a80d9b47ddb37a5755d6faf6bdc42d21dce9","entity_key":"d_cross_framework_mediation_02:4","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"77f2f8ce8da83a4e01bd8862dd144153b143b38aab1a0687ba4792916a2c77ba","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/827aa388c33d293032c8cb568ff7a80d9b47ddb37a5755d6faf6bdc42d21dce9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_rhetorical_compression_01:2 -> audio/generated/tr-TR/dialogues/89bdac4759c8312230f3f8a01ff8e9e6be25feb1d783c928ab0d0746c83dcac0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9aa6df76-4ef2-51e6-b808-d6d1e8937c27', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_rhetorical_compression_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aa4b5984923c6eb371ff91342658a9003c537631e050778431d038bbcc7ac773'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('13ef6123-ef25-59fa-a998-334496e09c61', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9aa6df76-4ef2-51e6-b808-d6d1e8937c27', 1), 'aa4b5984923c6eb371ff91342658a9003c537631e050778431d038bbcc7ac773',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/89bdac4759c8312230f3f8a01ff8e9e6be25feb1d783c928ab0d0746c83dcac0.mp3', 3160, '2026-09-13 20:01:55.700475', '4a73e080607ba9f7bf481a09c78f7110e9b8d30e834d70d14e0350c996608fca', 'validated', '{"audio_key":"89bdac4759c8312230f3f8a01ff8e9e6be25feb1d783c928ab0d0746c83dcac0","entity_key":"d_rhetorical_compression_01:2","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4a73e080607ba9f7bf481a09c78f7110e9b8d30e834d70d14e0350c996608fca","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/89bdac4759c8312230f3f8a01ff8e9e6be25feb1d783c928ab0d0746c83dcac0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_semantic_boundaries_01:3 -> audio/generated/tr-TR/dialogues/9028b15ee20e580f5cf9b13211cb7a2bb664c3b77d7f4352eb81c374d07e9d61.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a938e509-3b64-556b-88f1-a4730382bd2a', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_semantic_boundaries_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e6d27a4ee7d55f39100e8b32044145418260211484c5cafdc2622698bce6a68a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9d4aa6a9-4f7a-5266-8969-b22807e1130b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a938e509-3b64-556b-88f1-a4730382bd2a', 1), 'e6d27a4ee7d55f39100e8b32044145418260211484c5cafdc2622698bce6a68a',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/9028b15ee20e580f5cf9b13211cb7a2bb664c3b77d7f4352eb81c374d07e9d61.mp3', 3944, '2026-09-13 20:01:56.804117', 'f20425cedc8b7a178e20de6608585242583eff42f9c67dfd972ca08e803ecf8c', 'validated', '{"audio_key":"9028b15ee20e580f5cf9b13211cb7a2bb664c3b77d7f4352eb81c374d07e9d61","entity_key":"d_semantic_boundaries_01:3","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f20425cedc8b7a178e20de6608585242583eff42f9c67dfd972ca08e803ecf8c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/9028b15ee20e580f5cf9b13211cb7a2bb664c3b77d7f4352eb81c374d07e9d61.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_multi_source_synthesis_02:3 -> audio/generated/tr-TR/dialogues/90fe67db0b2dc0e35970979c4dea45faa3ae04def8696feb6b85c35da8cc3e7b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('718327fa-25af-54d4-b83f-336f68adaa97', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_multi_source_synthesis_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8a6029334a348cb55192d823e9bc468a55f67c7b258ab549d1e6a54c7fe03474'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0d8e4c95-f78f-5267-b859-143e7dd5f17f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('718327fa-25af-54d4-b83f-336f68adaa97', 1), '8a6029334a348cb55192d823e9bc468a55f67c7b258ab549d1e6a54c7fe03474',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/90fe67db0b2dc0e35970979c4dea45faa3ae04def8696feb6b85c35da8cc3e7b.mp3', 3604, '2026-09-13 20:01:56.978312', 'ccd08343cae40b68f2997a74cec4fd112d8ef5345a515629301adb466ecfe56f', 'validated', '{"audio_key":"90fe67db0b2dc0e35970979c4dea45faa3ae04def8696feb6b85c35da8cc3e7b","entity_key":"d_multi_source_synthesis_02:3","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ccd08343cae40b68f2997a74cec4fd112d8ef5345a515629301adb466ecfe56f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/90fe67db0b2dc0e35970979c4dea45faa3ae04def8696feb6b85c35da8cc3e7b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_epistemic_layering_02:4 -> audio/generated/tr-TR/dialogues/9727c23e7b4de39366bb8942acdbc2c64950e2394ac0f36a7e3e34d5e3e026ed.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5e68e6c5-5b3f-560e-95a1-05a7b48701e3', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_epistemic_layering_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5a8713e869b081e5174d35d69f8ab4fd79462f2f2defb90e752236b1b9e19dc8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c6d3f6b0-f756-5582-940f-7b291745707f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5e68e6c5-5b3f-560e-95a1-05a7b48701e3', 1), '5a8713e869b081e5174d35d69f8ab4fd79462f2f2defb90e752236b1b9e19dc8',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/9727c23e7b4de39366bb8942acdbc2c64950e2394ac0f36a7e3e34d5e3e026ed.mp3', 4075, '2026-09-13 20:01:58.142775', '3e462d79d7c82f8a37d48753c2fbd3a9d11d09541c4e9302c8eac0f7606fc1d2', 'validated', '{"audio_key":"9727c23e7b4de39366bb8942acdbc2c64950e2394ac0f36a7e3e34d5e3e026ed","entity_key":"d_epistemic_layering_02:4","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3e462d79d7c82f8a37d48753c2fbd3a9d11d09541c4e9302c8eac0f7606fc1d2","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/9727c23e7b4de39366bb8942acdbc2c64950e2394ac0f36a7e3e34d5e3e026ed.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cross_framework_mediation_02:2 -> audio/generated/tr-TR/dialogues/997f87d53ff14ddfc551a0707f6d2bc64bf31de54fc3e8ea4b19d8f49eb3e5ee.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('994a5dfd-49e3-59ce-904d-7ffc1a7a4e53', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cross_framework_mediation_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'afa0e62ef122aea9c591de3f77992ca7b16d84e71e8355430996b14f839c6a3a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('63abb026-ab2b-5773-a8b2-1337707ee42e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('994a5dfd-49e3-59ce-904d-7ffc1a7a4e53', 1), 'afa0e62ef122aea9c591de3f77992ca7b16d84e71e8355430996b14f839c6a3a',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/997f87d53ff14ddfc551a0707f6d2bc64bf31de54fc3e8ea4b19d8f49eb3e5ee.mp3', 3422, '2026-09-13 20:01:58.185752', 'bff264f851c4be51572e4f0306a44d9dfc04361c6b34c0edb8016431a7496fcc', 'validated', '{"audio_key":"997f87d53ff14ddfc551a0707f6d2bc64bf31de54fc3e8ea4b19d8f49eb3e5ee","entity_key":"d_cross_framework_mediation_02:2","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"bff264f851c4be51572e4f0306a44d9dfc04361c6b34c0edb8016431a7496fcc","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/997f87d53ff14ddfc551a0707f6d2bc64bf31de54fc3e8ea4b19d8f49eb3e5ee.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_rhetorical_compression_02:4 -> audio/generated/tr-TR/dialogues/99dbe35234ed1d74dd0b2c65554c742f3feeb4ba0b9da2f8eed7b0589613e9ff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8524be76-9f75-5ae7-bf16-e33035f6137e', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_rhetorical_compression_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '845cb9c846c3dad2a51da9acd0ac10bab0bafa484d7524b450bb650de43b9958'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a4767667-dd73-521c-be8f-aff3d4d4418d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8524be76-9f75-5ae7-bf16-e33035f6137e', 1), '845cb9c846c3dad2a51da9acd0ac10bab0bafa484d7524b450bb650de43b9958',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/99dbe35234ed1d74dd0b2c65554c742f3feeb4ba0b9da2f8eed7b0589613e9ff.mp3', 2821, '2026-09-13 20:01:59.307043', 'cf5ba60973e86c6738ace3038a33d73098a444afcdbdaa2602bcb203360539d3', 'validated', '{"audio_key":"99dbe35234ed1d74dd0b2c65554c742f3feeb4ba0b9da2f8eed7b0589613e9ff","entity_key":"d_rhetorical_compression_02:4","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cf5ba60973e86c6738ace3038a33d73098a444afcdbdaa2602bcb203360539d3","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/99dbe35234ed1d74dd0b2c65554c742f3feeb4ba0b9da2f8eed7b0589613e9ff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_implicature_and_pragmatics_01:1 -> audio/generated/tr-TR/dialogues/9ada9291c0ebc1422ffc489b5b18863b4055eb70a4aa12a8c27374ff2a0613f5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('58c08d52-e1f0-5862-a452-b2e6a565971b', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_implicature_and_pragmatics_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b7308c03d5e75dcc66c52afc2671f078b7b0c4dbb685b50c0875f69ccaf121dd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bbf8f4e2-ad7e-5ae3-afe0-00178915f928', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('58c08d52-e1f0-5862-a452-b2e6a565971b', 1), 'b7308c03d5e75dcc66c52afc2671f078b7b0c4dbb685b50c0875f69ccaf121dd',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/9ada9291c0ebc1422ffc489b5b18863b4055eb70a4aa12a8c27374ff2a0613f5.mp3', 3239, '2026-09-13 20:01:59.364296', '5151769a5cbad13b8ab86b3de65d0a09ea8fa04658355d07cef1aa815690f562', 'validated', '{"audio_key":"9ada9291c0ebc1422ffc489b5b18863b4055eb70a4aa12a8c27374ff2a0613f5","entity_key":"d_implicature_and_pragmatics_01:1","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5151769a5cbad13b8ab86b3de65d0a09ea8fa04658355d07cef1aa815690f562","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/9ada9291c0ebc1422ffc489b5b18863b4055eb70a4aa12a8c27374ff2a0613f5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_semantic_boundaries_01:1 -> audio/generated/tr-TR/dialogues/a19622f7521e101ae369d0922a4e56c86d17a53b96344d37ba0098d708a9213f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f1c287ba-b958-5c11-9a69-e72f7ba41c32', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_semantic_boundaries_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '302bdb76a6c3643ea03e0852630d963e17519be2cd672d51c65765f8932ff48e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('58ba3dfe-3224-58fe-89c7-ed1f5670698e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f1c287ba-b958-5c11-9a69-e72f7ba41c32', 1), '302bdb76a6c3643ea03e0852630d963e17519be2cd672d51c65765f8932ff48e',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/a19622f7521e101ae369d0922a4e56c86d17a53b96344d37ba0098d708a9213f.mp3', 3578, '2026-09-13 20:02:00.557326', 'bc45a7896e5f586f5db125c8a4bc8b384c8fc9fe2919a21af866dda04d455a6f', 'validated', '{"audio_key":"a19622f7521e101ae369d0922a4e56c86d17a53b96344d37ba0098d708a9213f","entity_key":"d_semantic_boundaries_01:1","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bc45a7896e5f586f5db125c8a4bc8b384c8fc9fe2919a21af866dda04d455a6f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/a19622f7521e101ae369d0922a4e56c86d17a53b96344d37ba0098d708a9213f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_implicature_and_pragmatics_01:3 -> audio/generated/tr-TR/dialogues/a45635371a7afe557b2049696659ac41224dec8f97a3d4d6f824afa226e38331.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f3195924-8b07-5e46-a75c-49ab971cb467', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_implicature_and_pragmatics_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ede008bea49b18d5f7cfdc107ee35ec657a86e212ead3c6dd2b842e26e96ab71'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('37114992-c2fc-5ca6-a0e8-50dd8bf18065', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f3195924-8b07-5e46-a75c-49ab971cb467', 1), 'ede008bea49b18d5f7cfdc107ee35ec657a86e212ead3c6dd2b842e26e96ab71',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/a45635371a7afe557b2049696659ac41224dec8f97a3d4d6f824afa226e38331.mp3', 3056, '2026-09-13 20:02:00.541379', '908891ca2853b752b24e0ed23899090c7f5627178785d17cacdac5d607741977', 'validated', '{"audio_key":"a45635371a7afe557b2049696659ac41224dec8f97a3d4d6f824afa226e38331","entity_key":"d_implicature_and_pragmatics_01:3","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"908891ca2853b752b24e0ed23899090c7f5627178785d17cacdac5d607741977","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/a45635371a7afe557b2049696659ac41224dec8f97a3d4d6f824afa226e38331.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_implicature_and_pragmatics_02:1 -> audio/generated/tr-TR/dialogues/a523cb7c90c74dbdb0d0b982a1d6b6202ab3474169f2fe42d44202fa4419552f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fae100cb-0eb3-552f-bcc7-f799b79003d9', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_implicature_and_pragmatics_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aac63b31e57719e8407b3013592116151cef9c7aceef0b4b91e43a0b3dab850f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8729662c-d1f9-56b9-8d15-0ba3728e8e2a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fae100cb-0eb3-552f-bcc7-f799b79003d9', 1), 'aac63b31e57719e8407b3013592116151cef9c7aceef0b4b91e43a0b3dab850f',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/a523cb7c90c74dbdb0d0b982a1d6b6202ab3474169f2fe42d44202fa4419552f.mp3', 3291, '2026-09-13 20:02:01.718893', '7163cd057f3fa68279fc11930df37d9d9cf0194051db723e4454371f05bcda7f', 'validated', '{"audio_key":"a523cb7c90c74dbdb0d0b982a1d6b6202ab3474169f2fe42d44202fa4419552f","entity_key":"d_implicature_and_pragmatics_02:1","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7163cd057f3fa68279fc11930df37d9d9cf0194051db723e4454371f05bcda7f","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/a523cb7c90c74dbdb0d0b982a1d6b6202ab3474169f2fe42d44202fa4419552f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_live_reformulation_01:4 -> audio/generated/tr-TR/dialogues/a7c9edf622cad60bbc8083a92c5a0a06d94974631a3b22a292fc57905dd6311b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9960abb3-7d32-5e26-8a36-383b7735c21f', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_live_reformulation_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '44a3a0d63cda04fd46033dccd6113e4e2c31d4576b0b398f7fa33055a30a79d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('855906ac-eabf-583e-a36b-eabd791fa4b8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9960abb3-7d32-5e26-8a36-383b7735c21f', 1), '44a3a0d63cda04fd46033dccd6113e4e2c31d4576b0b398f7fa33055a30a79d1',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/a7c9edf622cad60bbc8083a92c5a0a06d94974631a3b22a292fc57905dd6311b.mp3', 2272, '2026-09-13 20:02:01.641097', 'a0bf37368c9a41a3d8f4e337b126f6f9258e52c2868da3b0dbe77e1756fbd368', 'validated', '{"audio_key":"a7c9edf622cad60bbc8083a92c5a0a06d94974631a3b22a292fc57905dd6311b","entity_key":"d_live_reformulation_01:4","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a0bf37368c9a41a3d8f4e337b126f6f9258e52c2868da3b0dbe77e1756fbd368","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/a7c9edf622cad60bbc8083a92c5a0a06d94974631a3b22a292fc57905dd6311b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c2_expert_briefing_capstone_02:2 -> audio/generated/tr-TR/dialogues/af1aeadda5261bb8e06f3c5cc1148c521e25c7638f44cd5893c611b8374042ac.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('01c33fdc-83f3-5303-a663-5b9e869132fc', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c2_expert_briefing_capstone_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ff4ac5f9caa6e52742b525c9de869bf7cba7c866f3f419e143f499cd85e9f71a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f59540a9-3978-5f2f-8522-e9cfbe1055cb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('01c33fdc-83f3-5303-a663-5b9e869132fc', 1), 'ff4ac5f9caa6e52742b525c9de869bf7cba7c866f3f419e143f499cd85e9f71a',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/af1aeadda5261bb8e06f3c5cc1148c521e25c7638f44cd5893c611b8374042ac.mp3', 2873, '2026-09-13 20:02:02.834313', '879ad20ee62fb52e3e2f66aacc4b8a6c006c6caa606548da06264654a37bef1f', 'validated', '{"audio_key":"af1aeadda5261bb8e06f3c5cc1148c521e25c7638f44cd5893c611b8374042ac","entity_key":"d_c2_expert_briefing_capstone_02:2","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"879ad20ee62fb52e3e2f66aacc4b8a6c006c6caa606548da06264654a37bef1f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/af1aeadda5261bb8e06f3c5cc1148c521e25c7638f44cd5893c611b8374042ac.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_legal_institutional_nuance_01:1 -> audio/generated/tr-TR/dialogues/afb4c1089102fac1d601c0466ca5c6d4577a4f1f26b6af6542cd9a1cb1939fd6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('22c9ca46-0788-51f7-8f54-03444fdd1545', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_legal_institutional_nuance_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c223c7baa46c3faa19a8f5b3fc42b10b125082651763c987d9bb4abdde4f792c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('09f479b8-8525-53e3-95cc-b2611714b1b8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('22c9ca46-0788-51f7-8f54-03444fdd1545', 1), 'c223c7baa46c3faa19a8f5b3fc42b10b125082651763c987d9bb4abdde4f792c',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/afb4c1089102fac1d601c0466ca5c6d4577a4f1f26b6af6542cd9a1cb1939fd6.mp3', 5041, '2026-09-13 20:02:03.197493', '0c99cc649448d7f18f98bc92411dbf9220b04a1b46c09a9b815d72e38706a25e', 'validated', '{"audio_key":"afb4c1089102fac1d601c0466ca5c6d4577a4f1f26b6af6542cd9a1cb1939fd6","entity_key":"d_legal_institutional_nuance_01:1","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0c99cc649448d7f18f98bc92411dbf9220b04a1b46c09a9b815d72e38706a25e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/afb4c1089102fac1d601c0466ca5c6d4577a4f1f26b6af6542cd9a1cb1939fd6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_epistemic_layering_01:3 -> audio/generated/tr-TR/dialogues/afbbac26fda7449b2307f433bb25dfa43c3d34e7ff7e9f88c638b7ae7a677507.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('71ffba4b-acff-5b83-9142-70519dd8a397', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_epistemic_layering_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '822a08bdcb7fa120a94324ca7107c3a76387f56dbea568858b3a6717808e50d0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6b0f3e8c-5020-54f9-a3bb-9f614612c4e9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('71ffba4b-acff-5b83-9142-70519dd8a397', 1), '822a08bdcb7fa120a94324ca7107c3a76387f56dbea568858b3a6717808e50d0',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/afbbac26fda7449b2307f433bb25dfa43c3d34e7ff7e9f88c638b7ae7a677507.mp3', 2533, '2026-09-13 20:02:03.966057', 'caeb105f9865ee5f42794b8119b558bcbbe5ba789dd0ccb0b87a36d21fef4874', 'validated', '{"audio_key":"afbbac26fda7449b2307f433bb25dfa43c3d34e7ff7e9f88c638b7ae7a677507","entity_key":"d_epistemic_layering_01:3","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"caeb105f9865ee5f42794b8119b558bcbbe5ba789dd0ccb0b87a36d21fef4874","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/afbbac26fda7449b2307f433bb25dfa43c3d34e7ff7e9f88c638b7ae7a677507.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_semantic_boundaries_02:3 -> audio/generated/tr-TR/dialogues/b2bfbc5e636bceca9a7b8f110a0ab79525f072967586ad238b9d12e995f64293.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d8befa39-1eac-5b3c-960f-71c9d1b778c1', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_semantic_boundaries_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0c63d6b844f9014e9b54d0f1c41936547d037d292c9de0c7a1cb8a5d0078c96e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('91520645-38ba-53e5-ace8-7b4e2d813350', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d8befa39-1eac-5b3c-960f-71c9d1b778c1', 1), '0c63d6b844f9014e9b54d0f1c41936547d037d292c9de0c7a1cb8a5d0078c96e',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/b2bfbc5e636bceca9a7b8f110a0ab79525f072967586ad238b9d12e995f64293.mp3', 2768, '2026-09-13 20:02:04.822110', '4f1ca7992332df82088b96ca0290498c2bac594ae61779a14aaa64291beae702', 'validated', '{"audio_key":"b2bfbc5e636bceca9a7b8f110a0ab79525f072967586ad238b9d12e995f64293","entity_key":"d_semantic_boundaries_02:3","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4f1ca7992332df82088b96ca0290498c2bac594ae61779a14aaa64291beae702","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/b2bfbc5e636bceca9a7b8f110a0ab79525f072967586ad238b9d12e995f64293.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cross_framework_mediation_01:3 -> audio/generated/tr-TR/dialogues/b3b79267950bb3a29c3386f23b5a4383150482995c7f4cb164d5d42bec195754.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e3539418-2664-5b5f-8798-1602b7540f8f', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cross_framework_mediation_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6367c3070284f27a0836fad8d0e7ee2f10996fda29ef6412ff46e6c438edc1fb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('972c3065-5411-58c0-8e65-dd7f5c9e4ef5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e3539418-2664-5b5f-8798-1602b7540f8f', 1), '6367c3070284f27a0836fad8d0e7ee2f10996fda29ef6412ff46e6c438edc1fb',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/b3b79267950bb3a29c3386f23b5a4383150482995c7f4cb164d5d42bec195754.mp3', 3892, '2026-09-13 20:02:05.244061', '326040c5bc18d05cb610d2add7257d66fe79ea03e79b884dee393500cf748e73', 'validated', '{"audio_key":"b3b79267950bb3a29c3386f23b5a4383150482995c7f4cb164d5d42bec195754","entity_key":"d_cross_framework_mediation_01:3","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"326040c5bc18d05cb610d2add7257d66fe79ea03e79b884dee393500cf748e73","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/b3b79267950bb3a29c3386f23b5a4383150482995c7f4cb164d5d42bec195754.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c2_expert_briefing_capstone_01:2 -> audio/generated/tr-TR/dialogues/b59143a7eb493108b8035c41591b4d140407ef9cba8d6f8545f0fbee36ce17ed.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f956b170-4d4f-5dfa-9e75-4ee6b5da4ca1', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c2_expert_briefing_capstone_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd1889ed6e368255194435d52f80fdcce06faaef7d3be5a1d84894374a06211ba'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('40087ea4-b17d-50a4-b8e1-acc6c9548e42', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f956b170-4d4f-5dfa-9e75-4ee6b5da4ca1', 1), 'd1889ed6e368255194435d52f80fdcce06faaef7d3be5a1d84894374a06211ba',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/b59143a7eb493108b8035c41591b4d140407ef9cba8d6f8545f0fbee36ce17ed.mp3', 5198, '2026-09-13 20:02:06.296302', 'a76d60316154bf070159f53e3735e1f9de4a2c6732060763592031b1dcaf2d98', 'validated', '{"audio_key":"b59143a7eb493108b8035c41591b4d140407ef9cba8d6f8545f0fbee36ce17ed","entity_key":"d_c2_expert_briefing_capstone_01:2","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a76d60316154bf070159f53e3735e1f9de4a2c6732060763592031b1dcaf2d98","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/b59143a7eb493108b8035c41591b4d140407ef9cba8d6f8545f0fbee36ce17ed.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_legal_institutional_nuance_02:4 -> audio/generated/tr-TR/dialogues/b7568bf56377577d882876f1286cdb70a43634e409ed1280f50f26b9be198b98.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6a14c5d7-e7e0-5863-9298-ca988f603ba7', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_legal_institutional_nuance_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1ae9cc7decb93d41981d7891f64614015e13d33b40ef03522817f2b8c405e256'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4d07f893-1fa1-51d5-afc5-1f38a0913198', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6a14c5d7-e7e0-5863-9298-ca988f603ba7', 1), '1ae9cc7decb93d41981d7891f64614015e13d33b40ef03522817f2b8c405e256',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/b7568bf56377577d882876f1286cdb70a43634e409ed1280f50f26b9be198b98.mp3', 3004, '2026-09-13 20:02:06.372349', '4f4596642decb32678a161f50f0c4e909e5d211f26ebf3c784ced322313534fd', 'validated', '{"audio_key":"b7568bf56377577d882876f1286cdb70a43634e409ed1280f50f26b9be198b98","entity_key":"d_legal_institutional_nuance_02:4","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4f4596642decb32678a161f50f0c4e909e5d211f26ebf3c784ced322313534fd","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/b7568bf56377577d882876f1286cdb70a43634e409ed1280f50f26b9be198b98.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c2_expert_briefing_capstone_01:4 -> audio/generated/tr-TR/dialogues/b8a07212834bcea6aed240a51701bbfa6ac525ea974478789096441336b38157.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1526188f-cdff-5374-bebf-a7311814b823', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c2_expert_briefing_capstone_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '993172e0919d5249082e6ed18b75c3400d34dd6832fe30438d2a7a8fbaaa46c9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a20b28a1-6466-5c04-8ef9-d5ee14d97c30', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1526188f-cdff-5374-bebf-a7311814b823', 1), '993172e0919d5249082e6ed18b75c3400d34dd6832fe30438d2a7a8fbaaa46c9',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/b8a07212834bcea6aed240a51701bbfa6ac525ea974478789096441336b38157.mp3', 4597, '2026-09-13 20:02:07.636718', '8d8e5a129395cc961e336b492b35bbbc82127e30c46301cd5ac5ba0bcfdaf0b1', 'validated', '{"audio_key":"b8a07212834bcea6aed240a51701bbfa6ac525ea974478789096441336b38157","entity_key":"d_c2_expert_briefing_capstone_01:4","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8d8e5a129395cc961e336b492b35bbbc82127e30c46301cd5ac5ba0bcfdaf0b1","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/b8a07212834bcea6aed240a51701bbfa6ac525ea974478789096441336b38157.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_multi_source_synthesis_01:4 -> audio/generated/tr-TR/dialogues/ce73ecab01ee00438d8f0b7e12315d00f8e0dd55b866f968c126ce600b0fefe4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6f89f2f4-fbf1-5217-819a-763d5b907476', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_multi_source_synthesis_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '64cb0ba8a7b4be527ec2578cca4bdb6356de840828e017c46da3e05bcf13e84a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('82831035-e047-5785-bea1-47d85d2b5505', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6f89f2f4-fbf1-5217-819a-763d5b907476', 1), '64cb0ba8a7b4be527ec2578cca4bdb6356de840828e017c46da3e05bcf13e84a',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/ce73ecab01ee00438d8f0b7e12315d00f8e0dd55b866f968c126ce600b0fefe4.mp3', 4257, '2026-09-13 20:02:07.634270', 'ad3730cbd296e9fb611f6583c00624efa787dcdc3b41cb7efa449e2a80d7317b', 'validated', '{"audio_key":"ce73ecab01ee00438d8f0b7e12315d00f8e0dd55b866f968c126ce600b0fefe4","entity_key":"d_multi_source_synthesis_01:4","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"ad3730cbd296e9fb611f6583c00624efa787dcdc3b41cb7efa449e2a80d7317b","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/ce73ecab01ee00438d8f0b7e12315d00f8e0dd55b866f968c126ce600b0fefe4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_semantic_boundaries_02:4 -> audio/generated/tr-TR/dialogues/d667a6ddf62daf7b8885b1faf0843c43fff83270b6160fa19ef959df6e6f6c50.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c4e5cc84-d254-5b01-800c-6571f3626396', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_semantic_boundaries_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2582c24e6257dcc4911c6c0486839719579414153ce32e3aa7a2666952568fe1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('24093bcf-d595-58a9-9676-5b89d4725511', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c4e5cc84-d254-5b01-800c-6571f3626396', 1), '2582c24e6257dcc4911c6c0486839719579414153ce32e3aa7a2666952568fe1',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/d667a6ddf62daf7b8885b1faf0843c43fff83270b6160fa19ef959df6e6f6c50.mp3', 2690, '2026-09-13 20:02:08.758768', '1041ddbff116243ef298835b224e12f6d8123bae7a6ac8251985fcb22ccd7b2f', 'validated', '{"audio_key":"d667a6ddf62daf7b8885b1faf0843c43fff83270b6160fa19ef959df6e6f6c50","entity_key":"d_semantic_boundaries_02:4","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1041ddbff116243ef298835b224e12f6d8123bae7a6ac8251985fcb22ccd7b2f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/d667a6ddf62daf7b8885b1faf0843c43fff83270b6160fa19ef959df6e6f6c50.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cross_framework_mediation_01:1 -> audio/generated/tr-TR/dialogues/dc30853412f5d54f0348811616f56384f7ee83ab3362940f963bb2ef56361354.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0f08bcd9-b603-576e-b6e4-419b0f8bf9e7', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cross_framework_mediation_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4a0f176f1a8d19bab7e93e2db8ec0cd6b9acf8c2477b747c2c9f22fb066b3ca8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7dfdfd36-f30a-58e8-a02d-05914ee008a7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0f08bcd9-b603-576e-b6e4-419b0f8bf9e7', 1), '4a0f176f1a8d19bab7e93e2db8ec0cd6b9acf8c2477b747c2c9f22fb066b3ca8',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/dc30853412f5d54f0348811616f56384f7ee83ab3362940f963bb2ef56361354.mp3', 2742, '2026-09-13 20:02:08.757503', '5bf8d38e85a75baad0c59cbf21d54df6170c16ccaedc26b92a43063a963419ed', 'validated', '{"audio_key":"dc30853412f5d54f0348811616f56384f7ee83ab3362940f963bb2ef56361354","entity_key":"d_cross_framework_mediation_01:1","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5bf8d38e85a75baad0c59cbf21d54df6170c16ccaedc26b92a43063a963419ed","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/dc30853412f5d54f0348811616f56384f7ee83ab3362940f963bb2ef56361354.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_counterfactual_causality_02:4 -> audio/generated/tr-TR/dialogues/e41f377ff4e75e623c8d4b2898e632648a7bd24ea7ee0a0b78004bb6e7d71e37.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('846bac52-f54c-5228-8737-6cdaec829236', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_counterfactual_causality_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6bad21ac36819a1a9b3858f138f12b16f6aa0c5aaf02c4510a6db405371a7b95'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b05c4320-c269-5a25-ad26-64343c35f88d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('846bac52-f54c-5228-8737-6cdaec829236', 1), '6bad21ac36819a1a9b3858f138f12b16f6aa0c5aaf02c4510a6db405371a7b95',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/e41f377ff4e75e623c8d4b2898e632648a7bd24ea7ee0a0b78004bb6e7d71e37.mp3', 3604, '2026-09-13 20:02:10.009348', '5266860a71b548d5cfc6225547dff8aaf6bbb68d14be4c652d32b3c0f4ac0ed5', 'validated', '{"audio_key":"e41f377ff4e75e623c8d4b2898e632648a7bd24ea7ee0a0b78004bb6e7d71e37","entity_key":"d_counterfactual_causality_02:4","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"5266860a71b548d5cfc6225547dff8aaf6bbb68d14be4c652d32b3c0f4ac0ed5","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/e41f377ff4e75e623c8d4b2898e632648a7bd24ea7ee0a0b78004bb6e7d71e37.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_live_reformulation_01:1 -> audio/generated/tr-TR/dialogues/e8de04625ff46c965898d0b2b6cd5e85817275c4ef7e49e6599344c0069d8b3b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1ef878dd-01b5-5b0d-8b2a-f2db72df2897', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_live_reformulation_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd2987e6e0e5a23644ee1c498b87609db8d66bd1762e7e4f02135e86a120f0488'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f98af87c-3ca4-5f8a-ae39-13d4833a3ebc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1ef878dd-01b5-5b0d-8b2a-f2db72df2897', 1), 'd2987e6e0e5a23644ee1c498b87609db8d66bd1762e7e4f02135e86a120f0488',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/e8de04625ff46c965898d0b2b6cd5e85817275c4ef7e49e6599344c0069d8b3b.mp3', 3709, '2026-09-13 20:02:10.009466', '45b971ce52e1ff0aadd2b6d29b3898e3cdfa7c0fe57c6660125e3518698d869e', 'validated', '{"audio_key":"e8de04625ff46c965898d0b2b6cd5e85817275c4ef7e49e6599344c0069d8b3b","entity_key":"d_live_reformulation_01:1","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"45b971ce52e1ff0aadd2b6d29b3898e3cdfa7c0fe57c6660125e3518698d869e","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/e8de04625ff46c965898d0b2b6cd5e85817275c4ef7e49e6599344c0069d8b3b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_implicature_and_pragmatics_02:3 -> audio/generated/tr-TR/dialogues/e91c4abefc2f5a88dd6e4e714453e26cb6bd60e76c96ec6acfef95b3b5f32dd8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('47509823-1630-5666-8918-cfd3c0e09226', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_implicature_and_pragmatics_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ac0c6c56cc8352fd027f44fc8f04dcb8eb7316a70965138f1fd40572c1d38d0a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('95f9d13c-79bd-535d-b85a-ca68bd68fffa', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('47509823-1630-5666-8918-cfd3c0e09226', 1), 'ac0c6c56cc8352fd027f44fc8f04dcb8eb7316a70965138f1fd40572c1d38d0a',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/e91c4abefc2f5a88dd6e4e714453e26cb6bd60e76c96ec6acfef95b3b5f32dd8.mp3', 2220, '2026-09-13 20:02:11.145594', 'b948615ec0069c272e611f6522249efac69333aa1aeae7a5723f04cc555564cc', 'validated', '{"audio_key":"e91c4abefc2f5a88dd6e4e714453e26cb6bd60e76c96ec6acfef95b3b5f32dd8","entity_key":"d_implicature_and_pragmatics_02:3","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b948615ec0069c272e611f6522249efac69333aa1aeae7a5723f04cc555564cc","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/e91c4abefc2f5a88dd6e4e714453e26cb6bd60e76c96ec6acfef95b3b5f32dd8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_multi_source_synthesis_02:4 -> audio/generated/tr-TR/dialogues/eac0fca1c17b76c985064fc7a6415cb6a43738195a1a1deef884578e7e64d203.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1b1a2859-3fcb-5026-ace2-5c2086f38288', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_multi_source_synthesis_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4d9fac854e74e238cb532fb3cfff542e881c2ecb6f4539dcc26f6c9e9dcd40a9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e84b321c-ba42-5c4e-9a97-a821acbc234a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1b1a2859-3fcb-5026-ace2-5c2086f38288', 1), '4d9fac854e74e238cb532fb3cfff542e881c2ecb6f4539dcc26f6c9e9dcd40a9',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/eac0fca1c17b76c985064fc7a6415cb6a43738195a1a1deef884578e7e64d203.mp3', 3422, '2026-09-13 20:02:11.233062', '93a7245e886073071f029189231a0dd81a6bd6b31a797c7e610f7eedf6a891e7', 'validated', '{"audio_key":"eac0fca1c17b76c985064fc7a6415cb6a43738195a1a1deef884578e7e64d203","entity_key":"d_multi_source_synthesis_02:4","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"93a7245e886073071f029189231a0dd81a6bd6b31a797c7e610f7eedf6a891e7","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/eac0fca1c17b76c985064fc7a6415cb6a43738195a1a1deef884578e7e64d203.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_counterfactual_causality_02:1 -> audio/generated/tr-TR/dialogues/f0eaa456eb013784f905e548c688afa0dfe7a69954bfc706938b80d2b7b567ce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7ea72a02-951f-59ae-9c1e-9467604d3fc6', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_counterfactual_causality_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5a344462ea54375ff0407764b2ff1fd05576cc5c29e5228b40cd1e43b21faa2e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dab7e529-8b97-5b44-9e91-a978e0ccd1bb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7ea72a02-951f-59ae-9c1e-9467604d3fc6', 1), '5a344462ea54375ff0407764b2ff1fd05576cc5c29e5228b40cd1e43b21faa2e',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/f0eaa456eb013784f905e548c688afa0dfe7a69954bfc706938b80d2b7b567ce.mp3', 2768, '2026-09-13 20:02:12.270929', '22c5320a35d3276993436061eb519ec5c951cb38f5e8ecbe73506cabb4a925d2', 'validated', '{"audio_key":"f0eaa456eb013784f905e548c688afa0dfe7a69954bfc706938b80d2b7b567ce","entity_key":"d_counterfactual_causality_02:1","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"22c5320a35d3276993436061eb519ec5c951cb38f5e8ecbe73506cabb4a925d2","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/f0eaa456eb013784f905e548c688afa0dfe7a69954bfc706938b80d2b7b567ce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_legal_institutional_nuance_03 -> audio/generated/tr-TR/lexical/015556694e75afefbee17e0bc29ac91d6f196d69b357a0eb9afbbe82c2f8185e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d7d529fe-0817-5995-ac3c-c29298d57906', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_legal_institutional_nuance_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '859aeaa0b40040b8aa5a6237192b302ed31d110f57e5548baafbc5452450f026'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dab8ac82-957d-5547-8638-2739fd4a97b0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d7d529fe-0817-5995-ac3c-c29298d57906', 1), '859aeaa0b40040b8aa5a6237192b302ed31d110f57e5548baafbc5452450f026',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/015556694e75afefbee17e0bc29ac91d6f196d69b357a0eb9afbbe82c2f8185e.mp3', 1201, '2026-09-13 20:02:12.315093', 'b0d7582d643b9c2bad121cda99468b19031cbbbeab1ed1d6e51c77580de3b5cc', 'validated', '{"audio_key":"015556694e75afefbee17e0bc29ac91d6f196d69b357a0eb9afbbe82c2f8185e","entity_key":"lx_legal_institutional_nuance_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b0d7582d643b9c2bad121cda99468b19031cbbbeab1ed1d6e51c77580de3b5cc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/015556694e75afefbee17e0bc29ac91d6f196d69b357a0eb9afbbe82c2f8185e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_legal_institutional_nuance_03 -> audio/generated/tr-TR/lexical/015556694e75afefbee17e0bc29ac91d6f196d69b357a0eb9afbbe82c2f8185e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('cf29c378-34ef-5f70-b25e-48e8c8298b0d', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_legal_institutional_nuance_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '859aeaa0b40040b8aa5a6237192b302ed31d110f57e5548baafbc5452450f026'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e9e93692-1d9f-5c31-9c1b-8130f975c7e8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('cf29c378-34ef-5f70-b25e-48e8c8298b0d', 1), '859aeaa0b40040b8aa5a6237192b302ed31d110f57e5548baafbc5452450f026',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/015556694e75afefbee17e0bc29ac91d6f196d69b357a0eb9afbbe82c2f8185e.mp3', 1201, '2026-09-13 20:02:12.315093', 'b0d7582d643b9c2bad121cda99468b19031cbbbeab1ed1d6e51c77580de3b5cc', 'validated', '{"audio_key":"015556694e75afefbee17e0bc29ac91d6f196d69b357a0eb9afbbe82c2f8185e","entity_key":"wf_legal_institutional_nuance_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b0d7582d643b9c2bad121cda99468b19031cbbbeab1ed1d6e51c77580de3b5cc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/015556694e75afefbee17e0bc29ac91d6f196d69b357a0eb9afbbe82c2f8185e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_legal_institutional_nuance_01 -> audio/generated/tr-TR/lexical/0e1d8d44a2e03c1adc60867cbae50621622921d54deba00ce0af0fe30ecf1d97.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9ef7422b-fc71-5db8-aa3b-86f8559c1b23', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_legal_institutional_nuance_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd8afd7b620986001a0757e372157cb5eebfc72fcd219e038046b8b78928f708b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('202268d0-105c-5c47-adab-4c754965429f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9ef7422b-fc71-5db8-aa3b-86f8559c1b23', 1), 'd8afd7b620986001a0757e372157cb5eebfc72fcd219e038046b8b78928f708b',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/0e1d8d44a2e03c1adc60867cbae50621622921d54deba00ce0af0fe30ecf1d97.mp3', 1253, '2026-09-13 20:02:13.279059', '2ccf26d9dfbd90f24f9e3f9f83138b0eb6c51b962237b40a92f1ac3012c82ed8', 'validated', '{"audio_key":"0e1d8d44a2e03c1adc60867cbae50621622921d54deba00ce0af0fe30ecf1d97","entity_key":"lx_legal_institutional_nuance_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2ccf26d9dfbd90f24f9e3f9f83138b0eb6c51b962237b40a92f1ac3012c82ed8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/0e1d8d44a2e03c1adc60867cbae50621622921d54deba00ce0af0fe30ecf1d97.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_legal_institutional_nuance_01 -> audio/generated/tr-TR/lexical/0e1d8d44a2e03c1adc60867cbae50621622921d54deba00ce0af0fe30ecf1d97.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a15dcd4c-5969-5160-9717-5adb96630452', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_legal_institutional_nuance_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd8afd7b620986001a0757e372157cb5eebfc72fcd219e038046b8b78928f708b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ac2d8a64-cde8-58a1-ad5d-7ec53197e121', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a15dcd4c-5969-5160-9717-5adb96630452', 1), 'd8afd7b620986001a0757e372157cb5eebfc72fcd219e038046b8b78928f708b',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/0e1d8d44a2e03c1adc60867cbae50621622921d54deba00ce0af0fe30ecf1d97.mp3', 1253, '2026-09-13 20:02:13.279059', '2ccf26d9dfbd90f24f9e3f9f83138b0eb6c51b962237b40a92f1ac3012c82ed8', 'validated', '{"audio_key":"0e1d8d44a2e03c1adc60867cbae50621622921d54deba00ce0af0fe30ecf1d97","entity_key":"wf_legal_institutional_nuance_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2ccf26d9dfbd90f24f9e3f9f83138b0eb6c51b962237b40a92f1ac3012c82ed8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/0e1d8d44a2e03c1adc60867cbae50621622921d54deba00ce0af0fe30ecf1d97.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_c2_expert_briefing_capstone_02 -> audio/generated/tr-TR/lexical/104300ba6b121ac322809b3c332abe5ff13622425c623638fdcbdedd186faec4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('baed3f5d-8f12-556e-8b52-99a61e9dae56', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_c2_expert_briefing_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '368ca23162e091ffca5b480c23eee23dd6d7f5b1226d31bd9c8b1e55e9c2aa46'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3cc61b59-e351-57ae-81c1-7a9f3eaa0a63', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('baed3f5d-8f12-556e-8b52-99a61e9dae56', 1), '368ca23162e091ffca5b480c23eee23dd6d7f5b1226d31bd9c8b1e55e9c2aa46',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/104300ba6b121ac322809b3c332abe5ff13622425c623638fdcbdedd186faec4.mp3', 1567, '2026-09-13 20:02:13.517436', '901da357410620fde3b77a36820beabac056c4959e62e8ec6edecb3738d426e1', 'validated', '{"audio_key":"104300ba6b121ac322809b3c332abe5ff13622425c623638fdcbdedd186faec4","entity_key":"lx_c2_expert_briefing_capstone_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"901da357410620fde3b77a36820beabac056c4959e62e8ec6edecb3738d426e1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/104300ba6b121ac322809b3c332abe5ff13622425c623638fdcbdedd186faec4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_c2_expert_briefing_capstone_02 -> audio/generated/tr-TR/lexical/104300ba6b121ac322809b3c332abe5ff13622425c623638fdcbdedd186faec4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c8932c09-684f-5303-9195-942d579619ce', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_c2_expert_briefing_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '368ca23162e091ffca5b480c23eee23dd6d7f5b1226d31bd9c8b1e55e9c2aa46'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('54f7ce6d-2960-5872-9e9f-235b2e3642dd', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c8932c09-684f-5303-9195-942d579619ce', 1), '368ca23162e091ffca5b480c23eee23dd6d7f5b1226d31bd9c8b1e55e9c2aa46',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/104300ba6b121ac322809b3c332abe5ff13622425c623638fdcbdedd186faec4.mp3', 1567, '2026-09-13 20:02:13.517436', '901da357410620fde3b77a36820beabac056c4959e62e8ec6edecb3738d426e1', 'validated', '{"audio_key":"104300ba6b121ac322809b3c332abe5ff13622425c623638fdcbdedd186faec4","entity_key":"wf_c2_expert_briefing_capstone_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"901da357410620fde3b77a36820beabac056c4959e62e8ec6edecb3738d426e1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/104300ba6b121ac322809b3c332abe5ff13622425c623638fdcbdedd186faec4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cross_framework_mediation_03 -> audio/generated/tr-TR/lexical/11997d55424e844f363b4e56ef878c422339ac21e7017af6381c5e475d0fe5c5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9441988e-857c-5cd6-9739-e1e8e5814ff5', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cross_framework_mediation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '33effc8ce3f7d14ee54328af6191561123986b8bb3375a93de163d87de8f36db'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('91f694f8-8f9a-5f84-bd12-b6a492c9e1ed', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9441988e-857c-5cd6-9739-e1e8e5814ff5', 1), '33effc8ce3f7d14ee54328af6191561123986b8bb3375a93de163d87de8f36db',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/11997d55424e844f363b4e56ef878c422339ac21e7017af6381c5e475d0fe5c5.mp3', 1071, '2026-09-13 19:26:26.130047', '04644b6f12abf737dc5c542442caf79d7cc0db06e13447f279a6259a76b73b4e', 'validated', '{"audio_key":"11997d55424e844f363b4e56ef878c422339ac21e7017af6381c5e475d0fe5c5","entity_key":"lx_cross_framework_mediation_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"04644b6f12abf737dc5c542442caf79d7cc0db06e13447f279a6259a76b73b4e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/11997d55424e844f363b4e56ef878c422339ac21e7017af6381c5e475d0fe5c5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cross_framework_mediation_03 -> audio/generated/tr-TR/lexical/11997d55424e844f363b4e56ef878c422339ac21e7017af6381c5e475d0fe5c5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0f71d8dd-b7e4-5d24-9e5a-342c48c155cc', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cross_framework_mediation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '33effc8ce3f7d14ee54328af6191561123986b8bb3375a93de163d87de8f36db'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3f2d9626-c8e4-5e9b-8aaf-cbfca4c2eaac', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0f71d8dd-b7e4-5d24-9e5a-342c48c155cc', 1), '33effc8ce3f7d14ee54328af6191561123986b8bb3375a93de163d87de8f36db',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/11997d55424e844f363b4e56ef878c422339ac21e7017af6381c5e475d0fe5c5.mp3', 1071, '2026-09-13 19:26:26.130047', '04644b6f12abf737dc5c542442caf79d7cc0db06e13447f279a6259a76b73b4e', 'validated', '{"audio_key":"11997d55424e844f363b4e56ef878c422339ac21e7017af6381c5e475d0fe5c5","entity_key":"wf_cross_framework_mediation_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"04644b6f12abf737dc5c542442caf79d7cc0db06e13447f279a6259a76b73b4e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/11997d55424e844f363b4e56ef878c422339ac21e7017af6381c5e475d0fe5c5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_semantic_boundaries_06 -> audio/generated/tr-TR/lexical/16178dc9dbe861afac56b6cd1b613230747b7667b85ea3c8fcb12e6a4f8e5c2d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('328f1cbf-43ac-52be-883a-2359751cdacd', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_semantic_boundaries_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9bdbe45af2c075d6327ff6ae9cb6216e72cc8811e5f85df93d5b00f7c78c6d51'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7bf6ca7a-2d8e-5e4f-9efa-199f4246cf2c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('328f1cbf-43ac-52be-883a-2359751cdacd', 1), '9bdbe45af2c075d6327ff6ae9cb6216e72cc8811e5f85df93d5b00f7c78c6d51',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/16178dc9dbe861afac56b6cd1b613230747b7667b85ea3c8fcb12e6a4f8e5c2d.mp3', 1097, '2026-09-13 19:26:27.234554', 'b1dcf6b644e850eb488a1924b1b5438912f09a655d0442a93c9943712aafaa73', 'validated', '{"audio_key":"16178dc9dbe861afac56b6cd1b613230747b7667b85ea3c8fcb12e6a4f8e5c2d","entity_key":"lx_semantic_boundaries_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b1dcf6b644e850eb488a1924b1b5438912f09a655d0442a93c9943712aafaa73","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/16178dc9dbe861afac56b6cd1b613230747b7667b85ea3c8fcb12e6a4f8e5c2d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_semantic_boundaries_06 -> audio/generated/tr-TR/lexical/16178dc9dbe861afac56b6cd1b613230747b7667b85ea3c8fcb12e6a4f8e5c2d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e9fa7a37-8b98-532d-b692-a38a4f5fb4f7', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_semantic_boundaries_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9bdbe45af2c075d6327ff6ae9cb6216e72cc8811e5f85df93d5b00f7c78c6d51'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('024c0c31-058d-5c5d-9e34-d52f4cfc4543', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e9fa7a37-8b98-532d-b692-a38a4f5fb4f7', 1), '9bdbe45af2c075d6327ff6ae9cb6216e72cc8811e5f85df93d5b00f7c78c6d51',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/16178dc9dbe861afac56b6cd1b613230747b7667b85ea3c8fcb12e6a4f8e5c2d.mp3', 1097, '2026-09-13 19:26:27.234554', 'b1dcf6b644e850eb488a1924b1b5438912f09a655d0442a93c9943712aafaa73', 'validated', '{"audio_key":"16178dc9dbe861afac56b6cd1b613230747b7667b85ea3c8fcb12e6a4f8e5c2d","entity_key":"wf_semantic_boundaries_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b1dcf6b644e850eb488a1924b1b5438912f09a655d0442a93c9943712aafaa73","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/16178dc9dbe861afac56b6cd1b613230747b7667b85ea3c8fcb12e6a4f8e5c2d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_epistemic_layering_01 -> audio/generated/tr-TR/lexical/1a77bb37573db90ffc9a855934d6c09bffd018c374b4a5b8c496cec827413e74.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c4d67fb4-46dd-5d6c-8e42-8a66afad0f4e', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_epistemic_layering_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1c07a27a8864ced9f066060f6b0ca4bf13ea1f642a573f7435211218540181cd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5a0a349b-4d33-5baf-85c9-d891132da395', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c4d67fb4-46dd-5d6c-8e42-8a66afad0f4e', 1), '1c07a27a8864ced9f066060f6b0ca4bf13ea1f642a573f7435211218540181cd',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/1a77bb37573db90ffc9a855934d6c09bffd018c374b4a5b8c496cec827413e74.mp3', 1097, '2026-09-13 20:02:14.228207', 'd2c8a960bcc052a9cf06a74a2f5f4ff544ddcc877f4f7b038a1d8c62ad750292', 'validated', '{"audio_key":"1a77bb37573db90ffc9a855934d6c09bffd018c374b4a5b8c496cec827413e74","entity_key":"lx_epistemic_layering_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d2c8a960bcc052a9cf06a74a2f5f4ff544ddcc877f4f7b038a1d8c62ad750292","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/1a77bb37573db90ffc9a855934d6c09bffd018c374b4a5b8c496cec827413e74.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_epistemic_layering_01 -> audio/generated/tr-TR/lexical/1a77bb37573db90ffc9a855934d6c09bffd018c374b4a5b8c496cec827413e74.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('87dab446-52b4-50e0-aca1-c3f5a865a78a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_epistemic_layering_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1c07a27a8864ced9f066060f6b0ca4bf13ea1f642a573f7435211218540181cd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e7e47fb7-cd3f-541e-b913-710248b26f27', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('87dab446-52b4-50e0-aca1-c3f5a865a78a', 1), '1c07a27a8864ced9f066060f6b0ca4bf13ea1f642a573f7435211218540181cd',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/1a77bb37573db90ffc9a855934d6c09bffd018c374b4a5b8c496cec827413e74.mp3', 1097, '2026-09-13 20:02:14.228207', 'd2c8a960bcc052a9cf06a74a2f5f4ff544ddcc877f4f7b038a1d8c62ad750292', 'validated', '{"audio_key":"1a77bb37573db90ffc9a855934d6c09bffd018c374b4a5b8c496cec827413e74","entity_key":"wf_epistemic_layering_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d2c8a960bcc052a9cf06a74a2f5f4ff544ddcc877f4f7b038a1d8c62ad750292","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/1a77bb37573db90ffc9a855934d6c09bffd018c374b4a5b8c496cec827413e74.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_implicature_and_pragmatics_04 -> audio/generated/tr-TR/lexical/2092cc2ed97e306f32c77487e7ad00f66e7ee9ad7b911446ee3e256916313de3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('943e96e8-42b2-5252-bd59-baa10b55a6ff', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_implicature_and_pragmatics_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f742120873b8187c942990564e96f07de9066fdea9078ad54e57597265790187'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7c05be32-13c9-59e6-826d-64bf2d62e296', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('943e96e8-42b2-5252-bd59-baa10b55a6ff', 1), 'f742120873b8187c942990564e96f07de9066fdea9078ad54e57597265790187',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/2092cc2ed97e306f32c77487e7ad00f66e7ee9ad7b911446ee3e256916313de3.mp3', 1071, '2026-09-13 20:02:14.481087', '8838ad1648865ae0710e72f0b0629971cbd4e220d682d03f469d582654449616', 'validated', '{"audio_key":"2092cc2ed97e306f32c77487e7ad00f66e7ee9ad7b911446ee3e256916313de3","entity_key":"lx_implicature_and_pragmatics_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8838ad1648865ae0710e72f0b0629971cbd4e220d682d03f469d582654449616","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/2092cc2ed97e306f32c77487e7ad00f66e7ee9ad7b911446ee3e256916313de3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_implicature_and_pragmatics_04 -> audio/generated/tr-TR/lexical/2092cc2ed97e306f32c77487e7ad00f66e7ee9ad7b911446ee3e256916313de3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7a549b30-23da-52e9-b19d-308409093f35', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_implicature_and_pragmatics_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f742120873b8187c942990564e96f07de9066fdea9078ad54e57597265790187'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('06f58b08-bb54-521e-9fc0-cf51df857c46', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7a549b30-23da-52e9-b19d-308409093f35', 1), 'f742120873b8187c942990564e96f07de9066fdea9078ad54e57597265790187',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/2092cc2ed97e306f32c77487e7ad00f66e7ee9ad7b911446ee3e256916313de3.mp3', 1071, '2026-09-13 20:02:14.481087', '8838ad1648865ae0710e72f0b0629971cbd4e220d682d03f469d582654449616', 'validated', '{"audio_key":"2092cc2ed97e306f32c77487e7ad00f66e7ee9ad7b911446ee3e256916313de3","entity_key":"wf_implicature_and_pragmatics_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8838ad1648865ae0710e72f0b0629971cbd4e220d682d03f469d582654449616","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/2092cc2ed97e306f32c77487e7ad00f66e7ee9ad7b911446ee3e256916313de3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_semantic_boundaries_05 -> audio/generated/tr-TR/lexical/30cbf4c4dd6f852a27916722f8922bd57191626be574d490cf9ca07246f082da.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('638a4353-7ef6-53a0-bbc8-dd539d95aec3', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_semantic_boundaries_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ac48ae15f77ba1666631d6d844983779f4477c95e2728ce4f7b756de15e851fd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8cd24951-79ae-543c-812a-cf377bf25974', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('638a4353-7ef6-53a0-bbc8-dd539d95aec3', 1), 'ac48ae15f77ba1666631d6d844983779f4477c95e2728ce4f7b756de15e851fd',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/30cbf4c4dd6f852a27916722f8922bd57191626be574d490cf9ca07246f082da.mp3', 1332, '2026-09-13 19:07:25.392580', '750b85427d5dbcf3c67cc8b485fc8aed45ea40cb03437fe8f249be56b3dfcf14', 'validated', '{"audio_key":"30cbf4c4dd6f852a27916722f8922bd57191626be574d490cf9ca07246f082da","entity_key":"lx_semantic_boundaries_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"750b85427d5dbcf3c67cc8b485fc8aed45ea40cb03437fe8f249be56b3dfcf14","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/30cbf4c4dd6f852a27916722f8922bd57191626be574d490cf9ca07246f082da.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_semantic_boundaries_05 -> audio/generated/tr-TR/lexical/30cbf4c4dd6f852a27916722f8922bd57191626be574d490cf9ca07246f082da.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('15335201-c491-5dde-84a1-093290e6ef0c', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_semantic_boundaries_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ac48ae15f77ba1666631d6d844983779f4477c95e2728ce4f7b756de15e851fd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('13c87de1-386c-58c4-896e-cd4f25dba864', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('15335201-c491-5dde-84a1-093290e6ef0c', 1), 'ac48ae15f77ba1666631d6d844983779f4477c95e2728ce4f7b756de15e851fd',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/30cbf4c4dd6f852a27916722f8922bd57191626be574d490cf9ca07246f082da.mp3', 1332, '2026-09-13 19:07:25.392580', '750b85427d5dbcf3c67cc8b485fc8aed45ea40cb03437fe8f249be56b3dfcf14', 'validated', '{"audio_key":"30cbf4c4dd6f852a27916722f8922bd57191626be574d490cf9ca07246f082da","entity_key":"wf_semantic_boundaries_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"750b85427d5dbcf3c67cc8b485fc8aed45ea40cb03437fe8f249be56b3dfcf14","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/30cbf4c4dd6f852a27916722f8922bd57191626be574d490cf9ca07246f082da.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_implicature_and_pragmatics_05 -> audio/generated/tr-TR/lexical/3738b8e8538c4f398030d2a9140a8ce79ae6c3286a9cbcfb0e9dd5c3ba2fe9ae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1b58ba1c-b169-5b3b-ae9d-ba1c9ed70d49', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_implicature_and_pragmatics_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9a9e8ee952d699f18ab592424ba2ef8dee38650b8ed8f3041d11baac8e2a4d42'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('79b4bdd6-93ce-517c-8511-2d7edb905644', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1b58ba1c-b169-5b3b-ae9d-ba1c9ed70d49', 1), '9a9e8ee952d699f18ab592424ba2ef8dee38650b8ed8f3041d11baac8e2a4d42',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/3738b8e8538c4f398030d2a9140a8ce79ae6c3286a9cbcfb0e9dd5c3ba2fe9ae.mp3', 1071, '2026-09-13 20:02:15.181268', '5e00b763922fc0d00142803f3af484f27e8bf39d1b66817a1e3b7e76f7eda732', 'validated', '{"audio_key":"3738b8e8538c4f398030d2a9140a8ce79ae6c3286a9cbcfb0e9dd5c3ba2fe9ae","entity_key":"lx_implicature_and_pragmatics_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5e00b763922fc0d00142803f3af484f27e8bf39d1b66817a1e3b7e76f7eda732","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/3738b8e8538c4f398030d2a9140a8ce79ae6c3286a9cbcfb0e9dd5c3ba2fe9ae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_implicature_and_pragmatics_05 -> audio/generated/tr-TR/lexical/3738b8e8538c4f398030d2a9140a8ce79ae6c3286a9cbcfb0e9dd5c3ba2fe9ae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('933cc7a7-b0f6-5eb5-ae55-7bcaae757bab', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_implicature_and_pragmatics_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9a9e8ee952d699f18ab592424ba2ef8dee38650b8ed8f3041d11baac8e2a4d42'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a45c48f2-6f6d-5815-a755-9a74be31dbed', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('933cc7a7-b0f6-5eb5-ae55-7bcaae757bab', 1), '9a9e8ee952d699f18ab592424ba2ef8dee38650b8ed8f3041d11baac8e2a4d42',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/3738b8e8538c4f398030d2a9140a8ce79ae6c3286a9cbcfb0e9dd5c3ba2fe9ae.mp3', 1071, '2026-09-13 20:02:15.181268', '5e00b763922fc0d00142803f3af484f27e8bf39d1b66817a1e3b7e76f7eda732', 'validated', '{"audio_key":"3738b8e8538c4f398030d2a9140a8ce79ae6c3286a9cbcfb0e9dd5c3ba2fe9ae","entity_key":"wf_implicature_and_pragmatics_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5e00b763922fc0d00142803f3af484f27e8bf39d1b66817a1e3b7e76f7eda732","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/3738b8e8538c4f398030d2a9140a8ce79ae6c3286a9cbcfb0e9dd5c3ba2fe9ae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_multi_source_synthesis_01 -> audio/generated/tr-TR/lexical/39e81bbeb82eafc6edcf64b2531ae7bffc16514cc93d33bd7e06a34347ac1e87.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('66b24d78-2c50-5795-90e8-bd9cd8fdc7a1', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_multi_source_synthesis_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'acbf0a276a4d880b3f627077d4f0940f3585257f8e790d3b394526978a73d46d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e0980054-2d97-5008-88ff-e152b1c2f3ca', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('66b24d78-2c50-5795-90e8-bd9cd8fdc7a1', 1), 'acbf0a276a4d880b3f627077d4f0940f3585257f8e790d3b394526978a73d46d',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/39e81bbeb82eafc6edcf64b2531ae7bffc16514cc93d33bd7e06a34347ac1e87.mp3', 966, '2026-09-13 19:26:31.109530', '8b958b91e6b5e135b5f2ada96e7f0dc0110f08ac891a22ca9ed8e98237c9ac3c', 'validated', '{"audio_key":"39e81bbeb82eafc6edcf64b2531ae7bffc16514cc93d33bd7e06a34347ac1e87","entity_key":"lx_multi_source_synthesis_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8b958b91e6b5e135b5f2ada96e7f0dc0110f08ac891a22ca9ed8e98237c9ac3c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/39e81bbeb82eafc6edcf64b2531ae7bffc16514cc93d33bd7e06a34347ac1e87.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_multi_source_synthesis_01 -> audio/generated/tr-TR/lexical/39e81bbeb82eafc6edcf64b2531ae7bffc16514cc93d33bd7e06a34347ac1e87.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d7dc7381-1664-555c-87d8-4690dd301389', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_multi_source_synthesis_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'acbf0a276a4d880b3f627077d4f0940f3585257f8e790d3b394526978a73d46d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('299420d1-aaba-5063-b6bf-8ceb2055e175', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d7dc7381-1664-555c-87d8-4690dd301389', 1), 'acbf0a276a4d880b3f627077d4f0940f3585257f8e790d3b394526978a73d46d',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/39e81bbeb82eafc6edcf64b2531ae7bffc16514cc93d33bd7e06a34347ac1e87.mp3', 966, '2026-09-13 19:26:31.109530', '8b958b91e6b5e135b5f2ada96e7f0dc0110f08ac891a22ca9ed8e98237c9ac3c', 'validated', '{"audio_key":"39e81bbeb82eafc6edcf64b2531ae7bffc16514cc93d33bd7e06a34347ac1e87","entity_key":"wf_multi_source_synthesis_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8b958b91e6b5e135b5f2ada96e7f0dc0110f08ac891a22ca9ed8e98237c9ac3c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/39e81bbeb82eafc6edcf64b2531ae7bffc16514cc93d33bd7e06a34347ac1e87.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_live_reformulation_04 -> audio/generated/tr-TR/lexical/3a5fa528a1dea893090fb02e82e247919b6db63a90f43f1ed4af37c3a886174b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2b7464e4-508c-5007-a95f-95b41e6cc1c4', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_live_reformulation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a7cf298b2d437cb2f827d655d42c9dfa9fc1a09e9699a27ce28b6b6d45062c6b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9b6ad2bb-dee6-53ce-91b5-9ed425f6070a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2b7464e4-508c-5007-a95f-95b41e6cc1c4', 1), 'a7cf298b2d437cb2f827d655d42c9dfa9fc1a09e9699a27ce28b6b6d45062c6b',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/3a5fa528a1dea893090fb02e82e247919b6db63a90f43f1ed4af37c3a886174b.mp3', 1018, '2026-09-13 20:02:15.628177', '97da85fee1fbaa2e423ae3eaf5f72f77ec401eed31ddadfcd9f1e7b6d396e46f', 'validated', '{"audio_key":"3a5fa528a1dea893090fb02e82e247919b6db63a90f43f1ed4af37c3a886174b","entity_key":"lx_live_reformulation_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"97da85fee1fbaa2e423ae3eaf5f72f77ec401eed31ddadfcd9f1e7b6d396e46f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/3a5fa528a1dea893090fb02e82e247919b6db63a90f43f1ed4af37c3a886174b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_live_reformulation_04 -> audio/generated/tr-TR/lexical/3a5fa528a1dea893090fb02e82e247919b6db63a90f43f1ed4af37c3a886174b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8717839a-6b1c-5f5b-9dd5-46469f885bf2', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_live_reformulation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a7cf298b2d437cb2f827d655d42c9dfa9fc1a09e9699a27ce28b6b6d45062c6b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('662420ee-b891-59cf-898d-90e89d0fbfe1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8717839a-6b1c-5f5b-9dd5-46469f885bf2', 1), 'a7cf298b2d437cb2f827d655d42c9dfa9fc1a09e9699a27ce28b6b6d45062c6b',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/3a5fa528a1dea893090fb02e82e247919b6db63a90f43f1ed4af37c3a886174b.mp3', 1018, '2026-09-13 20:02:15.628177', '97da85fee1fbaa2e423ae3eaf5f72f77ec401eed31ddadfcd9f1e7b6d396e46f', 'validated', '{"audio_key":"3a5fa528a1dea893090fb02e82e247919b6db63a90f43f1ed4af37c3a886174b","entity_key":"wf_live_reformulation_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"97da85fee1fbaa2e423ae3eaf5f72f77ec401eed31ddadfcd9f1e7b6d396e46f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/3a5fa528a1dea893090fb02e82e247919b6db63a90f43f1ed4af37c3a886174b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_live_reformulation_02 -> audio/generated/tr-TR/lexical/439078900c484d3f2b63db4b8b380e5481a12c727685e32de985ccdca0f811d8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('35235737-d49c-550c-b1bb-71bb6b012c37', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_live_reformulation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'be412153b2240bb7033c9850687c346e755f66685debb9353dfd3c3ad54d17e9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9c95760c-69c4-571a-a4f8-b2135c17071f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('35235737-d49c-550c-b1bb-71bb6b012c37', 1), 'be412153b2240bb7033c9850687c346e755f66685debb9353dfd3c3ad54d17e9',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/439078900c484d3f2b63db4b8b380e5481a12c727685e32de985ccdca0f811d8.mp3', 1332, '2026-09-13 20:02:16.366826', '312ca8c857dda292b83e7e2cd547ca4c515fff20c937f85663f83f0355f882d6', 'validated', '{"audio_key":"439078900c484d3f2b63db4b8b380e5481a12c727685e32de985ccdca0f811d8","entity_key":"lx_live_reformulation_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"312ca8c857dda292b83e7e2cd547ca4c515fff20c937f85663f83f0355f882d6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/439078900c484d3f2b63db4b8b380e5481a12c727685e32de985ccdca0f811d8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_live_reformulation_02 -> audio/generated/tr-TR/lexical/439078900c484d3f2b63db4b8b380e5481a12c727685e32de985ccdca0f811d8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2c3ff814-b452-5373-9a44-f8bd11361346', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_live_reformulation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'be412153b2240bb7033c9850687c346e755f66685debb9353dfd3c3ad54d17e9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9e3d37b2-51e9-5f3b-84c1-69f06174c9d4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2c3ff814-b452-5373-9a44-f8bd11361346', 1), 'be412153b2240bb7033c9850687c346e755f66685debb9353dfd3c3ad54d17e9',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/439078900c484d3f2b63db4b8b380e5481a12c727685e32de985ccdca0f811d8.mp3', 1332, '2026-09-13 20:02:16.366826', '312ca8c857dda292b83e7e2cd547ca4c515fff20c937f85663f83f0355f882d6', 'validated', '{"audio_key":"439078900c484d3f2b63db4b8b380e5481a12c727685e32de985ccdca0f811d8","entity_key":"wf_live_reformulation_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"312ca8c857dda292b83e7e2cd547ca4c515fff20c937f85663f83f0355f882d6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/439078900c484d3f2b63db4b8b380e5481a12c727685e32de985ccdca0f811d8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_counterfactual_causality_05 -> audio/generated/tr-TR/lexical/44d97fc09cddd912b1b0c10c75c337d16f80e32235a2ad205b122f94c17a5a80.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e6a10641-4374-573c-bad1-815c4dca1606', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_counterfactual_causality_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e5b57d98f7cf8c459451bd3682b8fa2b683447ff513d1bc64ab265088b9f0f24'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('700fd473-0023-5c47-a4b9-ba55fa8af83b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e6a10641-4374-573c-bad1-815c4dca1606', 1), 'e5b57d98f7cf8c459451bd3682b8fa2b683447ff513d1bc64ab265088b9f0f24',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/44d97fc09cddd912b1b0c10c75c337d16f80e32235a2ad205b122f94c17a5a80.mp3', 1280, '2026-09-13 20:02:16.623503', '23de9af1653b93204954f8bc8ab6659c41678287ac99bc538fd53dd4ae292852', 'validated', '{"audio_key":"44d97fc09cddd912b1b0c10c75c337d16f80e32235a2ad205b122f94c17a5a80","entity_key":"lx_counterfactual_causality_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"23de9af1653b93204954f8bc8ab6659c41678287ac99bc538fd53dd4ae292852","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/44d97fc09cddd912b1b0c10c75c337d16f80e32235a2ad205b122f94c17a5a80.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_counterfactual_causality_05 -> audio/generated/tr-TR/lexical/44d97fc09cddd912b1b0c10c75c337d16f80e32235a2ad205b122f94c17a5a80.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('659df692-00b2-5113-874e-853f3cf999cc', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_counterfactual_causality_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e5b57d98f7cf8c459451bd3682b8fa2b683447ff513d1bc64ab265088b9f0f24'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8a3df8ec-5c50-5615-a474-2a607f1ae56d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('659df692-00b2-5113-874e-853f3cf999cc', 1), 'e5b57d98f7cf8c459451bd3682b8fa2b683447ff513d1bc64ab265088b9f0f24',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/44d97fc09cddd912b1b0c10c75c337d16f80e32235a2ad205b122f94c17a5a80.mp3', 1280, '2026-09-13 20:02:16.623503', '23de9af1653b93204954f8bc8ab6659c41678287ac99bc538fd53dd4ae292852', 'validated', '{"audio_key":"44d97fc09cddd912b1b0c10c75c337d16f80e32235a2ad205b122f94c17a5a80","entity_key":"wf_counterfactual_causality_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"23de9af1653b93204954f8bc8ab6659c41678287ac99bc538fd53dd4ae292852","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/44d97fc09cddd912b1b0c10c75c337d16f80e32235a2ad205b122f94c17a5a80.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_semantic_boundaries_02 -> audio/generated/tr-TR/lexical/45601bedeaa5561e85f0022703ded496b4cf09361ef2b77947faff44068d82d9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e58f9fbd-736d-5cd0-9583-ab2425436d77', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_semantic_boundaries_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a8826888b22034c6ba27026ed5d53c0ef108c12574248ecf2b7a1b109a11bbe2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a04040fe-65fe-5c40-9f1e-474ed04f89fa', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e58f9fbd-736d-5cd0-9583-ab2425436d77', 1), 'a8826888b22034c6ba27026ed5d53c0ef108c12574248ecf2b7a1b109a11bbe2',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/45601bedeaa5561e85f0022703ded496b4cf09361ef2b77947faff44068d82d9.mp3', 1071, '2026-09-13 20:02:17.331359', 'e233018267d23f1332a4d75851fe395a9bf7470144c8420e2a75fbf93e015cc3', 'validated', '{"audio_key":"45601bedeaa5561e85f0022703ded496b4cf09361ef2b77947faff44068d82d9","entity_key":"lx_semantic_boundaries_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e233018267d23f1332a4d75851fe395a9bf7470144c8420e2a75fbf93e015cc3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/45601bedeaa5561e85f0022703ded496b4cf09361ef2b77947faff44068d82d9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_semantic_boundaries_02 -> audio/generated/tr-TR/lexical/45601bedeaa5561e85f0022703ded496b4cf09361ef2b77947faff44068d82d9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('dad1c1f9-84a7-59a0-8781-cc4541152ab3', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_semantic_boundaries_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a8826888b22034c6ba27026ed5d53c0ef108c12574248ecf2b7a1b109a11bbe2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dc9c752e-877b-5d26-8c47-ff73d087e0f9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('dad1c1f9-84a7-59a0-8781-cc4541152ab3', 1), 'a8826888b22034c6ba27026ed5d53c0ef108c12574248ecf2b7a1b109a11bbe2',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/45601bedeaa5561e85f0022703ded496b4cf09361ef2b77947faff44068d82d9.mp3', 1071, '2026-09-13 20:02:17.331359', 'e233018267d23f1332a4d75851fe395a9bf7470144c8420e2a75fbf93e015cc3', 'validated', '{"audio_key":"45601bedeaa5561e85f0022703ded496b4cf09361ef2b77947faff44068d82d9","entity_key":"wf_semantic_boundaries_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e233018267d23f1332a4d75851fe395a9bf7470144c8420e2a75fbf93e015cc3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/45601bedeaa5561e85f0022703ded496b4cf09361ef2b77947faff44068d82d9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_live_reformulation_06 -> audio/generated/tr-TR/lexical/51c25968294c4eaf427f8334248fbcee3b01117c30dedb314ccb0e47c58cfff9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('bfd5cd23-b9b4-5ec1-954c-59dabf706cbf', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_live_reformulation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '05a990d5678b602500a0049a5eda414efc320b201a5a74dfb821f879b48d0f9d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d64c5aaa-aff1-534c-906b-a4565992e107', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('bfd5cd23-b9b4-5ec1-954c-59dabf706cbf', 1), '05a990d5678b602500a0049a5eda414efc320b201a5a74dfb821f879b48d0f9d',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/51c25968294c4eaf427f8334248fbcee3b01117c30dedb314ccb0e47c58cfff9.mp3', 1253, '2026-09-13 20:02:17.614403', '1bc72e64e68d1747d4e672de35a3be080bf547b774c9b88009982b45b1eaede5', 'validated', '{"audio_key":"51c25968294c4eaf427f8334248fbcee3b01117c30dedb314ccb0e47c58cfff9","entity_key":"lx_live_reformulation_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1bc72e64e68d1747d4e672de35a3be080bf547b774c9b88009982b45b1eaede5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/51c25968294c4eaf427f8334248fbcee3b01117c30dedb314ccb0e47c58cfff9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_live_reformulation_06 -> audio/generated/tr-TR/lexical/51c25968294c4eaf427f8334248fbcee3b01117c30dedb314ccb0e47c58cfff9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e73d2738-e141-5564-af35-c4e34c66ff4c', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_live_reformulation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '05a990d5678b602500a0049a5eda414efc320b201a5a74dfb821f879b48d0f9d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('84b0f6b4-c28a-5e53-9fc6-c00a0375fff2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e73d2738-e141-5564-af35-c4e34c66ff4c', 1), '05a990d5678b602500a0049a5eda414efc320b201a5a74dfb821f879b48d0f9d',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/51c25968294c4eaf427f8334248fbcee3b01117c30dedb314ccb0e47c58cfff9.mp3', 1253, '2026-09-13 20:02:17.614403', '1bc72e64e68d1747d4e672de35a3be080bf547b774c9b88009982b45b1eaede5', 'validated', '{"audio_key":"51c25968294c4eaf427f8334248fbcee3b01117c30dedb314ccb0e47c58cfff9","entity_key":"wf_live_reformulation_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1bc72e64e68d1747d4e672de35a3be080bf547b774c9b88009982b45b1eaede5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/51c25968294c4eaf427f8334248fbcee3b01117c30dedb314ccb0e47c58cfff9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_live_reformulation_03 -> audio/generated/tr-TR/lexical/529f326b4f9d8ad79bcd470188c5a2213ab2e59555b5b88786afcdca161124a4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('bbab6b06-71bc-57b7-bf71-6f3d34a6c660', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_live_reformulation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ac6b11f698b8e6130442172cd5553fae4e9357148102e083b0e7653228e0f4ac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('140ea528-fc61-5583-ab48-bb58f34c8768', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('bbab6b06-71bc-57b7-bf71-6f3d34a6c660', 1), 'ac6b11f698b8e6130442172cd5553fae4e9357148102e083b0e7653228e0f4ac',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/529f326b4f9d8ad79bcd470188c5a2213ab2e59555b5b88786afcdca161124a4.mp3', 1201, '2026-09-13 20:02:18.301204', 'a1f4c8f10a7fc838514f77b58078553e5e248ff2a2ff143b3b7614908efc9b57', 'validated', '{"audio_key":"529f326b4f9d8ad79bcd470188c5a2213ab2e59555b5b88786afcdca161124a4","entity_key":"lx_live_reformulation_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a1f4c8f10a7fc838514f77b58078553e5e248ff2a2ff143b3b7614908efc9b57","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/529f326b4f9d8ad79bcd470188c5a2213ab2e59555b5b88786afcdca161124a4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_live_reformulation_03 -> audio/generated/tr-TR/lexical/529f326b4f9d8ad79bcd470188c5a2213ab2e59555b5b88786afcdca161124a4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9882765e-e655-5068-9b78-557a40c6f898', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_live_reformulation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ac6b11f698b8e6130442172cd5553fae4e9357148102e083b0e7653228e0f4ac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bb517c74-a085-5d75-9e44-a3d7b96cc2ec', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9882765e-e655-5068-9b78-557a40c6f898', 1), 'ac6b11f698b8e6130442172cd5553fae4e9357148102e083b0e7653228e0f4ac',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/529f326b4f9d8ad79bcd470188c5a2213ab2e59555b5b88786afcdca161124a4.mp3', 1201, '2026-09-13 20:02:18.301204', 'a1f4c8f10a7fc838514f77b58078553e5e248ff2a2ff143b3b7614908efc9b57', 'validated', '{"audio_key":"529f326b4f9d8ad79bcd470188c5a2213ab2e59555b5b88786afcdca161124a4","entity_key":"wf_live_reformulation_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a1f4c8f10a7fc838514f77b58078553e5e248ff2a2ff143b3b7614908efc9b57","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/529f326b4f9d8ad79bcd470188c5a2213ab2e59555b5b88786afcdca161124a4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_semantic_boundaries_04 -> audio/generated/tr-TR/lexical/569341da6eacd67bd1fb9cf1fbc3c31bdf7405f1be3d9a5804f4c4b8dec94ec5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('02e55b79-8490-5ffe-ad89-2a05eabad48a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_semantic_boundaries_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1697d23f417a5a03cde06581b285c134fd495e5a0970980dabf0f21dfc607972'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('defd2c04-5a10-54dd-b4a1-90747b487a1b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('02e55b79-8490-5ffe-ad89-2a05eabad48a', 1), '1697d23f417a5a03cde06581b285c134fd495e5a0970980dabf0f21dfc607972',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/569341da6eacd67bd1fb9cf1fbc3c31bdf7405f1be3d9a5804f4c4b8dec94ec5.mp3', 1018, '2026-09-13 19:26:33.185611', '1ce82930a68ca408259abe548fbc36f830c49c7971057369a5e25bd6d20dd607', 'validated', '{"audio_key":"569341da6eacd67bd1fb9cf1fbc3c31bdf7405f1be3d9a5804f4c4b8dec94ec5","entity_key":"lx_semantic_boundaries_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1ce82930a68ca408259abe548fbc36f830c49c7971057369a5e25bd6d20dd607","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/569341da6eacd67bd1fb9cf1fbc3c31bdf7405f1be3d9a5804f4c4b8dec94ec5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_semantic_boundaries_04 -> audio/generated/tr-TR/lexical/569341da6eacd67bd1fb9cf1fbc3c31bdf7405f1be3d9a5804f4c4b8dec94ec5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('adf4cec4-1ed0-56cf-8be3-252e965a4d8c', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_semantic_boundaries_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1697d23f417a5a03cde06581b285c134fd495e5a0970980dabf0f21dfc607972'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('163ce5ad-84eb-5a12-b1a5-25315b4a34bb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('adf4cec4-1ed0-56cf-8be3-252e965a4d8c', 1), '1697d23f417a5a03cde06581b285c134fd495e5a0970980dabf0f21dfc607972',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/569341da6eacd67bd1fb9cf1fbc3c31bdf7405f1be3d9a5804f4c4b8dec94ec5.mp3', 1018, '2026-09-13 19:26:33.185611', '1ce82930a68ca408259abe548fbc36f830c49c7971057369a5e25bd6d20dd607', 'validated', '{"audio_key":"569341da6eacd67bd1fb9cf1fbc3c31bdf7405f1be3d9a5804f4c4b8dec94ec5","entity_key":"wf_semantic_boundaries_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1ce82930a68ca408259abe548fbc36f830c49c7971057369a5e25bd6d20dd607","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/569341da6eacd67bd1fb9cf1fbc3c31bdf7405f1be3d9a5804f4c4b8dec94ec5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_legal_institutional_nuance_05 -> audio/generated/tr-TR/lexical/58abd4b310ca91cd80a0c5be2863d156da33e68949104a191d07b9f6605da08b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2295c661-ee26-557a-b4a7-b57e0afd4ced', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_legal_institutional_nuance_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c28a248425c05a3a3e3d820a062513bb531a7c9b398a0b84d77fa567fc21a686'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('952ff097-6901-5c2e-b06e-a9711babf332', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2295c661-ee26-557a-b4a7-b57e0afd4ced', 1), 'c28a248425c05a3a3e3d820a062513bb531a7c9b398a0b84d77fa567fc21a686',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/58abd4b310ca91cd80a0c5be2863d156da33e68949104a191d07b9f6605da08b.mp3', 1097, '2026-09-13 20:02:18.609769', '28c50d03d3ff79917ad658539f47b72d84ef02d4251a7c3cf966be1fe829c14b', 'validated', '{"audio_key":"58abd4b310ca91cd80a0c5be2863d156da33e68949104a191d07b9f6605da08b","entity_key":"lx_legal_institutional_nuance_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"28c50d03d3ff79917ad658539f47b72d84ef02d4251a7c3cf966be1fe829c14b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/58abd4b310ca91cd80a0c5be2863d156da33e68949104a191d07b9f6605da08b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_legal_institutional_nuance_05 -> audio/generated/tr-TR/lexical/58abd4b310ca91cd80a0c5be2863d156da33e68949104a191d07b9f6605da08b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('564a5126-dd79-5a6c-ba2f-1331f7339873', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_legal_institutional_nuance_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c28a248425c05a3a3e3d820a062513bb531a7c9b398a0b84d77fa567fc21a686'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('527e5a7a-2499-5014-a5cc-a8b70d529af3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('564a5126-dd79-5a6c-ba2f-1331f7339873', 1), 'c28a248425c05a3a3e3d820a062513bb531a7c9b398a0b84d77fa567fc21a686',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/58abd4b310ca91cd80a0c5be2863d156da33e68949104a191d07b9f6605da08b.mp3', 1097, '2026-09-13 20:02:18.609769', '28c50d03d3ff79917ad658539f47b72d84ef02d4251a7c3cf966be1fe829c14b', 'validated', '{"audio_key":"58abd4b310ca91cd80a0c5be2863d156da33e68949104a191d07b9f6605da08b","entity_key":"wf_legal_institutional_nuance_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"28c50d03d3ff79917ad658539f47b72d84ef02d4251a7c3cf966be1fe829c14b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/58abd4b310ca91cd80a0c5be2863d156da33e68949104a191d07b9f6605da08b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cross_framework_mediation_04 -> audio/generated/tr-TR/lexical/5bb8983930468616e7b20824578502e4fd36d4d3d800faf925e9429c82e98180.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5c8bdc45-6368-5baa-b52a-57a490acf6dd', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cross_framework_mediation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a5a6df3085f4fbec1eefa72a4a2b88f1fe41139d1503a07792b1f4cf5a36460c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3c9a9361-06f0-5864-868a-deb94da25c77', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5c8bdc45-6368-5baa-b52a-57a490acf6dd', 1), 'a5a6df3085f4fbec1eefa72a4a2b88f1fe41139d1503a07792b1f4cf5a36460c',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/5bb8983930468616e7b20824578502e4fd36d4d3d800faf925e9429c82e98180.mp3', 1097, '2026-09-13 20:02:19.249683', 'd184dbbcbb3f719075423966a17f91081cf4d42d4deb628219e77f8c0765c96b', 'validated', '{"audio_key":"5bb8983930468616e7b20824578502e4fd36d4d3d800faf925e9429c82e98180","entity_key":"lx_cross_framework_mediation_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d184dbbcbb3f719075423966a17f91081cf4d42d4deb628219e77f8c0765c96b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/5bb8983930468616e7b20824578502e4fd36d4d3d800faf925e9429c82e98180.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cross_framework_mediation_04 -> audio/generated/tr-TR/lexical/5bb8983930468616e7b20824578502e4fd36d4d3d800faf925e9429c82e98180.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5810362b-d033-53b3-896d-eef1a99704b3', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cross_framework_mediation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a5a6df3085f4fbec1eefa72a4a2b88f1fe41139d1503a07792b1f4cf5a36460c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d8999ad4-b4eb-5c81-9df5-be4ac9cbe30f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5810362b-d033-53b3-896d-eef1a99704b3', 1), 'a5a6df3085f4fbec1eefa72a4a2b88f1fe41139d1503a07792b1f4cf5a36460c',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/5bb8983930468616e7b20824578502e4fd36d4d3d800faf925e9429c82e98180.mp3', 1097, '2026-09-13 20:02:19.249683', 'd184dbbcbb3f719075423966a17f91081cf4d42d4deb628219e77f8c0765c96b', 'validated', '{"audio_key":"5bb8983930468616e7b20824578502e4fd36d4d3d800faf925e9429c82e98180","entity_key":"wf_cross_framework_mediation_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d184dbbcbb3f719075423966a17f91081cf4d42d4deb628219e77f8c0765c96b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/5bb8983930468616e7b20824578502e4fd36d4d3d800faf925e9429c82e98180.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cross_framework_mediation_01 -> audio/generated/tr-TR/lexical/5e93a7fb2e0eef94c689795f56b006efb72257092ed92d24046a0389cf972ffe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5d8494b7-c02d-581c-9bc4-906a4755c1ba', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cross_framework_mediation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5cf54882d10e4ca56430537a8591d264380ef5aa97236f735597aa20e3da99bd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('110571a0-53fd-52e4-808e-449438bb8fc9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5d8494b7-c02d-581c-9bc4-906a4755c1ba', 1), '5cf54882d10e4ca56430537a8591d264380ef5aa97236f735597aa20e3da99bd',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/5e93a7fb2e0eef94c689795f56b006efb72257092ed92d24046a0389cf972ffe.mp3', 1201, '2026-09-13 19:26:35.311418', 'b580f5cb000897ade73cc482d77a64fba0b560fad2d90505322f869e0c8716a4', 'validated', '{"audio_key":"5e93a7fb2e0eef94c689795f56b006efb72257092ed92d24046a0389cf972ffe","entity_key":"lx_cross_framework_mediation_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b580f5cb000897ade73cc482d77a64fba0b560fad2d90505322f869e0c8716a4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/5e93a7fb2e0eef94c689795f56b006efb72257092ed92d24046a0389cf972ffe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cross_framework_mediation_01 -> audio/generated/tr-TR/lexical/5e93a7fb2e0eef94c689795f56b006efb72257092ed92d24046a0389cf972ffe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('353273b6-e3f6-5796-83e0-58a95cf34efe', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cross_framework_mediation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5cf54882d10e4ca56430537a8591d264380ef5aa97236f735597aa20e3da99bd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('96ab3636-3f0e-53a6-8364-714ed30b5265', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('353273b6-e3f6-5796-83e0-58a95cf34efe', 1), '5cf54882d10e4ca56430537a8591d264380ef5aa97236f735597aa20e3da99bd',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/5e93a7fb2e0eef94c689795f56b006efb72257092ed92d24046a0389cf972ffe.mp3', 1201, '2026-09-13 19:26:35.311418', 'b580f5cb000897ade73cc482d77a64fba0b560fad2d90505322f869e0c8716a4', 'validated', '{"audio_key":"5e93a7fb2e0eef94c689795f56b006efb72257092ed92d24046a0389cf972ffe","entity_key":"wf_cross_framework_mediation_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b580f5cb000897ade73cc482d77a64fba0b560fad2d90505322f869e0c8716a4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/5e93a7fb2e0eef94c689795f56b006efb72257092ed92d24046a0389cf972ffe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_implicature_and_pragmatics_06 -> audio/generated/tr-TR/lexical/5fa6b9b4a79951a7870756dfe42254ee523e1336468c033370072c5530d7ea0c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b85ce60d-07fd-5d5c-abaf-70db01c9bfd3', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_implicature_and_pragmatics_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0392047780249c40ab0b60d07ad80ad3ee9399dd0efc1d3fba7b43f956aa83e9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8b49f0e0-ee4b-5e58-bf29-8ae27d1a04e7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b85ce60d-07fd-5d5c-abaf-70db01c9bfd3', 1), '0392047780249c40ab0b60d07ad80ad3ee9399dd0efc1d3fba7b43f956aa83e9',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/5fa6b9b4a79951a7870756dfe42254ee523e1336468c033370072c5530d7ea0c.mp3', 1253, '2026-09-13 19:26:35.883228', '6387e2a448cc25949c9f12b3794dbf2a4b1bc286412ba9004ba21994b77b1f21', 'validated', '{"audio_key":"5fa6b9b4a79951a7870756dfe42254ee523e1336468c033370072c5530d7ea0c","entity_key":"lx_implicature_and_pragmatics_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6387e2a448cc25949c9f12b3794dbf2a4b1bc286412ba9004ba21994b77b1f21","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/5fa6b9b4a79951a7870756dfe42254ee523e1336468c033370072c5530d7ea0c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_implicature_and_pragmatics_06 -> audio/generated/tr-TR/lexical/5fa6b9b4a79951a7870756dfe42254ee523e1336468c033370072c5530d7ea0c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0d3f1ad1-a811-5fc7-b870-806a96946017', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_implicature_and_pragmatics_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0392047780249c40ab0b60d07ad80ad3ee9399dd0efc1d3fba7b43f956aa83e9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('84e97fbe-e329-5029-afeb-34c526c521dd', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0d3f1ad1-a811-5fc7-b870-806a96946017', 1), '0392047780249c40ab0b60d07ad80ad3ee9399dd0efc1d3fba7b43f956aa83e9',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/5fa6b9b4a79951a7870756dfe42254ee523e1336468c033370072c5530d7ea0c.mp3', 1253, '2026-09-13 19:26:35.883228', '6387e2a448cc25949c9f12b3794dbf2a4b1bc286412ba9004ba21994b77b1f21', 'validated', '{"audio_key":"5fa6b9b4a79951a7870756dfe42254ee523e1336468c033370072c5530d7ea0c","entity_key":"wf_implicature_and_pragmatics_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6387e2a448cc25949c9f12b3794dbf2a4b1bc286412ba9004ba21994b77b1f21","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/5fa6b9b4a79951a7870756dfe42254ee523e1336468c033370072c5530d7ea0c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_counterfactual_causality_03 -> audio/generated/tr-TR/lexical/6002321e042ff7eb9ef34703c0b50002cc1f882e50804e5123201a38954606ec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2c096060-cb88-5828-8ef0-a207391528bd', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_counterfactual_causality_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '96939623f1d8db7506d7b1b960852c682ec1754acbe4dd803c075d901d96b2d0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8d0734f0-a95b-5405-9384-9da6eb52514f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2c096060-cb88-5828-8ef0-a207391528bd', 1), '96939623f1d8db7506d7b1b960852c682ec1754acbe4dd803c075d901d96b2d0',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/6002321e042ff7eb9ef34703c0b50002cc1f882e50804e5123201a38954606ec.mp3', 1253, '2026-09-13 20:02:19.589984', 'f8d423de985834c0dfd28bfb19f88c55279f928efedf34af2741b5ab5b0bd19b', 'validated', '{"audio_key":"6002321e042ff7eb9ef34703c0b50002cc1f882e50804e5123201a38954606ec","entity_key":"lx_counterfactual_causality_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f8d423de985834c0dfd28bfb19f88c55279f928efedf34af2741b5ab5b0bd19b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/6002321e042ff7eb9ef34703c0b50002cc1f882e50804e5123201a38954606ec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_counterfactual_causality_03 -> audio/generated/tr-TR/lexical/6002321e042ff7eb9ef34703c0b50002cc1f882e50804e5123201a38954606ec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('88b066c8-d750-5b1e-bc36-3ffccfcd35c0', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_counterfactual_causality_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '96939623f1d8db7506d7b1b960852c682ec1754acbe4dd803c075d901d96b2d0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0d40fe53-5932-5ee7-83e2-2e1f808eef7e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('88b066c8-d750-5b1e-bc36-3ffccfcd35c0', 1), '96939623f1d8db7506d7b1b960852c682ec1754acbe4dd803c075d901d96b2d0',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/6002321e042ff7eb9ef34703c0b50002cc1f882e50804e5123201a38954606ec.mp3', 1253, '2026-09-13 20:02:19.589984', 'f8d423de985834c0dfd28bfb19f88c55279f928efedf34af2741b5ab5b0bd19b', 'validated', '{"audio_key":"6002321e042ff7eb9ef34703c0b50002cc1f882e50804e5123201a38954606ec","entity_key":"wf_counterfactual_causality_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f8d423de985834c0dfd28bfb19f88c55279f928efedf34af2741b5ab5b0bd19b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/6002321e042ff7eb9ef34703c0b50002cc1f882e50804e5123201a38954606ec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cross_framework_mediation_06 -> audio/generated/tr-TR/lexical/61842280aa49956ca8effc051229a07f09a4e2f5c0eed4c60f2c25f053632167.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2bb47044-83da-5c0d-ad1e-1b9fc8a64c12', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cross_framework_mediation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c5a4a62ef1d0a69589b67a059de8c526ee5433fc7de49cf69bae9fe88e8097e4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('793302d6-1929-5b2d-ad3b-93a56f416b24', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2bb47044-83da-5c0d-ad1e-1b9fc8a64c12', 1), 'c5a4a62ef1d0a69589b67a059de8c526ee5433fc7de49cf69bae9fe88e8097e4',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/61842280aa49956ca8effc051229a07f09a4e2f5c0eed4c60f2c25f053632167.mp3', 1436, '2026-09-13 20:02:20.248518', 'bf9366bd52fa3a956a0e8f421b4f2cbae4b375e6875e1fe46bfdb8f6b7485377', 'validated', '{"audio_key":"61842280aa49956ca8effc051229a07f09a4e2f5c0eed4c60f2c25f053632167","entity_key":"lx_cross_framework_mediation_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bf9366bd52fa3a956a0e8f421b4f2cbae4b375e6875e1fe46bfdb8f6b7485377","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/61842280aa49956ca8effc051229a07f09a4e2f5c0eed4c60f2c25f053632167.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cross_framework_mediation_06 -> audio/generated/tr-TR/lexical/61842280aa49956ca8effc051229a07f09a4e2f5c0eed4c60f2c25f053632167.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d26d66da-5ed3-50b3-8c11-4f9aba6f566a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cross_framework_mediation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c5a4a62ef1d0a69589b67a059de8c526ee5433fc7de49cf69bae9fe88e8097e4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ff758917-09aa-55f1-95c7-cc5a60a91657', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d26d66da-5ed3-50b3-8c11-4f9aba6f566a', 1), 'c5a4a62ef1d0a69589b67a059de8c526ee5433fc7de49cf69bae9fe88e8097e4',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/61842280aa49956ca8effc051229a07f09a4e2f5c0eed4c60f2c25f053632167.mp3', 1436, '2026-09-13 20:02:20.248518', 'bf9366bd52fa3a956a0e8f421b4f2cbae4b375e6875e1fe46bfdb8f6b7485377', 'validated', '{"audio_key":"61842280aa49956ca8effc051229a07f09a4e2f5c0eed4c60f2c25f053632167","entity_key":"wf_cross_framework_mediation_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bf9366bd52fa3a956a0e8f421b4f2cbae4b375e6875e1fe46bfdb8f6b7485377","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/61842280aa49956ca8effc051229a07f09a4e2f5c0eed4c60f2c25f053632167.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_epistemic_layering_04 -> audio/generated/tr-TR/lexical/658bb4ef3e8cb82f8aecf3a138f9ea92aebca9ac5517d74dcca2616c0b0a1732.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('67391f30-0ff0-5c5a-b208-f4a4c39b9878', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_epistemic_layering_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cae09a22f078ed0547aaa5e7e971f44472b67e6869ac9abe7e01368f7b5bc659'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('51b5dba3-268f-564a-a5a6-19fe6101bba3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('67391f30-0ff0-5c5a-b208-f4a4c39b9878', 1), 'cae09a22f078ed0547aaa5e7e971f44472b67e6869ac9abe7e01368f7b5bc659',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/658bb4ef3e8cb82f8aecf3a138f9ea92aebca9ac5517d74dcca2616c0b0a1732.mp3', 1071, '2026-09-13 20:02:20.557115', '993e87d143466b16301b66af44c8523414deec037a7b63ebc7bcfbbfdb4bfe42', 'validated', '{"audio_key":"658bb4ef3e8cb82f8aecf3a138f9ea92aebca9ac5517d74dcca2616c0b0a1732","entity_key":"lx_epistemic_layering_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"993e87d143466b16301b66af44c8523414deec037a7b63ebc7bcfbbfdb4bfe42","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/658bb4ef3e8cb82f8aecf3a138f9ea92aebca9ac5517d74dcca2616c0b0a1732.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_epistemic_layering_04 -> audio/generated/tr-TR/lexical/658bb4ef3e8cb82f8aecf3a138f9ea92aebca9ac5517d74dcca2616c0b0a1732.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5c41989b-5bc0-5a8d-88e6-e46acf4f94f6', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_epistemic_layering_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cae09a22f078ed0547aaa5e7e971f44472b67e6869ac9abe7e01368f7b5bc659'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('57ee75f9-bcb0-5bcc-8f0d-446dd85aa8bd', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5c41989b-5bc0-5a8d-88e6-e46acf4f94f6', 1), 'cae09a22f078ed0547aaa5e7e971f44472b67e6869ac9abe7e01368f7b5bc659',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/658bb4ef3e8cb82f8aecf3a138f9ea92aebca9ac5517d74dcca2616c0b0a1732.mp3', 1071, '2026-09-13 20:02:20.557115', '993e87d143466b16301b66af44c8523414deec037a7b63ebc7bcfbbfdb4bfe42', 'validated', '{"audio_key":"658bb4ef3e8cb82f8aecf3a138f9ea92aebca9ac5517d74dcca2616c0b0a1732","entity_key":"wf_epistemic_layering_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"993e87d143466b16301b66af44c8523414deec037a7b63ebc7bcfbbfdb4bfe42","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/658bb4ef3e8cb82f8aecf3a138f9ea92aebca9ac5517d74dcca2616c0b0a1732.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_semantic_boundaries_03 -> audio/generated/tr-TR/lexical/6c619b0743f496a13b5b374e5d90ad2277749620be67450c22473c733fce891f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('847d83f0-fb1d-55f4-90d3-807aaa21c4e7', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_semantic_boundaries_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cfcd34fa456764274a1ed554498062c3225ac023d5dad90471e1ef48aab74d03'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a8199576-e463-540e-916d-db348454e736', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('847d83f0-fb1d-55f4-90d3-807aaa21c4e7', 1), 'cfcd34fa456764274a1ed554498062c3225ac023d5dad90471e1ef48aab74d03',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/6c619b0743f496a13b5b374e5d90ad2277749620be67450c22473c733fce891f.mp3', 914, '2026-09-13 20:02:21.209680', '3b50feccaee9f08814abadeb730e101d9d420e9a73ef3529f787e74c1b0b7a0a', 'validated', '{"audio_key":"6c619b0743f496a13b5b374e5d90ad2277749620be67450c22473c733fce891f","entity_key":"lx_semantic_boundaries_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3b50feccaee9f08814abadeb730e101d9d420e9a73ef3529f787e74c1b0b7a0a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/6c619b0743f496a13b5b374e5d90ad2277749620be67450c22473c733fce891f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_semantic_boundaries_03 -> audio/generated/tr-TR/lexical/6c619b0743f496a13b5b374e5d90ad2277749620be67450c22473c733fce891f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a5f75f35-fa71-5724-a566-c63f68e49e8a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_semantic_boundaries_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cfcd34fa456764274a1ed554498062c3225ac023d5dad90471e1ef48aab74d03'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('10e4d929-4950-5bc7-a306-766e4f16862f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a5f75f35-fa71-5724-a566-c63f68e49e8a', 1), 'cfcd34fa456764274a1ed554498062c3225ac023d5dad90471e1ef48aab74d03',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/6c619b0743f496a13b5b374e5d90ad2277749620be67450c22473c733fce891f.mp3', 914, '2026-09-13 20:02:21.209680', '3b50feccaee9f08814abadeb730e101d9d420e9a73ef3529f787e74c1b0b7a0a', 'validated', '{"audio_key":"6c619b0743f496a13b5b374e5d90ad2277749620be67450c22473c733fce891f","entity_key":"wf_semantic_boundaries_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3b50feccaee9f08814abadeb730e101d9d420e9a73ef3529f787e74c1b0b7a0a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/6c619b0743f496a13b5b374e5d90ad2277749620be67450c22473c733fce891f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_implicature_and_pragmatics_03 -> audio/generated/tr-TR/lexical/6d3bcd286ee8580c609d489f39eadcdb0ae33b8c67d98607d3aab69f708cdb4d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('cb0dbed7-4657-5e07-a00c-099acaa1c64b', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_implicature_and_pragmatics_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b97b437af7625efa837a36ec2ad3fed4475afe7071f12c5aa1c041511960c313'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ac1908ff-c243-5a7e-8af6-9795b2e81a31', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('cb0dbed7-4657-5e07-a00c-099acaa1c64b', 1), 'b97b437af7625efa837a36ec2ad3fed4475afe7071f12c5aa1c041511960c313',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/6d3bcd286ee8580c609d489f39eadcdb0ae33b8c67d98607d3aab69f708cdb4d.mp3', 1149, '2026-09-13 20:02:21.497003', '47c22e4f9c109daf2b788ccc35c337157cc70b80ef3212c8e859faa460876c87', 'validated', '{"audio_key":"6d3bcd286ee8580c609d489f39eadcdb0ae33b8c67d98607d3aab69f708cdb4d","entity_key":"lx_implicature_and_pragmatics_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"47c22e4f9c109daf2b788ccc35c337157cc70b80ef3212c8e859faa460876c87","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/6d3bcd286ee8580c609d489f39eadcdb0ae33b8c67d98607d3aab69f708cdb4d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_implicature_and_pragmatics_03 -> audio/generated/tr-TR/lexical/6d3bcd286ee8580c609d489f39eadcdb0ae33b8c67d98607d3aab69f708cdb4d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('86ada634-7384-560e-990d-b234161afba6', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_implicature_and_pragmatics_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b97b437af7625efa837a36ec2ad3fed4475afe7071f12c5aa1c041511960c313'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bba588f7-7717-546d-bf62-e57d6d1112b8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('86ada634-7384-560e-990d-b234161afba6', 1), 'b97b437af7625efa837a36ec2ad3fed4475afe7071f12c5aa1c041511960c313',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/6d3bcd286ee8580c609d489f39eadcdb0ae33b8c67d98607d3aab69f708cdb4d.mp3', 1149, '2026-09-13 20:02:21.497003', '47c22e4f9c109daf2b788ccc35c337157cc70b80ef3212c8e859faa460876c87', 'validated', '{"audio_key":"6d3bcd286ee8580c609d489f39eadcdb0ae33b8c67d98607d3aab69f708cdb4d","entity_key":"wf_implicature_and_pragmatics_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"47c22e4f9c109daf2b788ccc35c337157cc70b80ef3212c8e859faa460876c87","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/6d3bcd286ee8580c609d489f39eadcdb0ae33b8c67d98607d3aab69f708cdb4d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_counterfactual_causality_01 -> audio/generated/tr-TR/lexical/6d7d8bc0a83f374caf574c0d22fbd2582998add8a138dbaac224b5a7cbff351e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('337db2a7-0421-5def-9676-43303389abee', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_counterfactual_causality_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '06368e517a812ba59dfa3b81ecbec33fff597e09ecad71825c8d88197330a4e7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e9b98b82-b3e5-5812-8c7c-1ea84583fe5e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('337db2a7-0421-5def-9676-43303389abee', 1), '06368e517a812ba59dfa3b81ecbec33fff597e09ecad71825c8d88197330a4e7',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/6d7d8bc0a83f374caf574c0d22fbd2582998add8a138dbaac224b5a7cbff351e.mp3', 1488, '2026-09-13 20:02:22.182837', 'c3a0d19e344e2faece4bc880fc885e66610034a34e40671d3652cfa058eafc7a', 'validated', '{"audio_key":"6d7d8bc0a83f374caf574c0d22fbd2582998add8a138dbaac224b5a7cbff351e","entity_key":"lx_counterfactual_causality_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c3a0d19e344e2faece4bc880fc885e66610034a34e40671d3652cfa058eafc7a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/6d7d8bc0a83f374caf574c0d22fbd2582998add8a138dbaac224b5a7cbff351e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_counterfactual_causality_01 -> audio/generated/tr-TR/lexical/6d7d8bc0a83f374caf574c0d22fbd2582998add8a138dbaac224b5a7cbff351e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('29ed173f-54f0-5445-bd01-9663024d5ddf', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_counterfactual_causality_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '06368e517a812ba59dfa3b81ecbec33fff597e09ecad71825c8d88197330a4e7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cc6b1e8c-f247-5e6c-99e3-a527ee7e1645', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('29ed173f-54f0-5445-bd01-9663024d5ddf', 1), '06368e517a812ba59dfa3b81ecbec33fff597e09ecad71825c8d88197330a4e7',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/6d7d8bc0a83f374caf574c0d22fbd2582998add8a138dbaac224b5a7cbff351e.mp3', 1488, '2026-09-13 20:02:22.182837', 'c3a0d19e344e2faece4bc880fc885e66610034a34e40671d3652cfa058eafc7a', 'validated', '{"audio_key":"6d7d8bc0a83f374caf574c0d22fbd2582998add8a138dbaac224b5a7cbff351e","entity_key":"wf_counterfactual_causality_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c3a0d19e344e2faece4bc880fc885e66610034a34e40671d3652cfa058eafc7a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/6d7d8bc0a83f374caf574c0d22fbd2582998add8a138dbaac224b5a7cbff351e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_rhetorical_compression_02 -> audio/generated/tr-TR/lexical/6f1e277817256ca94e681e7252f46aa4cb9d95891b532271f4a25c9e12bb76c9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b14a1800-ed5a-5fab-83c2-0572c6912988', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_rhetorical_compression_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '82ba59b4584c47fdc829a53ddcae0a12c9eef3901a6844585d73fa06686ccfcf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e572d96b-11b7-53c9-850d-6d9bd947e7a1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b14a1800-ed5a-5fab-83c2-0572c6912988', 1), '82ba59b4584c47fdc829a53ddcae0a12c9eef3901a6844585d73fa06686ccfcf',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/6f1e277817256ca94e681e7252f46aa4cb9d95891b532271f4a25c9e12bb76c9.mp3', 1071, '2026-09-13 20:02:22.425415', '231469f73b2701a1b33f584d5cd08814f61cb5e1967900418ebe481bf696adcd', 'validated', '{"audio_key":"6f1e277817256ca94e681e7252f46aa4cb9d95891b532271f4a25c9e12bb76c9","entity_key":"lx_rhetorical_compression_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"231469f73b2701a1b33f584d5cd08814f61cb5e1967900418ebe481bf696adcd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/6f1e277817256ca94e681e7252f46aa4cb9d95891b532271f4a25c9e12bb76c9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_rhetorical_compression_02 -> audio/generated/tr-TR/lexical/6f1e277817256ca94e681e7252f46aa4cb9d95891b532271f4a25c9e12bb76c9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ca4daf07-994b-5d2c-b4dc-646608777041', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_rhetorical_compression_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '82ba59b4584c47fdc829a53ddcae0a12c9eef3901a6844585d73fa06686ccfcf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fcc1d622-8092-5248-adba-c2d15f22f002', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ca4daf07-994b-5d2c-b4dc-646608777041', 1), '82ba59b4584c47fdc829a53ddcae0a12c9eef3901a6844585d73fa06686ccfcf',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/6f1e277817256ca94e681e7252f46aa4cb9d95891b532271f4a25c9e12bb76c9.mp3', 1071, '2026-09-13 20:02:22.425415', '231469f73b2701a1b33f584d5cd08814f61cb5e1967900418ebe481bf696adcd', 'validated', '{"audio_key":"6f1e277817256ca94e681e7252f46aa4cb9d95891b532271f4a25c9e12bb76c9","entity_key":"wf_rhetorical_compression_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"231469f73b2701a1b33f584d5cd08814f61cb5e1967900418ebe481bf696adcd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/6f1e277817256ca94e681e7252f46aa4cb9d95891b532271f4a25c9e12bb76c9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_c2_expert_briefing_capstone_03 -> audio/generated/tr-TR/lexical/6f31122d94549189987cf08b7dc9594cadf4b6ed061136af45dd5de5b0a1592f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8924fab0-d93e-5538-be6b-0f22c8b15a52', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_c2_expert_briefing_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f8db53cc52f97ff72c0ad061c86bb3237256fb76b0708d110f9de2de44d83fab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('04d74eed-9d63-5f94-b3f5-46c34766e142', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8924fab0-d93e-5538-be6b-0f22c8b15a52', 1), 'f8db53cc52f97ff72c0ad061c86bb3237256fb76b0708d110f9de2de44d83fab',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/6f31122d94549189987cf08b7dc9594cadf4b6ed061136af45dd5de5b0a1592f.mp3', 1436, '2026-09-13 20:02:23.175944', '0b9762acc8238bff268c89f6efa4b072495604886bbce88b0265a4a5251447c3', 'validated', '{"audio_key":"6f31122d94549189987cf08b7dc9594cadf4b6ed061136af45dd5de5b0a1592f","entity_key":"lx_c2_expert_briefing_capstone_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0b9762acc8238bff268c89f6efa4b072495604886bbce88b0265a4a5251447c3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/6f31122d94549189987cf08b7dc9594cadf4b6ed061136af45dd5de5b0a1592f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_c2_expert_briefing_capstone_03 -> audio/generated/tr-TR/lexical/6f31122d94549189987cf08b7dc9594cadf4b6ed061136af45dd5de5b0a1592f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0208671f-d998-5f0d-b821-dffe14f3737b', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_c2_expert_briefing_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f8db53cc52f97ff72c0ad061c86bb3237256fb76b0708d110f9de2de44d83fab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7dd0424e-1c84-5a86-ba52-1bc72274a4f4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0208671f-d998-5f0d-b821-dffe14f3737b', 1), 'f8db53cc52f97ff72c0ad061c86bb3237256fb76b0708d110f9de2de44d83fab',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/6f31122d94549189987cf08b7dc9594cadf4b6ed061136af45dd5de5b0a1592f.mp3', 1436, '2026-09-13 20:02:23.175944', '0b9762acc8238bff268c89f6efa4b072495604886bbce88b0265a4a5251447c3', 'validated', '{"audio_key":"6f31122d94549189987cf08b7dc9594cadf4b6ed061136af45dd5de5b0a1592f","entity_key":"wf_c2_expert_briefing_capstone_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0b9762acc8238bff268c89f6efa4b072495604886bbce88b0265a4a5251447c3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/6f31122d94549189987cf08b7dc9594cadf4b6ed061136af45dd5de5b0a1592f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_legal_institutional_nuance_02 -> audio/generated/tr-TR/lexical/6ffcf68ed0c745783c5b644cfd837c62dc390cfe757f8d9f5ac241366013f446.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ae3be62e-ac31-5007-ba8e-1f4592a565f7', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_legal_institutional_nuance_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '580ef5448272843b6b6d62b3c95f93b4cc7ec0e63dfaf708f07f80ec4e752b58'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0edb2344-a2ee-5cec-ab04-5b9ff2fc5a0e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ae3be62e-ac31-5007-ba8e-1f4592a565f7', 1), '580ef5448272843b6b6d62b3c95f93b4cc7ec0e63dfaf708f07f80ec4e752b58',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/6ffcf68ed0c745783c5b644cfd837c62dc390cfe757f8d9f5ac241366013f446.mp3', 1071, '2026-09-13 20:02:23.360183', 'dbd0ce2d0cbe63bfb149c6ada96454a8316baaaa6a52287f924024e10358d155', 'validated', '{"audio_key":"6ffcf68ed0c745783c5b644cfd837c62dc390cfe757f8d9f5ac241366013f446","entity_key":"lx_legal_institutional_nuance_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dbd0ce2d0cbe63bfb149c6ada96454a8316baaaa6a52287f924024e10358d155","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/6ffcf68ed0c745783c5b644cfd837c62dc390cfe757f8d9f5ac241366013f446.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_legal_institutional_nuance_02 -> audio/generated/tr-TR/lexical/6ffcf68ed0c745783c5b644cfd837c62dc390cfe757f8d9f5ac241366013f446.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4932c231-0370-5894-bd7d-0a75af6972f6', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_legal_institutional_nuance_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '580ef5448272843b6b6d62b3c95f93b4cc7ec0e63dfaf708f07f80ec4e752b58'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cba63b30-0c81-5bf2-bb5d-0afa79b85b04', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4932c231-0370-5894-bd7d-0a75af6972f6', 1), '580ef5448272843b6b6d62b3c95f93b4cc7ec0e63dfaf708f07f80ec4e752b58',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/6ffcf68ed0c745783c5b644cfd837c62dc390cfe757f8d9f5ac241366013f446.mp3', 1071, '2026-09-13 20:02:23.360183', 'dbd0ce2d0cbe63bfb149c6ada96454a8316baaaa6a52287f924024e10358d155', 'validated', '{"audio_key":"6ffcf68ed0c745783c5b644cfd837c62dc390cfe757f8d9f5ac241366013f446","entity_key":"wf_legal_institutional_nuance_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dbd0ce2d0cbe63bfb149c6ada96454a8316baaaa6a52287f924024e10358d155","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/6ffcf68ed0c745783c5b644cfd837c62dc390cfe757f8d9f5ac241366013f446.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_counterfactual_causality_06 -> audio/generated/tr-TR/lexical/800274a0731ba9b79be26321a0b1eb2fc10054888c50124883c6ff4c5faa2854.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fa75f91b-3169-5acb-8f38-3fa88315f769', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_counterfactual_causality_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '74824f8ee96ed5fc7ca80b8d4b6be4a9afaa80cccb7b85f45bdb96dcee577bee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c51d7649-52e4-56fd-a5d0-f83b5c744066', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fa75f91b-3169-5acb-8f38-3fa88315f769', 1), '74824f8ee96ed5fc7ca80b8d4b6be4a9afaa80cccb7b85f45bdb96dcee577bee',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/800274a0731ba9b79be26321a0b1eb2fc10054888c50124883c6ff4c5faa2854.mp3', 1097, '2026-09-13 20:02:24.155536', '26b6a3114344b9beb0cb462326fd2d01a0eaab352fd7e114aecaf62631428c6c', 'validated', '{"audio_key":"800274a0731ba9b79be26321a0b1eb2fc10054888c50124883c6ff4c5faa2854","entity_key":"lx_counterfactual_causality_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"26b6a3114344b9beb0cb462326fd2d01a0eaab352fd7e114aecaf62631428c6c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/800274a0731ba9b79be26321a0b1eb2fc10054888c50124883c6ff4c5faa2854.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_counterfactual_causality_06 -> audio/generated/tr-TR/lexical/800274a0731ba9b79be26321a0b1eb2fc10054888c50124883c6ff4c5faa2854.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('44380126-54c2-5725-a50f-349a1022abe1', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_counterfactual_causality_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '74824f8ee96ed5fc7ca80b8d4b6be4a9afaa80cccb7b85f45bdb96dcee577bee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('000cb590-e678-55aa-9931-af4489169893', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('44380126-54c2-5725-a50f-349a1022abe1', 1), '74824f8ee96ed5fc7ca80b8d4b6be4a9afaa80cccb7b85f45bdb96dcee577bee',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/800274a0731ba9b79be26321a0b1eb2fc10054888c50124883c6ff4c5faa2854.mp3', 1097, '2026-09-13 20:02:24.155536', '26b6a3114344b9beb0cb462326fd2d01a0eaab352fd7e114aecaf62631428c6c', 'validated', '{"audio_key":"800274a0731ba9b79be26321a0b1eb2fc10054888c50124883c6ff4c5faa2854","entity_key":"wf_counterfactual_causality_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"26b6a3114344b9beb0cb462326fd2d01a0eaab352fd7e114aecaf62631428c6c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/800274a0731ba9b79be26321a0b1eb2fc10054888c50124883c6ff4c5faa2854.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_epistemic_layering_05 -> audio/generated/tr-TR/lexical/831c9ef4e9a25597874f04aa02674c8bf6c17e7b44850d5371fbfcd26bcf00c4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0ae28fec-c398-580d-b3fe-81f4f74e46bb', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_epistemic_layering_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '21c353b2ab670ad46db2b06f20bfbcfa122b2834df71f45a7379904b09e763e8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('91bcda28-ce0d-595c-a97d-a6724d77d2c4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0ae28fec-c398-580d-b3fe-81f4f74e46bb', 1), '21c353b2ab670ad46db2b06f20bfbcfa122b2834df71f45a7379904b09e763e8',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/831c9ef4e9a25597874f04aa02674c8bf6c17e7b44850d5371fbfcd26bcf00c4.mp3', 1332, '2026-09-13 20:02:24.327953', '34e8dfd804839646cfded3d2a8557f4ca636743ced06ba6f9e4efd9852879398', 'validated', '{"audio_key":"831c9ef4e9a25597874f04aa02674c8bf6c17e7b44850d5371fbfcd26bcf00c4","entity_key":"lx_epistemic_layering_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"34e8dfd804839646cfded3d2a8557f4ca636743ced06ba6f9e4efd9852879398","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/831c9ef4e9a25597874f04aa02674c8bf6c17e7b44850d5371fbfcd26bcf00c4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_epistemic_layering_05 -> audio/generated/tr-TR/lexical/831c9ef4e9a25597874f04aa02674c8bf6c17e7b44850d5371fbfcd26bcf00c4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1dccdaa6-2dab-5066-9773-780f3a41cc11', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_epistemic_layering_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '21c353b2ab670ad46db2b06f20bfbcfa122b2834df71f45a7379904b09e763e8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('79bdd7f4-68f7-564a-b437-5d69eb172696', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1dccdaa6-2dab-5066-9773-780f3a41cc11', 1), '21c353b2ab670ad46db2b06f20bfbcfa122b2834df71f45a7379904b09e763e8',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/831c9ef4e9a25597874f04aa02674c8bf6c17e7b44850d5371fbfcd26bcf00c4.mp3', 1332, '2026-09-13 20:02:24.327953', '34e8dfd804839646cfded3d2a8557f4ca636743ced06ba6f9e4efd9852879398', 'validated', '{"audio_key":"831c9ef4e9a25597874f04aa02674c8bf6c17e7b44850d5371fbfcd26bcf00c4","entity_key":"wf_epistemic_layering_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"34e8dfd804839646cfded3d2a8557f4ca636743ced06ba6f9e4efd9852879398","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/831c9ef4e9a25597874f04aa02674c8bf6c17e7b44850d5371fbfcd26bcf00c4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_rhetorical_compression_05 -> audio/generated/tr-TR/lexical/8cbae51529298506bfc51e7a7778ed404b5b94c3f61d0e7d627b1d655e2bb7c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8127b6c1-bfcb-5980-be51-ad83fe4a2063', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_rhetorical_compression_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fbe8c5c17c84ea260c4a9fb88b41edfc13505e88c07b9c7db38298a86be6aca5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a9ae08da-cd8f-5034-95bf-ce29a407a355', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8127b6c1-bfcb-5980-be51-ad83fe4a2063', 1), 'fbe8c5c17c84ea260c4a9fb88b41edfc13505e88c07b9c7db38298a86be6aca5',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/8cbae51529298506bfc51e7a7778ed404b5b94c3f61d0e7d627b1d655e2bb7c8.mp3', 1567, '2026-09-13 20:02:25.187453', 'a05d840b48db2d8b456a0ef9dfaf3bfc1d662078d8fa2f9b5c2f2c09898e9e13', 'validated', '{"audio_key":"8cbae51529298506bfc51e7a7778ed404b5b94c3f61d0e7d627b1d655e2bb7c8","entity_key":"lx_rhetorical_compression_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a05d840b48db2d8b456a0ef9dfaf3bfc1d662078d8fa2f9b5c2f2c09898e9e13","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/8cbae51529298506bfc51e7a7778ed404b5b94c3f61d0e7d627b1d655e2bb7c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_rhetorical_compression_05 -> audio/generated/tr-TR/lexical/8cbae51529298506bfc51e7a7778ed404b5b94c3f61d0e7d627b1d655e2bb7c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c4663922-8ab8-5f31-92c9-5a5f7fb2e067', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_rhetorical_compression_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fbe8c5c17c84ea260c4a9fb88b41edfc13505e88c07b9c7db38298a86be6aca5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('239c2971-e1e0-5dea-9ab7-48b7f5d56e05', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c4663922-8ab8-5f31-92c9-5a5f7fb2e067', 1), 'fbe8c5c17c84ea260c4a9fb88b41edfc13505e88c07b9c7db38298a86be6aca5',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/8cbae51529298506bfc51e7a7778ed404b5b94c3f61d0e7d627b1d655e2bb7c8.mp3', 1567, '2026-09-13 20:02:25.187453', 'a05d840b48db2d8b456a0ef9dfaf3bfc1d662078d8fa2f9b5c2f2c09898e9e13', 'validated', '{"audio_key":"8cbae51529298506bfc51e7a7778ed404b5b94c3f61d0e7d627b1d655e2bb7c8","entity_key":"wf_rhetorical_compression_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a05d840b48db2d8b456a0ef9dfaf3bfc1d662078d8fa2f9b5c2f2c09898e9e13","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/8cbae51529298506bfc51e7a7778ed404b5b94c3f61d0e7d627b1d655e2bb7c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cross_framework_mediation_05 -> audio/generated/tr-TR/lexical/8e16d5016e7691aaa261d094e58b798bbd017ab0ff1d27fac20da82ad55297fe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8435acb4-e285-5f34-8408-a8bdcd5ef7ed', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cross_framework_mediation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2efccb82bbc2c119e82fd2cfeed2e0321bad02909afe78ababc8bfe8b95f66af'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0f502082-50af-5cc3-bd17-d6d4a8267bda', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8435acb4-e285-5f34-8408-a8bdcd5ef7ed', 1), '2efccb82bbc2c119e82fd2cfeed2e0321bad02909afe78ababc8bfe8b95f66af',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/8e16d5016e7691aaa261d094e58b798bbd017ab0ff1d27fac20da82ad55297fe.mp3', 1280, '2026-09-13 20:02:25.319589', '64895b74c58ad6a9fb5a2c74fc78a040ab024886c700cf7629d44131917d8a0b', 'validated', '{"audio_key":"8e16d5016e7691aaa261d094e58b798bbd017ab0ff1d27fac20da82ad55297fe","entity_key":"lx_cross_framework_mediation_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"64895b74c58ad6a9fb5a2c74fc78a040ab024886c700cf7629d44131917d8a0b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/8e16d5016e7691aaa261d094e58b798bbd017ab0ff1d27fac20da82ad55297fe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cross_framework_mediation_05 -> audio/generated/tr-TR/lexical/8e16d5016e7691aaa261d094e58b798bbd017ab0ff1d27fac20da82ad55297fe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('12c1a40b-8bca-5d23-a3e2-da8e12eddd2d', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cross_framework_mediation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2efccb82bbc2c119e82fd2cfeed2e0321bad02909afe78ababc8bfe8b95f66af'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6a94067a-c8cd-5d91-a6dc-e138edc71f0d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('12c1a40b-8bca-5d23-a3e2-da8e12eddd2d', 1), '2efccb82bbc2c119e82fd2cfeed2e0321bad02909afe78ababc8bfe8b95f66af',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/8e16d5016e7691aaa261d094e58b798bbd017ab0ff1d27fac20da82ad55297fe.mp3', 1280, '2026-09-13 20:02:25.319589', '64895b74c58ad6a9fb5a2c74fc78a040ab024886c700cf7629d44131917d8a0b', 'validated', '{"audio_key":"8e16d5016e7691aaa261d094e58b798bbd017ab0ff1d27fac20da82ad55297fe","entity_key":"wf_cross_framework_mediation_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"64895b74c58ad6a9fb5a2c74fc78a040ab024886c700cf7629d44131917d8a0b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/8e16d5016e7691aaa261d094e58b798bbd017ab0ff1d27fac20da82ad55297fe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_c2_expert_briefing_capstone_01 -> audio/generated/tr-TR/lexical/8e3e0dfc3e9dab96e76a33e171664c34c8b1a78faaa50327486e45a677172e25.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('28d97034-387a-578c-864e-49b73c91e600', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_c2_expert_briefing_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '50b9449b199c506f6bb1a2d1afbead46c767b8fdc0c46b898b9bd2fbef345771'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0be82ae4-ea62-5160-b8f9-fc4698fef1d5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('28d97034-387a-578c-864e-49b73c91e600', 1), '50b9449b199c506f6bb1a2d1afbead46c767b8fdc0c46b898b9bd2fbef345771',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/8e3e0dfc3e9dab96e76a33e171664c34c8b1a78faaa50327486e45a677172e25.mp3', 1097, '2026-09-13 20:02:26.172420', '3e831899041505da822e8fa03bca6f81ee71f081a750e83e971a99902549bbbe', 'validated', '{"audio_key":"8e3e0dfc3e9dab96e76a33e171664c34c8b1a78faaa50327486e45a677172e25","entity_key":"lx_c2_expert_briefing_capstone_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3e831899041505da822e8fa03bca6f81ee71f081a750e83e971a99902549bbbe","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/8e3e0dfc3e9dab96e76a33e171664c34c8b1a78faaa50327486e45a677172e25.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_c2_expert_briefing_capstone_01 -> audio/generated/tr-TR/lexical/8e3e0dfc3e9dab96e76a33e171664c34c8b1a78faaa50327486e45a677172e25.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f3930fe5-3037-52cd-a1e4-d6ce92a5a151', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_c2_expert_briefing_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '50b9449b199c506f6bb1a2d1afbead46c767b8fdc0c46b898b9bd2fbef345771'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d281f3fc-a3cb-5169-b39f-d74837b50f88', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f3930fe5-3037-52cd-a1e4-d6ce92a5a151', 1), '50b9449b199c506f6bb1a2d1afbead46c767b8fdc0c46b898b9bd2fbef345771',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/8e3e0dfc3e9dab96e76a33e171664c34c8b1a78faaa50327486e45a677172e25.mp3', 1097, '2026-09-13 20:02:26.172420', '3e831899041505da822e8fa03bca6f81ee71f081a750e83e971a99902549bbbe', 'validated', '{"audio_key":"8e3e0dfc3e9dab96e76a33e171664c34c8b1a78faaa50327486e45a677172e25","entity_key":"wf_c2_expert_briefing_capstone_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3e831899041505da822e8fa03bca6f81ee71f081a750e83e971a99902549bbbe","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/8e3e0dfc3e9dab96e76a33e171664c34c8b1a78faaa50327486e45a677172e25.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_implicature_and_pragmatics_01 -> audio/generated/tr-TR/lexical/91a379db7ebb5d190bd0cbeba35289a375456536071472cab039ca4f72972136.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('61e62ca7-0842-521f-94ce-be943839ec5f', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_implicature_and_pragmatics_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e83cf5374a8521b7fd38db26bf0e51a0c98797947c6be2d5614d75ab5e127d5a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b11e47af-4ec5-5099-8cd5-3d706630df6f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('61e62ca7-0842-521f-94ce-be943839ec5f', 1), 'e83cf5374a8521b7fd38db26bf0e51a0c98797947c6be2d5614d75ab5e127d5a',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/91a379db7ebb5d190bd0cbeba35289a375456536071472cab039ca4f72972136.mp3', 966, '2026-09-13 20:02:26.281198', 'c004c7ad0bd4d6cc038ee9aa17895ebff2a84026812a068c01c14a8807268911', 'validated', '{"audio_key":"91a379db7ebb5d190bd0cbeba35289a375456536071472cab039ca4f72972136","entity_key":"lx_implicature_and_pragmatics_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c004c7ad0bd4d6cc038ee9aa17895ebff2a84026812a068c01c14a8807268911","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/91a379db7ebb5d190bd0cbeba35289a375456536071472cab039ca4f72972136.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_implicature_and_pragmatics_01 -> audio/generated/tr-TR/lexical/91a379db7ebb5d190bd0cbeba35289a375456536071472cab039ca4f72972136.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3611f28f-aaf4-5ea0-8916-3087ce43dccc', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_implicature_and_pragmatics_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e83cf5374a8521b7fd38db26bf0e51a0c98797947c6be2d5614d75ab5e127d5a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('14340f82-2a62-5341-a430-ab9ebf542015', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3611f28f-aaf4-5ea0-8916-3087ce43dccc', 1), 'e83cf5374a8521b7fd38db26bf0e51a0c98797947c6be2d5614d75ab5e127d5a',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/91a379db7ebb5d190bd0cbeba35289a375456536071472cab039ca4f72972136.mp3', 966, '2026-09-13 20:02:26.281198', 'c004c7ad0bd4d6cc038ee9aa17895ebff2a84026812a068c01c14a8807268911', 'validated', '{"audio_key":"91a379db7ebb5d190bd0cbeba35289a375456536071472cab039ca4f72972136","entity_key":"wf_implicature_and_pragmatics_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c004c7ad0bd4d6cc038ee9aa17895ebff2a84026812a068c01c14a8807268911","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/91a379db7ebb5d190bd0cbeba35289a375456536071472cab039ca4f72972136.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_multi_source_synthesis_03 -> audio/generated/tr-TR/lexical/a59b252dedb7211b9d0cb6abffb15c928a6cd186e28ba96401ccf5560e6ab523.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c437cb70-db82-59f7-8cfe-dbdbc446c12a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_multi_source_synthesis_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c6298d0c852d94483738d88a8ee8bd41d34c83ef001ffd0155a8b7a73745ec64'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bd23b2b7-5187-566b-acf8-2d7fed65e9c0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c437cb70-db82-59f7-8cfe-dbdbc446c12a', 1), 'c6298d0c852d94483738d88a8ee8bd41d34c83ef001ffd0155a8b7a73745ec64',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/a59b252dedb7211b9d0cb6abffb15c928a6cd186e28ba96401ccf5560e6ab523.mp3', 1071, '2026-09-13 20:02:27.115004', '9eb78309d5c1f0d24311c96c6b3f3f391635c82aeb2a533c0afe9c6dce9c3cc8', 'validated', '{"audio_key":"a59b252dedb7211b9d0cb6abffb15c928a6cd186e28ba96401ccf5560e6ab523","entity_key":"lx_multi_source_synthesis_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9eb78309d5c1f0d24311c96c6b3f3f391635c82aeb2a533c0afe9c6dce9c3cc8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/a59b252dedb7211b9d0cb6abffb15c928a6cd186e28ba96401ccf5560e6ab523.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_multi_source_synthesis_03 -> audio/generated/tr-TR/lexical/a59b252dedb7211b9d0cb6abffb15c928a6cd186e28ba96401ccf5560e6ab523.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a0afe102-fdd3-5bc4-bfb8-a65bbb4ce3bd', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_multi_source_synthesis_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c6298d0c852d94483738d88a8ee8bd41d34c83ef001ffd0155a8b7a73745ec64'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9dce9ca8-7e60-5c0e-ab1f-71af5e70e9e2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a0afe102-fdd3-5bc4-bfb8-a65bbb4ce3bd', 1), 'c6298d0c852d94483738d88a8ee8bd41d34c83ef001ffd0155a8b7a73745ec64',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/a59b252dedb7211b9d0cb6abffb15c928a6cd186e28ba96401ccf5560e6ab523.mp3', 1071, '2026-09-13 20:02:27.115004', '9eb78309d5c1f0d24311c96c6b3f3f391635c82aeb2a533c0afe9c6dce9c3cc8', 'validated', '{"audio_key":"a59b252dedb7211b9d0cb6abffb15c928a6cd186e28ba96401ccf5560e6ab523","entity_key":"wf_multi_source_synthesis_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9eb78309d5c1f0d24311c96c6b3f3f391635c82aeb2a533c0afe9c6dce9c3cc8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/a59b252dedb7211b9d0cb6abffb15c928a6cd186e28ba96401ccf5560e6ab523.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_multi_source_synthesis_06 -> audio/generated/tr-TR/lexical/ac1337961f0ca96044375d94f9ef05f57c12b4f11d1ce271383d14f83a7239ba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1713f613-fd5c-592d-80a3-1e4845b72fc6', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_multi_source_synthesis_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aff0c8db304cec8381fd9757e9b547cc671c806b8ca43c3b4ba187a6b250d6fc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0764ac04-2b9d-51b1-8fc2-d9c4ce2b3b05', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1713f613-fd5c-592d-80a3-1e4845b72fc6', 1), 'aff0c8db304cec8381fd9757e9b547cc671c806b8ca43c3b4ba187a6b250d6fc',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/ac1337961f0ca96044375d94f9ef05f57c12b4f11d1ce271383d14f83a7239ba.mp3', 1149, '2026-09-13 20:02:27.280741', 'dbac10e7692fd4e82e4451c3dc4ef9c7b7ebb1a8db829d03d2409805473f6dd4', 'validated', '{"audio_key":"ac1337961f0ca96044375d94f9ef05f57c12b4f11d1ce271383d14f83a7239ba","entity_key":"lx_multi_source_synthesis_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dbac10e7692fd4e82e4451c3dc4ef9c7b7ebb1a8db829d03d2409805473f6dd4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/ac1337961f0ca96044375d94f9ef05f57c12b4f11d1ce271383d14f83a7239ba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_multi_source_synthesis_06 -> audio/generated/tr-TR/lexical/ac1337961f0ca96044375d94f9ef05f57c12b4f11d1ce271383d14f83a7239ba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('abc7b36d-42a4-515c-ace8-ca52f68118cb', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_multi_source_synthesis_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aff0c8db304cec8381fd9757e9b547cc671c806b8ca43c3b4ba187a6b250d6fc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('85d80dc5-f0f2-5b51-9a2b-58aeddbc6227', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('abc7b36d-42a4-515c-ace8-ca52f68118cb', 1), 'aff0c8db304cec8381fd9757e9b547cc671c806b8ca43c3b4ba187a6b250d6fc',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/ac1337961f0ca96044375d94f9ef05f57c12b4f11d1ce271383d14f83a7239ba.mp3', 1149, '2026-09-13 20:02:27.280741', 'dbac10e7692fd4e82e4451c3dc4ef9c7b7ebb1a8db829d03d2409805473f6dd4', 'validated', '{"audio_key":"ac1337961f0ca96044375d94f9ef05f57c12b4f11d1ce271383d14f83a7239ba","entity_key":"wf_multi_source_synthesis_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dbac10e7692fd4e82e4451c3dc4ef9c7b7ebb1a8db829d03d2409805473f6dd4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/ac1337961f0ca96044375d94f9ef05f57c12b4f11d1ce271383d14f83a7239ba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_rhetorical_compression_04 -> audio/generated/tr-TR/lexical/ada47cfcc04baa3acb1633e64f6c6a91206e817f8374662e04b79de1009967e8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c6d80055-b80b-57c4-8049-adb09458c79e', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_rhetorical_compression_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '527c105bfb69f1adb9f76695036eb98be47011b3d311189c07839b64d0cbbe70'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8b3f6948-f0e1-5189-a982-3632dbd65589', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c6d80055-b80b-57c4-8049-adb09458c79e', 1), '527c105bfb69f1adb9f76695036eb98be47011b3d311189c07839b64d0cbbe70',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/ada47cfcc04baa3acb1633e64f6c6a91206e817f8374662e04b79de1009967e8.mp3', 1071, '2026-09-13 20:02:28.117763', 'e3a89dbdbe839eda9544e426869cf43de745744307de65d75f55a7ad51191604', 'validated', '{"audio_key":"ada47cfcc04baa3acb1633e64f6c6a91206e817f8374662e04b79de1009967e8","entity_key":"lx_rhetorical_compression_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e3a89dbdbe839eda9544e426869cf43de745744307de65d75f55a7ad51191604","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/ada47cfcc04baa3acb1633e64f6c6a91206e817f8374662e04b79de1009967e8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_rhetorical_compression_04 -> audio/generated/tr-TR/lexical/ada47cfcc04baa3acb1633e64f6c6a91206e817f8374662e04b79de1009967e8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('99c42c0f-a9e1-54c9-8067-cd651aed0689', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_rhetorical_compression_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '527c105bfb69f1adb9f76695036eb98be47011b3d311189c07839b64d0cbbe70'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7a2eec2a-3f95-5044-9cbf-07dd8179b448', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('99c42c0f-a9e1-54c9-8067-cd651aed0689', 1), '527c105bfb69f1adb9f76695036eb98be47011b3d311189c07839b64d0cbbe70',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/ada47cfcc04baa3acb1633e64f6c6a91206e817f8374662e04b79de1009967e8.mp3', 1071, '2026-09-13 20:02:28.117763', 'e3a89dbdbe839eda9544e426869cf43de745744307de65d75f55a7ad51191604', 'validated', '{"audio_key":"ada47cfcc04baa3acb1633e64f6c6a91206e817f8374662e04b79de1009967e8","entity_key":"wf_rhetorical_compression_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e3a89dbdbe839eda9544e426869cf43de745744307de65d75f55a7ad51191604","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/ada47cfcc04baa3acb1633e64f6c6a91206e817f8374662e04b79de1009967e8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_counterfactual_causality_02 -> audio/generated/tr-TR/lexical/ae9560cfc6f79303f97ce74855573ca638dc52414b06d2badc4cfae047ba1c8a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7cdadd3a-0fe0-5a15-83cd-6884cc5bdd34', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_counterfactual_causality_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f018dec723c6bb982f7ee410219446fbd8eaf650ea08d1a418f1ee0418aa67c4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('80442f1c-e36b-50aa-bc3b-af47357fd57b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7cdadd3a-0fe0-5a15-83cd-6884cc5bdd34', 1), 'f018dec723c6bb982f7ee410219446fbd8eaf650ea08d1a418f1ee0418aa67c4',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/ae9560cfc6f79303f97ce74855573ca638dc52414b06d2badc4cfae047ba1c8a.mp3', 1436, '2026-09-13 20:02:28.285167', '6e96855396656c57387973d7ac141aa05fb02ac03097f5444f6d7869ca637fc2', 'validated', '{"audio_key":"ae9560cfc6f79303f97ce74855573ca638dc52414b06d2badc4cfae047ba1c8a","entity_key":"lx_counterfactual_causality_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6e96855396656c57387973d7ac141aa05fb02ac03097f5444f6d7869ca637fc2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/ae9560cfc6f79303f97ce74855573ca638dc52414b06d2badc4cfae047ba1c8a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_counterfactual_causality_02 -> audio/generated/tr-TR/lexical/ae9560cfc6f79303f97ce74855573ca638dc52414b06d2badc4cfae047ba1c8a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1c3f924c-064d-543d-8c3d-290cf24ba174', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_counterfactual_causality_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f018dec723c6bb982f7ee410219446fbd8eaf650ea08d1a418f1ee0418aa67c4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ab4096db-d8e3-5e93-8734-903ecabee27a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1c3f924c-064d-543d-8c3d-290cf24ba174', 1), 'f018dec723c6bb982f7ee410219446fbd8eaf650ea08d1a418f1ee0418aa67c4',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/ae9560cfc6f79303f97ce74855573ca638dc52414b06d2badc4cfae047ba1c8a.mp3', 1436, '2026-09-13 20:02:28.285167', '6e96855396656c57387973d7ac141aa05fb02ac03097f5444f6d7869ca637fc2', 'validated', '{"audio_key":"ae9560cfc6f79303f97ce74855573ca638dc52414b06d2badc4cfae047ba1c8a","entity_key":"wf_counterfactual_causality_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6e96855396656c57387973d7ac141aa05fb02ac03097f5444f6d7869ca637fc2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/ae9560cfc6f79303f97ce74855573ca638dc52414b06d2badc4cfae047ba1c8a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_live_reformulation_01 -> audio/generated/tr-TR/lexical/b2fce7889116648bad685691a5244e040665f7d3a82e7b514b7d9556f7f5d3ed.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fc65e478-b602-57df-8f25-348409a1d485', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_live_reformulation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fb504eb0998c44b24767b8d21207b3ca3ac6fe97641dec1a892eb29440bdb16f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('884752b0-6e62-55e7-bb18-04fc4bd8cc8b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fc65e478-b602-57df-8f25-348409a1d485', 1), 'fb504eb0998c44b24767b8d21207b3ca3ac6fe97641dec1a892eb29440bdb16f',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/b2fce7889116648bad685691a5244e040665f7d3a82e7b514b7d9556f7f5d3ed.mp3', 1750, '2026-09-13 20:02:29.124017', 'f511fbf25314c5588526fd3bf34852574177c62e1c699d77de8e6a0075a70748', 'validated', '{"audio_key":"b2fce7889116648bad685691a5244e040665f7d3a82e7b514b7d9556f7f5d3ed","entity_key":"lx_live_reformulation_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f511fbf25314c5588526fd3bf34852574177c62e1c699d77de8e6a0075a70748","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/b2fce7889116648bad685691a5244e040665f7d3a82e7b514b7d9556f7f5d3ed.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_live_reformulation_01 -> audio/generated/tr-TR/lexical/b2fce7889116648bad685691a5244e040665f7d3a82e7b514b7d9556f7f5d3ed.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('20f111aa-6276-504f-9c08-0d3a9fe8186d', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_live_reformulation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fb504eb0998c44b24767b8d21207b3ca3ac6fe97641dec1a892eb29440bdb16f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3b2cfe6b-6dda-5ed2-a6e1-d2a496c45aa8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('20f111aa-6276-504f-9c08-0d3a9fe8186d', 1), 'fb504eb0998c44b24767b8d21207b3ca3ac6fe97641dec1a892eb29440bdb16f',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/b2fce7889116648bad685691a5244e040665f7d3a82e7b514b7d9556f7f5d3ed.mp3', 1750, '2026-09-13 20:02:29.124017', 'f511fbf25314c5588526fd3bf34852574177c62e1c699d77de8e6a0075a70748', 'validated', '{"audio_key":"b2fce7889116648bad685691a5244e040665f7d3a82e7b514b7d9556f7f5d3ed","entity_key":"wf_live_reformulation_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f511fbf25314c5588526fd3bf34852574177c62e1c699d77de8e6a0075a70748","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/b2fce7889116648bad685691a5244e040665f7d3a82e7b514b7d9556f7f5d3ed.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_implicature_and_pragmatics_02 -> audio/generated/tr-TR/lexical/b4dbb8a34f5b1e568a08e4a9866be4d55faf4a42e8bdfa1d22f3d214d312e454.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('450caccd-d24b-520b-8d58-881bbd17e846', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_implicature_and_pragmatics_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd28d9443b2c430ae0bc11c77374e6a6626148ae8cb79c87b122b3f0d6e6e536f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('de3fc14b-4d8c-5092-8623-3209b286cf41', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('450caccd-d24b-520b-8d58-881bbd17e846', 1), 'd28d9443b2c430ae0bc11c77374e6a6626148ae8cb79c87b122b3f0d6e6e536f',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/b4dbb8a34f5b1e568a08e4a9866be4d55faf4a42e8bdfa1d22f3d214d312e454.mp3', 1253, '2026-09-13 20:02:29.292524', '80982724faa567cec8e9fe66d20f3247ad110c9ba829f5425f2f52ffa01af90b', 'validated', '{"audio_key":"b4dbb8a34f5b1e568a08e4a9866be4d55faf4a42e8bdfa1d22f3d214d312e454","entity_key":"lx_implicature_and_pragmatics_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"80982724faa567cec8e9fe66d20f3247ad110c9ba829f5425f2f52ffa01af90b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/b4dbb8a34f5b1e568a08e4a9866be4d55faf4a42e8bdfa1d22f3d214d312e454.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_implicature_and_pragmatics_02 -> audio/generated/tr-TR/lexical/b4dbb8a34f5b1e568a08e4a9866be4d55faf4a42e8bdfa1d22f3d214d312e454.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1f5a888e-c217-5393-9815-e4270e391c88', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_implicature_and_pragmatics_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd28d9443b2c430ae0bc11c77374e6a6626148ae8cb79c87b122b3f0d6e6e536f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c762cd2e-92a4-5977-8b1e-0dcbbb18305c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1f5a888e-c217-5393-9815-e4270e391c88', 1), 'd28d9443b2c430ae0bc11c77374e6a6626148ae8cb79c87b122b3f0d6e6e536f',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/b4dbb8a34f5b1e568a08e4a9866be4d55faf4a42e8bdfa1d22f3d214d312e454.mp3', 1253, '2026-09-13 20:02:29.292524', '80982724faa567cec8e9fe66d20f3247ad110c9ba829f5425f2f52ffa01af90b', 'validated', '{"audio_key":"b4dbb8a34f5b1e568a08e4a9866be4d55faf4a42e8bdfa1d22f3d214d312e454","entity_key":"wf_implicature_and_pragmatics_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"80982724faa567cec8e9fe66d20f3247ad110c9ba829f5425f2f52ffa01af90b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/b4dbb8a34f5b1e568a08e4a9866be4d55faf4a42e8bdfa1d22f3d214d312e454.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_epistemic_layering_02 -> audio/generated/tr-TR/lexical/bc1f918cc93e739a8a64107de2bd7c74838199f50a4e2bc2a163eff1a3188a3a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('39f164aa-5e6f-5700-8f06-62e15a4a77f1', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_epistemic_layering_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c079a753e07c8d8281a83f59df3981474cc09f35cc64255c09697e586875ca9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8f0232f0-de09-5b65-b086-4f391ba10500', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('39f164aa-5e6f-5700-8f06-62e15a4a77f1', 1), '2c079a753e07c8d8281a83f59df3981474cc09f35cc64255c09697e586875ca9',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/bc1f918cc93e739a8a64107de2bd7c74838199f50a4e2bc2a163eff1a3188a3a.mp3', 1149, '2026-09-13 19:26:42.759745', '80e382f9d97abe5c3c880a2211a40e333cef7fb0febee10763bf7c0385f0fa04', 'validated', '{"audio_key":"bc1f918cc93e739a8a64107de2bd7c74838199f50a4e2bc2a163eff1a3188a3a","entity_key":"lx_epistemic_layering_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"80e382f9d97abe5c3c880a2211a40e333cef7fb0febee10763bf7c0385f0fa04","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/bc1f918cc93e739a8a64107de2bd7c74838199f50a4e2bc2a163eff1a3188a3a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_epistemic_layering_02 -> audio/generated/tr-TR/lexical/bc1f918cc93e739a8a64107de2bd7c74838199f50a4e2bc2a163eff1a3188a3a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('66f9bb19-b929-5afa-8501-123455871957', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_epistemic_layering_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c079a753e07c8d8281a83f59df3981474cc09f35cc64255c09697e586875ca9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f2ae2d1b-8652-52d6-9397-dd4f539fce72', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('66f9bb19-b929-5afa-8501-123455871957', 1), '2c079a753e07c8d8281a83f59df3981474cc09f35cc64255c09697e586875ca9',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/bc1f918cc93e739a8a64107de2bd7c74838199f50a4e2bc2a163eff1a3188a3a.mp3', 1149, '2026-09-13 19:26:42.759745', '80e382f9d97abe5c3c880a2211a40e333cef7fb0febee10763bf7c0385f0fa04', 'validated', '{"audio_key":"bc1f918cc93e739a8a64107de2bd7c74838199f50a4e2bc2a163eff1a3188a3a","entity_key":"wf_epistemic_layering_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"80e382f9d97abe5c3c880a2211a40e333cef7fb0febee10763bf7c0385f0fa04","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/bc1f918cc93e739a8a64107de2bd7c74838199f50a4e2bc2a163eff1a3188a3a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_counterfactual_causality_04 -> audio/generated/tr-TR/lexical/c18ed65d57e1d12cf62e269f050db1357602e8c2cbc5e35fcb0951d24b6d7c09.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('53d73673-0678-5424-9d5c-bf1a3587f888', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_counterfactual_causality_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '209a86ff43c6fa5477c5688954f0caa37bd6b3fb10748d24eec6c99de42442e6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4852a73b-dd51-5ea0-9ff0-7f8b78f6e293', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('53d73673-0678-5424-9d5c-bf1a3587f888', 1), '209a86ff43c6fa5477c5688954f0caa37bd6b3fb10748d24eec6c99de42442e6',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/c18ed65d57e1d12cf62e269f050db1357602e8c2cbc5e35fcb0951d24b6d7c09.mp3', 1384, '2026-09-13 20:02:30.126293', '280eb785cc503d5592aa92bf2be2e06040dd6c4b64eb6c4f18b778f4fedd6fd7', 'validated', '{"audio_key":"c18ed65d57e1d12cf62e269f050db1357602e8c2cbc5e35fcb0951d24b6d7c09","entity_key":"lx_counterfactual_causality_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"280eb785cc503d5592aa92bf2be2e06040dd6c4b64eb6c4f18b778f4fedd6fd7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/c18ed65d57e1d12cf62e269f050db1357602e8c2cbc5e35fcb0951d24b6d7c09.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_counterfactual_causality_04 -> audio/generated/tr-TR/lexical/c18ed65d57e1d12cf62e269f050db1357602e8c2cbc5e35fcb0951d24b6d7c09.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c889db2e-a7c1-5141-a7b6-a1bfc784b40b', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_counterfactual_causality_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '209a86ff43c6fa5477c5688954f0caa37bd6b3fb10748d24eec6c99de42442e6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3c1f636c-8779-5375-a1be-87220d5cdcdb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c889db2e-a7c1-5141-a7b6-a1bfc784b40b', 1), '209a86ff43c6fa5477c5688954f0caa37bd6b3fb10748d24eec6c99de42442e6',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/c18ed65d57e1d12cf62e269f050db1357602e8c2cbc5e35fcb0951d24b6d7c09.mp3', 1384, '2026-09-13 20:02:30.126293', '280eb785cc503d5592aa92bf2be2e06040dd6c4b64eb6c4f18b778f4fedd6fd7', 'validated', '{"audio_key":"c18ed65d57e1d12cf62e269f050db1357602e8c2cbc5e35fcb0951d24b6d7c09","entity_key":"wf_counterfactual_causality_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"280eb785cc503d5592aa92bf2be2e06040dd6c4b64eb6c4f18b778f4fedd6fd7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/c18ed65d57e1d12cf62e269f050db1357602e8c2cbc5e35fcb0951d24b6d7c09.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_live_reformulation_05 -> audio/generated/tr-TR/lexical/c393c2b2e851b8b9c098a779d2f5869355e2d0f15512f4c645397448c975b4e8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('16691e7d-922e-5aa3-9a41-8b053954bf6f', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_live_reformulation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4de1b3e5f0458f5d928070b4467a01b9fd8a31e2bb9043a2671f54127051ff3e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b1c6c565-c2dc-5764-b40a-6e9df13fe195', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('16691e7d-922e-5aa3-9a41-8b053954bf6f', 1), '4de1b3e5f0458f5d928070b4467a01b9fd8a31e2bb9043a2671f54127051ff3e',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/c393c2b2e851b8b9c098a779d2f5869355e2d0f15512f4c645397448c975b4e8.mp3', 1436, '2026-09-13 19:26:43.843936', 'f1ad4066fa536a00fda4da75aa69129a8a1d607dc94e3bd3938ac9df61e2485c', 'validated', '{"audio_key":"c393c2b2e851b8b9c098a779d2f5869355e2d0f15512f4c645397448c975b4e8","entity_key":"lx_live_reformulation_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f1ad4066fa536a00fda4da75aa69129a8a1d607dc94e3bd3938ac9df61e2485c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/c393c2b2e851b8b9c098a779d2f5869355e2d0f15512f4c645397448c975b4e8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_live_reformulation_05 -> audio/generated/tr-TR/lexical/c393c2b2e851b8b9c098a779d2f5869355e2d0f15512f4c645397448c975b4e8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('40710a1b-6d3d-59d9-85e0-9a80a7290c79', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_live_reformulation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4de1b3e5f0458f5d928070b4467a01b9fd8a31e2bb9043a2671f54127051ff3e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0043a4d7-3233-50a2-8c3d-ba6204dbd0da', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('40710a1b-6d3d-59d9-85e0-9a80a7290c79', 1), '4de1b3e5f0458f5d928070b4467a01b9fd8a31e2bb9043a2671f54127051ff3e',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/c393c2b2e851b8b9c098a779d2f5869355e2d0f15512f4c645397448c975b4e8.mp3', 1436, '2026-09-13 19:26:43.843936', 'f1ad4066fa536a00fda4da75aa69129a8a1d607dc94e3bd3938ac9df61e2485c', 'validated', '{"audio_key":"c393c2b2e851b8b9c098a779d2f5869355e2d0f15512f4c645397448c975b4e8","entity_key":"wf_live_reformulation_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f1ad4066fa536a00fda4da75aa69129a8a1d607dc94e3bd3938ac9df61e2485c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/c393c2b2e851b8b9c098a779d2f5869355e2d0f15512f4c645397448c975b4e8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_rhetorical_compression_01 -> audio/generated/tr-TR/lexical/c3bc5d2c6e223d30be0ec5206d30ab09aa4c568117a237a537edac1ead49398b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5a0766dd-1c91-51fd-8d70-5e71373a2789', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_rhetorical_compression_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b00ff909a8c5cc6a4c6fa2edaeda61f4c49200359a64e741503ef0f6d102987a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('78c19b93-21b5-51f4-aab3-7d9c1916dae9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5a0766dd-1c91-51fd-8d70-5e71373a2789', 1), 'b00ff909a8c5cc6a4c6fa2edaeda61f4c49200359a64e741503ef0f6d102987a',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/c3bc5d2c6e223d30be0ec5206d30ab09aa4c568117a237a537edac1ead49398b.mp3', 1201, '2026-09-13 19:26:44.436298', '7039444e122b7c063bcd1765903449b2365dfa5c3deb31644a73358e48f4e703', 'validated', '{"audio_key":"c3bc5d2c6e223d30be0ec5206d30ab09aa4c568117a237a537edac1ead49398b","entity_key":"lx_rhetorical_compression_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7039444e122b7c063bcd1765903449b2365dfa5c3deb31644a73358e48f4e703","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/c3bc5d2c6e223d30be0ec5206d30ab09aa4c568117a237a537edac1ead49398b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_rhetorical_compression_01 -> audio/generated/tr-TR/lexical/c3bc5d2c6e223d30be0ec5206d30ab09aa4c568117a237a537edac1ead49398b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('cda205c1-cdce-5a81-9edd-50cb6e2bef66', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_rhetorical_compression_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b00ff909a8c5cc6a4c6fa2edaeda61f4c49200359a64e741503ef0f6d102987a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cd401502-734e-509c-9415-373902f5ac00', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('cda205c1-cdce-5a81-9edd-50cb6e2bef66', 1), 'b00ff909a8c5cc6a4c6fa2edaeda61f4c49200359a64e741503ef0f6d102987a',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/c3bc5d2c6e223d30be0ec5206d30ab09aa4c568117a237a537edac1ead49398b.mp3', 1201, '2026-09-13 19:26:44.436298', '7039444e122b7c063bcd1765903449b2365dfa5c3deb31644a73358e48f4e703', 'validated', '{"audio_key":"c3bc5d2c6e223d30be0ec5206d30ab09aa4c568117a237a537edac1ead49398b","entity_key":"wf_rhetorical_compression_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7039444e122b7c063bcd1765903449b2365dfa5c3deb31644a73358e48f4e703","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/c3bc5d2c6e223d30be0ec5206d30ab09aa4c568117a237a537edac1ead49398b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_legal_institutional_nuance_04 -> audio/generated/tr-TR/lexical/c77b8f40cc2795b9896f940b5a86f7dece8463a67d885cd921f126cd6cd14d53.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('394fc975-69af-52f1-b393-c753dcd512ca', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_legal_institutional_nuance_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '125f20308ce6c2bd4dbbcee120bbe8eb8ad7a31d54e8baaeedf6298d3d76270b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c765ab53-e27f-595d-aedc-347830674f0a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('394fc975-69af-52f1-b393-c753dcd512ca', 1), '125f20308ce6c2bd4dbbcee120bbe8eb8ad7a31d54e8baaeedf6298d3d76270b',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/c77b8f40cc2795b9896f940b5a86f7dece8463a67d885cd921f126cd6cd14d53.mp3', 1384, '2026-09-13 20:02:30.264404', 'aca95f4aa9413b6dc7f214fcb34fcd77e12214b2668ed223afd66fe1582f4e2a', 'validated', '{"audio_key":"c77b8f40cc2795b9896f940b5a86f7dece8463a67d885cd921f126cd6cd14d53","entity_key":"lx_legal_institutional_nuance_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"aca95f4aa9413b6dc7f214fcb34fcd77e12214b2668ed223afd66fe1582f4e2a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/c77b8f40cc2795b9896f940b5a86f7dece8463a67d885cd921f126cd6cd14d53.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_legal_institutional_nuance_04 -> audio/generated/tr-TR/lexical/c77b8f40cc2795b9896f940b5a86f7dece8463a67d885cd921f126cd6cd14d53.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3a175fb8-64db-521d-a324-f67a824ded02', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_legal_institutional_nuance_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '125f20308ce6c2bd4dbbcee120bbe8eb8ad7a31d54e8baaeedf6298d3d76270b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8975d567-01dc-55e8-8ebb-f04ee199291a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3a175fb8-64db-521d-a324-f67a824ded02', 1), '125f20308ce6c2bd4dbbcee120bbe8eb8ad7a31d54e8baaeedf6298d3d76270b',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/c77b8f40cc2795b9896f940b5a86f7dece8463a67d885cd921f126cd6cd14d53.mp3', 1384, '2026-09-13 20:02:30.264404', 'aca95f4aa9413b6dc7f214fcb34fcd77e12214b2668ed223afd66fe1582f4e2a', 'validated', '{"audio_key":"c77b8f40cc2795b9896f940b5a86f7dece8463a67d885cd921f126cd6cd14d53","entity_key":"wf_legal_institutional_nuance_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"aca95f4aa9413b6dc7f214fcb34fcd77e12214b2668ed223afd66fe1582f4e2a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/c77b8f40cc2795b9896f940b5a86f7dece8463a67d885cd921f126cd6cd14d53.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_semantic_boundaries_01 -> audio/generated/tr-TR/lexical/c8007e4ce6adacbcd7520a74a56f26cef54312ef88048678b06adb45fd54960b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('665718c2-0e1d-5461-9b70-c41f8eebcc5e', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_semantic_boundaries_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f1911a036a3fad441aa557d99e3453bb47c5dd89f5d087677ccb29392ae7ad7e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('01320956-7146-529c-98b7-51668ece5747', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('665718c2-0e1d-5461-9b70-c41f8eebcc5e', 1), 'f1911a036a3fad441aa557d99e3453bb47c5dd89f5d087677ccb29392ae7ad7e',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/c8007e4ce6adacbcd7520a74a56f26cef54312ef88048678b06adb45fd54960b.mp3', 1071, '2026-09-13 20:02:31.072486', '4ed2212bad00ffea13b8b894749947c55f65b4c2da8ee67fe39f026adc407241', 'validated', '{"audio_key":"c8007e4ce6adacbcd7520a74a56f26cef54312ef88048678b06adb45fd54960b","entity_key":"lx_semantic_boundaries_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4ed2212bad00ffea13b8b894749947c55f65b4c2da8ee67fe39f026adc407241","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/c8007e4ce6adacbcd7520a74a56f26cef54312ef88048678b06adb45fd54960b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_semantic_boundaries_01 -> audio/generated/tr-TR/lexical/c8007e4ce6adacbcd7520a74a56f26cef54312ef88048678b06adb45fd54960b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6d54b035-d403-582b-a62c-4699f4a4dd8e', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_semantic_boundaries_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f1911a036a3fad441aa557d99e3453bb47c5dd89f5d087677ccb29392ae7ad7e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('91e711b8-64bb-5448-a202-2410159facdf', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6d54b035-d403-582b-a62c-4699f4a4dd8e', 1), 'f1911a036a3fad441aa557d99e3453bb47c5dd89f5d087677ccb29392ae7ad7e',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/c8007e4ce6adacbcd7520a74a56f26cef54312ef88048678b06adb45fd54960b.mp3', 1071, '2026-09-13 20:02:31.072486', '4ed2212bad00ffea13b8b894749947c55f65b4c2da8ee67fe39f026adc407241', 'validated', '{"audio_key":"c8007e4ce6adacbcd7520a74a56f26cef54312ef88048678b06adb45fd54960b","entity_key":"wf_semantic_boundaries_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4ed2212bad00ffea13b8b894749947c55f65b4c2da8ee67fe39f026adc407241","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/c8007e4ce6adacbcd7520a74a56f26cef54312ef88048678b06adb45fd54960b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_legal_institutional_nuance_06 -> audio/generated/tr-TR/lexical/d25e92366b6ef0990c9884c43eb6250404d8dffdedca3904d86db9d267d5fefe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('67a33a61-7b2a-567d-98fc-9df4505988a1', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_legal_institutional_nuance_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8aa01cf784c83f802fa2bb36e1d1b74a2742f7607f1d47d620968cbdd8cf5b50'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f9d1ba54-6c5e-5d6e-803c-61535b37935a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('67a33a61-7b2a-567d-98fc-9df4505988a1', 1), '8aa01cf784c83f802fa2bb36e1d1b74a2742f7607f1d47d620968cbdd8cf5b50',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/d25e92366b6ef0990c9884c43eb6250404d8dffdedca3904d86db9d267d5fefe.mp3', 1384, '2026-09-13 20:02:31.298205', '1aa31b18bb4f3bc3a3098f6a0803811b4343abf3339a72303450ea2447a2ee06', 'validated', '{"audio_key":"d25e92366b6ef0990c9884c43eb6250404d8dffdedca3904d86db9d267d5fefe","entity_key":"lx_legal_institutional_nuance_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1aa31b18bb4f3bc3a3098f6a0803811b4343abf3339a72303450ea2447a2ee06","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/d25e92366b6ef0990c9884c43eb6250404d8dffdedca3904d86db9d267d5fefe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_legal_institutional_nuance_06 -> audio/generated/tr-TR/lexical/d25e92366b6ef0990c9884c43eb6250404d8dffdedca3904d86db9d267d5fefe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4a1498a7-31b1-5648-961a-144298d0d0e5', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_legal_institutional_nuance_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8aa01cf784c83f802fa2bb36e1d1b74a2742f7607f1d47d620968cbdd8cf5b50'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('524fbd99-7b87-55f5-bddc-16e8370e3fe6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4a1498a7-31b1-5648-961a-144298d0d0e5', 1), '8aa01cf784c83f802fa2bb36e1d1b74a2742f7607f1d47d620968cbdd8cf5b50',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/d25e92366b6ef0990c9884c43eb6250404d8dffdedca3904d86db9d267d5fefe.mp3', 1384, '2026-09-13 20:02:31.298205', '1aa31b18bb4f3bc3a3098f6a0803811b4343abf3339a72303450ea2447a2ee06', 'validated', '{"audio_key":"d25e92366b6ef0990c9884c43eb6250404d8dffdedca3904d86db9d267d5fefe","entity_key":"wf_legal_institutional_nuance_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1aa31b18bb4f3bc3a3098f6a0803811b4343abf3339a72303450ea2447a2ee06","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/d25e92366b6ef0990c9884c43eb6250404d8dffdedca3904d86db9d267d5fefe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_multi_source_synthesis_04 -> audio/generated/tr-TR/lexical/d729ffd1c597428a911fcb52453321a53583727d40abe41a2340a796928f6382.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2a871dbe-61dd-5ecb-818b-a60e3e33b951', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_multi_source_synthesis_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd56f521e078bb49a41d300acc69b3d6e6322715c27409db07b690018e26a88b6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b5cff823-cabf-5b09-9639-aa922fc51c9f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2a871dbe-61dd-5ecb-818b-a60e3e33b951', 1), 'd56f521e078bb49a41d300acc69b3d6e6322715c27409db07b690018e26a88b6',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/d729ffd1c597428a911fcb52453321a53583727d40abe41a2340a796928f6382.mp3', 1253, '2026-09-13 20:02:32.046450', '6d7204ee40862f02bed8ff14c1f43f64f97e7415d1fc643d4eae6b5546ef2b19', 'validated', '{"audio_key":"d729ffd1c597428a911fcb52453321a53583727d40abe41a2340a796928f6382","entity_key":"lx_multi_source_synthesis_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6d7204ee40862f02bed8ff14c1f43f64f97e7415d1fc643d4eae6b5546ef2b19","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/d729ffd1c597428a911fcb52453321a53583727d40abe41a2340a796928f6382.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_multi_source_synthesis_04 -> audio/generated/tr-TR/lexical/d729ffd1c597428a911fcb52453321a53583727d40abe41a2340a796928f6382.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d5bcb036-3cf0-5f7c-abd7-f1557c4088f2', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_multi_source_synthesis_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd56f521e078bb49a41d300acc69b3d6e6322715c27409db07b690018e26a88b6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5b0245da-535f-5626-bb22-0046ca3873c2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d5bcb036-3cf0-5f7c-abd7-f1557c4088f2', 1), 'd56f521e078bb49a41d300acc69b3d6e6322715c27409db07b690018e26a88b6',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/d729ffd1c597428a911fcb52453321a53583727d40abe41a2340a796928f6382.mp3', 1253, '2026-09-13 20:02:32.046450', '6d7204ee40862f02bed8ff14c1f43f64f97e7415d1fc643d4eae6b5546ef2b19', 'validated', '{"audio_key":"d729ffd1c597428a911fcb52453321a53583727d40abe41a2340a796928f6382","entity_key":"wf_multi_source_synthesis_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6d7204ee40862f02bed8ff14c1f43f64f97e7415d1fc643d4eae6b5546ef2b19","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/d729ffd1c597428a911fcb52453321a53583727d40abe41a2340a796928f6382.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_epistemic_layering_03 -> audio/generated/tr-TR/lexical/d97a0bb8c4b4f0e21a7365e5abfcfff370c12250a72f12c6df00aa7b67bde6bf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ceaeb190-08a1-5dfa-a8a9-a3f7ded870a5', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_epistemic_layering_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f56cb9b89dd8d2a89b818c9a49351e49845a0498c5251aafa63f19f60e6f4ffd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e50810e0-db33-570a-b158-714c5e887fa0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ceaeb190-08a1-5dfa-a8a9-a3f7ded870a5', 1), 'f56cb9b89dd8d2a89b818c9a49351e49845a0498c5251aafa63f19f60e6f4ffd',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/d97a0bb8c4b4f0e21a7365e5abfcfff370c12250a72f12c6df00aa7b67bde6bf.mp3', 1253, '2026-09-13 20:02:32.288301', '8d55cf961fda145fd839ad5cbf50aa445449ef710589fd56ddbc96ac19e0e3d2', 'validated', '{"audio_key":"d97a0bb8c4b4f0e21a7365e5abfcfff370c12250a72f12c6df00aa7b67bde6bf","entity_key":"lx_epistemic_layering_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8d55cf961fda145fd839ad5cbf50aa445449ef710589fd56ddbc96ac19e0e3d2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/d97a0bb8c4b4f0e21a7365e5abfcfff370c12250a72f12c6df00aa7b67bde6bf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_epistemic_layering_03 -> audio/generated/tr-TR/lexical/d97a0bb8c4b4f0e21a7365e5abfcfff370c12250a72f12c6df00aa7b67bde6bf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4b164038-f7b9-59d8-ab07-c857d325b25b', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_epistemic_layering_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f56cb9b89dd8d2a89b818c9a49351e49845a0498c5251aafa63f19f60e6f4ffd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('02f38b2f-d644-55a9-bfa5-27bc2d50ce76', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4b164038-f7b9-59d8-ab07-c857d325b25b', 1), 'f56cb9b89dd8d2a89b818c9a49351e49845a0498c5251aafa63f19f60e6f4ffd',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/d97a0bb8c4b4f0e21a7365e5abfcfff370c12250a72f12c6df00aa7b67bde6bf.mp3', 1253, '2026-09-13 20:02:32.288301', '8d55cf961fda145fd839ad5cbf50aa445449ef710589fd56ddbc96ac19e0e3d2', 'validated', '{"audio_key":"d97a0bb8c4b4f0e21a7365e5abfcfff370c12250a72f12c6df00aa7b67bde6bf","entity_key":"wf_epistemic_layering_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8d55cf961fda145fd839ad5cbf50aa445449ef710589fd56ddbc96ac19e0e3d2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/d97a0bb8c4b4f0e21a7365e5abfcfff370c12250a72f12c6df00aa7b67bde6bf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_rhetorical_compression_06 -> audio/generated/tr-TR/lexical/da1e2395fb166b9c3d46c45a2dae88423a9b24be57b803c2dfc9a809e315e144.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ee3d3786-59e6-5fa1-a530-c97b612243d7', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_rhetorical_compression_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e048415ce23967643d2b8934fcc0064e4c0a33c19f3ddba6c495d79e785401d4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('71ea6817-9cb5-5fc4-9e90-5aeca4474b64', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ee3d3786-59e6-5fa1-a530-c97b612243d7', 1), 'e048415ce23967643d2b8934fcc0064e4c0a33c19f3ddba6c495d79e785401d4',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/da1e2395fb166b9c3d46c45a2dae88423a9b24be57b803c2dfc9a809e315e144.mp3', 1097, '2026-09-13 20:02:33.018230', '0333d83ff76cadb61f1b3a4bcae5add8b7564a7c1250f9c96d4740eff654e976', 'validated', '{"audio_key":"da1e2395fb166b9c3d46c45a2dae88423a9b24be57b803c2dfc9a809e315e144","entity_key":"lx_rhetorical_compression_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0333d83ff76cadb61f1b3a4bcae5add8b7564a7c1250f9c96d4740eff654e976","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/da1e2395fb166b9c3d46c45a2dae88423a9b24be57b803c2dfc9a809e315e144.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_rhetorical_compression_06 -> audio/generated/tr-TR/lexical/da1e2395fb166b9c3d46c45a2dae88423a9b24be57b803c2dfc9a809e315e144.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4d01bc6f-ebc4-52ce-8d89-e5415c974c11', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_rhetorical_compression_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e048415ce23967643d2b8934fcc0064e4c0a33c19f3ddba6c495d79e785401d4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4ab80fc3-35ef-5009-b9e6-8bad219fbe98', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4d01bc6f-ebc4-52ce-8d89-e5415c974c11', 1), 'e048415ce23967643d2b8934fcc0064e4c0a33c19f3ddba6c495d79e785401d4',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/da1e2395fb166b9c3d46c45a2dae88423a9b24be57b803c2dfc9a809e315e144.mp3', 1097, '2026-09-13 20:02:33.018230', '0333d83ff76cadb61f1b3a4bcae5add8b7564a7c1250f9c96d4740eff654e976', 'validated', '{"audio_key":"da1e2395fb166b9c3d46c45a2dae88423a9b24be57b803c2dfc9a809e315e144","entity_key":"wf_rhetorical_compression_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0333d83ff76cadb61f1b3a4bcae5add8b7564a7c1250f9c96d4740eff654e976","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/da1e2395fb166b9c3d46c45a2dae88423a9b24be57b803c2dfc9a809e315e144.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_multi_source_synthesis_02 -> audio/generated/tr-TR/lexical/de397a8c6f04849accf04d467e5cb39455c6660e46f3b7372b826046439a6e44.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a9aa4fba-b3e2-5c25-8e05-7f8bb8d0db0f', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_multi_source_synthesis_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c391bfb279690a1a45f09dfa2d5cbd5f2a7fa889b1f3b8d31b3f417f80625ec1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2cc67a60-c561-5cbe-ab8d-d56e28c58b00', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a9aa4fba-b3e2-5c25-8e05-7f8bb8d0db0f', 1), 'c391bfb279690a1a45f09dfa2d5cbd5f2a7fa889b1f3b8d31b3f417f80625ec1',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/de397a8c6f04849accf04d467e5cb39455c6660e46f3b7372b826046439a6e44.mp3', 1280, '2026-09-13 19:26:45.521963', '4172fe260a3347a29c3736115ea7f23e881d6a77b9e0528ff088cbe380552f14', 'validated', '{"audio_key":"de397a8c6f04849accf04d467e5cb39455c6660e46f3b7372b826046439a6e44","entity_key":"lx_multi_source_synthesis_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4172fe260a3347a29c3736115ea7f23e881d6a77b9e0528ff088cbe380552f14","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/de397a8c6f04849accf04d467e5cb39455c6660e46f3b7372b826046439a6e44.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_multi_source_synthesis_02 -> audio/generated/tr-TR/lexical/de397a8c6f04849accf04d467e5cb39455c6660e46f3b7372b826046439a6e44.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('dfd9cff3-a0d9-5b33-9b7c-ba7bac365aba', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_multi_source_synthesis_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c391bfb279690a1a45f09dfa2d5cbd5f2a7fa889b1f3b8d31b3f417f80625ec1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c66fcab5-4d9b-5240-a507-56f355d8bcf8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('dfd9cff3-a0d9-5b33-9b7c-ba7bac365aba', 1), 'c391bfb279690a1a45f09dfa2d5cbd5f2a7fa889b1f3b8d31b3f417f80625ec1',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/de397a8c6f04849accf04d467e5cb39455c6660e46f3b7372b826046439a6e44.mp3', 1280, '2026-09-13 19:26:45.521963', '4172fe260a3347a29c3736115ea7f23e881d6a77b9e0528ff088cbe380552f14', 'validated', '{"audio_key":"de397a8c6f04849accf04d467e5cb39455c6660e46f3b7372b826046439a6e44","entity_key":"wf_multi_source_synthesis_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4172fe260a3347a29c3736115ea7f23e881d6a77b9e0528ff088cbe380552f14","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/de397a8c6f04849accf04d467e5cb39455c6660e46f3b7372b826046439a6e44.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cross_framework_mediation_02 -> audio/generated/tr-TR/lexical/e36fde5f0db2a7261fc3a8e41de988784ca4159e9bf971cc8f8136e2107a327d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0985ace2-c306-5c60-b49f-3002373b823b', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cross_framework_mediation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ba3f896e6e22e76fbe0b58a7913b7cbb086a888cbb5e4bcedb8f597d41af08b9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b329df39-3c7f-50b9-9816-c596e7945a78', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0985ace2-c306-5c60-b49f-3002373b823b', 1), 'ba3f896e6e22e76fbe0b58a7913b7cbb086a888cbb5e4bcedb8f597d41af08b9',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e36fde5f0db2a7261fc3a8e41de988784ca4159e9bf971cc8f8136e2107a327d.mp3', 1253, '2026-09-13 20:02:33.320910', '7119fb25f658b4fa92ba58e243c3df5751e86ed01031571b9713f4d618c14fca', 'validated', '{"audio_key":"e36fde5f0db2a7261fc3a8e41de988784ca4159e9bf971cc8f8136e2107a327d","entity_key":"lx_cross_framework_mediation_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7119fb25f658b4fa92ba58e243c3df5751e86ed01031571b9713f4d618c14fca","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e36fde5f0db2a7261fc3a8e41de988784ca4159e9bf971cc8f8136e2107a327d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cross_framework_mediation_02 -> audio/generated/tr-TR/lexical/e36fde5f0db2a7261fc3a8e41de988784ca4159e9bf971cc8f8136e2107a327d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b439e6aa-fa4c-532b-b3e6-52895a2de52c', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cross_framework_mediation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ba3f896e6e22e76fbe0b58a7913b7cbb086a888cbb5e4bcedb8f597d41af08b9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f90024ce-e762-5bb5-b7fc-0a0e540668a5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b439e6aa-fa4c-532b-b3e6-52895a2de52c', 1), 'ba3f896e6e22e76fbe0b58a7913b7cbb086a888cbb5e4bcedb8f597d41af08b9',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e36fde5f0db2a7261fc3a8e41de988784ca4159e9bf971cc8f8136e2107a327d.mp3', 1253, '2026-09-13 20:02:33.320910', '7119fb25f658b4fa92ba58e243c3df5751e86ed01031571b9713f4d618c14fca', 'validated', '{"audio_key":"e36fde5f0db2a7261fc3a8e41de988784ca4159e9bf971cc8f8136e2107a327d","entity_key":"wf_cross_framework_mediation_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7119fb25f658b4fa92ba58e243c3df5751e86ed01031571b9713f4d618c14fca","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e36fde5f0db2a7261fc3a8e41de988784ca4159e9bf971cc8f8136e2107a327d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_c2_expert_briefing_capstone_06 -> audio/generated/tr-TR/lexical/e63247d31b419cf2d3a527385ad340f510c3fa844bd870a39534185c365ffc1d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('974f7937-795f-5110-b43b-b94eaac7eb40', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_c2_expert_briefing_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3016da08c20fcde0195919dd255118c948bd2573628b11d2b6737706017173ef'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1dd28659-8140-55af-8fad-5a6a1f213a65', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('974f7937-795f-5110-b43b-b94eaac7eb40', 1), '3016da08c20fcde0195919dd255118c948bd2573628b11d2b6737706017173ef',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e63247d31b419cf2d3a527385ad340f510c3fa844bd870a39534185c365ffc1d.mp3', 1149, '2026-09-13 19:07:42.226623', '8db4efbe4e9cbe5708e4abd9d335ee1a47a5135d17e20e7855836ad00a30e6d2', 'validated', '{"audio_key":"e63247d31b419cf2d3a527385ad340f510c3fa844bd870a39534185c365ffc1d","entity_key":"lx_c2_expert_briefing_capstone_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8db4efbe4e9cbe5708e4abd9d335ee1a47a5135d17e20e7855836ad00a30e6d2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e63247d31b419cf2d3a527385ad340f510c3fa844bd870a39534185c365ffc1d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_c2_expert_briefing_capstone_06 -> audio/generated/tr-TR/lexical/e63247d31b419cf2d3a527385ad340f510c3fa844bd870a39534185c365ffc1d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e37307e3-6056-5de6-9149-64b5ecdd1cf6', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_c2_expert_briefing_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3016da08c20fcde0195919dd255118c948bd2573628b11d2b6737706017173ef'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9914615d-c493-5740-ad42-455ac745b5ec', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e37307e3-6056-5de6-9149-64b5ecdd1cf6', 1), '3016da08c20fcde0195919dd255118c948bd2573628b11d2b6737706017173ef',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e63247d31b419cf2d3a527385ad340f510c3fa844bd870a39534185c365ffc1d.mp3', 1149, '2026-09-13 19:07:42.226623', '8db4efbe4e9cbe5708e4abd9d335ee1a47a5135d17e20e7855836ad00a30e6d2', 'validated', '{"audio_key":"e63247d31b419cf2d3a527385ad340f510c3fa844bd870a39534185c365ffc1d","entity_key":"wf_c2_expert_briefing_capstone_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8db4efbe4e9cbe5708e4abd9d335ee1a47a5135d17e20e7855836ad00a30e6d2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e63247d31b419cf2d3a527385ad340f510c3fa844bd870a39534185c365ffc1d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_rhetorical_compression_03 -> audio/generated/tr-TR/lexical/eae2e6f2d5c7f03fc580266feeb553089373bc9d2d03f9bcf5d924bb24b5abe3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2f6348ec-ec74-5754-bd7b-25d7e73e20fc', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_rhetorical_compression_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '26df4c031ec1df166c0a508dc990de2e179a2b6e213b1bc085e747dc5641e670'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1d798d09-20b0-5bc0-8289-07825eab91cf', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2f6348ec-ec74-5754-bd7b-25d7e73e20fc', 1), '26df4c031ec1df166c0a508dc990de2e179a2b6e213b1bc085e747dc5641e670',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/eae2e6f2d5c7f03fc580266feeb553089373bc9d2d03f9bcf5d924bb24b5abe3.mp3', 1280, '2026-09-13 20:02:33.982392', 'e0403af62c1bfc03ec2627f6675496510fc469858a40fdb5bfecfbba090274df', 'validated', '{"audio_key":"eae2e6f2d5c7f03fc580266feeb553089373bc9d2d03f9bcf5d924bb24b5abe3","entity_key":"lx_rhetorical_compression_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e0403af62c1bfc03ec2627f6675496510fc469858a40fdb5bfecfbba090274df","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/eae2e6f2d5c7f03fc580266feeb553089373bc9d2d03f9bcf5d924bb24b5abe3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_rhetorical_compression_03 -> audio/generated/tr-TR/lexical/eae2e6f2d5c7f03fc580266feeb553089373bc9d2d03f9bcf5d924bb24b5abe3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e54fe102-5070-5c2f-98df-d058cc9ba786', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_rhetorical_compression_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '26df4c031ec1df166c0a508dc990de2e179a2b6e213b1bc085e747dc5641e670'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e096695b-7062-58c6-97fb-0aaec387f394', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e54fe102-5070-5c2f-98df-d058cc9ba786', 1), '26df4c031ec1df166c0a508dc990de2e179a2b6e213b1bc085e747dc5641e670',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/eae2e6f2d5c7f03fc580266feeb553089373bc9d2d03f9bcf5d924bb24b5abe3.mp3', 1280, '2026-09-13 20:02:33.982392', 'e0403af62c1bfc03ec2627f6675496510fc469858a40fdb5bfecfbba090274df', 'validated', '{"audio_key":"eae2e6f2d5c7f03fc580266feeb553089373bc9d2d03f9bcf5d924bb24b5abe3","entity_key":"wf_rhetorical_compression_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e0403af62c1bfc03ec2627f6675496510fc469858a40fdb5bfecfbba090274df","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/eae2e6f2d5c7f03fc580266feeb553089373bc9d2d03f9bcf5d924bb24b5abe3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_epistemic_layering_06 -> audio/generated/tr-TR/lexical/ee41469a62e4cd230c6a39e8c8a53d41f0b9b604a94de87b0438eae4d34b4470.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('677696d2-7c63-5327-9307-473064174920', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_epistemic_layering_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd53a507a2bb5d729afb592bdc5287eaa4c631bbaa5e6d551fe0477cce8e9216e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('37ef433f-7031-5a7d-9254-9f6fd1089425', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('677696d2-7c63-5327-9307-473064174920', 1), 'd53a507a2bb5d729afb592bdc5287eaa4c631bbaa5e6d551fe0477cce8e9216e',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/ee41469a62e4cd230c6a39e8c8a53d41f0b9b604a94de87b0438eae4d34b4470.mp3', 1332, '2026-09-13 20:02:34.301145', 'bafa8cc0d25311cc2970a7daf4eaf6131ea1658a45bda842b6d95b827565c8c2', 'validated', '{"audio_key":"ee41469a62e4cd230c6a39e8c8a53d41f0b9b604a94de87b0438eae4d34b4470","entity_key":"lx_epistemic_layering_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bafa8cc0d25311cc2970a7daf4eaf6131ea1658a45bda842b6d95b827565c8c2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/ee41469a62e4cd230c6a39e8c8a53d41f0b9b604a94de87b0438eae4d34b4470.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_epistemic_layering_06 -> audio/generated/tr-TR/lexical/ee41469a62e4cd230c6a39e8c8a53d41f0b9b604a94de87b0438eae4d34b4470.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('da662bfd-effe-513c-84f5-29a2ed2e57b6', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_epistemic_layering_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd53a507a2bb5d729afb592bdc5287eaa4c631bbaa5e6d551fe0477cce8e9216e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5cd06c87-c50b-5588-934e-283805c125a4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('da662bfd-effe-513c-84f5-29a2ed2e57b6', 1), 'd53a507a2bb5d729afb592bdc5287eaa4c631bbaa5e6d551fe0477cce8e9216e',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/ee41469a62e4cd230c6a39e8c8a53d41f0b9b604a94de87b0438eae4d34b4470.mp3', 1332, '2026-09-13 20:02:34.301145', 'bafa8cc0d25311cc2970a7daf4eaf6131ea1658a45bda842b6d95b827565c8c2', 'validated', '{"audio_key":"ee41469a62e4cd230c6a39e8c8a53d41f0b9b604a94de87b0438eae4d34b4470","entity_key":"wf_epistemic_layering_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bafa8cc0d25311cc2970a7daf4eaf6131ea1658a45bda842b6d95b827565c8c2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/ee41469a62e4cd230c6a39e8c8a53d41f0b9b604a94de87b0438eae4d34b4470.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_multi_source_synthesis_05 -> audio/generated/tr-TR/lexical/f5ff36a16a644ebdce37e96056208fcb3482a3944a53a78c412cbc0d72890bb1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0a63d531-14b1-5e7d-949e-3d296b91ce9e', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_multi_source_synthesis_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f2fd9da885c6f50721bb4b296d1ac40613dcf7dad2f1891ef0fa026f9debbe19'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('94a2914d-7397-59bf-8025-5e11861b03b1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0a63d531-14b1-5e7d-949e-3d296b91ce9e', 1), 'f2fd9da885c6f50721bb4b296d1ac40613dcf7dad2f1891ef0fa026f9debbe19',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f5ff36a16a644ebdce37e96056208fcb3482a3944a53a78c412cbc0d72890bb1.mp3', 1201, '2026-09-13 17:57:06.364216', 'af1bf13b40d6df9fafba896c22ec9d55084642b59bb25e142fb4d91989c6dddd', 'validated', '{"audio_key":"f5ff36a16a644ebdce37e96056208fcb3482a3944a53a78c412cbc0d72890bb1","entity_key":"lx_multi_source_synthesis_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"af1bf13b40d6df9fafba896c22ec9d55084642b59bb25e142fb4d91989c6dddd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f5ff36a16a644ebdce37e96056208fcb3482a3944a53a78c412cbc0d72890bb1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_multi_source_synthesis_05 -> audio/generated/tr-TR/lexical/f5ff36a16a644ebdce37e96056208fcb3482a3944a53a78c412cbc0d72890bb1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9eed080d-d035-5ee1-a3ef-989ea6e5616a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_multi_source_synthesis_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f2fd9da885c6f50721bb4b296d1ac40613dcf7dad2f1891ef0fa026f9debbe19'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8ae9fa50-bf1d-514e-827e-5553f6d9140d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9eed080d-d035-5ee1-a3ef-989ea6e5616a', 1), 'f2fd9da885c6f50721bb4b296d1ac40613dcf7dad2f1891ef0fa026f9debbe19',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f5ff36a16a644ebdce37e96056208fcb3482a3944a53a78c412cbc0d72890bb1.mp3', 1201, '2026-09-13 17:57:06.364216', 'af1bf13b40d6df9fafba896c22ec9d55084642b59bb25e142fb4d91989c6dddd', 'validated', '{"audio_key":"f5ff36a16a644ebdce37e96056208fcb3482a3944a53a78c412cbc0d72890bb1","entity_key":"wf_multi_source_synthesis_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"af1bf13b40d6df9fafba896c22ec9d55084642b59bb25e142fb4d91989c6dddd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f5ff36a16a644ebdce37e96056208fcb3482a3944a53a78c412cbc0d72890bb1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_c2_expert_briefing_capstone_05 -> audio/generated/tr-TR/lexical/f835cf2811c619b154037ce1fa6b48c2c22528c4af716f179807a419e7237190.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0e49b6c2-4754-5aa6-9a38-30ccc7b1261f', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_c2_expert_briefing_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '45d59a81515880d3f9451eb37c1b64061c3778ddda4745458421aae36a9df4ec'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ffa7bcb4-8490-5dac-b69e-8db0a028712f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0e49b6c2-4754-5aa6-9a38-30ccc7b1261f', 1), '45d59a81515880d3f9451eb37c1b64061c3778ddda4745458421aae36a9df4ec',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f835cf2811c619b154037ce1fa6b48c2c22528c4af716f179807a419e7237190.mp3', 1384, '2026-09-13 20:02:34.991734', '57c808f2351d3ca16a3fb2cf64eab857c1915a18107ce3ea957fbb3cf7ba9702', 'validated', '{"audio_key":"f835cf2811c619b154037ce1fa6b48c2c22528c4af716f179807a419e7237190","entity_key":"lx_c2_expert_briefing_capstone_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"57c808f2351d3ca16a3fb2cf64eab857c1915a18107ce3ea957fbb3cf7ba9702","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f835cf2811c619b154037ce1fa6b48c2c22528c4af716f179807a419e7237190.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_c2_expert_briefing_capstone_05 -> audio/generated/tr-TR/lexical/f835cf2811c619b154037ce1fa6b48c2c22528c4af716f179807a419e7237190.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ab0a7daf-1988-5997-9d85-2a15fbd7ffcd', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_c2_expert_briefing_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '45d59a81515880d3f9451eb37c1b64061c3778ddda4745458421aae36a9df4ec'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cca8d511-d1fb-5ff2-b4ca-b881c63fc739', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ab0a7daf-1988-5997-9d85-2a15fbd7ffcd', 1), '45d59a81515880d3f9451eb37c1b64061c3778ddda4745458421aae36a9df4ec',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f835cf2811c619b154037ce1fa6b48c2c22528c4af716f179807a419e7237190.mp3', 1384, '2026-09-13 20:02:34.991734', '57c808f2351d3ca16a3fb2cf64eab857c1915a18107ce3ea957fbb3cf7ba9702', 'validated', '{"audio_key":"f835cf2811c619b154037ce1fa6b48c2c22528c4af716f179807a419e7237190","entity_key":"wf_c2_expert_briefing_capstone_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"57c808f2351d3ca16a3fb2cf64eab857c1915a18107ce3ea957fbb3cf7ba9702","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f835cf2811c619b154037ce1fa6b48c2c22528c4af716f179807a419e7237190.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_c2_expert_briefing_capstone_04 -> audio/generated/tr-TR/lexical/f97529fd29501ceaa2205ed0b91ac3d5bc154675ddf7fa1e0e613d1ac9eb9f4b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('07b7ad12-6d14-5ca8-9477-d368ad74c31e', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_c2_expert_briefing_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2512773fac3812adfa7b92ed3bead63e57cbce564f9d3fc063c229610f4acc7e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f17b4300-b3e6-5f7f-9792-aaaec03ba945', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('07b7ad12-6d14-5ca8-9477-d368ad74c31e', 1), '2512773fac3812adfa7b92ed3bead63e57cbce564f9d3fc063c229610f4acc7e',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f97529fd29501ceaa2205ed0b91ac3d5bc154675ddf7fa1e0e613d1ac9eb9f4b.mp3', 1201, '2026-09-13 20:02:35.317610', '3af9626f229ba727fea03c4f469adf0ace3fbf8d27852daf56907b761f8b0f5a', 'validated', '{"audio_key":"f97529fd29501ceaa2205ed0b91ac3d5bc154675ddf7fa1e0e613d1ac9eb9f4b","entity_key":"lx_c2_expert_briefing_capstone_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3af9626f229ba727fea03c4f469adf0ace3fbf8d27852daf56907b761f8b0f5a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f97529fd29501ceaa2205ed0b91ac3d5bc154675ddf7fa1e0e613d1ac9eb9f4b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_c2_expert_briefing_capstone_04 -> audio/generated/tr-TR/lexical/f97529fd29501ceaa2205ed0b91ac3d5bc154675ddf7fa1e0e613d1ac9eb9f4b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e7980258-210e-5715-ad45-bec0199cc56e', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_c2_expert_briefing_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2512773fac3812adfa7b92ed3bead63e57cbce564f9d3fc063c229610f4acc7e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e158ddaf-20df-5a3d-91b0-8ddaaff626ae', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e7980258-210e-5715-ad45-bec0199cc56e', 1), '2512773fac3812adfa7b92ed3bead63e57cbce564f9d3fc063c229610f4acc7e',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f97529fd29501ceaa2205ed0b91ac3d5bc154675ddf7fa1e0e613d1ac9eb9f4b.mp3', 1201, '2026-09-13 20:02:35.317610', '3af9626f229ba727fea03c4f469adf0ace3fbf8d27852daf56907b761f8b0f5a', 'validated', '{"audio_key":"f97529fd29501ceaa2205ed0b91ac3d5bc154675ddf7fa1e0e613d1ac9eb9f4b","entity_key":"wf_c2_expert_briefing_capstone_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3af9626f229ba727fea03c4f469adf0ace3fbf8d27852daf56907b761f8b0f5a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f97529fd29501ceaa2205ed0b91ac3d5bc154675ddf7fa1e0e613d1ac9eb9f4b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_multi_source_synthesis_02 -> audio/generated/tr-TR/utterances/02e1fa0d77ae6d6220ba00e4a9f7c89095feffade8ba5518bea6aba543342945.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1e9cb549-8a00-5eca-a4a5-371fe2401ab1', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_multi_source_synthesis_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c872371e337a48dcb4d970a91ef8e0ef60f1fc78d7f12d219d84aa064fcad1a9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3f1dfe85-fd0c-5a84-819c-5917ed2898f0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1e9cb549-8a00-5eca-a4a5-371fe2401ab1', 1), 'c872371e337a48dcb4d970a91ef8e0ef60f1fc78d7f12d219d84aa064fcad1a9',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/02e1fa0d77ae6d6220ba00e4a9f7c89095feffade8ba5518bea6aba543342945.mp3', 5146, '2026-09-13 20:02:36.413301', '4cdc9afb47bed1774c1d3723351d58d568cf03f7747543995a0a6f6e8c06125c', 'validated', '{"audio_key":"02e1fa0d77ae6d6220ba00e4a9f7c89095feffade8ba5518bea6aba543342945","entity_key":"u_multi_source_synthesis_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4cdc9afb47bed1774c1d3723351d58d568cf03f7747543995a0a6f6e8c06125c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/02e1fa0d77ae6d6220ba00e4a9f7c89095feffade8ba5518bea6aba543342945.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_multi_source_synthesis_01_listen -> audio/generated/tr-TR/utterances/02e1fa0d77ae6d6220ba00e4a9f7c89095feffade8ba5518bea6aba543342945.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('d0e4531d-d991-5199-ba5f-fd9db5738a46', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_multi_source_synthesis_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c872371e337a48dcb4d970a91ef8e0ef60f1fc78d7f12d219d84aa064fcad1a9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('64cd9f6c-c5a0-54ab-95be-d29c6c7e7f8e', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('d0e4531d-d991-5199-ba5f-fd9db5738a46', 1), 'c872371e337a48dcb4d970a91ef8e0ef60f1fc78d7f12d219d84aa064fcad1a9',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/02e1fa0d77ae6d6220ba00e4a9f7c89095feffade8ba5518bea6aba543342945.mp3', 5146, '2026-09-13 20:02:36.413301', '4cdc9afb47bed1774c1d3723351d58d568cf03f7747543995a0a6f6e8c06125c', 'validated', '{"audio_key":"02e1fa0d77ae6d6220ba00e4a9f7c89095feffade8ba5518bea6aba543342945","entity_key":"e_multi_source_synthesis_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4cdc9afb47bed1774c1d3723351d58d568cf03f7747543995a0a6f6e8c06125c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/02e1fa0d77ae6d6220ba00e4a9f7c89095feffade8ba5518bea6aba543342945.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_semantic_boundaries_03 -> audio/generated/tr-TR/utterances/0522c9e286d90f1aee2011729fb730aea0cf931db08b5f9d9281086f94e2b3a2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('487e5499-7fce-54d9-9921-2535eaf492cf', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_semantic_boundaries_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '99aa0b26af458071b2605bf1f0035d294016c5922a8fe7910c36c770e6bb9215'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e319749c-62a8-5013-b59e-9878a739f620', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('487e5499-7fce-54d9-9921-2535eaf492cf', 1), '99aa0b26af458071b2605bf1f0035d294016c5922a8fe7910c36c770e6bb9215',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/0522c9e286d90f1aee2011729fb730aea0cf931db08b5f9d9281086f94e2b3a2.mp3', 5459, '2026-09-13 20:02:36.733630', '996beef2ed4ade03ef0655100941e422b525827b775f59ec6363881297a2834d', 'validated', '{"audio_key":"0522c9e286d90f1aee2011729fb730aea0cf931db08b5f9d9281086f94e2b3a2","entity_key":"u_semantic_boundaries_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"996beef2ed4ade03ef0655100941e422b525827b775f59ec6363881297a2834d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/0522c9e286d90f1aee2011729fb730aea0cf931db08b5f9d9281086f94e2b3a2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_live_reformulation_03 -> audio/generated/tr-TR/utterances/05bb376b1009252c6bdd0f9334dae8354780e0bd10ae1f60fa543788d6590717.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bf980f80-413c-5975-88a2-ea278660f11e', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_live_reformulation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '741386f4d97c41e2bda68a8f69912977b6a940df22d8fa3e5821457460f1e931'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('35e1f07b-7587-5b15-b100-f13ca518075b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bf980f80-413c-5975-88a2-ea278660f11e', 1), '741386f4d97c41e2bda68a8f69912977b6a940df22d8fa3e5821457460f1e931',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/05bb376b1009252c6bdd0f9334dae8354780e0bd10ae1f60fa543788d6590717.mp3', 3892, '2026-09-13 20:02:37.720642', '52337288d950d922906f82116ebb0ae73aead726c330b64f9a37a74da49e75f8', 'validated', '{"audio_key":"05bb376b1009252c6bdd0f9334dae8354780e0bd10ae1f60fa543788d6590717","entity_key":"u_live_reformulation_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"52337288d950d922906f82116ebb0ae73aead726c330b64f9a37a74da49e75f8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/05bb376b1009252c6bdd0f9334dae8354780e0bd10ae1f60fa543788d6590717.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_semantic_boundaries_02 -> audio/generated/tr-TR/utterances/06b9e8e65577e0c2b6a33c6c858f4cdd960ed6cfb61754f20e84fa700fdbb80a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7db9675f-fb96-53d2-9a9a-c60bb0d18282', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_semantic_boundaries_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0414534dc7e7ba114b858f97534e1583886c062b5b5de362f65bb8766e132456'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d4742a60-f3ad-518e-8129-3e164c29b4f8', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7db9675f-fb96-53d2-9a9a-c60bb0d18282', 1), '0414534dc7e7ba114b858f97534e1583886c062b5b5de362f65bb8766e132456',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/06b9e8e65577e0c2b6a33c6c858f4cdd960ed6cfb61754f20e84fa700fdbb80a.mp3', 5276, '2026-09-13 20:02:38.175268', 'eebcf813c7721fafbccdad903b00a45653efb132ab1301ca1ef14c0f0921bef6', 'validated', '{"audio_key":"06b9e8e65577e0c2b6a33c6c858f4cdd960ed6cfb61754f20e84fa700fdbb80a","entity_key":"u_semantic_boundaries_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"eebcf813c7721fafbccdad903b00a45653efb132ab1301ca1ef14c0f0921bef6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/06b9e8e65577e0c2b6a33c6c858f4cdd960ed6cfb61754f20e84fa700fdbb80a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_semantic_boundaries_01_listen -> audio/generated/tr-TR/utterances/06b9e8e65577e0c2b6a33c6c858f4cdd960ed6cfb61754f20e84fa700fdbb80a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('16eed20c-4211-564b-8092-16fe6c877e38', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_semantic_boundaries_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0414534dc7e7ba114b858f97534e1583886c062b5b5de362f65bb8766e132456'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7f079064-8bb7-5089-a174-416460eb492e', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('16eed20c-4211-564b-8092-16fe6c877e38', 1), '0414534dc7e7ba114b858f97534e1583886c062b5b5de362f65bb8766e132456',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/06b9e8e65577e0c2b6a33c6c858f4cdd960ed6cfb61754f20e84fa700fdbb80a.mp3', 5276, '2026-09-13 20:02:38.175268', 'eebcf813c7721fafbccdad903b00a45653efb132ab1301ca1ef14c0f0921bef6', 'validated', '{"audio_key":"06b9e8e65577e0c2b6a33c6c858f4cdd960ed6cfb61754f20e84fa700fdbb80a","entity_key":"e_semantic_boundaries_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"eebcf813c7721fafbccdad903b00a45653efb132ab1301ca1ef14c0f0921bef6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/06b9e8e65577e0c2b6a33c6c858f4cdd960ed6cfb61754f20e84fa700fdbb80a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_epistemic_layering_03 -> audio/generated/tr-TR/utterances/0db5b102c8703a563c8bc179ebee08219797279f578ba34ac972588dcf91ae68.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('88525557-2cae-5828-abe9-3b0e00396f48', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_epistemic_layering_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '812d26ca9afb8744580ef030b8c25f56e90ce716604bf946f55d398284ffd037'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4ffe1329-812c-5d5b-9dec-f65ae11fb93b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('88525557-2cae-5828-abe9-3b0e00396f48', 1), '812d26ca9afb8744580ef030b8c25f56e90ce716604bf946f55d398284ffd037',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/0db5b102c8703a563c8bc179ebee08219797279f578ba34ac972588dcf91ae68.mp3', 6034, '2026-09-13 20:02:39.246858', 'dcbd90a3f6c6b1cc851272b854fa590831d6f87495300d4c331f3e80bf030a52', 'validated', '{"audio_key":"0db5b102c8703a563c8bc179ebee08219797279f578ba34ac972588dcf91ae68","entity_key":"u_epistemic_layering_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dcbd90a3f6c6b1cc851272b854fa590831d6f87495300d4c331f3e80bf030a52","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/0db5b102c8703a563c8bc179ebee08219797279f578ba34ac972588dcf91ae68.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_legal_institutional_nuance_04 -> audio/generated/tr-TR/utterances/11705c36c6d34e60410f7410791b8a6143d3b64b90bd025b5cd62c25b5f8fec0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('180184a8-a612-51c7-9a5c-1f543250b856', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_legal_institutional_nuance_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '27049d9c8cb5272e5a24488ee911971e163b91a8133ca7bfd803dd79b2a16a5b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('31da1bd8-fafb-56ee-8dec-db36a87783b3', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('180184a8-a612-51c7-9a5c-1f543250b856', 1), '27049d9c8cb5272e5a24488ee911971e163b91a8133ca7bfd803dd79b2a16a5b',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/11705c36c6d34e60410f7410791b8a6143d3b64b90bd025b5cd62c25b5f8fec0.mp3', 5093, '2026-09-13 20:02:39.588069', 'f91dc8814465583b80c1b4f2679abc59ef4b3fd4da0514e5891cc40753e8599b', 'validated', '{"audio_key":"11705c36c6d34e60410f7410791b8a6143d3b64b90bd025b5cd62c25b5f8fec0","entity_key":"u_legal_institutional_nuance_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f91dc8814465583b80c1b4f2679abc59ef4b3fd4da0514e5891cc40753e8599b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/11705c36c6d34e60410f7410791b8a6143d3b64b90bd025b5cd62c25b5f8fec0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_legal_institutional_nuance_02_listen -> audio/generated/tr-TR/utterances/11705c36c6d34e60410f7410791b8a6143d3b64b90bd025b5cd62c25b5f8fec0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('1f3176b7-33aa-5eaa-a08b-3d1804253daa', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_legal_institutional_nuance_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '27049d9c8cb5272e5a24488ee911971e163b91a8133ca7bfd803dd79b2a16a5b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8912b841-423a-5acf-838b-33eb06b2c3f1', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('1f3176b7-33aa-5eaa-a08b-3d1804253daa', 1), '27049d9c8cb5272e5a24488ee911971e163b91a8133ca7bfd803dd79b2a16a5b',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/11705c36c6d34e60410f7410791b8a6143d3b64b90bd025b5cd62c25b5f8fec0.mp3', 5093, '2026-09-13 20:02:39.588069', 'f91dc8814465583b80c1b4f2679abc59ef4b3fd4da0514e5891cc40753e8599b', 'validated', '{"audio_key":"11705c36c6d34e60410f7410791b8a6143d3b64b90bd025b5cd62c25b5f8fec0","entity_key":"e_legal_institutional_nuance_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f91dc8814465583b80c1b4f2679abc59ef4b3fd4da0514e5891cc40753e8599b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/11705c36c6d34e60410f7410791b8a6143d3b64b90bd025b5cd62c25b5f8fec0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_rhetorical_compression_03 -> audio/generated/tr-TR/utterances/157919e95067e0fe8259cf3aae5e9b218053049e9650fb5ef51d7e636dda103f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c3f3aac4-632a-5c0f-87bd-a969388bd441', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_rhetorical_compression_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9ea6a2800b2430c16b786813a9f5eb6fd73d404ce67fdc3dc2276436daf4be54'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ade79d4a-8cd6-58ff-991f-c0a37f1d7a18', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c3f3aac4-632a-5c0f-87bd-a969388bd441', 1), '9ea6a2800b2430c16b786813a9f5eb6fd73d404ce67fdc3dc2276436daf4be54',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/157919e95067e0fe8259cf3aae5e9b218053049e9650fb5ef51d7e636dda103f.mp3', 4911, '2026-09-13 20:02:40.603165', '0098e197e45a5d020dd3020f5aa8dccd49cb0a2402893d8bfaf9dbc9c25a50b8', 'validated', '{"audio_key":"157919e95067e0fe8259cf3aae5e9b218053049e9650fb5ef51d7e636dda103f","entity_key":"u_rhetorical_compression_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0098e197e45a5d020dd3020f5aa8dccd49cb0a2402893d8bfaf9dbc9c25a50b8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/157919e95067e0fe8259cf3aae5e9b218053049e9650fb5ef51d7e636dda103f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_semantic_boundaries_01 -> audio/generated/tr-TR/utterances/34c9e94fd7b7fc35bd2b93b95d876ef239c5ff5d2a80591a308bc5b0a4430d30.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3e4d0bbe-eefe-5edc-a933-9b51c51a65ce', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_semantic_boundaries_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a0f947cf313527df445494aa9ff2c29fc95158d739fc7f385d9052662b656ddc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('213e6281-b2cf-5921-ab48-b3990a0d4c5c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3e4d0bbe-eefe-5edc-a933-9b51c51a65ce', 1), 'a0f947cf313527df445494aa9ff2c29fc95158d739fc7f385d9052662b656ddc',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/34c9e94fd7b7fc35bd2b93b95d876ef239c5ff5d2a80591a308bc5b0a4430d30.mp3', 4963, '2026-09-13 20:02:40.985207', '94cf3296ed3c5af1fc2d10cf7fa36a14e94d825055255b4c6aaa74e53d0c5363', 'validated', '{"audio_key":"34c9e94fd7b7fc35bd2b93b95d876ef239c5ff5d2a80591a308bc5b0a4430d30","entity_key":"u_semantic_boundaries_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"94cf3296ed3c5af1fc2d10cf7fa36a14e94d825055255b4c6aaa74e53d0c5363","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/34c9e94fd7b7fc35bd2b93b95d876ef239c5ff5d2a80591a308bc5b0a4430d30.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_implicature_and_pragmatics_03 -> audio/generated/tr-TR/utterances/38461ea54a4db4bb3c8f97712c978d7788f859d1a483270afe1d781b61fef2d5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('53ce31cd-13eb-5efd-a98f-3538f7e21917', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_implicature_and_pragmatics_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '60b31f0052502c617c0e3145502266d7cddca4a59071afeea72cd868caba3b86'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c80bface-d4fa-5671-a955-b80f2d8683a3', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('53ce31cd-13eb-5efd-a98f-3538f7e21917', 1), '60b31f0052502c617c0e3145502266d7cddca4a59071afeea72cd868caba3b86',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/38461ea54a4db4bb3c8f97712c978d7788f859d1a483270afe1d781b61fef2d5.mp3', 5982, '2026-09-13 20:02:42.222907', 'c98a5b3db8ecc04c5abaaf0dcf57a32b416579e25f0b0a39bd5565a863beb9a1', 'validated', '{"audio_key":"38461ea54a4db4bb3c8f97712c978d7788f859d1a483270afe1d781b61fef2d5","entity_key":"u_implicature_and_pragmatics_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c98a5b3db8ecc04c5abaaf0dcf57a32b416579e25f0b0a39bd5565a863beb9a1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/38461ea54a4db4bb3c8f97712c978d7788f859d1a483270afe1d781b61fef2d5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_c2_expert_briefing_capstone_03 -> audio/generated/tr-TR/utterances/38bd2c4cdf4e9e2fa645579b84ab3de6fe77532d6238842b7fd7b00fd9d2aa13.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('642c23e4-a6f6-5119-a9aa-6ac5cf6bf16d', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_c2_expert_briefing_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '87856a3d9fce6a46bc2636119f9b2eaadd851b4a5895841326fd6326517d28bd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a245cc0a-86c8-5e5b-8ac6-5578fecc4734', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('642c23e4-a6f6-5119-a9aa-6ac5cf6bf16d', 1), '87856a3d9fce6a46bc2636119f9b2eaadd851b4a5895841326fd6326517d28bd',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/38bd2c4cdf4e9e2fa645579b84ab3de6fe77532d6238842b7fd7b00fd9d2aa13.mp3', 7131, '2026-09-13 20:02:42.664389', 'c2c3147fe6816789f3dd36bc81d43646f7e0380ab77d6145c8f311310eeecdfc', 'validated', '{"audio_key":"38bd2c4cdf4e9e2fa645579b84ab3de6fe77532d6238842b7fd7b00fd9d2aa13","entity_key":"u_c2_expert_briefing_capstone_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c2c3147fe6816789f3dd36bc81d43646f7e0380ab77d6145c8f311310eeecdfc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/38bd2c4cdf4e9e2fa645579b84ab3de6fe77532d6238842b7fd7b00fd9d2aa13.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_multi_source_synthesis_03 -> audio/generated/tr-TR/utterances/3d51e2f69156635f492d5a2a0235898854ee698ddeb35fecb76b2fb872beb35d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4866ebd9-2715-58df-a6c5-009db4e6844d', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_multi_source_synthesis_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3e8b5ba6565407f5a8a755b81929d73161300c8151c3aae4666fb23a1e6422a0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1319f321-46c8-5690-bc7c-230e0e454995', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4866ebd9-2715-58df-a6c5-009db4e6844d', 1), '3e8b5ba6565407f5a8a755b81929d73161300c8151c3aae4666fb23a1e6422a0',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/3d51e2f69156635f492d5a2a0235898854ee698ddeb35fecb76b2fb872beb35d.mp3', 5146, '2026-09-13 20:02:43.696677', '28629081dad2f26cd032b5d2cd65cb3555b48231547b780e6c87a8642cc3e839', 'validated', '{"audio_key":"3d51e2f69156635f492d5a2a0235898854ee698ddeb35fecb76b2fb872beb35d","entity_key":"u_multi_source_synthesis_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"28629081dad2f26cd032b5d2cd65cb3555b48231547b780e6c87a8642cc3e839","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/3d51e2f69156635f492d5a2a0235898854ee698ddeb35fecb76b2fb872beb35d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_counterfactual_causality_04 -> audio/generated/tr-TR/utterances/45887043d8bbca72f882189975a0612d5d3fc6815dbf2a495128da8128638d3f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d6fc2148-7394-5e51-a667-77baeb0f34b1', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_counterfactual_causality_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4718f421835e27ca56e5ce51e7e7fb158a6fdd0a651732c884a0acd97193c347'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3ac794c3-b7d5-59e6-8a9d-d5f1567e5e32', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d6fc2148-7394-5e51-a667-77baeb0f34b1', 1), '4718f421835e27ca56e5ce51e7e7fb158a6fdd0a651732c884a0acd97193c347',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/45887043d8bbca72f882189975a0612d5d3fc6815dbf2a495128da8128638d3f.mp3', 6112, '2026-09-13 20:02:44.162382', 'ee871da01b2e708b848d05a823294402c8d081d548c3f77a8e94051476aa3326', 'validated', '{"audio_key":"45887043d8bbca72f882189975a0612d5d3fc6815dbf2a495128da8128638d3f","entity_key":"u_counterfactual_causality_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ee871da01b2e708b848d05a823294402c8d081d548c3f77a8e94051476aa3326","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/45887043d8bbca72f882189975a0612d5d3fc6815dbf2a495128da8128638d3f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_counterfactual_causality_02_listen -> audio/generated/tr-TR/utterances/45887043d8bbca72f882189975a0612d5d3fc6815dbf2a495128da8128638d3f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('458c53c1-690c-5bc3-9189-7f83359427bd', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_counterfactual_causality_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4718f421835e27ca56e5ce51e7e7fb158a6fdd0a651732c884a0acd97193c347'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5c21f43f-ed0c-5fc4-93c3-289d00ca1945', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('458c53c1-690c-5bc3-9189-7f83359427bd', 1), '4718f421835e27ca56e5ce51e7e7fb158a6fdd0a651732c884a0acd97193c347',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/45887043d8bbca72f882189975a0612d5d3fc6815dbf2a495128da8128638d3f.mp3', 6112, '2026-09-13 20:02:44.162382', 'ee871da01b2e708b848d05a823294402c8d081d548c3f77a8e94051476aa3326', 'validated', '{"audio_key":"45887043d8bbca72f882189975a0612d5d3fc6815dbf2a495128da8128638d3f","entity_key":"e_counterfactual_causality_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ee871da01b2e708b848d05a823294402c8d081d548c3f77a8e94051476aa3326","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/45887043d8bbca72f882189975a0612d5d3fc6815dbf2a495128da8128638d3f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_c2_expert_briefing_capstone_02 -> audio/generated/tr-TR/utterances/46e0c91e83c2e871063ec5010e897f0668efee5bcef73231edcfd76c8febc5b6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d7269408-c3c5-5c1b-8f8d-84d3600e2ece', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_c2_expert_briefing_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3d3deb96196c9a4c8166e02cb81934d8edc6ba4c49aed26a476638fe0fee8082'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('777bc952-3488-53f3-a429-57e24ab846cd', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d7269408-c3c5-5c1b-8f8d-84d3600e2ece', 1), '3d3deb96196c9a4c8166e02cb81934d8edc6ba4c49aed26a476638fe0fee8082',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/46e0c91e83c2e871063ec5010e897f0668efee5bcef73231edcfd76c8febc5b6.mp3', 6086, '2026-09-13 20:02:45.260590', '1fa74f3fdae68979e9580369b267da05296f25ac7d8a40a178cab7385a0ba712', 'validated', '{"audio_key":"46e0c91e83c2e871063ec5010e897f0668efee5bcef73231edcfd76c8febc5b6","entity_key":"u_c2_expert_briefing_capstone_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1fa74f3fdae68979e9580369b267da05296f25ac7d8a40a178cab7385a0ba712","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/46e0c91e83c2e871063ec5010e897f0668efee5bcef73231edcfd76c8febc5b6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_c2_expert_briefing_capstone_01_listen -> audio/generated/tr-TR/utterances/46e0c91e83c2e871063ec5010e897f0668efee5bcef73231edcfd76c8febc5b6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('d974fd89-1a62-5b8a-b89b-5f2250b87f88', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_c2_expert_briefing_capstone_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3d3deb96196c9a4c8166e02cb81934d8edc6ba4c49aed26a476638fe0fee8082'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f44b7ca3-1a35-5fab-8277-e20e62508ceb', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('d974fd89-1a62-5b8a-b89b-5f2250b87f88', 1), '3d3deb96196c9a4c8166e02cb81934d8edc6ba4c49aed26a476638fe0fee8082',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/46e0c91e83c2e871063ec5010e897f0668efee5bcef73231edcfd76c8febc5b6.mp3', 6086, '2026-09-13 20:02:45.260590', '1fa74f3fdae68979e9580369b267da05296f25ac7d8a40a178cab7385a0ba712', 'validated', '{"audio_key":"46e0c91e83c2e871063ec5010e897f0668efee5bcef73231edcfd76c8febc5b6","entity_key":"e_c2_expert_briefing_capstone_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1fa74f3fdae68979e9580369b267da05296f25ac7d8a40a178cab7385a0ba712","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/46e0c91e83c2e871063ec5010e897f0668efee5bcef73231edcfd76c8febc5b6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_live_reformulation_02 -> audio/generated/tr-TR/utterances/475be3561ac27edc5086c6713fd4678e68211dca038072207855a7a085b01ea0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d0e0141b-321d-5e8d-9435-e6b14b4bd6b3', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_live_reformulation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5ab440cf75e684dbe4547b740f3004c6d80a5434a3defecbfa061b18abe81697'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('59dfc25d-cef2-5223-9118-d6f6852ceced', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d0e0141b-321d-5e8d-9435-e6b14b4bd6b3', 1), '5ab440cf75e684dbe4547b740f3004c6d80a5434a3defecbfa061b18abe81697',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/475be3561ac27edc5086c6713fd4678e68211dca038072207855a7a085b01ea0.mp3', 5146, '2026-09-13 20:02:45.555627', '4b9f11fbccfbc9b0b386d94b92b3f97c521bbcf828acfaab953f398ca79d9f1c', 'validated', '{"audio_key":"475be3561ac27edc5086c6713fd4678e68211dca038072207855a7a085b01ea0","entity_key":"u_live_reformulation_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4b9f11fbccfbc9b0b386d94b92b3f97c521bbcf828acfaab953f398ca79d9f1c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/475be3561ac27edc5086c6713fd4678e68211dca038072207855a7a085b01ea0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_live_reformulation_01_listen -> audio/generated/tr-TR/utterances/475be3561ac27edc5086c6713fd4678e68211dca038072207855a7a085b01ea0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('f52ca335-fe98-5652-8707-16607a0050b3', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_live_reformulation_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5ab440cf75e684dbe4547b740f3004c6d80a5434a3defecbfa061b18abe81697'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b1a4753f-c56d-5804-a9f2-9987b1000526', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('f52ca335-fe98-5652-8707-16607a0050b3', 1), '5ab440cf75e684dbe4547b740f3004c6d80a5434a3defecbfa061b18abe81697',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/475be3561ac27edc5086c6713fd4678e68211dca038072207855a7a085b01ea0.mp3', 5146, '2026-09-13 20:02:45.555627', '4b9f11fbccfbc9b0b386d94b92b3f97c521bbcf828acfaab953f398ca79d9f1c', 'validated', '{"audio_key":"475be3561ac27edc5086c6713fd4678e68211dca038072207855a7a085b01ea0","entity_key":"e_live_reformulation_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4b9f11fbccfbc9b0b386d94b92b3f97c521bbcf828acfaab953f398ca79d9f1c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/475be3561ac27edc5086c6713fd4678e68211dca038072207855a7a085b01ea0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_legal_institutional_nuance_02 -> audio/generated/tr-TR/utterances/4d7ade03e9fc7b05c383764ebf60ca29ec62056e96fa2a130fefe5e604ac3a62.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('54076bc9-950c-509d-9dd8-89f4e002f381', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_legal_institutional_nuance_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '82880272cbb70c765898ef74054f060f817b072f67751da33973be225090ad4a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6e9ad198-6274-5251-8d87-3918ff9aa297', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('54076bc9-950c-509d-9dd8-89f4e002f381', 1), '82880272cbb70c765898ef74054f060f817b072f67751da33973be225090ad4a',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/4d7ade03e9fc7b05c383764ebf60ca29ec62056e96fa2a130fefe5e604ac3a62.mp3', 5041, '2026-09-13 20:02:46.678686', '5481e514ea66d08f9bb8e78123069da44f07a256956e040840d2945cb6bd46b0', 'validated', '{"audio_key":"4d7ade03e9fc7b05c383764ebf60ca29ec62056e96fa2a130fefe5e604ac3a62","entity_key":"u_legal_institutional_nuance_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5481e514ea66d08f9bb8e78123069da44f07a256956e040840d2945cb6bd46b0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/4d7ade03e9fc7b05c383764ebf60ca29ec62056e96fa2a130fefe5e604ac3a62.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_legal_institutional_nuance_01_listen -> audio/generated/tr-TR/utterances/4d7ade03e9fc7b05c383764ebf60ca29ec62056e96fa2a130fefe5e604ac3a62.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7bfa87b0-efd4-5d7f-b7f0-aca7164ac465', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_legal_institutional_nuance_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '82880272cbb70c765898ef74054f060f817b072f67751da33973be225090ad4a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('06b9d007-ec7f-5b90-89b7-87b959b41f77', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7bfa87b0-efd4-5d7f-b7f0-aca7164ac465', 1), '82880272cbb70c765898ef74054f060f817b072f67751da33973be225090ad4a',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/4d7ade03e9fc7b05c383764ebf60ca29ec62056e96fa2a130fefe5e604ac3a62.mp3', 5041, '2026-09-13 20:02:46.678686', '5481e514ea66d08f9bb8e78123069da44f07a256956e040840d2945cb6bd46b0', 'validated', '{"audio_key":"4d7ade03e9fc7b05c383764ebf60ca29ec62056e96fa2a130fefe5e604ac3a62","entity_key":"e_legal_institutional_nuance_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5481e514ea66d08f9bb8e78123069da44f07a256956e040840d2945cb6bd46b0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/4d7ade03e9fc7b05c383764ebf60ca29ec62056e96fa2a130fefe5e604ac3a62.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_implicature_and_pragmatics_02 -> audio/generated/tr-TR/utterances/4fa1c2d46c323f661587848955913ad862204fdd19a92a1f2e50595d07ef2218.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ed335699-cab5-5c7d-8798-8d4d43e05dd7', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_implicature_and_pragmatics_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e1717a20e7067f1c1f1197a7715aaa6a7354a4e462ef4a54b30ad63f64d777d4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('204046d8-56dd-5d34-9f18-5f5b3976d9c6', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ed335699-cab5-5c7d-8798-8d4d43e05dd7', 1), 'e1717a20e7067f1c1f1197a7715aaa6a7354a4e462ef4a54b30ad63f64d777d4',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/4fa1c2d46c323f661587848955913ad862204fdd19a92a1f2e50595d07ef2218.mp3', 5746, '2026-09-13 20:02:47.161808', '9d0fbed09e9682bca2242505d085785851a5ef524fb48a7d4d75312c0cf535f1', 'validated', '{"audio_key":"4fa1c2d46c323f661587848955913ad862204fdd19a92a1f2e50595d07ef2218","entity_key":"u_implicature_and_pragmatics_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9d0fbed09e9682bca2242505d085785851a5ef524fb48a7d4d75312c0cf535f1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/4fa1c2d46c323f661587848955913ad862204fdd19a92a1f2e50595d07ef2218.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_implicature_and_pragmatics_01_listen -> audio/generated/tr-TR/utterances/4fa1c2d46c323f661587848955913ad862204fdd19a92a1f2e50595d07ef2218.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('34cf0185-5dee-579d-8072-6f3b77db9377', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_implicature_and_pragmatics_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e1717a20e7067f1c1f1197a7715aaa6a7354a4e462ef4a54b30ad63f64d777d4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c24b1632-55c8-5371-b5ac-9e3bbcc11194', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('34cf0185-5dee-579d-8072-6f3b77db9377', 1), 'e1717a20e7067f1c1f1197a7715aaa6a7354a4e462ef4a54b30ad63f64d777d4',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/4fa1c2d46c323f661587848955913ad862204fdd19a92a1f2e50595d07ef2218.mp3', 5746, '2026-09-13 20:02:47.161808', '9d0fbed09e9682bca2242505d085785851a5ef524fb48a7d4d75312c0cf535f1', 'validated', '{"audio_key":"4fa1c2d46c323f661587848955913ad862204fdd19a92a1f2e50595d07ef2218","entity_key":"e_implicature_and_pragmatics_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9d0fbed09e9682bca2242505d085785851a5ef524fb48a7d4d75312c0cf535f1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/4fa1c2d46c323f661587848955913ad862204fdd19a92a1f2e50595d07ef2218.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_live_reformulation_01 -> audio/generated/tr-TR/utterances/516d0b4910d4170e881b5c3681b301b04084133756e0fd54878aa3642903a3fc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bb216ffb-18f3-544d-8644-81e607ff9d44', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_live_reformulation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f99331388aad046b7cb909ab7e740d8c9028954432dd4a42bfc94d662a7508f2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0b0dc571-b754-5fb2-bf6f-cb58e27c2011', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bb216ffb-18f3-544d-8644-81e607ff9d44', 1), 'f99331388aad046b7cb909ab7e740d8c9028954432dd4a42bfc94d662a7508f2',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/516d0b4910d4170e881b5c3681b301b04084133756e0fd54878aa3642903a3fc.mp3', 5250, '2026-09-13 20:02:48.266557', 'ef762b666a473cae3ac25069dd426b4353badd312b059c3a4a1eaad78525824f', 'validated', '{"audio_key":"516d0b4910d4170e881b5c3681b301b04084133756e0fd54878aa3642903a3fc","entity_key":"u_live_reformulation_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ef762b666a473cae3ac25069dd426b4353badd312b059c3a4a1eaad78525824f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/516d0b4910d4170e881b5c3681b301b04084133756e0fd54878aa3642903a3fc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_epistemic_layering_04 -> audio/generated/tr-TR/utterances/55521601e19a93dd93e13fbb8b9276d48666880116010672844de22e46699a37.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8e7bc1f9-e3a7-5428-88ce-8878120cfc03', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_epistemic_layering_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '59354a13d938a92dc36c8da0925baf7cf4fcc1e7b3f88706fc6a53146002c0d6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b456ce6a-3193-5619-8593-12b6c40cc069', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8e7bc1f9-e3a7-5428-88ce-8878120cfc03', 1), '59354a13d938a92dc36c8da0925baf7cf4fcc1e7b3f88706fc6a53146002c0d6',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/55521601e19a93dd93e13fbb8b9276d48666880116010672844de22e46699a37.mp3', 5799, '2026-09-13 20:02:48.623310', '3e0caaf015468134358d25cd6ebba4105bc78792a329f157d3683ee5227538fe', 'validated', '{"audio_key":"55521601e19a93dd93e13fbb8b9276d48666880116010672844de22e46699a37","entity_key":"u_epistemic_layering_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3e0caaf015468134358d25cd6ebba4105bc78792a329f157d3683ee5227538fe","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/55521601e19a93dd93e13fbb8b9276d48666880116010672844de22e46699a37.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_epistemic_layering_02_listen -> audio/generated/tr-TR/utterances/55521601e19a93dd93e13fbb8b9276d48666880116010672844de22e46699a37.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7a7c7ffa-0707-5ddd-afae-b225f5740307', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_epistemic_layering_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '59354a13d938a92dc36c8da0925baf7cf4fcc1e7b3f88706fc6a53146002c0d6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cb16246c-b029-5299-8fb5-a5058940f749', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7a7c7ffa-0707-5ddd-afae-b225f5740307', 1), '59354a13d938a92dc36c8da0925baf7cf4fcc1e7b3f88706fc6a53146002c0d6',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/55521601e19a93dd93e13fbb8b9276d48666880116010672844de22e46699a37.mp3', 5799, '2026-09-13 20:02:48.623310', '3e0caaf015468134358d25cd6ebba4105bc78792a329f157d3683ee5227538fe', 'validated', '{"audio_key":"55521601e19a93dd93e13fbb8b9276d48666880116010672844de22e46699a37","entity_key":"e_epistemic_layering_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3e0caaf015468134358d25cd6ebba4105bc78792a329f157d3683ee5227538fe","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/55521601e19a93dd93e13fbb8b9276d48666880116010672844de22e46699a37.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_c2_expert_briefing_capstone_04 -> audio/generated/tr-TR/utterances/568bb5cc6d11e2f60936a3988641f45ec2fdccfdd509d942afde7d3cb48746c6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('253f2a77-d8b1-598c-b033-4d74261dd209', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_c2_expert_briefing_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8a2d934010ad7fe51699dcaa4d4d2da73f86a2c5511b17e6aa5daeda37337cf5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a4803c59-8bc1-5cb1-b0b2-96d19b2df053', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('253f2a77-d8b1-598c-b033-4d74261dd209', 1), '8a2d934010ad7fe51699dcaa4d4d2da73f86a2c5511b17e6aa5daeda37337cf5',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/568bb5cc6d11e2f60936a3988641f45ec2fdccfdd509d942afde7d3cb48746c6.mp3', 7523, '2026-09-13 20:02:50.079434', 'ebb4a6ee82bfcb74ed9409510361a1d5774a34e8c7afbad995b8063b7b9d7686', 'validated', '{"audio_key":"568bb5cc6d11e2f60936a3988641f45ec2fdccfdd509d942afde7d3cb48746c6","entity_key":"u_c2_expert_briefing_capstone_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ebb4a6ee82bfcb74ed9409510361a1d5774a34e8c7afbad995b8063b7b9d7686","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/568bb5cc6d11e2f60936a3988641f45ec2fdccfdd509d942afde7d3cb48746c6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_c2_expert_briefing_capstone_02_listen -> audio/generated/tr-TR/utterances/568bb5cc6d11e2f60936a3988641f45ec2fdccfdd509d942afde7d3cb48746c6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('188667ce-6531-581d-bdec-21de5cd9ad67', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_c2_expert_briefing_capstone_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8a2d934010ad7fe51699dcaa4d4d2da73f86a2c5511b17e6aa5daeda37337cf5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7b1d138f-03af-58de-a03f-bae3be5eb603', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('188667ce-6531-581d-bdec-21de5cd9ad67', 1), '8a2d934010ad7fe51699dcaa4d4d2da73f86a2c5511b17e6aa5daeda37337cf5',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/568bb5cc6d11e2f60936a3988641f45ec2fdccfdd509d942afde7d3cb48746c6.mp3', 7523, '2026-09-13 20:02:50.079434', 'ebb4a6ee82bfcb74ed9409510361a1d5774a34e8c7afbad995b8063b7b9d7686', 'validated', '{"audio_key":"568bb5cc6d11e2f60936a3988641f45ec2fdccfdd509d942afde7d3cb48746c6","entity_key":"e_c2_expert_briefing_capstone_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ebb4a6ee82bfcb74ed9409510361a1d5774a34e8c7afbad995b8063b7b9d7686","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/568bb5cc6d11e2f60936a3988641f45ec2fdccfdd509d942afde7d3cb48746c6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_implicature_and_pragmatics_04 -> audio/generated/tr-TR/utterances/59d47b38f2496a69d34402d605292d8a76e629b2bc94b072c168f2b8c723ca82.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bbb55b4e-4ae5-50e0-b468-9993431d8a3a', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_implicature_and_pragmatics_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '71129a94e5b93dae679334fed2901e6cc60f491b1623f407a3c2b9f1ef97a391'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fb95a6ea-7355-5d2f-86ee-ada54d0e5e23', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bbb55b4e-4ae5-50e0-b468-9993431d8a3a', 1), '71129a94e5b93dae679334fed2901e6cc60f491b1623f407a3c2b9f1ef97a391',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/59d47b38f2496a69d34402d605292d8a76e629b2bc94b072c168f2b8c723ca82.mp3', 5276, '2026-09-13 20:02:50.025191', '37e9c457d1de3ee337fd7ec6670b52186a9f9e1c4fe968151da64d8192bbb6e1', 'validated', '{"audio_key":"59d47b38f2496a69d34402d605292d8a76e629b2bc94b072c168f2b8c723ca82","entity_key":"u_implicature_and_pragmatics_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"37e9c457d1de3ee337fd7ec6670b52186a9f9e1c4fe968151da64d8192bbb6e1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/59d47b38f2496a69d34402d605292d8a76e629b2bc94b072c168f2b8c723ca82.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_implicature_and_pragmatics_02_listen -> audio/generated/tr-TR/utterances/59d47b38f2496a69d34402d605292d8a76e629b2bc94b072c168f2b8c723ca82.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('8b0d23b3-c99f-51ff-bccb-fcd493582410', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_implicature_and_pragmatics_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '71129a94e5b93dae679334fed2901e6cc60f491b1623f407a3c2b9f1ef97a391'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9cc31cc7-01bb-5c8e-af02-9432787309fc', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('8b0d23b3-c99f-51ff-bccb-fcd493582410', 1), '71129a94e5b93dae679334fed2901e6cc60f491b1623f407a3c2b9f1ef97a391',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/59d47b38f2496a69d34402d605292d8a76e629b2bc94b072c168f2b8c723ca82.mp3', 5276, '2026-09-13 20:02:50.025191', '37e9c457d1de3ee337fd7ec6670b52186a9f9e1c4fe968151da64d8192bbb6e1', 'validated', '{"audio_key":"59d47b38f2496a69d34402d605292d8a76e629b2bc94b072c168f2b8c723ca82","entity_key":"e_implicature_and_pragmatics_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"37e9c457d1de3ee337fd7ec6670b52186a9f9e1c4fe968151da64d8192bbb6e1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/59d47b38f2496a69d34402d605292d8a76e629b2bc94b072c168f2b8c723ca82.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_counterfactual_causality_02 -> audio/generated/tr-TR/utterances/66af93a5f900d4f5b6f5711651377e059846b1fb179cfe4cf0494281b01c1760.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('53056916-b7df-5907-8ffc-cc09a4da7940', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_counterfactual_causality_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '04d39d79ab63d9d7ade307e2bced17e02919526580c46c1214739d70c6299285'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('28522baf-9db1-554d-9d1e-59591557456f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('53056916-b7df-5907-8ffc-cc09a4da7940', 1), '04d39d79ab63d9d7ade307e2bced17e02919526580c46c1214739d70c6299285',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/66af93a5f900d4f5b6f5711651377e059846b1fb179cfe4cf0494281b01c1760.mp3', 5564, '2026-09-13 20:02:51.565294', '68a469047ad03349e9a3096f68f0c36fdb4e4df19897fb5e25a005ddda1e4b70', 'validated', '{"audio_key":"66af93a5f900d4f5b6f5711651377e059846b1fb179cfe4cf0494281b01c1760","entity_key":"u_counterfactual_causality_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"68a469047ad03349e9a3096f68f0c36fdb4e4df19897fb5e25a005ddda1e4b70","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/66af93a5f900d4f5b6f5711651377e059846b1fb179cfe4cf0494281b01c1760.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_counterfactual_causality_01_listen -> audio/generated/tr-TR/utterances/66af93a5f900d4f5b6f5711651377e059846b1fb179cfe4cf0494281b01c1760.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('edab3f84-164b-5256-8d00-bd4927350825', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_counterfactual_causality_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '04d39d79ab63d9d7ade307e2bced17e02919526580c46c1214739d70c6299285'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f0b171d0-6cad-5029-81e2-03b2ea2c3369', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('edab3f84-164b-5256-8d00-bd4927350825', 1), '04d39d79ab63d9d7ade307e2bced17e02919526580c46c1214739d70c6299285',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/66af93a5f900d4f5b6f5711651377e059846b1fb179cfe4cf0494281b01c1760.mp3', 5564, '2026-09-13 20:02:51.565294', '68a469047ad03349e9a3096f68f0c36fdb4e4df19897fb5e25a005ddda1e4b70', 'validated', '{"audio_key":"66af93a5f900d4f5b6f5711651377e059846b1fb179cfe4cf0494281b01c1760","entity_key":"e_counterfactual_causality_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"68a469047ad03349e9a3096f68f0c36fdb4e4df19897fb5e25a005ddda1e4b70","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/66af93a5f900d4f5b6f5711651377e059846b1fb179cfe4cf0494281b01c1760.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_semantic_boundaries_04 -> audio/generated/tr-TR/utterances/6e77c210bbaf6e2957d4ce6875e4611d5cff27fe07af562c888b8eb03fd6a233.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('99dab31a-3c78-5856-aa85-032e5330a1cb', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_semantic_boundaries_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '20bf2145d6b27c2ecf57579963746d8eb8189ed582ec77e6a63d6cc0166659df'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eecb543a-efee-5ed4-9d79-988e6d946379', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('99dab31a-3c78-5856-aa85-032e5330a1cb', 1), '20bf2145d6b27c2ecf57579963746d8eb8189ed582ec77e6a63d6cc0166659df',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/6e77c210bbaf6e2957d4ce6875e4611d5cff27fe07af562c888b8eb03fd6a233.mp3', 5041, '2026-09-13 20:02:51.504505', '1766d80e10a54203ecdeaff4af0c1ac71d10143c94de8b150ffaefe57365dcde', 'validated', '{"audio_key":"6e77c210bbaf6e2957d4ce6875e4611d5cff27fe07af562c888b8eb03fd6a233","entity_key":"u_semantic_boundaries_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1766d80e10a54203ecdeaff4af0c1ac71d10143c94de8b150ffaefe57365dcde","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/6e77c210bbaf6e2957d4ce6875e4611d5cff27fe07af562c888b8eb03fd6a233.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_semantic_boundaries_02_listen -> audio/generated/tr-TR/utterances/6e77c210bbaf6e2957d4ce6875e4611d5cff27fe07af562c888b8eb03fd6a233.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('3a5e6d6a-a0ee-59dc-ae72-7ceda75c4373', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_semantic_boundaries_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '20bf2145d6b27c2ecf57579963746d8eb8189ed582ec77e6a63d6cc0166659df'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7c51f937-d750-527f-8b9a-993709f46e9d', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('3a5e6d6a-a0ee-59dc-ae72-7ceda75c4373', 1), '20bf2145d6b27c2ecf57579963746d8eb8189ed582ec77e6a63d6cc0166659df',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/6e77c210bbaf6e2957d4ce6875e4611d5cff27fe07af562c888b8eb03fd6a233.mp3', 5041, '2026-09-13 20:02:51.504505', '1766d80e10a54203ecdeaff4af0c1ac71d10143c94de8b150ffaefe57365dcde', 'validated', '{"audio_key":"6e77c210bbaf6e2957d4ce6875e4611d5cff27fe07af562c888b8eb03fd6a233","entity_key":"e_semantic_boundaries_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1766d80e10a54203ecdeaff4af0c1ac71d10143c94de8b150ffaefe57365dcde","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/6e77c210bbaf6e2957d4ce6875e4611d5cff27fe07af562c888b8eb03fd6a233.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_multi_source_synthesis_04 -> audio/generated/tr-TR/utterances/728f3ad4850f0073cbc1a1f5e223d6b3e306e82e932403fea563ae49fee2d1b2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e7fcc95a-4d95-5726-88b0-eeed9769556f', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_multi_source_synthesis_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bdbe4ebb22240bc581d82883befb7171e3fe20bdda2e3e00749a4888b10ec09f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4b396b31-8e9b-57ce-b99c-4db0a5014b27', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e7fcc95a-4d95-5726-88b0-eeed9769556f', 1), 'bdbe4ebb22240bc581d82883befb7171e3fe20bdda2e3e00749a4888b10ec09f',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/728f3ad4850f0073cbc1a1f5e223d6b3e306e82e932403fea563ae49fee2d1b2.mp3', 7183, '2026-09-13 20:02:53.132417', '960f3b489a6160351c88cf14d51b53bb881da0f7bed62e4e0086a8b9f17a49cb', 'validated', '{"audio_key":"728f3ad4850f0073cbc1a1f5e223d6b3e306e82e932403fea563ae49fee2d1b2","entity_key":"u_multi_source_synthesis_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"960f3b489a6160351c88cf14d51b53bb881da0f7bed62e4e0086a8b9f17a49cb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/728f3ad4850f0073cbc1a1f5e223d6b3e306e82e932403fea563ae49fee2d1b2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_multi_source_synthesis_02_listen -> audio/generated/tr-TR/utterances/728f3ad4850f0073cbc1a1f5e223d6b3e306e82e932403fea563ae49fee2d1b2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('d7ed8566-2aac-54d6-b2ee-8f743dd1df84', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_multi_source_synthesis_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bdbe4ebb22240bc581d82883befb7171e3fe20bdda2e3e00749a4888b10ec09f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ec16ff6b-aeef-5600-8573-cddade8034f1', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('d7ed8566-2aac-54d6-b2ee-8f743dd1df84', 1), 'bdbe4ebb22240bc581d82883befb7171e3fe20bdda2e3e00749a4888b10ec09f',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/728f3ad4850f0073cbc1a1f5e223d6b3e306e82e932403fea563ae49fee2d1b2.mp3', 7183, '2026-09-13 20:02:53.132417', '960f3b489a6160351c88cf14d51b53bb881da0f7bed62e4e0086a8b9f17a49cb', 'validated', '{"audio_key":"728f3ad4850f0073cbc1a1f5e223d6b3e306e82e932403fea563ae49fee2d1b2","entity_key":"e_multi_source_synthesis_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"960f3b489a6160351c88cf14d51b53bb881da0f7bed62e4e0086a8b9f17a49cb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/728f3ad4850f0073cbc1a1f5e223d6b3e306e82e932403fea563ae49fee2d1b2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_cross_framework_mediation_02 -> audio/generated/tr-TR/utterances/75d58db4968a2249c16b4a46c93a8ff0e328076aa3d6348ae8bc775f25922ee7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a0e3da62-7f61-50e4-8ae2-b3dc047c472d', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_cross_framework_mediation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f21d13af57f8d4af62c9684b2c446a6cfe5033386d6302a707967a9d3f4acd95'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c435f0fc-8406-5fb1-bf14-d79f8d90c008', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a0e3da62-7f61-50e4-8ae2-b3dc047c472d', 1), 'f21d13af57f8d4af62c9684b2c446a6cfe5033386d6302a707967a9d3f4acd95',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/75d58db4968a2249c16b4a46c93a8ff0e328076aa3d6348ae8bc775f25922ee7.mp3', 5564, '2026-09-13 20:02:53.015683', '33638508749ad39b39c57634ebdab14bc95a4b00af8430793217b06072354773', 'validated', '{"audio_key":"75d58db4968a2249c16b4a46c93a8ff0e328076aa3d6348ae8bc775f25922ee7","entity_key":"u_cross_framework_mediation_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"33638508749ad39b39c57634ebdab14bc95a4b00af8430793217b06072354773","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/75d58db4968a2249c16b4a46c93a8ff0e328076aa3d6348ae8bc775f25922ee7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_cross_framework_mediation_01_listen -> audio/generated/tr-TR/utterances/75d58db4968a2249c16b4a46c93a8ff0e328076aa3d6348ae8bc775f25922ee7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('2ff357f6-23a0-51be-b339-9e0f7bb82c01', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_cross_framework_mediation_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f21d13af57f8d4af62c9684b2c446a6cfe5033386d6302a707967a9d3f4acd95'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a6c3b2fb-9f0a-5a05-bd6c-e03b49d47e9c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('2ff357f6-23a0-51be-b339-9e0f7bb82c01', 1), 'f21d13af57f8d4af62c9684b2c446a6cfe5033386d6302a707967a9d3f4acd95',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/75d58db4968a2249c16b4a46c93a8ff0e328076aa3d6348ae8bc775f25922ee7.mp3', 5564, '2026-09-13 20:02:53.015683', '33638508749ad39b39c57634ebdab14bc95a4b00af8430793217b06072354773', 'validated', '{"audio_key":"75d58db4968a2249c16b4a46c93a8ff0e328076aa3d6348ae8bc775f25922ee7","entity_key":"e_cross_framework_mediation_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"33638508749ad39b39c57634ebdab14bc95a4b00af8430793217b06072354773","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/75d58db4968a2249c16b4a46c93a8ff0e328076aa3d6348ae8bc775f25922ee7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_epistemic_layering_02 -> audio/generated/tr-TR/utterances/7ff037e0b59debf08425d798edeed81bcd1d56f0eca340101852a1e4312fd558.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a6f653b7-abe4-592a-b051-3acb2a4d81df', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_epistemic_layering_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b540917754d1f9fdca016454d978209c1bf882d57f5eb511c9633daf33881cd0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0ea6aeea-902a-5d15-b1c2-81d9cf1a8b4a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a6f653b7-abe4-592a-b051-3acb2a4d81df', 1), 'b540917754d1f9fdca016454d978209c1bf882d57f5eb511c9633daf33881cd0',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/7ff037e0b59debf08425d798edeed81bcd1d56f0eca340101852a1e4312fd558.mp3', 5459, '2026-09-13 20:02:54.520322', '053da7993ef064d662e8e1b0e1b8b69e65a8c5e9f53393ea76b030e9ed401c18', 'validated', '{"audio_key":"7ff037e0b59debf08425d798edeed81bcd1d56f0eca340101852a1e4312fd558","entity_key":"u_epistemic_layering_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"053da7993ef064d662e8e1b0e1b8b69e65a8c5e9f53393ea76b030e9ed401c18","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/7ff037e0b59debf08425d798edeed81bcd1d56f0eca340101852a1e4312fd558.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_epistemic_layering_01_listen -> audio/generated/tr-TR/utterances/7ff037e0b59debf08425d798edeed81bcd1d56f0eca340101852a1e4312fd558.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('42993615-c1bb-5f14-baf7-12a481cb31e9', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_epistemic_layering_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b540917754d1f9fdca016454d978209c1bf882d57f5eb511c9633daf33881cd0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5c92e183-88f9-566a-b101-025e8e1b7705', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('42993615-c1bb-5f14-baf7-12a481cb31e9', 1), 'b540917754d1f9fdca016454d978209c1bf882d57f5eb511c9633daf33881cd0',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/7ff037e0b59debf08425d798edeed81bcd1d56f0eca340101852a1e4312fd558.mp3', 5459, '2026-09-13 20:02:54.520322', '053da7993ef064d662e8e1b0e1b8b69e65a8c5e9f53393ea76b030e9ed401c18', 'validated', '{"audio_key":"7ff037e0b59debf08425d798edeed81bcd1d56f0eca340101852a1e4312fd558","entity_key":"e_epistemic_layering_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"053da7993ef064d662e8e1b0e1b8b69e65a8c5e9f53393ea76b030e9ed401c18","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/7ff037e0b59debf08425d798edeed81bcd1d56f0eca340101852a1e4312fd558.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_legal_institutional_nuance_01 -> audio/generated/tr-TR/utterances/8a86926e368fed726bf214c908c51f6c5961dd931e105e797df323d59ba66bf4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('08bf0af4-6a4d-539e-a8ff-3ade1481e0d4', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_legal_institutional_nuance_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '21b3aeef02a17492dd0108af5182510d004d7d16e35ab7b3bdea2b1de8614a35'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('96d4dca6-04b3-57d3-8db0-5b2da2fe56d2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('08bf0af4-6a4d-539e-a8ff-3ade1481e0d4', 1), '21b3aeef02a17492dd0108af5182510d004d7d16e35ab7b3bdea2b1de8614a35',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/8a86926e368fed726bf214c908c51f6c5961dd931e105e797df323d59ba66bf4.mp3', 5146, '2026-09-13 20:02:54.580590', '2c36f24ce7d1b66adb93f4e119f4e738e36bdfaee8991302ec6f42451e33ba97', 'validated', '{"audio_key":"8a86926e368fed726bf214c908c51f6c5961dd931e105e797df323d59ba66bf4","entity_key":"u_legal_institutional_nuance_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2c36f24ce7d1b66adb93f4e119f4e738e36bdfaee8991302ec6f42451e33ba97","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/8a86926e368fed726bf214c908c51f6c5961dd931e105e797df323d59ba66bf4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_multi_source_synthesis_01 -> audio/generated/tr-TR/utterances/8fcd2685a9e07d700dc817cef53ada0789d9c4094076124795b46bd64c3cc0f1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('409d824c-b6d3-51d3-9013-27efec2f44c6', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_multi_source_synthesis_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '532eb9dfd7da40e0f158b9c4a23a8568ee4c6c0d27a65dd37e8890e71317a5da'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9038b774-fd36-53e2-bc5b-302c5307a4a2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('409d824c-b6d3-51d3-9013-27efec2f44c6', 1), '532eb9dfd7da40e0f158b9c4a23a8568ee4c6c0d27a65dd37e8890e71317a5da',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/8fcd2685a9e07d700dc817cef53ada0789d9c4094076124795b46bd64c3cc0f1.mp3', 5381, '2026-09-13 20:02:56.066030', '153e45eb1fcca452fed72999c912e2419f8dc64078b865a58a5fa10ae61e28e0', 'validated', '{"audio_key":"8fcd2685a9e07d700dc817cef53ada0789d9c4094076124795b46bd64c3cc0f1","entity_key":"u_multi_source_synthesis_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"153e45eb1fcca452fed72999c912e2419f8dc64078b865a58a5fa10ae61e28e0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/8fcd2685a9e07d700dc817cef53ada0789d9c4094076124795b46bd64c3cc0f1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_rhetorical_compression_04 -> audio/generated/tr-TR/utterances/92fbfe737554a9d2fdc608a5b736c558a4d1038a94d6d0322f510a0e8444e756.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9ed403d9-8026-552a-ba8d-4120e4d44502', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_rhetorical_compression_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5c6aa96c03a2e44674dd1ecbca10d6ab91d3e8bca45b8bc42daae4bbe338e354'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('33cb8393-9b39-5b7f-8049-73b6076863ff', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9ed403d9-8026-552a-ba8d-4120e4d44502', 1), '5c6aa96c03a2e44674dd1ecbca10d6ab91d3e8bca45b8bc42daae4bbe338e354',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/92fbfe737554a9d2fdc608a5b736c558a4d1038a94d6d0322f510a0e8444e756.mp3', 5459, '2026-09-13 20:02:56.039210', '4dbed51a551321a0ee3407671351e66656ef8fcfd3c67ce1f3b13fa86c36453f', 'validated', '{"audio_key":"92fbfe737554a9d2fdc608a5b736c558a4d1038a94d6d0322f510a0e8444e756","entity_key":"u_rhetorical_compression_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4dbed51a551321a0ee3407671351e66656ef8fcfd3c67ce1f3b13fa86c36453f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/92fbfe737554a9d2fdc608a5b736c558a4d1038a94d6d0322f510a0e8444e756.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_rhetorical_compression_02_listen -> audio/generated/tr-TR/utterances/92fbfe737554a9d2fdc608a5b736c558a4d1038a94d6d0322f510a0e8444e756.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('19484662-de9e-51d9-b784-ecadaecea186', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_rhetorical_compression_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5c6aa96c03a2e44674dd1ecbca10d6ab91d3e8bca45b8bc42daae4bbe338e354'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('950ba5e4-b0eb-5948-b99d-033a76865c52', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('19484662-de9e-51d9-b784-ecadaecea186', 1), '5c6aa96c03a2e44674dd1ecbca10d6ab91d3e8bca45b8bc42daae4bbe338e354',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/92fbfe737554a9d2fdc608a5b736c558a4d1038a94d6d0322f510a0e8444e756.mp3', 5459, '2026-09-13 20:02:56.039210', '4dbed51a551321a0ee3407671351e66656ef8fcfd3c67ce1f3b13fa86c36453f', 'validated', '{"audio_key":"92fbfe737554a9d2fdc608a5b736c558a4d1038a94d6d0322f510a0e8444e756","entity_key":"e_rhetorical_compression_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4dbed51a551321a0ee3407671351e66656ef8fcfd3c67ce1f3b13fa86c36453f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/92fbfe737554a9d2fdc608a5b736c558a4d1038a94d6d0322f510a0e8444e756.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_rhetorical_compression_02 -> audio/generated/tr-TR/utterances/9f182c8ad5441f9a2b4157d7461f8f6502586441b78b5bfeb5ba31338c972dc5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('47757c9b-170d-5e30-a89b-d99ecc298d90', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_rhetorical_compression_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e63ba3c4bc334e2c17775531369abedafecd2cbd13be8eebf03d840b986b9654'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4d72152c-c87d-5bed-8389-a7691c29090e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('47757c9b-170d-5e30-a89b-d99ecc298d90', 1), 'e63ba3c4bc334e2c17775531369abedafecd2cbd13be8eebf03d840b986b9654',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/9f182c8ad5441f9a2b4157d7461f8f6502586441b78b5bfeb5ba31338c972dc5.mp3', 5093, '2026-09-13 20:02:57.504256', '90d8f9f403ad20684d699915970171cc244a71e77e3d5fb0df777e8680cce0ee', 'validated', '{"audio_key":"9f182c8ad5441f9a2b4157d7461f8f6502586441b78b5bfeb5ba31338c972dc5","entity_key":"u_rhetorical_compression_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"90d8f9f403ad20684d699915970171cc244a71e77e3d5fb0df777e8680cce0ee","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/9f182c8ad5441f9a2b4157d7461f8f6502586441b78b5bfeb5ba31338c972dc5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_rhetorical_compression_01_listen -> audio/generated/tr-TR/utterances/9f182c8ad5441f9a2b4157d7461f8f6502586441b78b5bfeb5ba31338c972dc5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e6a7ad26-38df-5bc3-b9c2-c1c088ce17db', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_rhetorical_compression_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e63ba3c4bc334e2c17775531369abedafecd2cbd13be8eebf03d840b986b9654'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3d0b61c2-f8b8-55d5-a0db-879868410a9c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e6a7ad26-38df-5bc3-b9c2-c1c088ce17db', 1), 'e63ba3c4bc334e2c17775531369abedafecd2cbd13be8eebf03d840b986b9654',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/9f182c8ad5441f9a2b4157d7461f8f6502586441b78b5bfeb5ba31338c972dc5.mp3', 5093, '2026-09-13 20:02:57.504256', '90d8f9f403ad20684d699915970171cc244a71e77e3d5fb0df777e8680cce0ee', 'validated', '{"audio_key":"9f182c8ad5441f9a2b4157d7461f8f6502586441b78b5bfeb5ba31338c972dc5","entity_key":"e_rhetorical_compression_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"90d8f9f403ad20684d699915970171cc244a71e77e3d5fb0df777e8680cce0ee","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/9f182c8ad5441f9a2b4157d7461f8f6502586441b78b5bfeb5ba31338c972dc5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_counterfactual_causality_03 -> audio/generated/tr-TR/utterances/a67e92d82ecfad953426728bf55a0c39942b0af6c5238d3826e547eb347330d7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d432f945-e891-5423-ab72-32044d766835', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_counterfactual_causality_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f8ed1bef0a1c4d646161c12eca22b08478ebae594511dc04fb4cfa9baa2acb22'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dc355df5-0aff-551f-8a40-6e6af01b8d0f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d432f945-e891-5423-ab72-32044d766835', 1), 'f8ed1bef0a1c4d646161c12eca22b08478ebae594511dc04fb4cfa9baa2acb22',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/a67e92d82ecfad953426728bf55a0c39942b0af6c5238d3826e547eb347330d7.mp3', 5564, '2026-09-13 20:02:57.509842', '288cf2a8daa5dc1a9c5015b997723634f2fb50f4309fdbf87d3b99d1b9aa75e7', 'validated', '{"audio_key":"a67e92d82ecfad953426728bf55a0c39942b0af6c5238d3826e547eb347330d7","entity_key":"u_counterfactual_causality_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"288cf2a8daa5dc1a9c5015b997723634f2fb50f4309fdbf87d3b99d1b9aa75e7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/a67e92d82ecfad953426728bf55a0c39942b0af6c5238d3826e547eb347330d7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_implicature_and_pragmatics_01 -> audio/generated/tr-TR/utterances/bc7e4144cca9fd599a2170f9b230f131bd5bc6b62ef8a16b9a2e7b0754d61b1a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3f57f1af-77e3-594d-95cc-456668e8f547', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_implicature_and_pragmatics_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3eeab4a88f07bf5bddebc2bd927c8432ae4710019c45c3d3f4c874600d3689b3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('201d2fe8-b440-538b-911b-cf573975c4cf', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3f57f1af-77e3-594d-95cc-456668e8f547', 1), '3eeab4a88f07bf5bddebc2bd927c8432ae4710019c45c3d3f4c874600d3689b3',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/bc7e4144cca9fd599a2170f9b230f131bd5bc6b62ef8a16b9a2e7b0754d61b1a.mp3', 4545, '2026-09-13 20:02:58.855469', '15b035c2cb19bb2d5da35742f676b2e3c4c1cc212d9f95f539fe84b5523c581a', 'validated', '{"audio_key":"bc7e4144cca9fd599a2170f9b230f131bd5bc6b62ef8a16b9a2e7b0754d61b1a","entity_key":"u_implicature_and_pragmatics_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"15b035c2cb19bb2d5da35742f676b2e3c4c1cc212d9f95f539fe84b5523c581a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/bc7e4144cca9fd599a2170f9b230f131bd5bc6b62ef8a16b9a2e7b0754d61b1a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_counterfactual_causality_01 -> audio/generated/tr-TR/utterances/bd9929fab2b3a09a43725da6101c0cb86a698b91cf8790ec180a63d575c73bc8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('56c8defb-ef99-57fd-bf33-c648b993971b', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_counterfactual_causality_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a341bcf5764e67db4cb32eb319b04cacde9153ce87df8b75d78fbb3433e5842d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8bd07df7-d93f-5c71-a773-479872a0b033', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('56c8defb-ef99-57fd-bf33-c648b993971b', 1), 'a341bcf5764e67db4cb32eb319b04cacde9153ce87df8b75d78fbb3433e5842d',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/bd9929fab2b3a09a43725da6101c0cb86a698b91cf8790ec180a63d575c73bc8.mp3', 3761, '2026-09-13 20:02:58.749261', '0f45ae91869ee24cd90ff55604861c045e972957832fb796fdb4d6a34b2d8055', 'validated', '{"audio_key":"bd9929fab2b3a09a43725da6101c0cb86a698b91cf8790ec180a63d575c73bc8","entity_key":"u_counterfactual_causality_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0f45ae91869ee24cd90ff55604861c045e972957832fb796fdb4d6a34b2d8055","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/bd9929fab2b3a09a43725da6101c0cb86a698b91cf8790ec180a63d575c73bc8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_cross_framework_mediation_04 -> audio/generated/tr-TR/utterances/c2196401042a4a0776f129b0a123a48b427dff78a30829414210d9684c1eea1c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('aa391d7a-3eef-5948-b61b-acb0de7af1a1', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_cross_framework_mediation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3b45b6f5e47e6f7cfc3b9ead2047dc5ac551c990be81713db2619dc59ea43386'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6aa09b94-557e-53b5-b656-075f470aaea6', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('aa391d7a-3eef-5948-b61b-acb0de7af1a1', 1), '3b45b6f5e47e6f7cfc3b9ead2047dc5ac551c990be81713db2619dc59ea43386',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/c2196401042a4a0776f129b0a123a48b427dff78a30829414210d9684c1eea1c.mp3', 6086, '2026-09-13 20:03:00.306578', 'de2866d8ed2a74ea4faaab5bf5874ea8e8a8baf767e9e5da4606bd9e6cfed4c8', 'validated', '{"audio_key":"c2196401042a4a0776f129b0a123a48b427dff78a30829414210d9684c1eea1c","entity_key":"u_cross_framework_mediation_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"de2866d8ed2a74ea4faaab5bf5874ea8e8a8baf767e9e5da4606bd9e6cfed4c8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/c2196401042a4a0776f129b0a123a48b427dff78a30829414210d9684c1eea1c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_cross_framework_mediation_02_listen -> audio/generated/tr-TR/utterances/c2196401042a4a0776f129b0a123a48b427dff78a30829414210d9684c1eea1c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('aa9a9fa1-fe7e-5f67-832e-4f028c255c31', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_cross_framework_mediation_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3b45b6f5e47e6f7cfc3b9ead2047dc5ac551c990be81713db2619dc59ea43386'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('49def252-d462-5d97-b1f1-314e4daea6e1', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('aa9a9fa1-fe7e-5f67-832e-4f028c255c31', 1), '3b45b6f5e47e6f7cfc3b9ead2047dc5ac551c990be81713db2619dc59ea43386',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/c2196401042a4a0776f129b0a123a48b427dff78a30829414210d9684c1eea1c.mp3', 6086, '2026-09-13 20:03:00.306578', 'de2866d8ed2a74ea4faaab5bf5874ea8e8a8baf767e9e5da4606bd9e6cfed4c8', 'validated', '{"audio_key":"c2196401042a4a0776f129b0a123a48b427dff78a30829414210d9684c1eea1c","entity_key":"e_cross_framework_mediation_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"de2866d8ed2a74ea4faaab5bf5874ea8e8a8baf767e9e5da4606bd9e6cfed4c8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/c2196401042a4a0776f129b0a123a48b427dff78a30829414210d9684c1eea1c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_cross_framework_mediation_03 -> audio/generated/tr-TR/utterances/c54bbba1a577ea92df38b8842c4a143d52496c4d88e507be88abba508a221529.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('16b2f5bc-d2e5-5e8e-b5be-00c9ca6674bf', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_cross_framework_mediation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c2210b5edfc13c1679fb4d1e9cee11d5330c2e9f50b342ba31e7c5f49756feef'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e48c5b1a-3d70-5d29-afe2-7298b232fd77', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('16b2f5bc-d2e5-5e8e-b5be-00c9ca6674bf', 1), 'c2210b5edfc13c1679fb4d1e9cee11d5330c2e9f50b342ba31e7c5f49756feef',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/c54bbba1a577ea92df38b8842c4a143d52496c4d88e507be88abba508a221529.mp3', 5511, '2026-09-13 20:03:00.335478', '49e0117d3ea8f0f99c7e41963ed4d5628f9d5077c0ca63344491453bef855a8e', 'validated', '{"audio_key":"c54bbba1a577ea92df38b8842c4a143d52496c4d88e507be88abba508a221529","entity_key":"u_cross_framework_mediation_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"49e0117d3ea8f0f99c7e41963ed4d5628f9d5077c0ca63344491453bef855a8e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/c54bbba1a577ea92df38b8842c4a143d52496c4d88e507be88abba508a221529.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_epistemic_layering_01 -> audio/generated/tr-TR/utterances/c833e64bedc17e5fe8cecb4f71d60b46149e221c6d4338a7f1b8ad6c5c0e8fbb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0051281b-41fe-5dcc-a58a-b511a2811a7c', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_epistemic_layering_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0fbdaad07bb84e610fa6ed4fb0e593cbea3f44f8457d6549bd22792907cf9421'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dd88fc2f-915d-58a6-aac4-006294025701', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0051281b-41fe-5dcc-a58a-b511a2811a7c', 1), '0fbdaad07bb84e610fa6ed4fb0e593cbea3f44f8457d6549bd22792907cf9421',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/c833e64bedc17e5fe8cecb4f71d60b46149e221c6d4338a7f1b8ad6c5c0e8fbb.mp3', 4414, '2026-09-13 20:03:01.667195', '35296e81acd06af2cfe44b7347641da0041c9e4f6e2e3c4600c30fa9736aa19c', 'validated', '{"audio_key":"c833e64bedc17e5fe8cecb4f71d60b46149e221c6d4338a7f1b8ad6c5c0e8fbb","entity_key":"u_epistemic_layering_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"35296e81acd06af2cfe44b7347641da0041c9e4f6e2e3c4600c30fa9736aa19c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/c833e64bedc17e5fe8cecb4f71d60b46149e221c6d4338a7f1b8ad6c5c0e8fbb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_cross_framework_mediation_01 -> audio/generated/tr-TR/utterances/d062fb7524a2688229a6e2140a1395aecba872c2f65f782316513616786a5ee3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('94bb1af9-4d09-552a-9823-ba5d52ce4d7f', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_cross_framework_mediation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '996cd49b087c02502494c8de6f9f0ac10e36c795f7ea2fa7572557230d0043a0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('beb679b9-f782-5c92-a452-1c0d76bd102a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('94bb1af9-4d09-552a-9823-ba5d52ce4d7f', 1), '996cd49b087c02502494c8de6f9f0ac10e36c795f7ea2fa7572557230d0043a0',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/d062fb7524a2688229a6e2140a1395aecba872c2f65f782316513616786a5ee3.mp3', 5851, '2026-09-13 20:03:01.842401', '80f9153d6832cc8986e4bc8c972c604031443d53b0c5a0911b97d40c4dda909f', 'validated', '{"audio_key":"d062fb7524a2688229a6e2140a1395aecba872c2f65f782316513616786a5ee3","entity_key":"u_cross_framework_mediation_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"80f9153d6832cc8986e4bc8c972c604031443d53b0c5a0911b97d40c4dda909f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/d062fb7524a2688229a6e2140a1395aecba872c2f65f782316513616786a5ee3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_legal_institutional_nuance_03 -> audio/generated/tr-TR/utterances/d47d57d2c7455450ea35a074c49cb1d927ffece0d8fd9c9be11b47b3a73ea909.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c98e1bbf-e47a-547c-a1fe-7ca4b1c1324b', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_legal_institutional_nuance_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9fd2549366a56bedaab834c8b7aa8f880875fd3c027f6a76ea77281ca832c8b6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bef3a23f-490c-50a9-82d5-4781cce09632', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c98e1bbf-e47a-547c-a1fe-7ca4b1c1324b', 1), '9fd2549366a56bedaab834c8b7aa8f880875fd3c027f6a76ea77281ca832c8b6',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/d47d57d2c7455450ea35a074c49cb1d927ffece0d8fd9c9be11b47b3a73ea909.mp3', 5668, '2026-09-13 20:03:03.223812', '2a0c1cacb8ffe71334aed7b9ca224bb0482fca3ac42b870252f3ad957deea0a0', 'validated', '{"audio_key":"d47d57d2c7455450ea35a074c49cb1d927ffece0d8fd9c9be11b47b3a73ea909","entity_key":"u_legal_institutional_nuance_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2a0c1cacb8ffe71334aed7b9ca224bb0482fca3ac42b870252f3ad957deea0a0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/d47d57d2c7455450ea35a074c49cb1d927ffece0d8fd9c9be11b47b3a73ea909.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_c2_expert_briefing_capstone_01 -> audio/generated/tr-TR/utterances/eeb668a10b83fdb2c0f3cb82611f16bf98afe207312385dfe9546d4b2b0d43e7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c537b2bb-b7f5-53cb-936b-22e253434e29', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_c2_expert_briefing_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4e66133ef2960fae4e286d6b8e2b9824bc6d62c629ed9de2aeb81adb292d547b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ee61f5b0-ff6b-579d-a355-f539acf70de2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c537b2bb-b7f5-53cb-936b-22e253434e29', 1), '4e66133ef2960fae4e286d6b8e2b9824bc6d62c629ed9de2aeb81adb292d547b',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/eeb668a10b83fdb2c0f3cb82611f16bf98afe207312385dfe9546d4b2b0d43e7.mp3', 6635, '2026-09-13 20:03:03.460612', '97a73fdd84906a94b77106a334dad88409db63bcb7e9374254c462ab4f4971a2', 'validated', '{"audio_key":"eeb668a10b83fdb2c0f3cb82611f16bf98afe207312385dfe9546d4b2b0d43e7","entity_key":"u_c2_expert_briefing_capstone_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"97a73fdd84906a94b77106a334dad88409db63bcb7e9374254c462ab4f4971a2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/eeb668a10b83fdb2c0f3cb82611f16bf98afe207312385dfe9546d4b2b0d43e7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_rhetorical_compression_01 -> audio/generated/tr-TR/utterances/ef9f561177275dc416a8b99d483767438dc8e57a454af94e6c5b8ef96cbf1217.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e8449872-1a78-56c3-92db-47092b57e607', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_rhetorical_compression_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '55daa523048ca1a84dc21c8fe2ed3c3712013b1eee824cceed73a6e8be4ed71c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('238cf23c-665d-5ea3-852f-d19ade64c2eb', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e8449872-1a78-56c3-92db-47092b57e607', 1), '55daa523048ca1a84dc21c8fe2ed3c3712013b1eee824cceed73a6e8be4ed71c',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/ef9f561177275dc416a8b99d483767438dc8e57a454af94e6c5b8ef96cbf1217.mp3', 4597, '2026-09-13 20:03:04.586365', 'e4a4d05636a3bae27414a2b0e7b41b721eb7b763894f7870da78f867f7dba843', 'validated', '{"audio_key":"ef9f561177275dc416a8b99d483767438dc8e57a454af94e6c5b8ef96cbf1217","entity_key":"u_rhetorical_compression_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e4a4d05636a3bae27414a2b0e7b41b721eb7b763894f7870da78f867f7dba843","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/ef9f561177275dc416a8b99d483767438dc8e57a454af94e6c5b8ef96cbf1217.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_live_reformulation_04 -> audio/generated/tr-TR/utterances/fd933fe6ed184fff33888da173462bc98931c42a63248b38ac3cf79429f76da3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a9b90fe0-2e75-5cbc-9c29-a55d2c1db93f', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_live_reformulation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2006dd9c54155e684463d219931586a517fe07207d2f2e047cf830f6f74b1403'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f1f72f24-a364-5f37-ba96-6247d138d0e0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a9b90fe0-2e75-5cbc-9c29-a55d2c1db93f', 1), '2006dd9c54155e684463d219931586a517fe07207d2f2e047cf830f6f74b1403',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/fd933fe6ed184fff33888da173462bc98931c42a63248b38ac3cf79429f76da3.mp3', 5929, '2026-09-13 20:03:05.031075', 'd11a465710a6df363bb9e82035ba07e1ae972e24befd59d6b5785d17e33a84f4', 'validated', '{"audio_key":"fd933fe6ed184fff33888da173462bc98931c42a63248b38ac3cf79429f76da3","entity_key":"u_live_reformulation_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d11a465710a6df363bb9e82035ba07e1ae972e24befd59d6b5785d17e33a84f4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/fd933fe6ed184fff33888da173462bc98931c42a63248b38ac3cf79429f76da3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_live_reformulation_02_listen -> audio/generated/tr-TR/utterances/fd933fe6ed184fff33888da173462bc98931c42a63248b38ac3cf79429f76da3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('71a9ff7b-4c93-5abf-88ac-2b46d92d8960', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_live_reformulation_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2006dd9c54155e684463d219931586a517fe07207d2f2e047cf830f6f74b1403'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4f6044d6-6b1d-533e-8329-75c9aafc4bf4', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('71a9ff7b-4c93-5abf-88ac-2b46d92d8960', 1), '2006dd9c54155e684463d219931586a517fe07207d2f2e047cf830f6f74b1403',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/fd933fe6ed184fff33888da173462bc98931c42a63248b38ac3cf79429f76da3.mp3', 5929, '2026-09-13 20:03:05.031075', 'd11a465710a6df363bb9e82035ba07e1ae972e24befd59d6b5785d17e33a84f4', 'validated', '{"audio_key":"fd933fe6ed184fff33888da173462bc98931c42a63248b38ac3cf79429f76da3","entity_key":"e_live_reformulation_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d11a465710a6df363bb9e82035ba07e1ae972e24befd59d6b5785d17e33a84f4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/fd933fe6ed184fff33888da173462bc98931c42a63248b38ac3cf79429f76da3.mp3"}'
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

-- Generated audio link import for de-DE C2
-- Source manifest: audio/manifests/de/C2-batch-3.json
-- Generated rows: 330
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'de' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'de-DE' LIMIT 1);
START TRANSACTION;

-- d_judgment_language_capstone_03:3 -> audio/generated/de-DE/dialogues/042c8d52096ffcaf8c47173d43e3cf2db09cbfc37e56b1b17765c72baa1b7f4f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('db5d48ee-2b77-59f7-9921-d986d010ad9b', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_judgment_language_capstone_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5b16fffc710998af1ea4d42274ddafa940c6d185445d53a67c0840150337619a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('67ad813d-2aa5-59ce-ba2d-4dd54ba42c85', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('db5d48ee-2b77-59f7-9921-d986d010ad9b', 1), '5b16fffc710998af1ea4d42274ddafa940c6d185445d53a67c0840150337619a',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/042c8d52096ffcaf8c47173d43e3cf2db09cbfc37e56b1b17765c72baa1b7f4f.mp3', 1671, '2026-09-13 11:45:36.160595', '7767bc742cb76671211bda56f10d1acc65c4c6e6ba10b77a358e75309b2d3ac1', 'validated', '{"audio_key":"042c8d52096ffcaf8c47173d43e3cf2db09cbfc37e56b1b17765c72baa1b7f4f","entity_key":"d_judgment_language_capstone_03:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"7767bc742cb76671211bda56f10d1acc65c4c6e6ba10b77a358e75309b2d3ac1","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/042c8d52096ffcaf8c47173d43e3cf2db09cbfc37e56b1b17765c72baa1b7f4f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_academic_stance_citation_distance_02:3 -> audio/generated/de-DE/dialogues/04f622ba72736cf6824dd7f3ab2e83db0b3aa556311b24ac7e885faeee1e51b5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c9abdb49-3080-57f0-80e9-3cfbaba083ae', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_academic_stance_citation_distance_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8897094425635c73840b573183d679ba598be9ff4faa2f12769e541480c771c2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e1542721-741c-50ae-9497-3a0e29f5d5ce', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c9abdb49-3080-57f0-80e9-3cfbaba083ae', 1), '8897094425635c73840b573183d679ba598be9ff4faa2f12769e541480c771c2',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/04f622ba72736cf6824dd7f3ab2e83db0b3aa556311b24ac7e885faeee1e51b5.mp3', 3422, '2026-09-13 11:45:36.359408', '73af7297494ec14e26820490059d1647cc26478318579e37fe9c734031f25387', 'validated', '{"audio_key":"04f622ba72736cf6824dd7f3ab2e83db0b3aa556311b24ac7e885faeee1e51b5","entity_key":"d_academic_stance_citation_distance_02:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"73af7297494ec14e26820490059d1647cc26478318579e37fe9c734031f25387","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/04f622ba72736cf6824dd7f3ab2e83db0b3aa556311b24ac7e885faeee1e51b5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_institutional_register_precision_02:2 -> audio/generated/de-DE/dialogues/07ace64c6f524afcaf812f32efc1a2ca1d24857c67fa2751c81dcefc728b20d5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('509383d8-5c0a-54f9-a95b-81a7982c9144', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_institutional_register_precision_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6a7a5a35c568c70fec088ad7a83a948b7550cd6e3b5eccc76a8f407a29192e9d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('03385052-7329-56f5-89bf-37c3350c4adb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('509383d8-5c0a-54f9-a95b-81a7982c9144', 1), '6a7a5a35c568c70fec088ad7a83a948b7550cd6e3b5eccc76a8f407a29192e9d',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/07ace64c6f524afcaf812f32efc1a2ca1d24857c67fa2751c81dcefc728b20d5.mp3', 3056, '2026-09-13 11:45:37.467488', '795a310d2d1c79232245e345bbf52d1768a3249ca6af5a03d32abf5dd15653d9', 'validated', '{"audio_key":"07ace64c6f524afcaf812f32efc1a2ca1d24857c67fa2751c81dcefc728b20d5","entity_key":"d_institutional_register_precision_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"795a310d2d1c79232245e345bbf52d1768a3249ca6af5a03d32abf5dd15653d9","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/07ace64c6f524afcaf812f32efc1a2ca1d24857c67fa2751c81dcefc728b20d5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_metaphor_idiom_pragmatic_transfer_02:2 -> audio/generated/de-DE/dialogues/14d8f5302c1ad52c2ccafe0d26c6b91e237e365e74ca82f57d8350b4685e6ce4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('76e7f85f-328e-5f54-8c4a-dafb70710aad', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_metaphor_idiom_pragmatic_transfer_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '528de76adc31960be4a592bbe34ef57037c84f11953c40dc30d90d719b372f40'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fbe76e53-a2f6-5bca-927b-7b999da13065', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('76e7f85f-328e-5f54-8c4a-dafb70710aad', 1), '528de76adc31960be4a592bbe34ef57037c84f11953c40dc30d90d719b372f40',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/14d8f5302c1ad52c2ccafe0d26c6b91e237e365e74ca82f57d8350b4685e6ce4.mp3', 2403, '2026-09-13 11:45:37.544064', '49a63318226ce1e6619712d336493be1c6e13c8466baae5f3b9b43983ddc7641', 'validated', '{"audio_key":"14d8f5302c1ad52c2ccafe0d26c6b91e237e365e74ca82f57d8350b4685e6ce4","entity_key":"d_metaphor_idiom_pragmatic_transfer_02:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"49a63318226ce1e6619712d336493be1c6e13c8466baae5f3b9b43983ddc7641","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/14d8f5302c1ad52c2ccafe0d26c6b91e237e365e74ca82f57d8350b4685e6ce4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_judgment_language_capstone_02:1 -> audio/generated/de-DE/dialogues/15eed8e3ed40892571f2f571a59bffc76a196b608f8070e964ffa035a20e3c4d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('389f94a2-5445-5848-891a-4eea5281074e', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_judgment_language_capstone_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '301ba28e5a522ed710d82e865e700b9e08b8aa674355507e1ea03d44bc5f2e70'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('721994c3-7442-5345-b35a-dd6e8110000d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('389f94a2-5445-5848-891a-4eea5281074e', 1), '301ba28e5a522ed710d82e865e700b9e08b8aa674355507e1ea03d44bc5f2e70',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/15eed8e3ed40892571f2f571a59bffc76a196b608f8070e964ffa035a20e3c4d.mp3', 3369, '2026-09-13 11:45:38.853188', '8c72bd68e69036bf5ea1d53a63839505cd62c4bb6279c38c3813f765e88a4b46', 'validated', '{"audio_key":"15eed8e3ed40892571f2f571a59bffc76a196b608f8070e964ffa035a20e3c4d","entity_key":"d_judgment_language_capstone_02:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"8c72bd68e69036bf5ea1d53a63839505cd62c4bb6279c38c3813f765e88a4b46","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/15eed8e3ed40892571f2f571a59bffc76a196b608f8070e964ffa035a20e3c4d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_judgment_language_capstone_03:4 -> audio/generated/de-DE/dialogues/16b1c981fddc3808be638b7523194388bac1f4c8400cad51662f2307f25b82a3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7bc27214-a390-55a1-99ef-8795860373d0', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_judgment_language_capstone_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3d0759a443473c87d8555d30ba8c351869444d7e8c1d3be19b62154476e93d1f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9e4871af-3299-5729-baed-e9581875d768', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7bc27214-a390-55a1-99ef-8795860373d0', 1), '3d0759a443473c87d8555d30ba8c351869444d7e8c1d3be19b62154476e93d1f',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/16b1c981fddc3808be638b7523194388bac1f4c8400cad51662f2307f25b82a3.mp3', 4858, '2026-09-13 11:45:39.080894', '368030fcae6085362da0a340da3400b4034792263614159d07e64770faa10027', 'validated', '{"audio_key":"16b1c981fddc3808be638b7523194388bac1f4c8400cad51662f2307f25b82a3","entity_key":"d_judgment_language_capstone_03:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"368030fcae6085362da0a340da3400b4034792263614159d07e64770faa10027","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/16b1c981fddc3808be638b7523194388bac1f4c8400cad51662f2307f25b82a3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_academic_stance_citation_distance_03:2 -> audio/generated/de-DE/dialogues/1b1572d4163e2d5ddb93878eaf8215b2bd31057816936e399c50c731ed9acc72.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4bb377a5-26d3-56b0-a2a5-b6e609236b9a', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_academic_stance_citation_distance_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ab9ef9feaedcf62748d0683d769fb17a614bbded4152347bbd20c791492b7625'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('19b9356c-b8f8-5bfc-b9b3-abb26905f320', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4bb377a5-26d3-56b0-a2a5-b6e609236b9a', 1), 'ab9ef9feaedcf62748d0683d769fb17a614bbded4152347bbd20c791492b7625',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1b1572d4163e2d5ddb93878eaf8215b2bd31057816936e399c50c731ed9acc72.mp3', 3369, '2026-09-13 11:45:40.178161', '121c311ccc089fd4e3a1c06ee4c97dc059be1fd026c010b3e0f8bbdea4055efe', 'validated', '{"audio_key":"1b1572d4163e2d5ddb93878eaf8215b2bd31057816936e399c50c731ed9acc72","entity_key":"d_academic_stance_citation_distance_03:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"121c311ccc089fd4e3a1c06ee4c97dc059be1fd026c010b3e0f8bbdea4055efe","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/1b1572d4163e2d5ddb93878eaf8215b2bd31057816936e399c50c731ed9acc72.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_metaphor_idiom_pragmatic_transfer_01:1 -> audio/generated/de-DE/dialogues/1d74763f7b1bfc733b78fb1c5145dce52d937fb7810692e1db28019113ac2ca5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c0f55fdf-28f6-5599-9705-36162f3c2fb8', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_metaphor_idiom_pragmatic_transfer_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '023071389d34e450a659c1202ea51a9ee37bff5c40a6beed88e1b3661631763b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('60a0febf-25a2-56c3-b9dd-032623089e60', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c0f55fdf-28f6-5599-9705-36162f3c2fb8', 1), '023071389d34e450a659c1202ea51a9ee37bff5c40a6beed88e1b3661631763b',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1d74763f7b1bfc733b78fb1c5145dce52d937fb7810692e1db28019113ac2ca5.mp3', 2873, '2026-09-13 11:45:40.300050', 'afe4fe00c5badd9bc05af65e3589ec379f3f92d904c1fe22cff638baf7a3350b', 'validated', '{"audio_key":"1d74763f7b1bfc733b78fb1c5145dce52d937fb7810692e1db28019113ac2ca5","entity_key":"d_metaphor_idiom_pragmatic_transfer_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"afe4fe00c5badd9bc05af65e3589ec379f3f92d904c1fe22cff638baf7a3350b","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/1d74763f7b1bfc733b78fb1c5145dce52d937fb7810692e1db28019113ac2ca5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_presupposition_accommodation_01:3 -> audio/generated/de-DE/dialogues/1f7d69e3743409c91fb02bccda2b94e0c32f8f337e0f88ac5c15fc918d5d6a01.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e44aeffc-2c55-5d84-8265-9fcce32f6733', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_presupposition_accommodation_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '97c71f972e0226ae58dcb7793ce1e31ce13c84d493b4f2b24e885541d3c81095'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d0d989e6-3e18-59da-832d-267275b773e1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e44aeffc-2c55-5d84-8265-9fcce32f6733', 1), '97c71f972e0226ae58dcb7793ce1e31ce13c84d493b4f2b24e885541d3c81095',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1f7d69e3743409c91fb02bccda2b94e0c32f8f337e0f88ac5c15fc918d5d6a01.mp3', 2586, '2026-09-13 11:45:41.486541', 'e8ae1353a9014d68146fb71aaf34925d85ffcee1db83583a55d0632fd5c219e7', 'validated', '{"audio_key":"1f7d69e3743409c91fb02bccda2b94e0c32f8f337e0f88ac5c15fc918d5d6a01","entity_key":"d_presupposition_accommodation_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"e8ae1353a9014d68146fb71aaf34925d85ffcee1db83583a55d0632fd5c219e7","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/1f7d69e3743409c91fb02bccda2b94e0c32f8f337e0f88ac5c15fc918d5d6a01.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_oral_synthesis_pressure_02:3 -> audio/generated/de-DE/dialogues/23a9cb7b4f3860b2456e9b0855d6e8b79782b3bdc523870b9a3c60b2493ef620.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5237589f-2447-516e-9508-336ff38e80cf', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_oral_synthesis_pressure_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a90f104bbc586b8f30d359e4f5532f5d34acffb078ddcc5cab926e597a07bf99'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('adf3229f-9b3b-5f56-beb4-eebbfb9eec4c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5237589f-2447-516e-9508-336ff38e80cf', 1), 'a90f104bbc586b8f30d359e4f5532f5d34acffb078ddcc5cab926e597a07bf99',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/23a9cb7b4f3860b2456e9b0855d6e8b79782b3bdc523870b9a3c60b2493ef620.mp3', 2925, '2026-09-13 11:45:41.557416', 'fb68b2583a6f8e009f5f48b1bdaafe310809055df605f99848ec2944a5fb42c5', 'validated', '{"audio_key":"23a9cb7b4f3860b2456e9b0855d6e8b79782b3bdc523870b9a3c60b2493ef620","entity_key":"d_oral_synthesis_pressure_02:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"fb68b2583a6f8e009f5f48b1bdaafe310809055df605f99848ec2944a5fb42c5","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/23a9cb7b4f3860b2456e9b0855d6e8b79782b3bdc523870b9a3c60b2493ef620.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_academic_stance_citation_distance_02:2 -> audio/generated/de-DE/dialogues/23c62d5f7645e9937dcc617bb36af194adc6865804a6ad4140871d8802048727.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('73d030da-5085-53e3-b4dc-3f783bb133f9', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_academic_stance_citation_distance_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '77bad7f95e81359c6b9b2080901ad44d216ba31e8cc37e1b8614f7258653140a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3fcb1168-ea8d-5914-93bc-f7263d8cf26f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('73d030da-5085-53e3-b4dc-3f783bb133f9', 1), '77bad7f95e81359c6b9b2080901ad44d216ba31e8cc37e1b8614f7258653140a',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/23c62d5f7645e9937dcc617bb36af194adc6865804a6ad4140871d8802048727.mp3', 3239, '2026-09-13 11:45:42.781405', '758d74edb8732e5418d3145ad92ed81fa45075c485e35b8058011811a3711e28', 'validated', '{"audio_key":"23c62d5f7645e9937dcc617bb36af194adc6865804a6ad4140871d8802048727","entity_key":"d_academic_stance_citation_distance_02:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"758d74edb8732e5418d3145ad92ed81fa45075c485e35b8058011811a3711e28","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/23c62d5f7645e9937dcc617bb36af194adc6865804a6ad4140871d8802048727.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_narrative_perspective_temporal_control_02:4 -> audio/generated/de-DE/dialogues/25263e76180b55f60cf39645ad6c2a7d654215af6f442517dc09001464f5a444.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('88a68fe8-b219-53d0-986e-10f6974b2774', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_narrative_perspective_temporal_control_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '59068135f85dd69570ee37625d6bfda63194f9887849553fe6185cb50754b38b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b6100fb1-01d0-5d96-bd7f-c5e8f233a7f9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('88a68fe8-b219-53d0-986e-10f6974b2774', 1), '59068135f85dd69570ee37625d6bfda63194f9887849553fe6185cb50754b38b',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/25263e76180b55f60cf39645ad6c2a7d654215af6f442517dc09001464f5a444.mp3', 2690, '2026-09-13 11:45:42.905134', '8581394b367ac0ee44be2f01f68d5251c12315dfa39757ba779e89a45ca93f14', 'validated', '{"audio_key":"25263e76180b55f60cf39645ad6c2a7d654215af6f442517dc09001464f5a444","entity_key":"d_narrative_perspective_temporal_control_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"8581394b367ac0ee44be2f01f68d5251c12315dfa39757ba779e89a45ca93f14","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/25263e76180b55f60cf39645ad6c2a7d654215af6f442517dc09001464f5a444.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_principled_disagreement_negotiation_01:2 -> audio/generated/de-DE/dialogues/26bbaf6b7731260dfbeb6b831e75cc6ff3610ef5c2aa6911f4697e815ea9698d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0b07f00d-34ae-5b21-99b7-d59db3ab097b', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_principled_disagreement_negotiation_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6fd40ab92a7ee86eff3b43bb7960e5e4ce451f91e26e8c81324ae802c5f0a5b3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0aaf06ff-93fe-53c3-bb24-e41fedae445a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0b07f00d-34ae-5b21-99b7-d59db3ab097b', 1), '6fd40ab92a7ee86eff3b43bb7960e5e4ce451f91e26e8c81324ae802c5f0a5b3',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/26bbaf6b7731260dfbeb6b831e75cc6ff3610ef5c2aa6911f4697e815ea9698d.mp3', 2768, '2026-09-13 11:45:44.063160', '6965c77c91d1f658646e8c8e517e8602808e077de818d7572ebaa0e511f3d605', 'validated', '{"audio_key":"26bbaf6b7731260dfbeb6b831e75cc6ff3610ef5c2aa6911f4697e815ea9698d","entity_key":"d_principled_disagreement_negotiation_01:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"6965c77c91d1f658646e8c8e517e8602808e077de818d7572ebaa0e511f3d605","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/26bbaf6b7731260dfbeb6b831e75cc6ff3610ef5c2aa6911f4697e815ea9698d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_institutional_register_precision_02:3 -> audio/generated/de-DE/dialogues/26cc992009b989fe187258ab9e3abde50bc48185bd052b46470a235760dfef2f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2deb68c6-8ad2-5ad3-951e-c17647c926da', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_institutional_register_precision_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7344c02a7226805b546e956bdd00cddea13820475ca516b2cce6d4c02c1b573c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6db4129f-7ac9-5767-b2b6-5de25b6a2645', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2deb68c6-8ad2-5ad3-951e-c17647c926da', 1), '7344c02a7226805b546e956bdd00cddea13820475ca516b2cce6d4c02c1b573c',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/26cc992009b989fe187258ab9e3abde50bc48185bd052b46470a235760dfef2f.mp3', 3186, '2026-09-13 11:45:44.166177', 'f15b0ee8cec3bab3fd9c7d68a700c55f4f6ec245ae60589812dbad68be78faac', 'validated', '{"audio_key":"26cc992009b989fe187258ab9e3abde50bc48185bd052b46470a235760dfef2f","entity_key":"d_institutional_register_precision_02:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"f15b0ee8cec3bab3fd9c7d68a700c55f4f6ec245ae60589812dbad68be78faac","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/26cc992009b989fe187258ab9e3abde50bc48185bd052b46470a235760dfef2f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_steelmanning_concession_02:3 -> audio/generated/de-DE/dialogues/27d45a8bbb000b836a18ac555c0e172dfb78915ee6707983e19c57fc968509bd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d3a32b3f-a6ae-56dd-bcb6-a27a75abff45', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_steelmanning_concession_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5b8af283942b456f172c3f36c08730a8322ef4ef99c37c941356e89701566795'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('329fd21c-f861-5be6-b891-47460f24dd76', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d3a32b3f-a6ae-56dd-bcb6-a27a75abff45', 1), '5b8af283942b456f172c3f36c08730a8322ef4ef99c37c941356e89701566795',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/27d45a8bbb000b836a18ac555c0e172dfb78915ee6707983e19c57fc968509bd.mp3', 3996, '2026-09-13 11:45:45.480328', 'f3f01ddbe9bf1c77ac667688bfb523453588a9c3472d77f61f82d947666be593', 'validated', '{"audio_key":"27d45a8bbb000b836a18ac555c0e172dfb78915ee6707983e19c57fc968509bd","entity_key":"d_steelmanning_concession_02:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"f3f01ddbe9bf1c77ac667688bfb523453588a9c3472d77f61f82d947666be593","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/27d45a8bbb000b836a18ac555c0e172dfb78915ee6707983e19c57fc968509bd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_oral_synthesis_pressure_03:2 -> audio/generated/de-DE/dialogues/287b47b83e9622a5ab09dcfdee13f8f258b87e52f71774a95cb78ab3f41b4175.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('97619b80-03a6-5696-ad20-c150697ac816', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_oral_synthesis_pressure_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6c6711eefd943835f11b49d156e4ac1908dd249524ee9e3238a9fd82d207edc5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('15de6cb5-d898-5ed5-b0a9-37bd2fc1e76c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('97619b80-03a6-5696-ad20-c150697ac816', 1), '6c6711eefd943835f11b49d156e4ac1908dd249524ee9e3238a9fd82d207edc5',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/287b47b83e9622a5ab09dcfdee13f8f258b87e52f71774a95cb78ab3f41b4175.mp3', 2768, '2026-09-13 11:45:45.422542', 'eb2aceb41cd3ea1988b6725adebbc33597b5040f9930a5a4269ecaed1c4c8b6c', 'validated', '{"audio_key":"287b47b83e9622a5ab09dcfdee13f8f258b87e52f71774a95cb78ab3f41b4175","entity_key":"d_oral_synthesis_pressure_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"eb2aceb41cd3ea1988b6725adebbc33597b5040f9930a5a4269ecaed1c4c8b6c","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/287b47b83e9622a5ab09dcfdee13f8f258b87e52f71774a95cb78ab3f41b4175.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_presupposition_accommodation_02:1 -> audio/generated/de-DE/dialogues/2d0729919e7dd3d0fce49e86252ea31dd6589c9ceb135773bd1698ba127bb0be.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fad0824c-8791-59ec-b92e-f3edd0983260', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_presupposition_accommodation_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a7f669aaa7ba5e057126ab83782552469d3937b6b75ba53111b7047bfab0ec7b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f550d03e-2d05-56d9-b5d7-f625dad0a31c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fad0824c-8791-59ec-b92e-f3edd0983260', 1), 'a7f669aaa7ba5e057126ab83782552469d3937b6b75ba53111b7047bfab0ec7b',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2d0729919e7dd3d0fce49e86252ea31dd6589c9ceb135773bd1698ba127bb0be.mp3', 2742, '2026-09-13 11:45:46.758463', '29411ebdc39d84e3f8a99230f52c5336799538088852178e7c4e21ba08c7fbe8', 'validated', '{"audio_key":"2d0729919e7dd3d0fce49e86252ea31dd6589c9ceb135773bd1698ba127bb0be","entity_key":"d_presupposition_accommodation_02:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"29411ebdc39d84e3f8a99230f52c5336799538088852178e7c4e21ba08c7fbe8","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/2d0729919e7dd3d0fce49e86252ea31dd6589c9ceb135773bd1698ba127bb0be.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_institutional_register_precision_02:1 -> audio/generated/de-DE/dialogues/2d8feaf1292133184b28303bc510eb7c85b98a7b36478249e03620d3bad0e4e8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f99821a1-330d-5145-a759-c3c810e78d94', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_institutional_register_precision_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f0bfff4ab38b99b7e89899fc3f892fa92c7df3f336e76805b2c7048f520742bb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4f713326-43e1-5b47-a469-05f2453b5432', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f99821a1-330d-5145-a759-c3c810e78d94', 1), 'f0bfff4ab38b99b7e89899fc3f892fa92c7df3f336e76805b2c7048f520742bb',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2d8feaf1292133184b28303bc510eb7c85b98a7b36478249e03620d3bad0e4e8.mp3', 3474, '2026-09-13 11:45:46.815932', 'b2aa8751068f7f8bbc9e2014c6f770e8a9776608b7e2b3bf2bade217b82b574f', 'validated', '{"audio_key":"2d8feaf1292133184b28303bc510eb7c85b98a7b36478249e03620d3bad0e4e8","entity_key":"d_institutional_register_precision_02:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"b2aa8751068f7f8bbc9e2014c6f770e8a9776608b7e2b3bf2bade217b82b574f","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/2d8feaf1292133184b28303bc510eb7c85b98a7b36478249e03620d3bad0e4e8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_steelmanning_concession_02:4 -> audio/generated/de-DE/dialogues/2e3103ca471d33555228197a7fb2e8f459a946c4f17683b0024843d37e1c36f5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e2212ba8-7424-5fa5-97a5-acba734818be', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_steelmanning_concession_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '20eaae47bb28f5de3359aa728dfa528f2ef176fa0740f29cda50a441fe307677'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ba076f20-6991-54d8-9b29-e9d182acb8c2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e2212ba8-7424-5fa5-97a5-acba734818be', 1), '20eaae47bb28f5de3359aa728dfa528f2ef176fa0740f29cda50a441fe307677',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2e3103ca471d33555228197a7fb2e8f459a946c4f17683b0024843d37e1c36f5.mp3', 2821, '2026-09-13 11:45:48.015499', '4830f2f9538300dd94c4e0a6c2f2498f817d18229ff1bb9d8ab8c0cc1d4407ab', 'validated', '{"audio_key":"2e3103ca471d33555228197a7fb2e8f459a946c4f17683b0024843d37e1c36f5","entity_key":"d_steelmanning_concession_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"4830f2f9538300dd94c4e0a6c2f2498f817d18229ff1bb9d8ab8c0cc1d4407ab","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/2e3103ca471d33555228197a7fb2e8f459a946c4f17683b0024843d37e1c36f5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_presupposition_accommodation_02:2 -> audio/generated/de-DE/dialogues/2ede41d2c67e52ead2bf3ce457856c42a9fa7b06099035fac0a9b15fa1446942.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c589e0e1-7a48-5779-b1aa-60ca2f5f7b63', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_presupposition_accommodation_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1f3d1df834d04592a1d6d0b063ccbd492ab70f539b5bdb62ebf82e2a12ae2514'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a72290a6-5f2d-59cf-9a16-1c34fc6a823f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c589e0e1-7a48-5779-b1aa-60ca2f5f7b63', 1), '1f3d1df834d04592a1d6d0b063ccbd492ab70f539b5bdb62ebf82e2a12ae2514',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2ede41d2c67e52ead2bf3ce457856c42a9fa7b06099035fac0a9b15fa1446942.mp3', 2873, '2026-09-13 11:45:48.056393', 'ec5eb9b2160a4461c2f0ff0a309e8da0be4e2970630b1e5a53a156ba3f63556c', 'validated', '{"audio_key":"2ede41d2c67e52ead2bf3ce457856c42a9fa7b06099035fac0a9b15fa1446942","entity_key":"d_presupposition_accommodation_02:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"ec5eb9b2160a4461c2f0ff0a309e8da0be4e2970630b1e5a53a156ba3f63556c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/2ede41d2c67e52ead2bf3ce457856c42a9fa7b06099035fac0a9b15fa1446942.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_metaphor_idiom_pragmatic_transfer_03:4 -> audio/generated/de-DE/dialogues/30143c918ad7ca041b723733c72b3aa8f662949d0713f0713926af58181cbb4d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a1873be0-19e2-54f8-8756-03fea28d0730', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_metaphor_idiom_pragmatic_transfer_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7756a8dd9f81789b6baf38b950f8422a63cdddbab0c71b6ed172ba4cd97bdbd4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0f07d059-f28c-585a-9ce6-6a6b49bb888d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a1873be0-19e2-54f8-8756-03fea28d0730', 1), '7756a8dd9f81789b6baf38b950f8422a63cdddbab0c71b6ed172ba4cd97bdbd4',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/30143c918ad7ca041b723733c72b3aa8f662949d0713f0713926af58181cbb4d.mp3', 3709, '2026-09-13 11:45:49.424511', '6e2ad7d9f985e32f196d03849ff60218c84da364cc36ac0c0abbe653c99c1278', 'validated', '{"audio_key":"30143c918ad7ca041b723733c72b3aa8f662949d0713f0713926af58181cbb4d","entity_key":"d_metaphor_idiom_pragmatic_transfer_03:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"6e2ad7d9f985e32f196d03849ff60218c84da364cc36ac0c0abbe653c99c1278","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/30143c918ad7ca041b723733c72b3aa8f662949d0713f0713926af58181cbb4d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_judgment_language_capstone_02:4 -> audio/generated/de-DE/dialogues/3145a95b53c44e2b3531e67cdd3dea74ced4c90c90a3c84751e5f193a5a340ad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7ee1521e-3de1-5d3f-a8ca-701d51672ef8', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_judgment_language_capstone_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '79a29cecef20b72101b1deed0a73997e37b5b105c0a6faadfcec92e0eddbf26a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1e380ec8-5794-5401-903c-17407ae78d47', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7ee1521e-3de1-5d3f-a8ca-701d51672ef8', 1), '79a29cecef20b72101b1deed0a73997e37b5b105c0a6faadfcec92e0eddbf26a',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3145a95b53c44e2b3531e67cdd3dea74ced4c90c90a3c84751e5f193a5a340ad.mp3', 2638, '2026-09-13 11:45:49.278354', 'd4ec4af9b5ef6043c43a90c79612a0366b491f40886320f1c3197ef35c9c04f0', 'validated', '{"audio_key":"3145a95b53c44e2b3531e67cdd3dea74ced4c90c90a3c84751e5f193a5a340ad","entity_key":"d_judgment_language_capstone_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"d4ec4af9b5ef6043c43a90c79612a0366b491f40886320f1c3197ef35c9c04f0","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/3145a95b53c44e2b3531e67cdd3dea74ced4c90c90a3c84751e5f193a5a340ad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_descriptive_normative_reasoning_01:1 -> audio/generated/de-DE/dialogues/31977f3b47c7335aefca309620e44d9c15a16e646aeee702b734698091b2a3aa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e7ee9ae4-17a2-587e-ba18-620cd8b807f4', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_descriptive_normative_reasoning_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f83efe969d3ea9f6b216d0bd78958de49c2ad86c006fa25851cdf1fb84c54706'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9f341641-edc7-5bc9-94df-458b99dc988c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e7ee9ae4-17a2-587e-ba18-620cd8b807f4', 1), 'f83efe969d3ea9f6b216d0bd78958de49c2ad86c006fa25851cdf1fb84c54706',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/31977f3b47c7335aefca309620e44d9c15a16e646aeee702b734698091b2a3aa.mp3', 4414, '2026-09-13 11:45:50.726658', '9f1d273074d9dec3ed38e4945dfd3d0dd2cdce3b2fee1483ad8796f82a8bfd23', 'validated', '{"audio_key":"31977f3b47c7335aefca309620e44d9c15a16e646aeee702b734698091b2a3aa","entity_key":"d_descriptive_normative_reasoning_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"9f1d273074d9dec3ed38e4945dfd3d0dd2cdce3b2fee1483ad8796f82a8bfd23","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/31977f3b47c7335aefca309620e44d9c15a16e646aeee702b734698091b2a3aa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_descriptive_normative_reasoning_03:3 -> audio/generated/de-DE/dialogues/31e9fefa9873f7e1b25c90f97c2816d2b81a00e81e2cddc7f6af63e936ef2c87.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a62f7746-30a2-5393-a36a-48e162967135', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_descriptive_normative_reasoning_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8b7c640908412c7930266a264ce36fcb734da32a3ac7edbf3a49d8957752eaad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6d881afb-97bb-52fd-91f1-c7aa320c48a9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a62f7746-30a2-5393-a36a-48e162967135', 1), '8b7c640908412c7930266a264ce36fcb734da32a3ac7edbf3a49d8957752eaad',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/31e9fefa9873f7e1b25c90f97c2816d2b81a00e81e2cddc7f6af63e936ef2c87.mp3', 3944, '2026-09-13 11:45:50.850210', 'f1913167ecc2470523cd504ce69083577382afc1b52a72276acc8cda06998fd0', 'validated', '{"audio_key":"31e9fefa9873f7e1b25c90f97c2816d2b81a00e81e2cddc7f6af63e936ef2c87","entity_key":"d_descriptive_normative_reasoning_03:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f1913167ecc2470523cd504ce69083577382afc1b52a72276acc8cda06998fd0","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/31e9fefa9873f7e1b25c90f97c2816d2b81a00e81e2cddc7f6af63e936ef2c87.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_narrative_perspective_temporal_control_03:4 -> audio/generated/de-DE/dialogues/32a54d220e43ac625c2076bad4b2b76445969704c4ffed0c6f14fecf314c75b5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('55923cda-833f-57f4-8d91-d4d797252d44', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_narrative_perspective_temporal_control_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1faaa22fcf956a24e7167372642c4cc00d1ab3aaefde0bc53c143d337df66cda'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('81d7ec18-825a-54b7-8688-0b07782221cb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('55923cda-833f-57f4-8d91-d4d797252d44', 1), '1faaa22fcf956a24e7167372642c4cc00d1ab3aaefde0bc53c143d337df66cda',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/32a54d220e43ac625c2076bad4b2b76445969704c4ffed0c6f14fecf314c75b5.mp3', 2951, '2026-09-13 11:45:51.989369', '4165774fabf4352ebc2afaf24f5202afcc323ef83e10d13383ace5eb6b1bbd6a', 'validated', '{"audio_key":"32a54d220e43ac625c2076bad4b2b76445969704c4ffed0c6f14fecf314c75b5","entity_key":"d_narrative_perspective_temporal_control_03:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"4165774fabf4352ebc2afaf24f5202afcc323ef83e10d13383ace5eb6b1bbd6a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/32a54d220e43ac625c2076bad4b2b76445969704c4ffed0c6f14fecf314c75b5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_academic_stance_citation_distance_01:2 -> audio/generated/de-DE/dialogues/33a0b592a684aacf82e699bd3b7f9f29ca30e30a06161b8651368f102051fceb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0a6b3859-79ef-59c6-937b-b241373e844a', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_academic_stance_citation_distance_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '87980d7f034a9e95e9dd306f1c55246e57f93a86d2a4850263c53673fe76328a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ea4f6cf4-6926-5723-8b9c-4a0526cbc31c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0a6b3859-79ef-59c6-937b-b241373e844a', 1), '87980d7f034a9e95e9dd306f1c55246e57f93a86d2a4850263c53673fe76328a',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/33a0b592a684aacf82e699bd3b7f9f29ca30e30a06161b8651368f102051fceb.mp3', 4022, '2026-09-13 11:45:52.250277', '90739a2161999b1f111ecc0c5580159676c9163393d6997b8c0cb4bccc04743a', 'validated', '{"audio_key":"33a0b592a684aacf82e699bd3b7f9f29ca30e30a06161b8651368f102051fceb","entity_key":"d_academic_stance_citation_distance_01:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"90739a2161999b1f111ecc0c5580159676c9163393d6997b8c0cb4bccc04743a","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/33a0b592a684aacf82e699bd3b7f9f29ca30e30a06161b8651368f102051fceb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_metaphor_idiom_pragmatic_transfer_01:2 -> audio/generated/de-DE/dialogues/34be9501b5edcd2989a61a7ce6f3f691058e431b80eff0233b3640bee2c56149.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6e165b50-2a43-575c-b344-b6b34e5c2db3', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_metaphor_idiom_pragmatic_transfer_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '71049f2d104252112b66ca22a4eacb0ee9cdb6a565d2258445e3a93741987ecc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cf6126ae-1567-5bb1-bf5f-2e0906d352bf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6e165b50-2a43-575c-b344-b6b34e5c2db3', 1), '71049f2d104252112b66ca22a4eacb0ee9cdb6a565d2258445e3a93741987ecc',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/34be9501b5edcd2989a61a7ce6f3f691058e431b80eff0233b3640bee2c56149.mp3', 3239, '2026-09-13 11:45:53.411557', 'aa8587852ff62fee1e5f256aff2acb073284157e762016416a868579d056b00e', 'validated', '{"audio_key":"34be9501b5edcd2989a61a7ce6f3f691058e431b80eff0233b3640bee2c56149","entity_key":"d_metaphor_idiom_pragmatic_transfer_01:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"aa8587852ff62fee1e5f256aff2acb073284157e762016416a868579d056b00e","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/34be9501b5edcd2989a61a7ce6f3f691058e431b80eff0233b3640bee2c56149.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_academic_stance_citation_distance_02:1 -> audio/generated/de-DE/dialogues/35494e3ac548f35944eb84e43669fa3339e4735200b342be5cee7472c80d2ec1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1b86437c-593b-5549-b2b8-742d66f243b5', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_academic_stance_citation_distance_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f5ac7c5fcfe12b7e8f905d95a4a96e73e69213c1ef36855cf8773b61dfb336c8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('61f3961e-edbc-5bd0-aed2-aef47b24784b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1b86437c-593b-5549-b2b8-742d66f243b5', 1), 'f5ac7c5fcfe12b7e8f905d95a4a96e73e69213c1ef36855cf8773b61dfb336c8',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/35494e3ac548f35944eb84e43669fa3339e4735200b342be5cee7472c80d2ec1.mp3', 3840, '2026-09-13 11:45:53.640526', '162948e552fe1a090f60c460467fb2c51fff728bee8ef8ef19418e9475d44dda', 'validated', '{"audio_key":"35494e3ac548f35944eb84e43669fa3339e4735200b342be5cee7472c80d2ec1","entity_key":"d_academic_stance_citation_distance_02:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"162948e552fe1a090f60c460467fb2c51fff728bee8ef8ef19418e9475d44dda","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/35494e3ac548f35944eb84e43669fa3339e4735200b342be5cee7472c80d2ec1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_academic_stance_citation_distance_03:3 -> audio/generated/de-DE/dialogues/3a135d395adcaf8b43d985c5d26bc7dcb46bdffdf7b8edc25d8be38b74ae007a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fac732d8-89ae-5c2e-937b-39ea356daa86', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_academic_stance_citation_distance_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8a288eaa9170821208eb46755455876069192759616e996d2697ce2c3b715e88'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b387965d-c551-592e-89bd-c3da3c17b0a0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fac732d8-89ae-5c2e-937b-39ea356daa86', 1), '8a288eaa9170821208eb46755455876069192759616e996d2697ce2c3b715e88',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3a135d395adcaf8b43d985c5d26bc7dcb46bdffdf7b8edc25d8be38b74ae007a.mp3', 3291, '2026-09-13 11:45:54.729680', '8a7dc93d7c4f7a4682bc962fbb11ee698ba1db5806eb860a1655aad77e4bc741', 'validated', '{"audio_key":"3a135d395adcaf8b43d985c5d26bc7dcb46bdffdf7b8edc25d8be38b74ae007a","entity_key":"d_academic_stance_citation_distance_03:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8a7dc93d7c4f7a4682bc962fbb11ee698ba1db5806eb860a1655aad77e4bc741","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/3a135d395adcaf8b43d985c5d26bc7dcb46bdffdf7b8edc25d8be38b74ae007a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_presupposition_accommodation_02:4 -> audio/generated/de-DE/dialogues/3e200f0831a661dd6e900289a0432b01da5cae91d8a233a8beb94e5478a43f3f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('34bc5e51-e4e2-599e-8b35-5df67d5697e3', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_presupposition_accommodation_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8db3edd2be4d9391996cd05808b16f9c81c9dee00cdbaac2a903a891f91ab7e2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8590231c-211f-524e-a3f9-21a6448a8b25', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('34bc5e51-e4e2-599e-8b35-5df67d5697e3', 1), '8db3edd2be4d9391996cd05808b16f9c81c9dee00cdbaac2a903a891f91ab7e2',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3e200f0831a661dd6e900289a0432b01da5cae91d8a233a8beb94e5478a43f3f.mp3', 3578, '2026-09-13 11:45:54.985838', '413d2bba90c99a69bd1b10aaeb33a163ab4a6d68361f52971e1d7c64c72d18fd', 'validated', '{"audio_key":"3e200f0831a661dd6e900289a0432b01da5cae91d8a233a8beb94e5478a43f3f","entity_key":"d_presupposition_accommodation_02:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"413d2bba90c99a69bd1b10aaeb33a163ab4a6d68361f52971e1d7c64c72d18fd","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/3e200f0831a661dd6e900289a0432b01da5cae91d8a233a8beb94e5478a43f3f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_judgment_language_capstone_02:3 -> audio/generated/de-DE/dialogues/3f8ca489b9665c6ee88754b121421e1bf271616bc268e15821396081da9852e5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ee6011f2-dbd6-5295-a1c5-3e040ca5ead9', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_judgment_language_capstone_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3a866fa0da6888e73ca5b1a743025df1ca4d4ab5c7cd89894aa7d57e7c99fae8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('15ac765c-b3ff-5fd8-86ae-72acd83654b8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ee6011f2-dbd6-5295-a1c5-3e040ca5ead9', 1), '3a866fa0da6888e73ca5b1a743025df1ca4d4ab5c7cd89894aa7d57e7c99fae8',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3f8ca489b9665c6ee88754b121421e1bf271616bc268e15821396081da9852e5.mp3', 3657, '2026-09-13 11:45:56.237220', '8480ce57911b84a6ee13934166f6c43ba4cdf1e148a4da7f4f6f5cefa5a6d185', 'validated', '{"audio_key":"3f8ca489b9665c6ee88754b121421e1bf271616bc268e15821396081da9852e5","entity_key":"d_judgment_language_capstone_02:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"8480ce57911b84a6ee13934166f6c43ba4cdf1e148a4da7f4f6f5cefa5a6d185","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/3f8ca489b9665c6ee88754b121421e1bf271616bc268e15821396081da9852e5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_narrative_perspective_temporal_control_01:4 -> audio/generated/de-DE/dialogues/41eb71e87f21ed7813dc03e6a7a345b93a953937b8bf9c42e60497311949a036.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('96698a15-7cb2-5038-9c7e-a62480298feb', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_narrative_perspective_temporal_control_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'be063a3b722c19d4416251db779b5addc6418b47051dda9c32f88d3726799d42'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ba66567c-c3b4-5513-95e4-4dccb9525308', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('96698a15-7cb2-5038-9c7e-a62480298feb', 1), 'be063a3b722c19d4416251db779b5addc6418b47051dda9c32f88d3726799d42',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/41eb71e87f21ed7813dc03e6a7a345b93a953937b8bf9c42e60497311949a036.mp3', 2821, '2026-09-13 11:45:56.237097', '36375918948af04c41e427d5e73a9bdc920e4b18055014a976fcabfb755b6581', 'validated', '{"audio_key":"41eb71e87f21ed7813dc03e6a7a345b93a953937b8bf9c42e60497311949a036","entity_key":"d_narrative_perspective_temporal_control_01:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"36375918948af04c41e427d5e73a9bdc920e4b18055014a976fcabfb755b6581","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/41eb71e87f21ed7813dc03e6a7a345b93a953937b8bf9c42e60497311949a036.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_judgment_language_capstone_03:2 -> audio/generated/de-DE/dialogues/46cb8b14f62ade06e1a55caacb316414cbd881b38c2f8c08abffbf7ba76dbbc1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f1b91880-a939-5cf0-90f2-d856a0e0a419', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_judgment_language_capstone_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5fb341299fb5cd8786844ef72c0f5907a55bc01a4de87d6c718c7726f9b14b3d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2232a308-e4fc-5ccc-88cd-63565c24f915', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f1b91880-a939-5cf0-90f2-d856a0e0a419', 1), '5fb341299fb5cd8786844ef72c0f5907a55bc01a4de87d6c718c7726f9b14b3d',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/46cb8b14f62ade06e1a55caacb316414cbd881b38c2f8c08abffbf7ba76dbbc1.mp3', 5694, '2026-09-13 11:45:57.890436', '88c70af889d02713fc868b7a738f65e16f3c6a64491339b9720af9191764c63f', 'validated', '{"audio_key":"46cb8b14f62ade06e1a55caacb316414cbd881b38c2f8c08abffbf7ba76dbbc1","entity_key":"d_judgment_language_capstone_03:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"88c70af889d02713fc868b7a738f65e16f3c6a64491339b9720af9191764c63f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/46cb8b14f62ade06e1a55caacb316414cbd881b38c2f8c08abffbf7ba76dbbc1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_judgment_language_capstone_01:3 -> audio/generated/de-DE/dialogues/497cb307bc55b608bece1075935ecb057b7e7fcd1b07f60810e6159a4d959595.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('af260dab-8019-5a02-8a6f-1e024b2f946c', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_judgment_language_capstone_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a8e614d06aa62347ea9c15e999cffe6e1de86ea90427c11157b61619caea69fd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b3611e4b-a08c-5b6b-bc9f-6463f7dd7d79', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('af260dab-8019-5a02-8a6f-1e024b2f946c', 1), 'a8e614d06aa62347ea9c15e999cffe6e1de86ea90427c11157b61619caea69fd',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/497cb307bc55b608bece1075935ecb057b7e7fcd1b07f60810e6159a4d959595.mp3', 2324, '2026-09-13 11:45:57.980334', '0907b3ddfbe9372ab82e62c010efc6478506e0e6485b14799ca3fb1d66bec60e', 'validated', '{"audio_key":"497cb307bc55b608bece1075935ecb057b7e7fcd1b07f60810e6159a4d959595","entity_key":"d_judgment_language_capstone_01:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"0907b3ddfbe9372ab82e62c010efc6478506e0e6485b14799ca3fb1d66bec60e","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/497cb307bc55b608bece1075935ecb057b7e7fcd1b07f60810e6159a4d959595.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_academic_stance_citation_distance_01:1 -> audio/generated/de-DE/dialogues/4a961ffde642a5e90be322807b2f7551f2f42a70c778202ee246a78f882e4238.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('93832d90-491a-517a-a48a-909bbeb7cf56', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_academic_stance_citation_distance_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e3f5225146c3efa97fbe1e350057d219d2cc77aa5e184d0b8d6740cbda7a700c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a1c6d7fe-3f10-5fc1-900f-f7c8ec5916bb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('93832d90-491a-517a-a48a-909bbeb7cf56', 1), 'e3f5225146c3efa97fbe1e350057d219d2cc77aa5e184d0b8d6740cbda7a700c',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4a961ffde642a5e90be322807b2f7551f2f42a70c778202ee246a78f882e4238.mp3', 2821, '2026-09-13 11:45:59.133399', 'ed2adef405894f1ee732e53fe93c7877e2631062481edf5330faaefaccfbcc0f', 'validated', '{"audio_key":"4a961ffde642a5e90be322807b2f7551f2f42a70c778202ee246a78f882e4238","entity_key":"d_academic_stance_citation_distance_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ed2adef405894f1ee732e53fe93c7877e2631062481edf5330faaefaccfbcc0f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/4a961ffde642a5e90be322807b2f7551f2f42a70c778202ee246a78f882e4238.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_institutional_register_precision_01:2 -> audio/generated/de-DE/dialogues/4df99a9492d4391e6cb1acbf5739238d4fa25b65c24b8d4650d4e9554d74e2d0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d8241c8d-9251-5010-9713-809b41c4824c', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_institutional_register_precision_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cddac00b1e3f81adda141b0da65a5fe62dc9d3784f1b61373b039d70cc8e8f5b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ef134b77-4e17-54c4-ab4d-a4633afeaa3a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d8241c8d-9251-5010-9713-809b41c4824c', 1), 'cddac00b1e3f81adda141b0da65a5fe62dc9d3784f1b61373b039d70cc8e8f5b',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4df99a9492d4391e6cb1acbf5739238d4fa25b65c24b8d4650d4e9554d74e2d0.mp3', 2351, '2026-09-13 11:45:59.154145', '8961c7513f58b62159f55db16f5146a694258204ce08e25fb35a4a8d557a37bd', 'validated', '{"audio_key":"4df99a9492d4391e6cb1acbf5739238d4fa25b65c24b8d4650d4e9554d74e2d0","entity_key":"d_institutional_register_precision_01:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"8961c7513f58b62159f55db16f5146a694258204ce08e25fb35a4a8d557a37bd","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/4df99a9492d4391e6cb1acbf5739238d4fa25b65c24b8d4650d4e9554d74e2d0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_institutional_register_precision_03:4 -> audio/generated/de-DE/dialogues/4ea3bbb2686d4669a9c3e23e133d73a516875ae8612e4a3f3d4249e12ed14734.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('820d6d65-5b15-5353-8e27-15c2a5c251bc', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_institutional_register_precision_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '28666feefc31aa1db440e293196bb38b54bd726afad75f17c46ee37e57fc9235'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fe99f267-aac5-5a4b-a055-b59befbc520e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('820d6d65-5b15-5353-8e27-15c2a5c251bc', 1), '28666feefc31aa1db440e293196bb38b54bd726afad75f17c46ee37e57fc9235',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4ea3bbb2686d4669a9c3e23e133d73a516875ae8612e4a3f3d4249e12ed14734.mp3', 3787, '2026-09-13 11:46:00.609715', '53f62869e1fa36b101ee289e439660fa7b118dc5ded24741214563d2d26ccae2', 'validated', '{"audio_key":"4ea3bbb2686d4669a9c3e23e133d73a516875ae8612e4a3f3d4249e12ed14734","entity_key":"d_institutional_register_precision_03:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"53f62869e1fa36b101ee289e439660fa7b118dc5ded24741214563d2d26ccae2","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/4ea3bbb2686d4669a9c3e23e133d73a516875ae8612e4a3f3d4249e12ed14734.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_metaphor_idiom_pragmatic_transfer_03:3 -> audio/generated/de-DE/dialogues/520704b2d7417a6db8d4486c257d820baedb4d48a8d1e53ece2c8170ee96fbb6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('467adfe8-3e84-59c3-86dd-2ab454573f1e', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_metaphor_idiom_pragmatic_transfer_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '67976f4bb33f61f6a9ea24d51be87399863e277bcaae03372f57c1db7ffad5b3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f1eb0af2-8ce4-5146-a4ac-0d4eca2d3552', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('467adfe8-3e84-59c3-86dd-2ab454573f1e', 1), '67976f4bb33f61f6a9ea24d51be87399863e277bcaae03372f57c1db7ffad5b3',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/520704b2d7417a6db8d4486c257d820baedb4d48a8d1e53ece2c8170ee96fbb6.mp3', 3422, '2026-09-13 11:46:00.499181', '2f039e6f2d949d65dc51679e2be0cf986f86d55c0a2a75af1adcf49d71b7e7d2', 'validated', '{"audio_key":"520704b2d7417a6db8d4486c257d820baedb4d48a8d1e53ece2c8170ee96fbb6","entity_key":"d_metaphor_idiom_pragmatic_transfer_03:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2f039e6f2d949d65dc51679e2be0cf986f86d55c0a2a75af1adcf49d71b7e7d2","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/520704b2d7417a6db8d4486c257d820baedb4d48a8d1e53ece2c8170ee96fbb6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_narrative_perspective_temporal_control_02:2 -> audio/generated/de-DE/dialogues/57d39e2864f944274bbde62e91dd268d4f613c7f64f9017decb39d8b27ad2f5f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('40dc42cf-acc1-5871-8c01-cbf28e158935', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_narrative_perspective_temporal_control_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7b874e6174b6b24e2534af6c8c7487a812752bc172c9626071d706f93192251a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c8137f96-36cb-5c60-83bd-2911b56d8c1d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('40dc42cf-acc1-5871-8c01-cbf28e158935', 1), '7b874e6174b6b24e2534af6c8c7487a812752bc172c9626071d706f93192251a',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/57d39e2864f944274bbde62e91dd268d4f613c7f64f9017decb39d8b27ad2f5f.mp3', 2089, '2026-09-13 11:46:01.712909', '3452525713a1853c2fc9290340dab7c262aa7e40fbe2cb9b94a5101d4bdf5e9e', 'validated', '{"audio_key":"57d39e2864f944274bbde62e91dd268d4f613c7f64f9017decb39d8b27ad2f5f","entity_key":"d_narrative_perspective_temporal_control_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"3452525713a1853c2fc9290340dab7c262aa7e40fbe2cb9b94a5101d4bdf5e9e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/57d39e2864f944274bbde62e91dd268d4f613c7f64f9017decb39d8b27ad2f5f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_oral_synthesis_pressure_02:2 -> audio/generated/de-DE/dialogues/596a47d834e833d30913fd9aeac60e52f699c1223e296515d58edfff6ef737dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a23eeb3b-adb6-5ea2-923b-ef84b96e7189', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_oral_synthesis_pressure_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b62df4af1a833212243513de113f4d11700f1e92f67b627bc3cdaf8c538cfb84'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('47b656cf-e9a8-5f84-b9fa-515d69ae6eb2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a23eeb3b-adb6-5ea2-923b-ef84b96e7189', 1), 'b62df4af1a833212243513de113f4d11700f1e92f67b627bc3cdaf8c538cfb84',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/596a47d834e833d30913fd9aeac60e52f699c1223e296515d58edfff6ef737dd.mp3', 3291, '2026-09-13 11:46:02.063548', '9ef426f0ae66cc090bcb06cd091c8a73bab09ebca5c1808e2517d03ce5d6fd4c', 'validated', '{"audio_key":"596a47d834e833d30913fd9aeac60e52f699c1223e296515d58edfff6ef737dd","entity_key":"d_oral_synthesis_pressure_02:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"9ef426f0ae66cc090bcb06cd091c8a73bab09ebca5c1808e2517d03ce5d6fd4c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/596a47d834e833d30913fd9aeac60e52f699c1223e296515d58edfff6ef737dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_academic_stance_citation_distance_03:1 -> audio/generated/de-DE/dialogues/5a4c46644e1ae5a05bbebac9d3a0b409d3ccf6d98eaa840f9c85faaaee47e083.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0d2f50a4-9675-5621-8df6-257207003759', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_academic_stance_citation_distance_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '83ea8939f58b584a45a93f3a9b12be172f6003c2f8c765b27dc9233ddccbb874'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('65aee116-5871-5801-b41c-b0e7f0d6f9b0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0d2f50a4-9675-5621-8df6-257207003759', 1), '83ea8939f58b584a45a93f3a9b12be172f6003c2f8c765b27dc9233ddccbb874',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5a4c46644e1ae5a05bbebac9d3a0b409d3ccf6d98eaa840f9c85faaaee47e083.mp3', 3657, '2026-09-13 11:46:03.049590', 'ce4818fe66eda223180d96b4abd7344bef9c730d68d2927bbb88f4f0fefe3f1a', 'validated', '{"audio_key":"5a4c46644e1ae5a05bbebac9d3a0b409d3ccf6d98eaa840f9c85faaaee47e083","entity_key":"d_academic_stance_citation_distance_03:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ce4818fe66eda223180d96b4abd7344bef9c730d68d2927bbb88f4f0fefe3f1a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/5a4c46644e1ae5a05bbebac9d3a0b409d3ccf6d98eaa840f9c85faaaee47e083.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_descriptive_normative_reasoning_02:4 -> audio/generated/de-DE/dialogues/5a85cd16cc903359524bd12192eb5c17e273a7cdaf72472b72cf1bad548784a1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4b3416e1-3a1f-5f48-bfbc-9f432b5251cd', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_descriptive_normative_reasoning_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b917b0c124b257e13e82b226fd31e732d13aa025f69fd5101d24edce7f780ca4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5fac93d2-89db-502e-941a-850b98dcac25', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4b3416e1-3a1f-5f48-bfbc-9f432b5251cd', 1), 'b917b0c124b257e13e82b226fd31e732d13aa025f69fd5101d24edce7f780ca4',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5a85cd16cc903359524bd12192eb5c17e273a7cdaf72472b72cf1bad548784a1.mp3', 3186, '2026-09-13 11:46:03.342899', 'c59742c5baa3a2c096b5c6209135263ba1199fac2c77d090f50a1d3a5a6f5b63', 'validated', '{"audio_key":"5a85cd16cc903359524bd12192eb5c17e273a7cdaf72472b72cf1bad548784a1","entity_key":"d_descriptive_normative_reasoning_02:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"c59742c5baa3a2c096b5c6209135263ba1199fac2c77d090f50a1d3a5a6f5b63","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/5a85cd16cc903359524bd12192eb5c17e273a7cdaf72472b72cf1bad548784a1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_presupposition_accommodation_03:2 -> audio/generated/de-DE/dialogues/5b47ac4990281233cc70d4b679e8714bd0e8fde0281e508af7bba688d348cb78.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1aa95b02-ec89-507b-be34-b883276ebdc5', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_presupposition_accommodation_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2e2e35641b7731c0ec9531dea55255d21a6445379b30a3d405caeef92079f283'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e9722017-057c-5dce-830a-9eca5a2ac1d9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1aa95b02-ec89-507b-be34-b883276ebdc5', 1), '2e2e35641b7731c0ec9531dea55255d21a6445379b30a3d405caeef92079f283',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5b47ac4990281233cc70d4b679e8714bd0e8fde0281e508af7bba688d348cb78.mp3', 2455, '2026-09-13 11:46:04.226392', '9645b56792d85ceff4d0ae813c08aef50c61a1b1a24f689988878c108a3e0695', 'validated', '{"audio_key":"5b47ac4990281233cc70d4b679e8714bd0e8fde0281e508af7bba688d348cb78","entity_key":"d_presupposition_accommodation_03:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"9645b56792d85ceff4d0ae813c08aef50c61a1b1a24f689988878c108a3e0695","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/5b47ac4990281233cc70d4b679e8714bd0e8fde0281e508af7bba688d348cb78.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_presupposition_accommodation_01:2 -> audio/generated/de-DE/dialogues/6088a59669b465520676fafd2de4451f9647583fd732be5640f5c24d09d5d8b9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('72261ef6-11e5-5bb6-ab6b-415cb44627a7', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_presupposition_accommodation_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'acae36217f11246439e30459e3d760ac798109d9970dc2cfb46d9085fd5991b2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eb8fd68d-f9bb-5d7d-acb3-59193f439b20', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('72261ef6-11e5-5bb6-ab6b-415cb44627a7', 1), 'acae36217f11246439e30459e3d760ac798109d9970dc2cfb46d9085fd5991b2',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6088a59669b465520676fafd2de4451f9647583fd732be5640f5c24d09d5d8b9.mp3', 2951, '2026-09-13 11:46:04.588816', '5dfcf985f4c63a39108b2288faa5451141260a93ae693fbe06bc490a6bfa963e', 'validated', '{"audio_key":"6088a59669b465520676fafd2de4451f9647583fd732be5640f5c24d09d5d8b9","entity_key":"d_presupposition_accommodation_01:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"5dfcf985f4c63a39108b2288faa5451141260a93ae693fbe06bc490a6bfa963e","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/6088a59669b465520676fafd2de4451f9647583fd732be5640f5c24d09d5d8b9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_oral_synthesis_pressure_03:1 -> audio/generated/de-DE/dialogues/60e04016f79fbb6a8d179265ad003d698d4d6a3781935ccfc141f5d83146d675.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fce282e0-a25a-5693-a981-c15ad8abb772', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_oral_synthesis_pressure_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '13afe60b8b4df2d9639ef4bb8a0cc34a741d645d190c0939fa53fd91e8b2b19e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dcc45033-daa0-5f8c-b307-73e130607ad1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fce282e0-a25a-5693-a981-c15ad8abb772', 1), '13afe60b8b4df2d9639ef4bb8a0cc34a741d645d190c0939fa53fd91e8b2b19e',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/60e04016f79fbb6a8d179265ad003d698d4d6a3781935ccfc141f5d83146d675.mp3', 2925, '2026-09-13 11:46:05.480754', 'afe4b83c2b883b639e042bfde34c7ba70591b5be5704e4bd2ee72df3d4a3d17d', 'validated', '{"audio_key":"60e04016f79fbb6a8d179265ad003d698d4d6a3781935ccfc141f5d83146d675","entity_key":"d_oral_synthesis_pressure_03:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"afe4b83c2b883b639e042bfde34c7ba70591b5be5704e4bd2ee72df3d4a3d17d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/60e04016f79fbb6a8d179265ad003d698d4d6a3781935ccfc141f5d83146d675.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_oral_synthesis_pressure_03:3 -> audio/generated/de-DE/dialogues/63c224ee696b82cd6ce125e6a1720d4136e3916c73b5c35f34914b442a259c82.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('511a1478-4013-512c-a012-e71456490eed', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_oral_synthesis_pressure_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '79e71e441f5784f12a81ab3c4a861594c76c15e4c2d44003490dab190a958748'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('18068ec1-0c80-5841-926a-20c038eb70d2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('511a1478-4013-512c-a012-e71456490eed', 1), '79e71e441f5784f12a81ab3c4a861594c76c15e4c2d44003490dab190a958748',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/63c224ee696b82cd6ce125e6a1720d4136e3916c73b5c35f34914b442a259c82.mp3', 2168, '2026-09-13 11:46:05.738475', 'e595899e9916c0cf0d61ef483144c5ba03c60e57ba0fbe94036b2f49b7c888fc', 'validated', '{"audio_key":"63c224ee696b82cd6ce125e6a1720d4136e3916c73b5c35f34914b442a259c82","entity_key":"d_oral_synthesis_pressure_03:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e595899e9916c0cf0d61ef483144c5ba03c60e57ba0fbe94036b2f49b7c888fc","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/63c224ee696b82cd6ce125e6a1720d4136e3916c73b5c35f34914b442a259c82.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_steelmanning_concession_01:1 -> audio/generated/de-DE/dialogues/665c06acd807585eb843d048875ca7442619f537d19a29192a9c608d7ac2a5e4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b3538436-1eed-57b6-a2f1-436d9b7eaf11', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_steelmanning_concession_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '84068ad516f33b16bff5e051022643be371f07fefb31d7d58664e7a550591fb0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('957c5fd8-67ac-5a4b-bf34-ff0b2478eaf1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b3538436-1eed-57b6-a2f1-436d9b7eaf11', 1), '84068ad516f33b16bff5e051022643be371f07fefb31d7d58664e7a550591fb0',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/665c06acd807585eb843d048875ca7442619f537d19a29192a9c608d7ac2a5e4.mp3', 4127, '2026-09-13 11:46:06.944429', 'b73aa1d1dc9588457e34b22c19fa5be984c77d17e1dc2ca08e230bf7501467ed', 'validated', '{"audio_key":"665c06acd807585eb843d048875ca7442619f537d19a29192a9c608d7ac2a5e4","entity_key":"d_steelmanning_concession_01:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b73aa1d1dc9588457e34b22c19fa5be984c77d17e1dc2ca08e230bf7501467ed","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/665c06acd807585eb843d048875ca7442619f537d19a29192a9c608d7ac2a5e4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_oral_synthesis_pressure_01:4 -> audio/generated/de-DE/dialogues/66c9b98d15893169dad16515873c936b05ffc545e9e2a189d9c69c4c7f0bef21.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('568f6c3b-af2a-5696-8f17-17b59f75c5ff', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_oral_synthesis_pressure_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9e487247552bcf933db400a3caf6308a00ab8f3bbb5e0b0479ba004733c6b557'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d94cdb76-9ab0-5589-aabd-0f520574602f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('568f6c3b-af2a-5696-8f17-17b59f75c5ff', 1), '9e487247552bcf933db400a3caf6308a00ab8f3bbb5e0b0479ba004733c6b557',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/66c9b98d15893169dad16515873c936b05ffc545e9e2a189d9c69c4c7f0bef21.mp3', 2115, '2026-09-13 11:46:06.901812', 'b72eb42610db4985c239abc87272573b94d3de62dfd356e2bde6c1780af325ca', 'validated', '{"audio_key":"66c9b98d15893169dad16515873c936b05ffc545e9e2a189d9c69c4c7f0bef21","entity_key":"d_oral_synthesis_pressure_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"b72eb42610db4985c239abc87272573b94d3de62dfd356e2bde6c1780af325ca","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/66c9b98d15893169dad16515873c936b05ffc545e9e2a189d9c69c4c7f0bef21.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_academic_stance_citation_distance_01:3 -> audio/generated/de-DE/dialogues/67e9e3f2626ac220fc70fa0d714492240b35592e8b6d498d120b5efe66d3a01a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f23f4288-80a7-55ec-95aa-74dc781760d6', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_academic_stance_citation_distance_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2d55fe7b3952b29156fd358043acef9f2a9c6d9895327b5b38fe3e9539a6c5db'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6608e101-7942-51c4-a0b0-5da4936ed586', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f23f4288-80a7-55ec-95aa-74dc781760d6', 1), '2d55fe7b3952b29156fd358043acef9f2a9c6d9895327b5b38fe3e9539a6c5db',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/67e9e3f2626ac220fc70fa0d714492240b35592e8b6d498d120b5efe66d3a01a.mp3', 2533, '2026-09-13 11:46:08.104058', '0f046d34d6c28108c90c23c32a1c4c769ebfb4a57579aaece0b0f1f0dab93469', 'validated', '{"audio_key":"67e9e3f2626ac220fc70fa0d714492240b35592e8b6d498d120b5efe66d3a01a","entity_key":"d_academic_stance_citation_distance_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"0f046d34d6c28108c90c23c32a1c4c769ebfb4a57579aaece0b0f1f0dab93469","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/67e9e3f2626ac220fc70fa0d714492240b35592e8b6d498d120b5efe66d3a01a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_institutional_register_precision_01:1 -> audio/generated/de-DE/dialogues/6f123693c312210a4782f8f22c9967e29a14aed208efcd4017d8bc45c5f11267.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('afb13926-863b-5f8d-9d47-5f527e3132d5', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_institutional_register_precision_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '35891eb9bdf9a5f687c4f4d05364bb48bf919a3b604ac172bcab0aedc3bd9446'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('32b6032f-01ff-521c-a961-8b1e86667165', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('afb13926-863b-5f8d-9d47-5f527e3132d5', 1), '35891eb9bdf9a5f687c4f4d05364bb48bf919a3b604ac172bcab0aedc3bd9446',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6f123693c312210a4782f8f22c9967e29a14aed208efcd4017d8bc45c5f11267.mp3', 3526, '2026-09-13 11:46:08.273382', '747f4a7f72c90754bc136f00c18c9def1de54015a59f2274fa61ef03ee2c9ab8', 'validated', '{"audio_key":"6f123693c312210a4782f8f22c9967e29a14aed208efcd4017d8bc45c5f11267","entity_key":"d_institutional_register_precision_01:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"747f4a7f72c90754bc136f00c18c9def1de54015a59f2274fa61ef03ee2c9ab8","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/6f123693c312210a4782f8f22c9967e29a14aed208efcd4017d8bc45c5f11267.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_academic_stance_citation_distance_01:4 -> audio/generated/de-DE/dialogues/706a73a3dc7eab8e65654483f94d4f09882b7d9091044d84d6c8b8d37bfb01a6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f09f13cd-0768-5a84-a9a0-a66e96df5a03', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_academic_stance_citation_distance_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '31f5f2d72f2f53ac2eedf7601f701e9dbbf87b64c347828019dc36ddac874773'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('70b2ad8b-2b18-5795-ac13-9c80fe2eae77', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f09f13cd-0768-5a84-a9a0-a66e96df5a03', 1), '31f5f2d72f2f53ac2eedf7601f701e9dbbf87b64c347828019dc36ddac874773',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/706a73a3dc7eab8e65654483f94d4f09882b7d9091044d84d6c8b8d37bfb01a6.mp3', 3004, '2026-09-13 11:46:09.338658', '979b63aef952e8c06e30df2bcebfc6ea6fd485d672a874e8982b441d60c4537d', 'validated', '{"audio_key":"706a73a3dc7eab8e65654483f94d4f09882b7d9091044d84d6c8b8d37bfb01a6","entity_key":"d_academic_stance_citation_distance_01:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"979b63aef952e8c06e30df2bcebfc6ea6fd485d672a874e8982b441d60c4537d","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/706a73a3dc7eab8e65654483f94d4f09882b7d9091044d84d6c8b8d37bfb01a6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_steelmanning_concession_02:2 -> audio/generated/de-DE/dialogues/7449ddffd04d4fe3e3fb02d29e489d5337ae811724706a32a7506d0a4c57a6cd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('594f8177-aef0-5012-8c36-746568df0fca', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_steelmanning_concession_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '772926743cdb0111d54133cee574d8b9b13aa7497509146e258f10906dede19e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('77505a9e-6b48-5443-9dd2-e0a1a5ff7efc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('594f8177-aef0-5012-8c36-746568df0fca', 1), '772926743cdb0111d54133cee574d8b9b13aa7497509146e258f10906dede19e',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7449ddffd04d4fe3e3fb02d29e489d5337ae811724706a32a7506d0a4c57a6cd.mp3', 4362, '2026-09-13 11:46:09.697522', '356bf3f7f03503d93df463ff78921ebb0df364e3e4f1deebd44b32dce895fd76', 'validated', '{"audio_key":"7449ddffd04d4fe3e3fb02d29e489d5337ae811724706a32a7506d0a4c57a6cd","entity_key":"d_steelmanning_concession_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"356bf3f7f03503d93df463ff78921ebb0df364e3e4f1deebd44b32dce895fd76","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/7449ddffd04d4fe3e3fb02d29e489d5337ae811724706a32a7506d0a4c57a6cd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_institutional_register_precision_03:2 -> audio/generated/de-DE/dialogues/7472c303bac7b1eecbaa9b08d556d06ae87ebf0d2ffac51fdf657a331fc75fa2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ad023f0a-5ae5-502d-92ed-6c4ca4830f63', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_institutional_register_precision_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c80d4403c49b091dd67bf959a7f654261a1e6394a129179d42cf46db328bbc5c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8590ce7f-7fae-5fc4-b2a1-52b71c9c8d75', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ad023f0a-5ae5-502d-92ed-6c4ca4830f63', 1), 'c80d4403c49b091dd67bf959a7f654261a1e6394a129179d42cf46db328bbc5c',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7472c303bac7b1eecbaa9b08d556d06ae87ebf0d2ffac51fdf657a331fc75fa2.mp3', 2873, '2026-09-13 11:46:10.561566', '526070bac0fc72f4a9980dd97d6cca335e81366203d3a84fefda6293f13b0b73', 'validated', '{"audio_key":"7472c303bac7b1eecbaa9b08d556d06ae87ebf0d2ffac51fdf657a331fc75fa2","entity_key":"d_institutional_register_precision_03:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"526070bac0fc72f4a9980dd97d6cca335e81366203d3a84fefda6293f13b0b73","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/7472c303bac7b1eecbaa9b08d556d06ae87ebf0d2ffac51fdf657a331fc75fa2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_institutional_register_precision_01:3 -> audio/generated/de-DE/dialogues/7af3234395a6be500831323db809831642894023c44b12a87e3b9da9811dfbd2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ea1c198c-4b1c-59a1-ab42-8d025a90b67e', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_institutional_register_precision_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0f509e0979b986c5f411d9411c43a16204d81bb21f237a1393750ec34ee243f2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fcfaf130-0d06-594f-bfd4-f0cd2c257813', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ea1c198c-4b1c-59a1-ab42-8d025a90b67e', 1), '0f509e0979b986c5f411d9411c43a16204d81bb21f237a1393750ec34ee243f2',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7af3234395a6be500831323db809831642894023c44b12a87e3b9da9811dfbd2.mp3', 2455, '2026-09-13 11:46:10.887772', '87251fcb6fb7cb8aec59edaa92462ff2442999b0cb4ea552cebfb7c57e88c8cd', 'validated', '{"audio_key":"7af3234395a6be500831323db809831642894023c44b12a87e3b9da9811dfbd2","entity_key":"d_institutional_register_precision_01:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"87251fcb6fb7cb8aec59edaa92462ff2442999b0cb4ea552cebfb7c57e88c8cd","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/7af3234395a6be500831323db809831642894023c44b12a87e3b9da9811dfbd2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_oral_synthesis_pressure_01:3 -> audio/generated/de-DE/dialogues/7d17371360ba87a688e268b083bcf90c35a3efdf000b11428bad8d354c883dc0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('143c1338-3c5d-595e-b082-abdde3df66a6', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_oral_synthesis_pressure_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a61a81b5dc9d790c2c38849eba827f2a7697a2a1196572f704912fe2d789a986'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('56ada295-3ba0-5091-8e12-96a491fa4cee', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('143c1338-3c5d-595e-b082-abdde3df66a6', 1), 'a61a81b5dc9d790c2c38849eba827f2a7697a2a1196572f704912fe2d789a986',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7d17371360ba87a688e268b083bcf90c35a3efdf000b11428bad8d354c883dc0.mp3', 2037, '2026-09-13 11:46:12.124540', '64f27629d1100a15f651fc880c1a7d432de58cc3fdab855007bacd32b3895695', 'validated', '{"audio_key":"7d17371360ba87a688e268b083bcf90c35a3efdf000b11428bad8d354c883dc0","entity_key":"d_oral_synthesis_pressure_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"64f27629d1100a15f651fc880c1a7d432de58cc3fdab855007bacd32b3895695","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/7d17371360ba87a688e268b083bcf90c35a3efdf000b11428bad8d354c883dc0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_presupposition_accommodation_03:4 -> audio/generated/de-DE/dialogues/7f47acf5cd73e4bf2b46ce4acc3a39b91e7ecc855a8121133d342b126d6eeb4c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('71a32f9a-bf0f-5e45-a331-56c1113dbd02', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_presupposition_accommodation_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7778330e85ab12fa2acca2a061689dd4a7f7408bb64e77ff81ceb773fd6ab760'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('99d2c5cb-26cd-5ae1-8ad6-378ba2068113', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('71a32f9a-bf0f-5e45-a331-56c1113dbd02', 1), '7778330e85ab12fa2acca2a061689dd4a7f7408bb64e77ff81ceb773fd6ab760',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7f47acf5cd73e4bf2b46ce4acc3a39b91e7ecc855a8121133d342b126d6eeb4c.mp3', 2690, '2026-09-13 11:46:12.194759', '6b6443d44cd552451df4e24937e998753da03964c338138591fd7c51ec6a652a', 'validated', '{"audio_key":"7f47acf5cd73e4bf2b46ce4acc3a39b91e7ecc855a8121133d342b126d6eeb4c","entity_key":"d_presupposition_accommodation_03:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"6b6443d44cd552451df4e24937e998753da03964c338138591fd7c51ec6a652a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/7f47acf5cd73e4bf2b46ce4acc3a39b91e7ecc855a8121133d342b126d6eeb4c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_principled_disagreement_negotiation_03:4 -> audio/generated/de-DE/dialogues/81822f1498d0f3d571ba2f116bb7f12c55c09a0942caf6d53ea76cbcec140c3a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c98354ad-4475-5db0-ba20-1b760f34feed', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_principled_disagreement_negotiation_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7e41c18e347b00aea6e07c0afda8696c7dd0c86f08348009b02247c7dbac2e40'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('648b439f-8530-5e70-9acf-0a18110857c1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c98354ad-4475-5db0-ba20-1b760f34feed', 1), '7e41c18e347b00aea6e07c0afda8696c7dd0c86f08348009b02247c7dbac2e40',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/81822f1498d0f3d571ba2f116bb7f12c55c09a0942caf6d53ea76cbcec140c3a.mp3', 3474, '2026-09-13 11:46:13.501031', '71acff38eb54ee6484c07e4349d1ecf9386155da2cfae48866124ead299a922f', 'validated', '{"audio_key":"81822f1498d0f3d571ba2f116bb7f12c55c09a0942caf6d53ea76cbcec140c3a","entity_key":"d_principled_disagreement_negotiation_03:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"71acff38eb54ee6484c07e4349d1ecf9386155da2cfae48866124ead299a922f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/81822f1498d0f3d571ba2f116bb7f12c55c09a0942caf6d53ea76cbcec140c3a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_metaphor_idiom_pragmatic_transfer_02:3 -> audio/generated/de-DE/dialogues/829d86146b0ef26be47df8813118dace18471e3d91e1497b899bfce9e69de464.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3ef7eb7b-4a9a-566f-bfc5-74e7927467f2', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_metaphor_idiom_pragmatic_transfer_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c2e8ea3e5987157e79f2cbe94b81e2792cedf6200488141cc7d7389ccd11abd2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0c50004e-f8d1-5d47-b15d-c0260469077b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3ef7eb7b-4a9a-566f-bfc5-74e7927467f2', 1), 'c2e8ea3e5987157e79f2cbe94b81e2792cedf6200488141cc7d7389ccd11abd2',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/829d86146b0ef26be47df8813118dace18471e3d91e1497b899bfce9e69de464.mp3', 3578, '2026-09-13 11:46:13.581586', 'd031da64e4ef54a8c37384d65c7a6807441516102a491210d5dd7fda56f009ad', 'validated', '{"audio_key":"829d86146b0ef26be47df8813118dace18471e3d91e1497b899bfce9e69de464","entity_key":"d_metaphor_idiom_pragmatic_transfer_02:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"d031da64e4ef54a8c37384d65c7a6807441516102a491210d5dd7fda56f009ad","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/829d86146b0ef26be47df8813118dace18471e3d91e1497b899bfce9e69de464.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_steelmanning_concession_03:2 -> audio/generated/de-DE/dialogues/84038ac93796f131b657a6b14373b8f87e326210ff18df0e0233fa360b5ba6e6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('144b0ded-ff85-5d4a-b0d2-a6313b5b38ba', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_steelmanning_concession_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '332a9185fad28a5428f3d11cb3b91eb6e93d8afac4c35230520970156d091178'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bc1023d5-a186-5b92-b1dc-52941bb1291d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('144b0ded-ff85-5d4a-b0d2-a6313b5b38ba', 1), '332a9185fad28a5428f3d11cb3b91eb6e93d8afac4c35230520970156d091178',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/84038ac93796f131b657a6b14373b8f87e326210ff18df0e0233fa360b5ba6e6.mp3', 3004, '2026-09-13 11:46:14.770699', '0a06b80bd10e6ac486e1760247b96aa57cb360e68d9612ca1f300c498ff41d5d', 'validated', '{"audio_key":"84038ac93796f131b657a6b14373b8f87e326210ff18df0e0233fa360b5ba6e6","entity_key":"d_steelmanning_concession_03:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"0a06b80bd10e6ac486e1760247b96aa57cb360e68d9612ca1f300c498ff41d5d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/84038ac93796f131b657a6b14373b8f87e326210ff18df0e0233fa360b5ba6e6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_descriptive_normative_reasoning_03:1 -> audio/generated/de-DE/dialogues/883724624187c03cc770da32647931f4f1b875fbaf606c9690481e6bcf2465bd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2e19e7ee-696e-5964-8731-abea3879a65b', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_descriptive_normative_reasoning_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '04362ba7d1f8a172af8bcabd30d694e7be82a309c4a1777887b06ffb0ddd4193'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fa53f46a-c047-51a3-87bb-c11cc8ec3961', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2e19e7ee-696e-5964-8731-abea3879a65b', 1), '04362ba7d1f8a172af8bcabd30d694e7be82a309c4a1777887b06ffb0ddd4193',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/883724624187c03cc770da32647931f4f1b875fbaf606c9690481e6bcf2465bd.mp3', 3709, '2026-09-13 11:46:14.924252', '030af84aeb8a9d08fa6ad102729dd41bd88b38fba9402acec07588ff8a3fe1cd', 'validated', '{"audio_key":"883724624187c03cc770da32647931f4f1b875fbaf606c9690481e6bcf2465bd","entity_key":"d_descriptive_normative_reasoning_03:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"030af84aeb8a9d08fa6ad102729dd41bd88b38fba9402acec07588ff8a3fe1cd","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/883724624187c03cc770da32647931f4f1b875fbaf606c9690481e6bcf2465bd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_oral_synthesis_pressure_01:1 -> audio/generated/de-DE/dialogues/88f80b1ddd5c91f426563f238ede633c100e80538113c16ba7b40211546156b0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9259617a-6faf-54ce-b7ec-e8db7161a57e', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_oral_synthesis_pressure_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9fd08fdc36895797258c0535f078a4b08c3e3f3297637d28d82413a60f01a5b3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9e01d701-60de-53d9-b61c-3d39b983044f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9259617a-6faf-54ce-b7ec-e8db7161a57e', 1), '9fd08fdc36895797258c0535f078a4b08c3e3f3297637d28d82413a60f01a5b3',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/88f80b1ddd5c91f426563f238ede633c100e80538113c16ba7b40211546156b0.mp3', 2586, '2026-09-13 11:46:15.995005', '1b8b46acd0edaf05913dc98ca6d2dce23bbac131fb0cd7a0a49e5252bfd0f656', 'validated', '{"audio_key":"88f80b1ddd5c91f426563f238ede633c100e80538113c16ba7b40211546156b0","entity_key":"d_oral_synthesis_pressure_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"1b8b46acd0edaf05913dc98ca6d2dce23bbac131fb0cd7a0a49e5252bfd0f656","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/88f80b1ddd5c91f426563f238ede633c100e80538113c16ba7b40211546156b0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_academic_stance_citation_distance_02:4 -> audio/generated/de-DE/dialogues/8ed93201f8fbe3039a12f35d2e0d729ba8d85b9abbcc667d3bca94ffc15d159e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('53ec75ab-32dc-5b52-82a1-93d6450029dd', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_academic_stance_citation_distance_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '097942ae6759283a9c67d9ec8495942687a87b4a9975b7f52082edb53d6a68ca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('43106850-5210-5067-82fe-3febfe4b6aa5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('53ec75ab-32dc-5b52-82a1-93d6450029dd', 1), '097942ae6759283a9c67d9ec8495942687a87b4a9975b7f52082edb53d6a68ca',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8ed93201f8fbe3039a12f35d2e0d729ba8d85b9abbcc667d3bca94ffc15d159e.mp3', 3108, '2026-09-13 11:46:16.201204', '8bf529583f9c859fe15fe971477d2453639859c68accb430674e50938f9f57a2', 'validated', '{"audio_key":"8ed93201f8fbe3039a12f35d2e0d729ba8d85b9abbcc667d3bca94ffc15d159e","entity_key":"d_academic_stance_citation_distance_02:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"8bf529583f9c859fe15fe971477d2453639859c68accb430674e50938f9f57a2","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/8ed93201f8fbe3039a12f35d2e0d729ba8d85b9abbcc667d3bca94ffc15d159e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_steelmanning_concession_02:1 -> audio/generated/de-DE/dialogues/8f69c9bb4a65ff3293014d61f8874500cd116b826e151367d1d88f76ef4f4383.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e5653f2d-7b1b-576d-8812-da1f2284ad59', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_steelmanning_concession_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '35455ed41eceffac574e4d1dd94eb75114dca98821d26263beb94751322beafa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('34922e51-e1a8-57dd-bcf1-93d0309f402f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e5653f2d-7b1b-576d-8812-da1f2284ad59', 1), '35455ed41eceffac574e4d1dd94eb75114dca98821d26263beb94751322beafa',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8f69c9bb4a65ff3293014d61f8874500cd116b826e151367d1d88f76ef4f4383.mp3', 2168, '2026-09-13 11:46:17.155637', '43ea309530cd61a3689a50de05d77abce5420b564fe1ff32f91da494d7860450', 'validated', '{"audio_key":"8f69c9bb4a65ff3293014d61f8874500cd116b826e151367d1d88f76ef4f4383","entity_key":"d_steelmanning_concession_02:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"43ea309530cd61a3689a50de05d77abce5420b564fe1ff32f91da494d7860450","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/8f69c9bb4a65ff3293014d61f8874500cd116b826e151367d1d88f76ef4f4383.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_descriptive_normative_reasoning_01:3 -> audio/generated/de-DE/dialogues/8f94bddd4b0eeb87a3ed849bada944dd624bcea25c71ed76e0b727268e34e972.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('beaf4f1b-44af-5ddd-8f0b-1419e617b352', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_descriptive_normative_reasoning_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '858229a38a521a493cf94bf26e1b132e32d7523fef38438834fddcee711938f5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ffa66b62-e3f8-540f-a5b9-03ab925b0655', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('beaf4f1b-44af-5ddd-8f0b-1419e617b352', 1), '858229a38a521a493cf94bf26e1b132e32d7523fef38438834fddcee711938f5',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8f94bddd4b0eeb87a3ed849bada944dd624bcea25c71ed76e0b727268e34e972.mp3', 4127, '2026-09-13 11:46:17.606594', 'c0cb407af92abf6f0d5dd36064d43fb559ad537b171d0d308d8f44ca9fd4d136', 'validated', '{"audio_key":"8f94bddd4b0eeb87a3ed849bada944dd624bcea25c71ed76e0b727268e34e972","entity_key":"d_descriptive_normative_reasoning_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c0cb407af92abf6f0d5dd36064d43fb559ad537b171d0d308d8f44ca9fd4d136","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/8f94bddd4b0eeb87a3ed849bada944dd624bcea25c71ed76e0b727268e34e972.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_narrative_perspective_temporal_control_01:2 -> audio/generated/de-DE/dialogues/8fc536bac8dda3f582afca73562afdbd4509121c7882394b7daa945aef1ab9f5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('407fa323-c70e-508f-abc7-44467ab634f4', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_narrative_perspective_temporal_control_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '49a1177d8950c91cd0b82de968156bc3ce7960c3465355a36e01c5ab4786b3e8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e144a40b-3ccd-5a31-9d8d-3963aa25612c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('407fa323-c70e-508f-abc7-44467ab634f4', 1), '49a1177d8950c91cd0b82de968156bc3ce7960c3465355a36e01c5ab4786b3e8',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8fc536bac8dda3f582afca73562afdbd4509121c7882394b7daa945aef1ab9f5.mp3', 4440, '2026-09-13 11:46:18.574422', 'cf5a06594e1826e3cdbec74d9477f897e03b652d98e02912e892e68bceb7e140', 'validated', '{"audio_key":"8fc536bac8dda3f582afca73562afdbd4509121c7882394b7daa945aef1ab9f5","entity_key":"d_narrative_perspective_temporal_control_01:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"cf5a06594e1826e3cdbec74d9477f897e03b652d98e02912e892e68bceb7e140","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/8fc536bac8dda3f582afca73562afdbd4509121c7882394b7daa945aef1ab9f5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_judgment_language_capstone_01:1 -> audio/generated/de-DE/dialogues/91f545bdfa8429800bf31c9315d3bad7af183ddba728de96cd2808e4e8b0fba7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fb1dbab6-785b-589a-b9ed-98baae502e2d', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_judgment_language_capstone_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eb9de7ce4329e42f0591537fe85ae5051894636cf168c6b34cc7b26c008184ba'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a70c3e91-3bd9-57de-8b6e-7fa983183a63', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fb1dbab6-785b-589a-b9ed-98baae502e2d', 1), 'eb9de7ce4329e42f0591537fe85ae5051894636cf168c6b34cc7b26c008184ba',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/91f545bdfa8429800bf31c9315d3bad7af183ddba728de96cd2808e4e8b0fba7.mp3', 4832, '2026-09-13 11:46:19.146407', '366e13b3b07a5a18429cb0ec965ea5ba15f1c3a82ae107a94ac6728d4bb64710', 'validated', '{"audio_key":"91f545bdfa8429800bf31c9315d3bad7af183ddba728de96cd2808e4e8b0fba7","entity_key":"d_judgment_language_capstone_01:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"366e13b3b07a5a18429cb0ec965ea5ba15f1c3a82ae107a94ac6728d4bb64710","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/91f545bdfa8429800bf31c9315d3bad7af183ddba728de96cd2808e4e8b0fba7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_narrative_perspective_temporal_control_03:1 -> audio/generated/de-DE/dialogues/92b74ad59bd6677a061f38fd8bf77449386b451ec39874f2c03d3282d9ed7884.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dd21e273-693a-54a7-80b5-9964e478b210', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_narrative_perspective_temporal_control_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f3b3f0b270cb45f1f5f4cf879953cce052a379a60f08130d5647d6bde65479e1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7122ce46-5663-566c-9415-87e7b2357db0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dd21e273-693a-54a7-80b5-9964e478b210', 1), 'f3b3f0b270cb45f1f5f4cf879953cce052a379a60f08130d5647d6bde65479e1',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/92b74ad59bd6677a061f38fd8bf77449386b451ec39874f2c03d3282d9ed7884.mp3', 4728, '2026-09-13 11:46:20.136263', 'e27d7214498d4c38ee179ffcf5ab59728b14cc4a56443184c5bac8218e0a6957', 'validated', '{"audio_key":"92b74ad59bd6677a061f38fd8bf77449386b451ec39874f2c03d3282d9ed7884","entity_key":"d_narrative_perspective_temporal_control_03:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"e27d7214498d4c38ee179ffcf5ab59728b14cc4a56443184c5bac8218e0a6957","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/92b74ad59bd6677a061f38fd8bf77449386b451ec39874f2c03d3282d9ed7884.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_presupposition_accommodation_01:1 -> audio/generated/de-DE/dialogues/9433f3ac2d2dc77ce65ac90da40964f8de0a37821ee0719a0d1fa7987553ba6a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('607d72bc-6a64-5de8-bb74-7686491ec60b', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_presupposition_accommodation_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2d55ebd23e07bd2f6baba39387ba65dd58fa6d176d215270612a11ea1873ac8f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('865feb61-de04-5747-9aea-fd7488d88d18', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('607d72bc-6a64-5de8-bb74-7686491ec60b', 1), '2d55ebd23e07bd2f6baba39387ba65dd58fa6d176d215270612a11ea1873ac8f',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9433f3ac2d2dc77ce65ac90da40964f8de0a37821ee0719a0d1fa7987553ba6a.mp3', 3160, '2026-09-13 11:46:20.652977', '39d4e7e5043fa1e5bcc656b9a11b7a5bc8c6a881f65787b2243644b3e0ed0436', 'validated', '{"audio_key":"9433f3ac2d2dc77ce65ac90da40964f8de0a37821ee0719a0d1fa7987553ba6a","entity_key":"d_presupposition_accommodation_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"39d4e7e5043fa1e5bcc656b9a11b7a5bc8c6a881f65787b2243644b3e0ed0436","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/9433f3ac2d2dc77ce65ac90da40964f8de0a37821ee0719a0d1fa7987553ba6a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_descriptive_normative_reasoning_03:4 -> audio/generated/de-DE/dialogues/98846777ed536f36bfd49a3ec9afc5694074c4d1aae60deec50f0dd235193885.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('edb7ac79-3fab-5409-be91-86fe163270a8', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_descriptive_normative_reasoning_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9fffbcf04cf65e2ad927172864473707d48e4aa3f32059d2035b390f029c2d07'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9813fe0a-7cd7-57b9-aec7-583e954d7420', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('edb7ac79-3fab-5409-be91-86fe163270a8', 1), '9fffbcf04cf65e2ad927172864473707d48e4aa3f32059d2035b390f029c2d07',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/98846777ed536f36bfd49a3ec9afc5694074c4d1aae60deec50f0dd235193885.mp3', 2742, '2026-09-13 11:46:21.340764', 'a4a65a939544597acd7ce51c0673c97119db1323505287e11c83e0c45deb23c8', 'validated', '{"audio_key":"98846777ed536f36bfd49a3ec9afc5694074c4d1aae60deec50f0dd235193885","entity_key":"d_descriptive_normative_reasoning_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"a4a65a939544597acd7ce51c0673c97119db1323505287e11c83e0c45deb23c8","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/98846777ed536f36bfd49a3ec9afc5694074c4d1aae60deec50f0dd235193885.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_principled_disagreement_negotiation_03:1 -> audio/generated/de-DE/dialogues/98a33086e4d2f80195c7c23323bae912039452e93489b5818c81cb6d8f121e54.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('aa9b1010-8821-553a-a6df-db73e352db20', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_principled_disagreement_negotiation_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '45a492b88b353eedac4b6aa335978376350a2f8f9f3a97e30fa851ac8bbdd61e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b7e234ff-8166-55f1-963d-ae90770f1f8b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('aa9b1010-8821-553a-a6df-db73e352db20', 1), '45a492b88b353eedac4b6aa335978376350a2f8f9f3a97e30fa851ac8bbdd61e',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/98a33086e4d2f80195c7c23323bae912039452e93489b5818c81cb6d8f121e54.mp3', 2586, '2026-09-13 11:46:21.882499', '908baf395e5c3140cdc040d7c507e31199258bbaae9d55419e41f97b2dc2dda9', 'validated', '{"audio_key":"98a33086e4d2f80195c7c23323bae912039452e93489b5818c81cb6d8f121e54","entity_key":"d_principled_disagreement_negotiation_03:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"908baf395e5c3140cdc040d7c507e31199258bbaae9d55419e41f97b2dc2dda9","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/98a33086e4d2f80195c7c23323bae912039452e93489b5818c81cb6d8f121e54.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_principled_disagreement_negotiation_03:2 -> audio/generated/de-DE/dialogues/99790d38283d10f848e601f5cc6b77bb25fd2959217018db861f7d38306b88db.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3b8c614c-a97b-596c-8ece-af2edf65a6e5', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_principled_disagreement_negotiation_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd13f0b8a11fb543e6c0062ebaed75eabf63acf255d081ede716edf3ec6e672bf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c9352f18-b5e9-5198-9ec4-ac0d763ffdb6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3b8c614c-a97b-596c-8ece-af2edf65a6e5', 1), 'd13f0b8a11fb543e6c0062ebaed75eabf63acf255d081ede716edf3ec6e672bf',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/99790d38283d10f848e601f5cc6b77bb25fd2959217018db861f7d38306b88db.mp3', 4545, '2026-09-13 11:46:22.829194', '5e82adb3f2a9517a8a143ad7a706f3ffefc62ad12eababc29be215b9818c4e89', 'validated', '{"audio_key":"99790d38283d10f848e601f5cc6b77bb25fd2959217018db861f7d38306b88db","entity_key":"d_principled_disagreement_negotiation_03:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"5e82adb3f2a9517a8a143ad7a706f3ffefc62ad12eababc29be215b9818c4e89","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/99790d38283d10f848e601f5cc6b77bb25fd2959217018db861f7d38306b88db.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_steelmanning_concession_01:2 -> audio/generated/de-DE/dialogues/9a6de0ea09ae8b3c1764a1624b310a2b4267bd5067b4561cd25ab67216ed6faf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2bb43add-5838-5b8f-aeb5-a01bfa9c7be5', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_steelmanning_concession_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7261e8c021ec2607d6e59b065ee892760c9e642021231300cc81ed62008d9d61'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('29892591-ef60-5cce-8679-6a89a59707f8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2bb43add-5838-5b8f-aeb5-a01bfa9c7be5', 1), '7261e8c021ec2607d6e59b065ee892760c9e642021231300cc81ed62008d9d61',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9a6de0ea09ae8b3c1764a1624b310a2b4267bd5067b4561cd25ab67216ed6faf.mp3', 5381, '2026-09-13 11:46:23.451813', 'fc845c2dfc51305f105cbbbb40a915aaf00d7d82fc4cd4b048ac479a9cccd48c', 'validated', '{"audio_key":"9a6de0ea09ae8b3c1764a1624b310a2b4267bd5067b4561cd25ab67216ed6faf","entity_key":"d_steelmanning_concession_01:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"fc845c2dfc51305f105cbbbb40a915aaf00d7d82fc4cd4b048ac479a9cccd48c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/9a6de0ea09ae8b3c1764a1624b310a2b4267bd5067b4561cd25ab67216ed6faf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_descriptive_normative_reasoning_02:3 -> audio/generated/de-DE/dialogues/9be5f69ddcdca532a0964477c397d1ed3cf931a51d1b06a9e5b6aad3f58013fb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('77c227f8-0f94-598e-a670-13329a27629d', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_descriptive_normative_reasoning_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f03acd2e8f04409934d0e97566abbaa6a24994e78d1e9a87e988a699fd1aec30'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1bbc4efd-d293-5f4f-a162-f85d14a32d74', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('77c227f8-0f94-598e-a670-13329a27629d', 1), 'f03acd2e8f04409934d0e97566abbaa6a24994e78d1e9a87e988a699fd1aec30',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9be5f69ddcdca532a0964477c397d1ed3cf931a51d1b06a9e5b6aad3f58013fb.mp3', 3343, '2026-09-13 11:46:24.121032', 'e323730cf77389dd0818baf9e02b97616ccbe602a3af43349ec2589a41c4e732', 'validated', '{"audio_key":"9be5f69ddcdca532a0964477c397d1ed3cf931a51d1b06a9e5b6aad3f58013fb","entity_key":"d_descriptive_normative_reasoning_02:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"e323730cf77389dd0818baf9e02b97616ccbe602a3af43349ec2589a41c4e732","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/9be5f69ddcdca532a0964477c397d1ed3cf931a51d1b06a9e5b6aad3f58013fb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_descriptive_normative_reasoning_02:2 -> audio/generated/de-DE/dialogues/9f2c718a03a1aa5939dad52938e502007eea270f189919826faf3ce2add3f160.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ba06a9b8-f9e6-5192-b741-20047c26b4ba', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_descriptive_normative_reasoning_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8335f20712f1ce6ffb833c618a524290c961dd496116aad7edc2a467df89a492'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('90c818ca-0ccb-5360-992a-ecf95d24bd68', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ba06a9b8-f9e6-5192-b741-20047c26b4ba', 1), '8335f20712f1ce6ffb833c618a524290c961dd496116aad7edc2a467df89a492',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9f2c718a03a1aa5939dad52938e502007eea270f189919826faf3ce2add3f160.mp3', 4414, '2026-09-13 11:46:25.087207', '3d0c01414a756a36be49fcf351f386081680c3db9fee3d9924a9d7ece2598f49', 'validated', '{"audio_key":"9f2c718a03a1aa5939dad52938e502007eea270f189919826faf3ce2add3f160","entity_key":"d_descriptive_normative_reasoning_02:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"3d0c01414a756a36be49fcf351f386081680c3db9fee3d9924a9d7ece2598f49","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/9f2c718a03a1aa5939dad52938e502007eea270f189919826faf3ce2add3f160.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_judgment_language_capstone_01:4 -> audio/generated/de-DE/dialogues/a4ea86341dbf65898e11a66882eeac2404384be68a35f2169d60c6bca247e694.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e35efe23-c9e4-5625-830d-cb0dd6e842ed', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_judgment_language_capstone_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8f889c0ff0e687679ce02d97b1ed7e4c4becdbcddf31c95234839aa1ecbdc997'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bdfebff2-32ea-5eca-b5c2-29df903393e8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e35efe23-c9e4-5625-830d-cb0dd6e842ed', 1), '8f889c0ff0e687679ce02d97b1ed7e4c4becdbcddf31c95234839aa1ecbdc997',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a4ea86341dbf65898e11a66882eeac2404384be68a35f2169d60c6bca247e694.mp3', 2873, '2026-09-13 11:46:25.460467', 'a309b9ad2a606a1fa9867ca1733f6fda876d4a310c65b766fd76c9ca815e4840', 'validated', '{"audio_key":"a4ea86341dbf65898e11a66882eeac2404384be68a35f2169d60c6bca247e694","entity_key":"d_judgment_language_capstone_01:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"a309b9ad2a606a1fa9867ca1733f6fda876d4a310c65b766fd76c9ca815e4840","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/a4ea86341dbf65898e11a66882eeac2404384be68a35f2169d60c6bca247e694.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_metaphor_idiom_pragmatic_transfer_02:4 -> audio/generated/de-DE/dialogues/a7be665d1510b5d2997a9be158db0a6e9a20cedf37dd29bf4e272d48364264e2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('efe19084-85d9-5b73-be5e-fb366d64c6d5', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_metaphor_idiom_pragmatic_transfer_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7d605b7c51c444654b756bed8c1777af680048b0a9597560bd3e56cd2b6d5188'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5ea6d15a-b520-5bf7-b51d-19978c7f5cf0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('efe19084-85d9-5b73-be5e-fb366d64c6d5', 1), '7d605b7c51c444654b756bed8c1777af680048b0a9597560bd3e56cd2b6d5188',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a7be665d1510b5d2997a9be158db0a6e9a20cedf37dd29bf4e272d48364264e2.mp3', 4127, '2026-09-13 11:46:26.468701', '1793f02006a7d56eae09c75c60be4b254a5c3e8e894276e414b7f531d9c7c7f0', 'validated', '{"audio_key":"a7be665d1510b5d2997a9be158db0a6e9a20cedf37dd29bf4e272d48364264e2","entity_key":"d_metaphor_idiom_pragmatic_transfer_02:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"1793f02006a7d56eae09c75c60be4b254a5c3e8e894276e414b7f531d9c7c7f0","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/a7be665d1510b5d2997a9be158db0a6e9a20cedf37dd29bf4e272d48364264e2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_institutional_register_precision_03:1 -> audio/generated/de-DE/dialogues/a8c196740b9c4b829f49d9c7fbd37ab6b45b45e863e90d398fcae43681847ce0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b7c60571-d2f0-53db-90cf-ed67028e3efb', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_institutional_register_precision_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '54bb4ee70d240b3f4bcc73992ba3dc9e9bbd9e680bda5e0c03a956674f3bd5af'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('29925588-9bf5-59af-bc47-7d24b0adc2c6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b7c60571-d2f0-53db-90cf-ed67028e3efb', 1), '54bb4ee70d240b3f4bcc73992ba3dc9e9bbd9e680bda5e0c03a956674f3bd5af',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a8c196740b9c4b829f49d9c7fbd37ab6b45b45e863e90d398fcae43681847ce0.mp3', 2351, '2026-09-13 11:46:26.675792', '07a400e8fdcdb605cb5a7826b72771e9f4d626a79050089e64cfb90b9e9c2c95', 'validated', '{"audio_key":"a8c196740b9c4b829f49d9c7fbd37ab6b45b45e863e90d398fcae43681847ce0","entity_key":"d_institutional_register_precision_03:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"07a400e8fdcdb605cb5a7826b72771e9f4d626a79050089e64cfb90b9e9c2c95","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/a8c196740b9c4b829f49d9c7fbd37ab6b45b45e863e90d398fcae43681847ce0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_steelmanning_concession_03:1 -> audio/generated/de-DE/dialogues/a8fa53361c1389acab31491dea338cd3cd499908bf1de183a5354c41b0e9d45a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6cf04dce-8210-5cb9-88f6-a4c2e0a59d6d', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_steelmanning_concession_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4742c81291b55979783a9f647e12b4add0ae672e72d69486e4dccd0ec543e8ef'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3e069bae-1521-5758-be28-9a916d5147b2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6cf04dce-8210-5cb9-88f6-a4c2e0a59d6d', 1), '4742c81291b55979783a9f647e12b4add0ae672e72d69486e4dccd0ec543e8ef',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a8fa53361c1389acab31491dea338cd3cd499908bf1de183a5354c41b0e9d45a.mp3', 4911, '2026-09-13 11:46:28.007700', 'b154fc5a9bfa4ecd2890dfe77d4422017b50a240379e7d223727efa2b603f1b8', 'validated', '{"audio_key":"a8fa53361c1389acab31491dea338cd3cd499908bf1de183a5354c41b0e9d45a","entity_key":"d_steelmanning_concession_03:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b154fc5a9bfa4ecd2890dfe77d4422017b50a240379e7d223727efa2b603f1b8","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/a8fa53361c1389acab31491dea338cd3cd499908bf1de183a5354c41b0e9d45a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_descriptive_normative_reasoning_01:2 -> audio/generated/de-DE/dialogues/abadbdc4b1926abf4821ffd032b6739029ad4c0e825a7e0a8c014f07c3550fce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e76fe7ed-d77f-5bf9-becb-4d75cbaeeced', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_descriptive_normative_reasoning_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '18dedd068f0bcdf634922eeded36a3960f2f26741d9d50fa62d2f87eafc3883f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3cf318a2-ffee-5ae1-9ba2-d1c56da86be7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e76fe7ed-d77f-5bf9-becb-4d75cbaeeced', 1), '18dedd068f0bcdf634922eeded36a3960f2f26741d9d50fa62d2f87eafc3883f',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/abadbdc4b1926abf4821ffd032b6739029ad4c0e825a7e0a8c014f07c3550fce.mp3', 4858, '2026-09-13 11:46:28.278699', '66980aa3cbccafed3b4562685706ebd057dbf88c2e9cba293dda0f3f321c56a6', 'validated', '{"audio_key":"abadbdc4b1926abf4821ffd032b6739029ad4c0e825a7e0a8c014f07c3550fce","entity_key":"d_descriptive_normative_reasoning_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"66980aa3cbccafed3b4562685706ebd057dbf88c2e9cba293dda0f3f321c56a6","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/abadbdc4b1926abf4821ffd032b6739029ad4c0e825a7e0a8c014f07c3550fce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_principled_disagreement_negotiation_02:3 -> audio/generated/de-DE/dialogues/acbbde671e499adc18ae3c25d5a44ef556cd793672abb7947ee9565295d3bc74.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0fd830ae-fef7-5d3c-88a2-0ce76883d794', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_principled_disagreement_negotiation_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '890bda1305ba0057ecbec9a801f732d470b85dcce203d5ed6092f1f60996e0f1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('db6f6c74-b075-5638-839d-f2cfd570378e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0fd830ae-fef7-5d3c-88a2-0ce76883d794', 1), '890bda1305ba0057ecbec9a801f732d470b85dcce203d5ed6092f1f60996e0f1',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/acbbde671e499adc18ae3c25d5a44ef556cd793672abb7947ee9565295d3bc74.mp3', 2455, '2026-09-13 11:46:29.235589', 'd96174752cca0d0eb6f54d9a465296a4aaf02d2c145e5655077ddd528d10a667', 'validated', '{"audio_key":"acbbde671e499adc18ae3c25d5a44ef556cd793672abb7947ee9565295d3bc74","entity_key":"d_principled_disagreement_negotiation_02:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"d96174752cca0d0eb6f54d9a465296a4aaf02d2c145e5655077ddd528d10a667","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/acbbde671e499adc18ae3c25d5a44ef556cd793672abb7947ee9565295d3bc74.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_steelmanning_concession_01:4 -> audio/generated/de-DE/dialogues/af12e113113b1331058ced86ca72ee114af0fa7b4dba839df95ff1c3326cd7c1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('799da22c-ab94-5721-80aa-1cf7ac797c6a', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_steelmanning_concession_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c8aa950793f773d9c5ebc7767461a46cb2dd3c1539ca0de421d920624d18befa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3e530d3a-54c4-5847-9319-fe72399696db', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('799da22c-ab94-5721-80aa-1cf7ac797c6a', 1), 'c8aa950793f773d9c5ebc7767461a46cb2dd3c1539ca0de421d920624d18befa',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/af12e113113b1331058ced86ca72ee114af0fa7b4dba839df95ff1c3326cd7c1.mp3', 3186, '2026-09-13 11:46:29.587674', '7f1ba57f78a81da8ae1375027d9e1b7d1a314c7fd8cf6c3baff0b7cc06bf15a1', 'validated', '{"audio_key":"af12e113113b1331058ced86ca72ee114af0fa7b4dba839df95ff1c3326cd7c1","entity_key":"d_steelmanning_concession_01:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"7f1ba57f78a81da8ae1375027d9e1b7d1a314c7fd8cf6c3baff0b7cc06bf15a1","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/af12e113113b1331058ced86ca72ee114af0fa7b4dba839df95ff1c3326cd7c1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_oral_synthesis_pressure_01:2 -> audio/generated/de-DE/dialogues/b4766365a8aa31e1459ab7a2dc2b82ad9e2daaac4e9232522f3f3d23a6f11dcb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('19a31fb9-2de3-500b-ab1a-413723b93b26', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_oral_synthesis_pressure_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '98072d09344d451f8fbff1a56d3dd1fcc56bb344789b1b4c64199f3abde3b0bc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0a9e6926-745b-58c7-a963-52b932e5d8f3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('19a31fb9-2de3-500b-ab1a-413723b93b26', 1), '98072d09344d451f8fbff1a56d3dd1fcc56bb344789b1b4c64199f3abde3b0bc',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b4766365a8aa31e1459ab7a2dc2b82ad9e2daaac4e9232522f3f3d23a6f11dcb.mp3', 3239, '2026-09-13 11:46:30.547627', 'e26c9d457bd1988310cfb3fd122568731fda09540cd9e537c1f6119cea040a12', 'validated', '{"audio_key":"b4766365a8aa31e1459ab7a2dc2b82ad9e2daaac4e9232522f3f3d23a6f11dcb","entity_key":"d_oral_synthesis_pressure_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"e26c9d457bd1988310cfb3fd122568731fda09540cd9e537c1f6119cea040a12","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/b4766365a8aa31e1459ab7a2dc2b82ad9e2daaac4e9232522f3f3d23a6f11dcb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_steelmanning_concession_03:3 -> audio/generated/de-DE/dialogues/b590486633140508459df3e73655f305e1ce9fdfaa263a53a3f0eb21dba4d3c9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('15e17b78-23ff-596c-913e-a76ff4be1db4', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_steelmanning_concession_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '98dce3915b3e4ca6a60a832af6cde2e28c8d1238d4951acdbf36388729bd4ace'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b980bf7f-3939-546d-b162-5018437d7853', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('15e17b78-23ff-596c-913e-a76ff4be1db4', 1), '98dce3915b3e4ca6a60a832af6cde2e28c8d1238d4951acdbf36388729bd4ace',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b590486633140508459df3e73655f305e1ce9fdfaa263a53a3f0eb21dba4d3c9.mp3', 2586, '2026-09-13 11:46:30.802496', 'be7309250352688519a68d12051e081acd09fdb7603900b3c15b2067c8b91b6f', 'validated', '{"audio_key":"b590486633140508459df3e73655f305e1ce9fdfaa263a53a3f0eb21dba4d3c9","entity_key":"d_steelmanning_concession_03:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"be7309250352688519a68d12051e081acd09fdb7603900b3c15b2067c8b91b6f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/b590486633140508459df3e73655f305e1ce9fdfaa263a53a3f0eb21dba4d3c9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_descriptive_normative_reasoning_01:4 -> audio/generated/de-DE/dialogues/b6fc747baf59647079a6dd3d70496fe0b058e4e7b281ade6f2d6c216c5400176.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('56aa5fc2-7409-57e8-bbcc-c2fb6bc77818', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_descriptive_normative_reasoning_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6060907871c3138e466ad4bc8ab4923aae24189c24be8ec0c426109d32e44089'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c1fd8fbe-e394-567b-a00b-1f9c0f68b4a3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('56aa5fc2-7409-57e8-bbcc-c2fb6bc77818', 1), '6060907871c3138e466ad4bc8ab4923aae24189c24be8ec0c426109d32e44089',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b6fc747baf59647079a6dd3d70496fe0b058e4e7b281ade6f2d6c216c5400176.mp3', 3004, '2026-09-13 11:46:31.816449', 'b6c244ead03aa904536be4293027a90a0543e82bd5e085c10302d4f14a250e48', 'validated', '{"audio_key":"b6fc747baf59647079a6dd3d70496fe0b058e4e7b281ade6f2d6c216c5400176","entity_key":"d_descriptive_normative_reasoning_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"b6c244ead03aa904536be4293027a90a0543e82bd5e085c10302d4f14a250e48","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/b6fc747baf59647079a6dd3d70496fe0b058e4e7b281ade6f2d6c216c5400176.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_narrative_perspective_temporal_control_01:3 -> audio/generated/de-DE/dialogues/b7820005d5de2b4f18027a30e0e4c756d5094cb7abe77841854cd3b45c48190a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0d4924e0-4b6a-51e4-ab2c-014f4493e18b', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_narrative_perspective_temporal_control_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fa63ad33a089045f2d4dbf0c6b2a106a9c90b64c49f8b68dc6506798cb60d16b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dd692ce0-66bc-5422-b676-1c768f866ffd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0d4924e0-4b6a-51e4-ab2c-014f4493e18b', 1), 'fa63ad33a089045f2d4dbf0c6b2a106a9c90b64c49f8b68dc6506798cb60d16b',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b7820005d5de2b4f18027a30e0e4c756d5094cb7abe77841854cd3b45c48190a.mp3', 3056, '2026-09-13 11:46:32.093483', '172f0633b158f36ec0822b9de39971f15e4d9a209491c9c762eac622680e18ed', 'validated', '{"audio_key":"b7820005d5de2b4f18027a30e0e4c756d5094cb7abe77841854cd3b45c48190a","entity_key":"d_narrative_perspective_temporal_control_01:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"172f0633b158f36ec0822b9de39971f15e4d9a209491c9c762eac622680e18ed","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/b7820005d5de2b4f18027a30e0e4c756d5094cb7abe77841854cd3b45c48190a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_principled_disagreement_negotiation_02:2 -> audio/generated/de-DE/dialogues/c016c4a2d6763057ca9d7703b1d23faacfe0791060e0b59b2d81f847c1929529.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('86f39ce7-62e9-5ebd-be38-c6f3245a96d4', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_principled_disagreement_negotiation_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0c4e5c6fbc822cee749c944ce2d87300ccd7eb0f853716adf7c92ce4d4754246'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('833f8b26-c0bc-5edf-9926-576a6c2da04a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('86f39ce7-62e9-5ebd-be38-c6f3245a96d4', 1), '0c4e5c6fbc822cee749c944ce2d87300ccd7eb0f853716adf7c92ce4d4754246',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c016c4a2d6763057ca9d7703b1d23faacfe0791060e0b59b2d81f847c1929529.mp3', 3840, '2026-09-13 11:46:33.180678', 'f57a5752f3dd74c63ae601a7074349dd59d8c2e0545068c5751d7f6879d25d86', 'validated', '{"audio_key":"c016c4a2d6763057ca9d7703b1d23faacfe0791060e0b59b2d81f847c1929529","entity_key":"d_principled_disagreement_negotiation_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"f57a5752f3dd74c63ae601a7074349dd59d8c2e0545068c5751d7f6879d25d86","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/c016c4a2d6763057ca9d7703b1d23faacfe0791060e0b59b2d81f847c1929529.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_presupposition_accommodation_03:3 -> audio/generated/de-DE/dialogues/c0448cc87ba335d85a3ac1f54db8d6690c79fc68699891147e3cf1ef5f3cbdfd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8832fe5e-f149-5964-af99-b6fd030ed8a3', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_presupposition_accommodation_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eb961469cbf583a78923892e5dfa109ef5284eca8ba5b2a8acfcde4aac5c0542'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8540f733-a537-5dd7-9890-476fc8494508', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8832fe5e-f149-5964-af99-b6fd030ed8a3', 1), 'eb961469cbf583a78923892e5dfa109ef5284eca8ba5b2a8acfcde4aac5c0542',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c0448cc87ba335d85a3ac1f54db8d6690c79fc68699891147e3cf1ef5f3cbdfd.mp3', 2821, '2026-09-13 11:46:33.307493', '90c860d2e46584a56214f9fe0972de779c80dd8c2f44a4ba8c261df78f45089b', 'validated', '{"audio_key":"c0448cc87ba335d85a3ac1f54db8d6690c79fc68699891147e3cf1ef5f3cbdfd","entity_key":"d_presupposition_accommodation_03:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"90c860d2e46584a56214f9fe0972de779c80dd8c2f44a4ba8c261df78f45089b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/c0448cc87ba335d85a3ac1f54db8d6690c79fc68699891147e3cf1ef5f3cbdfd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_oral_synthesis_pressure_02:1 -> audio/generated/de-DE/dialogues/c23c13a8e6827ca388867e5e7f31075521ec7f866a48174926141368f37ae77e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a2a1236a-5bd5-5eb6-b7fb-822a8bb572a0', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_oral_synthesis_pressure_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5b635ff59cf13c8c0c9f0128d313d6b108bebd52ece173a70afdff49c05c8d3d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4f790e0d-fd98-5bc6-9b8e-7600c205f08f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a2a1236a-5bd5-5eb6-b7fb-822a8bb572a0', 1), '5b635ff59cf13c8c0c9f0128d313d6b108bebd52ece173a70afdff49c05c8d3d',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c23c13a8e6827ca388867e5e7f31075521ec7f866a48174926141368f37ae77e.mp3', 2690, '2026-09-13 11:46:34.416935', '520341ef30c339e4878f35aaca3d1d483a18728d04ea313a3ed4ea5ba7821e6f', 'validated', '{"audio_key":"c23c13a8e6827ca388867e5e7f31075521ec7f866a48174926141368f37ae77e","entity_key":"d_oral_synthesis_pressure_02:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"520341ef30c339e4878f35aaca3d1d483a18728d04ea313a3ed4ea5ba7821e6f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/c23c13a8e6827ca388867e5e7f31075521ec7f866a48174926141368f37ae77e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_metaphor_idiom_pragmatic_transfer_02:1 -> audio/generated/de-DE/dialogues/caa252f1ef242c4d1911b0738bd130cd100ffe05158fed5e0c1498379367c352.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('841173b8-fd08-5d92-93ff-6c03550fc667', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_metaphor_idiom_pragmatic_transfer_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '62c1bc903c27d7c6b54bcfe742dce2706a8790d1e53e35e94495b4ed93485f26'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5ad76bcd-46ed-50a4-82ce-bde1ccd69a28', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('841173b8-fd08-5d92-93ff-6c03550fc667', 1), '62c1bc903c27d7c6b54bcfe742dce2706a8790d1e53e35e94495b4ed93485f26',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/caa252f1ef242c4d1911b0738bd130cd100ffe05158fed5e0c1498379367c352.mp3', 3892, '2026-09-13 11:46:34.658806', '2ea668d0ef9cdb1c0866bced0283dc39a777be003d8560473d0b3a18d56078fc', 'validated', '{"audio_key":"caa252f1ef242c4d1911b0738bd130cd100ffe05158fed5e0c1498379367c352","entity_key":"d_metaphor_idiom_pragmatic_transfer_02:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"2ea668d0ef9cdb1c0866bced0283dc39a777be003d8560473d0b3a18d56078fc","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/caa252f1ef242c4d1911b0738bd130cd100ffe05158fed5e0c1498379367c352.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_judgment_language_capstone_01:2 -> audio/generated/de-DE/dialogues/cc3c0a3cd50c393f261dd1ba5e21b89b64eeb86f548d59202e62b4cc51aa1755.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('45fd3807-8cfb-5bc4-b065-a5ae34e36b2c', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_judgment_language_capstone_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2e2383f256d7e4fdcb31dad66a825aaafdef8d7066e7f8d18b45b76a612caa8e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('caa24b0c-12cc-5f5d-80d8-f4a297e88a54', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('45fd3807-8cfb-5bc4-b065-a5ae34e36b2c', 1), '2e2383f256d7e4fdcb31dad66a825aaafdef8d7066e7f8d18b45b76a612caa8e',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/cc3c0a3cd50c393f261dd1ba5e21b89b64eeb86f548d59202e62b4cc51aa1755.mp3', 5877, '2026-09-13 11:46:36.014666', 'f5283abf2b5b49482eaffb6ef29ef171a3399e221d09867118c94c682824910d', 'validated', '{"audio_key":"cc3c0a3cd50c393f261dd1ba5e21b89b64eeb86f548d59202e62b4cc51aa1755","entity_key":"d_judgment_language_capstone_01:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"f5283abf2b5b49482eaffb6ef29ef171a3399e221d09867118c94c682824910d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/cc3c0a3cd50c393f261dd1ba5e21b89b64eeb86f548d59202e62b4cc51aa1755.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_principled_disagreement_negotiation_02:4 -> audio/generated/de-DE/dialogues/cf7605f5a83cfa7b28d752640857bc2e2f539345ca4538df1780d938609aa15a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('94a687d1-8cfb-5efa-ac80-f0185f256c9f', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_principled_disagreement_negotiation_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f12802b2c8d04759ce0d6a1b878beefdb360ed8d18f6309183d9177750cc05ea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4415fdb8-f93e-5bf3-a2ec-9a5c8040d177', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('94a687d1-8cfb-5efa-ac80-f0185f256c9f', 1), 'f12802b2c8d04759ce0d6a1b878beefdb360ed8d18f6309183d9177750cc05ea',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/cf7605f5a83cfa7b28d752640857bc2e2f539345ca4538df1780d938609aa15a.mp3', 3657, '2026-09-13 11:46:35.965995', 'd655419fb2dbbef3c370d87e170444803690664a8430a518db8d3ffffd24807f', 'validated', '{"audio_key":"cf7605f5a83cfa7b28d752640857bc2e2f539345ca4538df1780d938609aa15a","entity_key":"d_principled_disagreement_negotiation_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"d655419fb2dbbef3c370d87e170444803690664a8430a518db8d3ffffd24807f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/cf7605f5a83cfa7b28d752640857bc2e2f539345ca4538df1780d938609aa15a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_narrative_perspective_temporal_control_01:1 -> audio/generated/de-DE/dialogues/d1ef8326214407cc596630ce9f4d62062202e0e2488c32485115ecda55b9ce71.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bc4c589f-1718-530d-b4d5-6e3867a89d6e', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_narrative_perspective_temporal_control_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b884b1af5fb54ff63cdc31ba28e7c02b45dea08a799dbb9a26461782bbe2cf26'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d3f1c972-eea7-5e33-9218-512961ed08e0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bc4c589f-1718-530d-b4d5-6e3867a89d6e', 1), 'b884b1af5fb54ff63cdc31ba28e7c02b45dea08a799dbb9a26461782bbe2cf26',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d1ef8326214407cc596630ce9f4d62062202e0e2488c32485115ecda55b9ce71.mp3', 3343, '2026-09-13 11:46:37.300709', 'f6e58ea57e239009fb5b136957d0881071d79c743bced8cbb287b7a26895fcb7', 'validated', '{"audio_key":"d1ef8326214407cc596630ce9f4d62062202e0e2488c32485115ecda55b9ce71","entity_key":"d_narrative_perspective_temporal_control_01:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f6e58ea57e239009fb5b136957d0881071d79c743bced8cbb287b7a26895fcb7","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/d1ef8326214407cc596630ce9f4d62062202e0e2488c32485115ecda55b9ce71.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_metaphor_idiom_pragmatic_transfer_03:1 -> audio/generated/de-DE/dialogues/d4a26808cd1cc54f79568f12700dbb51946c42e8142d0944daaeca71a4e74887.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('17c38cb6-1224-5958-8f2b-978b3125ab8a', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_metaphor_idiom_pragmatic_transfer_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '708807f234bfa7d372006f618fcfa6c9b56cbb2cf426434056ffc26c9b36c01f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2cdecfcd-af9b-5bc7-87d0-c68611e87071', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('17c38cb6-1224-5958-8f2b-978b3125ab8a', 1), '708807f234bfa7d372006f618fcfa6c9b56cbb2cf426434056ffc26c9b36c01f',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d4a26808cd1cc54f79568f12700dbb51946c42e8142d0944daaeca71a4e74887.mp3', 3056, '2026-09-13 11:46:37.324836', 'ded4f23d337d21b934a2670ebc827d58e36ddce2d2fe0a8226c64b61eb033b33', 'validated', '{"audio_key":"d4a26808cd1cc54f79568f12700dbb51946c42e8142d0944daaeca71a4e74887","entity_key":"d_metaphor_idiom_pragmatic_transfer_03:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ded4f23d337d21b934a2670ebc827d58e36ddce2d2fe0a8226c64b61eb033b33","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/d4a26808cd1cc54f79568f12700dbb51946c42e8142d0944daaeca71a4e74887.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_institutional_register_precision_01:4 -> audio/generated/de-DE/dialogues/d55784d4c28e438507301ac748a6f722f33f4d19c0f9b7796431c127286f6cb8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b0ccf822-b697-5353-a082-a56ec00b8b12', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_institutional_register_precision_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4632fafffd423a9f9bfdca161f8a0d83b8c2884b7a8119e4d0b5e7e5be8c2f18'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7fe46834-c686-56f9-a3c9-17c6c99bee73', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b0ccf822-b697-5353-a082-a56ec00b8b12', 1), '4632fafffd423a9f9bfdca161f8a0d83b8c2884b7a8119e4d0b5e7e5be8c2f18',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d55784d4c28e438507301ac748a6f722f33f4d19c0f9b7796431c127286f6cb8.mp3', 4205, '2026-09-13 11:46:38.713902', 'fa6013acbc27857970981c616d1e6b019c1a85f7833479f6b55f4975994d4037', 'validated', '{"audio_key":"d55784d4c28e438507301ac748a6f722f33f4d19c0f9b7796431c127286f6cb8","entity_key":"d_institutional_register_precision_01:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"fa6013acbc27857970981c616d1e6b019c1a85f7833479f6b55f4975994d4037","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/d55784d4c28e438507301ac748a6f722f33f4d19c0f9b7796431c127286f6cb8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_steelmanning_concession_01:3 -> audio/generated/de-DE/dialogues/d9052175fb2f89c400c821d90cde32fae9c3149950f1e3acacffeb753be48f4a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e201cf72-9f57-5749-921a-35e48eaa9035', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_steelmanning_concession_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c60263b5879dc3bb1a34bbe1c985c4f68bf9cb29cd57dae8a5536f31afa35379'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('25c50ce4-9647-5d1f-bf05-b3d894025912', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e201cf72-9f57-5749-921a-35e48eaa9035', 1), 'c60263b5879dc3bb1a34bbe1c985c4f68bf9cb29cd57dae8a5536f31afa35379',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d9052175fb2f89c400c821d90cde32fae9c3149950f1e3acacffeb753be48f4a.mp3', 4493, '2026-09-13 11:46:38.800635', 'fe806799daaa1f5e2b9266766255cdf450e692b68a350adef1419576ce3d89a6', 'validated', '{"audio_key":"d9052175fb2f89c400c821d90cde32fae9c3149950f1e3acacffeb753be48f4a","entity_key":"d_steelmanning_concession_01:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"fe806799daaa1f5e2b9266766255cdf450e692b68a350adef1419576ce3d89a6","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/d9052175fb2f89c400c821d90cde32fae9c3149950f1e3acacffeb753be48f4a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_narrative_perspective_temporal_control_03:2 -> audio/generated/de-DE/dialogues/dabee6c30680ac50109f5a175fc4e3cbf2391066ac8158ca83ff6123d40ae52b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('081f8c4a-d9f1-51d4-bc1e-1d5f92f61f7b', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_narrative_perspective_temporal_control_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7ad688a83f97e4d5ea7c70138ae7096df771b3c3cdc97088c1fda3e83c691b60'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0844daef-dfa9-5ba3-b90f-cde430454a58', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('081f8c4a-d9f1-51d4-bc1e-1d5f92f61f7b', 1), '7ad688a83f97e4d5ea7c70138ae7096df771b3c3cdc97088c1fda3e83c691b60',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/dabee6c30680ac50109f5a175fc4e3cbf2391066ac8158ca83ff6123d40ae52b.mp3', 2638, '2026-09-13 11:46:39.914865', '3c24fb2ffb8d988fea1fa596ff42bffff94d14879f7706d9f0c425aac1037fcc', 'validated', '{"audio_key":"dabee6c30680ac50109f5a175fc4e3cbf2391066ac8158ca83ff6123d40ae52b","entity_key":"d_narrative_perspective_temporal_control_03:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"3c24fb2ffb8d988fea1fa596ff42bffff94d14879f7706d9f0c425aac1037fcc","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/dabee6c30680ac50109f5a175fc4e3cbf2391066ac8158ca83ff6123d40ae52b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_presupposition_accommodation_01:4 -> audio/generated/de-DE/dialogues/db265da0f77a673b43c9b9d64621fddca96363ab5ed2af033dda37789505b866.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('db878864-6b6e-509a-92a8-fe0e92cd2248', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_presupposition_accommodation_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2287c3b541d90055e36abeed2c94bf9f7960a81f259e5cf8d32e3601dcd22437'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('39a22fcb-3561-5d4d-a3f1-715aec7275ee', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('db878864-6b6e-509a-92a8-fe0e92cd2248', 1), '2287c3b541d90055e36abeed2c94bf9f7960a81f259e5cf8d32e3601dcd22437',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/db265da0f77a673b43c9b9d64621fddca96363ab5ed2af033dda37789505b866.mp3', 2925, '2026-09-13 11:46:40.025247', '313fe5d597f9d21744b827b7e81686b0a25bd2d874193406998b0e12d01136dc', 'validated', '{"audio_key":"db265da0f77a673b43c9b9d64621fddca96363ab5ed2af033dda37789505b866","entity_key":"d_presupposition_accommodation_01:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"313fe5d597f9d21744b827b7e81686b0a25bd2d874193406998b0e12d01136dc","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/db265da0f77a673b43c9b9d64621fddca96363ab5ed2af033dda37789505b866.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_principled_disagreement_negotiation_03:3 -> audio/generated/de-DE/dialogues/dc39f959d6dcfb0d462993649338576e09b1a2340c91171a575b51623e7f40c0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d6a0562e-3e61-582f-8a66-7ac476790bcc', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_principled_disagreement_negotiation_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f38f7869e1d89113865d3605cc309e562942241d9ee87a8a59eeceb78c9c909c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dd4c3c27-9dd6-5dd6-bf8f-eca10d07fa66', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d6a0562e-3e61-582f-8a66-7ac476790bcc', 1), 'f38f7869e1d89113865d3605cc309e562942241d9ee87a8a59eeceb78c9c909c',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/dc39f959d6dcfb0d462993649338576e09b1a2340c91171a575b51623e7f40c0.mp3', 1985, '2026-09-13 11:46:41.032595', '2af63dacde5be843a1110c5d63bd4d49bf33fcbfd97aa13e22af2eb90f9d1a45', 'validated', '{"audio_key":"dc39f959d6dcfb0d462993649338576e09b1a2340c91171a575b51623e7f40c0","entity_key":"d_principled_disagreement_negotiation_03:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"2af63dacde5be843a1110c5d63bd4d49bf33fcbfd97aa13e22af2eb90f9d1a45","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/dc39f959d6dcfb0d462993649338576e09b1a2340c91171a575b51623e7f40c0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_presupposition_accommodation_02:3 -> audio/generated/de-DE/dialogues/dc4f1d42ba40509315a921cbb665d4c7444c63ed798ecc1380de3c57e773434e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e42d39f7-ef1c-5167-bd19-fd55951773fd', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_presupposition_accommodation_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '97e577c086db4dd4e95008f1dd777f842a7ae57eff486ed089aeeb5c9bdcdba4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f23acc34-948e-5dde-8511-d73db4b6ba5f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e42d39f7-ef1c-5167-bd19-fd55951773fd', 1), '97e577c086db4dd4e95008f1dd777f842a7ae57eff486ed089aeeb5c9bdcdba4',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/dc4f1d42ba40509315a921cbb665d4c7444c63ed798ecc1380de3c57e773434e.mp3', 2690, '2026-09-13 11:46:41.214060', 'db48c86a743430480e833ed78985b2d0134fd23f533f2a64e892a922c39c8ed3', 'validated', '{"audio_key":"dc4f1d42ba40509315a921cbb665d4c7444c63ed798ecc1380de3c57e773434e","entity_key":"d_presupposition_accommodation_02:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"db48c86a743430480e833ed78985b2d0134fd23f533f2a64e892a922c39c8ed3","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/dc4f1d42ba40509315a921cbb665d4c7444c63ed798ecc1380de3c57e773434e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_principled_disagreement_negotiation_02:1 -> audio/generated/de-DE/dialogues/dd472bb05ec598ecc0028be288cb338baa578334bfdc78fafd5dc3b8bbcdf2dc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7bddc1a8-19ba-5bd5-a3d1-413a5c4c0999', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_principled_disagreement_negotiation_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '51319afbad347d99c9dbb3eedbd55b32a4d34fd30982feed7f13f5544bff27a1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9dd72585-fc4b-5166-a6b5-b75166f716c8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7bddc1a8-19ba-5bd5-a3d1-413a5c4c0999', 1), '51319afbad347d99c9dbb3eedbd55b32a4d34fd30982feed7f13f5544bff27a1',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/dd472bb05ec598ecc0028be288cb338baa578334bfdc78fafd5dc3b8bbcdf2dc.mp3', 2925, '2026-09-13 11:46:42.277621', '799e75c0008c3ed61d2365d619dcd533b14399ad339d93132e9a44aebed0d569', 'validated', '{"audio_key":"dd472bb05ec598ecc0028be288cb338baa578334bfdc78fafd5dc3b8bbcdf2dc","entity_key":"d_principled_disagreement_negotiation_02:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"799e75c0008c3ed61d2365d619dcd533b14399ad339d93132e9a44aebed0d569","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/dd472bb05ec598ecc0028be288cb338baa578334bfdc78fafd5dc3b8bbcdf2dc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_oral_synthesis_pressure_03:4 -> audio/generated/de-DE/dialogues/e00f41f62b1c86064727a10fca76a910374ca03eebe4003a38e8468d1ce5c297.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('60de9636-4479-5534-88eb-c02873f8a6d5', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_oral_synthesis_pressure_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '088cfa08acde51e5018e438f141921acd4869bfbce7c4a53d7d0e136048f3c54'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a3d9a4cf-8a9a-55fe-91ac-6a7ddd7bddee', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('60de9636-4479-5534-88eb-c02873f8a6d5', 1), '088cfa08acde51e5018e438f141921acd4869bfbce7c4a53d7d0e136048f3c54',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e00f41f62b1c86064727a10fca76a910374ca03eebe4003a38e8468d1ce5c297.mp3', 2272, '2026-09-13 11:46:42.415873', '37ebb7cee1eb878bacbdf6d3e62faa4392694e399b478db4c3a0a6c3dcb39296', 'validated', '{"audio_key":"e00f41f62b1c86064727a10fca76a910374ca03eebe4003a38e8468d1ce5c297","entity_key":"d_oral_synthesis_pressure_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"37ebb7cee1eb878bacbdf6d3e62faa4392694e399b478db4c3a0a6c3dcb39296","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/e00f41f62b1c86064727a10fca76a910374ca03eebe4003a38e8468d1ce5c297.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_principled_disagreement_negotiation_01:4 -> audio/generated/de-DE/dialogues/e191b13fe364dc85e81662b38021f84ce18085228c255a63651fb24eec33b88f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b3c4269a-4ddf-59e6-9aff-163fa0a79251', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_principled_disagreement_negotiation_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bd3535b5a20b0561797b97152fa989eaf1116a1f39d939b2095619522a808b99'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eb39b776-79e1-5cd9-bb73-611d0df5ad71', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b3c4269a-4ddf-59e6-9aff-163fa0a79251', 1), 'bd3535b5a20b0561797b97152fa989eaf1116a1f39d939b2095619522a808b99',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e191b13fe364dc85e81662b38021f84ce18085228c255a63651fb24eec33b88f.mp3', 2742, '2026-09-13 11:46:43.497587', '54994cbea4715f953ea052db183f0777b4e3be1be44daf67818ff325e4ddd09b', 'validated', '{"audio_key":"e191b13fe364dc85e81662b38021f84ce18085228c255a63651fb24eec33b88f","entity_key":"d_principled_disagreement_negotiation_01:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"54994cbea4715f953ea052db183f0777b4e3be1be44daf67818ff325e4ddd09b","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/e191b13fe364dc85e81662b38021f84ce18085228c255a63651fb24eec33b88f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_narrative_perspective_temporal_control_02:3 -> audio/generated/de-DE/dialogues/e329b269abfeafe475bf9de710628ebc56b705dca772458485e23fc81bf0efc5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('db829fe3-2498-5089-b701-b1373644b70b', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_narrative_perspective_temporal_control_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '40a26de5cf1a894b0f0dccd6d3da3d3e528d98cd4c9290e668df9c2d6a008a90'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f6e0bc25-e1ac-5905-8edf-cc10016a2b8d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('db829fe3-2498-5089-b701-b1373644b70b', 1), '40a26de5cf1a894b0f0dccd6d3da3d3e528d98cd4c9290e668df9c2d6a008a90',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e329b269abfeafe475bf9de710628ebc56b705dca772458485e23fc81bf0efc5.mp3', 3604, '2026-09-13 11:46:43.819484', '2d911ccc61498a818771f02fadc6a6e2b108eb875b374c5a528b3892fd8dcc82', 'validated', '{"audio_key":"e329b269abfeafe475bf9de710628ebc56b705dca772458485e23fc81bf0efc5","entity_key":"d_narrative_perspective_temporal_control_02:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"2d911ccc61498a818771f02fadc6a6e2b108eb875b374c5a528b3892fd8dcc82","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/e329b269abfeafe475bf9de710628ebc56b705dca772458485e23fc81bf0efc5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_institutional_register_precision_03:3 -> audio/generated/de-DE/dialogues/e5d365deab729244b92b72d692d45e5f565b958027dc00e48ed276a51fdf57ed.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2ab92a65-8d8f-5eb0-8e9d-be004564fcc5', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_institutional_register_precision_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9741f983f86df97198d91e85578e9e82c053d11cca16b5fcb253b7b1953bc701'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('01841bc6-9530-5a2d-a9b1-5efb7ddf4e61', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2ab92a65-8d8f-5eb0-8e9d-be004564fcc5', 1), '9741f983f86df97198d91e85578e9e82c053d11cca16b5fcb253b7b1953bc701',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e5d365deab729244b92b72d692d45e5f565b958027dc00e48ed276a51fdf57ed.mp3', 3944, '2026-09-13 11:46:44.877263', '48be8fe8be0d593544bf4ddbc4fd52e0fd06084430127ae83a44427a765b161e', 'validated', '{"audio_key":"e5d365deab729244b92b72d692d45e5f565b958027dc00e48ed276a51fdf57ed","entity_key":"d_institutional_register_precision_03:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"48be8fe8be0d593544bf4ddbc4fd52e0fd06084430127ae83a44427a765b161e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/e5d365deab729244b92b72d692d45e5f565b958027dc00e48ed276a51fdf57ed.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_institutional_register_precision_02:4 -> audio/generated/de-DE/dialogues/e624d365a38aa3bc77b801fa214144a190394f4d824c6c63246e22bf226be120.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1cc32df0-05ad-5e09-8a5e-b4712594636a', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_institutional_register_precision_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6aea088b7eecb090bcdec0cbea2383dfd27d8190e3a9075d97a7bdcd99d228f4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('03df2616-aeac-5527-b297-70e4cc293593', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1cc32df0-05ad-5e09-8a5e-b4712594636a', 1), '6aea088b7eecb090bcdec0cbea2383dfd27d8190e3a9075d97a7bdcd99d228f4',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e624d365a38aa3bc77b801fa214144a190394f4d824c6c63246e22bf226be120.mp3', 3422, '2026-09-13 11:46:45.183316', '2090f2df209f1f590ea779ba8fcdd5b07205503e0327f18767d4d2be9df8aca0', 'validated', '{"audio_key":"e624d365a38aa3bc77b801fa214144a190394f4d824c6c63246e22bf226be120","entity_key":"d_institutional_register_precision_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"2090f2df209f1f590ea779ba8fcdd5b07205503e0327f18767d4d2be9df8aca0","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/e624d365a38aa3bc77b801fa214144a190394f4d824c6c63246e22bf226be120.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_descriptive_normative_reasoning_02:1 -> audio/generated/de-DE/dialogues/e653a75a33a30c26d2ccb2b63a80ebeb09e3f9ffa2e1e5e24ccb297ce6708779.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('09cdb47b-13a7-50be-86d2-0d5f47c19f05', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_descriptive_normative_reasoning_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '58c2b1356e04129e679d321d1aec92ddf07addac16d3f1e62b7a2bfcb3a4a088'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4bb54e28-dbd4-5a47-a879-b4c331d44b79', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('09cdb47b-13a7-50be-86d2-0d5f47c19f05', 1), '58c2b1356e04129e679d321d1aec92ddf07addac16d3f1e62b7a2bfcb3a4a088',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e653a75a33a30c26d2ccb2b63a80ebeb09e3f9ffa2e1e5e24ccb297ce6708779.mp3', 2220, '2026-09-13 11:46:46.027835', '60dfc0cd8ecdf4ed313aeafbdda407f71895081562818cfc072f80a6335291d7', 'validated', '{"audio_key":"e653a75a33a30c26d2ccb2b63a80ebeb09e3f9ffa2e1e5e24ccb297ce6708779","entity_key":"d_descriptive_normative_reasoning_02:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"60dfc0cd8ecdf4ed313aeafbdda407f71895081562818cfc072f80a6335291d7","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/e653a75a33a30c26d2ccb2b63a80ebeb09e3f9ffa2e1e5e24ccb297ce6708779.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_metaphor_idiom_pragmatic_transfer_03:2 -> audio/generated/de-DE/dialogues/e9ac8266c14d2e4c7121096dd14717e91775bb379743ae86439905e31e1eb66a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6d37cde9-2197-521c-8080-1db4eb076cee', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_metaphor_idiom_pragmatic_transfer_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '48a3ce229dd3f55e1c9830689a62a6c01592aaa373aaaebfc3d305467bc08730'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6374a51a-ba75-55a4-86cb-31f716446d7d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6d37cde9-2197-521c-8080-1db4eb076cee', 1), '48a3ce229dd3f55e1c9830689a62a6c01592aaa373aaaebfc3d305467bc08730',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e9ac8266c14d2e4c7121096dd14717e91775bb379743ae86439905e31e1eb66a.mp3', 4623, '2026-09-13 11:46:46.707266', '93cff9ef3480e5c8a04a0d5d6a4878f9786dad6b6d7b330fbe85910e7a772db4', 'validated', '{"audio_key":"e9ac8266c14d2e4c7121096dd14717e91775bb379743ae86439905e31e1eb66a","entity_key":"d_metaphor_idiom_pragmatic_transfer_03:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"93cff9ef3480e5c8a04a0d5d6a4878f9786dad6b6d7b330fbe85910e7a772db4","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/e9ac8266c14d2e4c7121096dd14717e91775bb379743ae86439905e31e1eb66a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_presupposition_accommodation_03:1 -> audio/generated/de-DE/dialogues/ea59231a61d4d1e9c20e664bdf250ea9c8529c8d8c1ef9a1ea2a6179aed6b64e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2ccb26dd-f9a1-5b81-afde-a1c0b432a08b', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_presupposition_accommodation_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ff8e303d7148d4652234cbbdb6e667b113fee380e53ed541ca2086eac423c7f2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('57e8d255-cf66-559c-ac9e-de66c47dee39', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2ccb26dd-f9a1-5b81-afde-a1c0b432a08b', 1), 'ff8e303d7148d4652234cbbdb6e667b113fee380e53ed541ca2086eac423c7f2',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ea59231a61d4d1e9c20e664bdf250ea9c8529c8d8c1ef9a1ea2a6179aed6b64e.mp3', 4675, '2026-09-13 11:46:47.588205', 'e36658ce30f85a6a0005454c6e6707f14615ca4ce413969efe15e69f0872deff', 'validated', '{"audio_key":"ea59231a61d4d1e9c20e664bdf250ea9c8529c8d8c1ef9a1ea2a6179aed6b64e","entity_key":"d_presupposition_accommodation_03:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e36658ce30f85a6a0005454c6e6707f14615ca4ce413969efe15e69f0872deff","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/ea59231a61d4d1e9c20e664bdf250ea9c8529c8d8c1ef9a1ea2a6179aed6b64e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_judgment_language_capstone_03:1 -> audio/generated/de-DE/dialogues/ee2d3e3c1f5b837540985cc133b82738e8ce4fb81c75e2dde4de9de8648a6b78.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3df6a684-0f9d-56ed-ac30-a1b9442adcfa', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_judgment_language_capstone_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f3fd22eb512f3757aa13e75e9e152df61ac964031fd4052302eb5d59caf895c6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('70207365-0e66-575d-9be0-c8bcef350db2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3df6a684-0f9d-56ed-ac30-a1b9442adcfa', 1), 'f3fd22eb512f3757aa13e75e9e152df61ac964031fd4052302eb5d59caf895c6',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ee2d3e3c1f5b837540985cc133b82738e8ce4fb81c75e2dde4de9de8648a6b78.mp3', 4414, '2026-09-13 11:46:48.234878', '3d12fd8f14fb98f90da88abaff9dd9caaf969799cc41b7f923b800de2d889fad', 'validated', '{"audio_key":"ee2d3e3c1f5b837540985cc133b82738e8ce4fb81c75e2dde4de9de8648a6b78","entity_key":"d_judgment_language_capstone_03:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"3d12fd8f14fb98f90da88abaff9dd9caaf969799cc41b7f923b800de2d889fad","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/ee2d3e3c1f5b837540985cc133b82738e8ce4fb81c75e2dde4de9de8648a6b78.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_narrative_perspective_temporal_control_03:3 -> audio/generated/de-DE/dialogues/ef1f7cb28ab89a1a9377eaac789b125bbd82c1a8cd436cf0a4ee8d2c6477ce2b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4aee421c-0874-5fa1-9121-949a5e013513', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_narrative_perspective_temporal_control_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3c43baebd302e73d5c5803ef0945257ff9d9214608b93d15378394678e30998b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a718695a-f70b-576f-8641-791dd56bc516', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4aee421c-0874-5fa1-9121-949a5e013513', 1), '3c43baebd302e73d5c5803ef0945257ff9d9214608b93d15378394678e30998b',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ef1f7cb28ab89a1a9377eaac789b125bbd82c1a8cd436cf0a4ee8d2c6477ce2b.mp3', 3108, '2026-09-13 11:46:48.868522', 'a14d5b88aec60077f07e63b010571b53085e49c7e4aeba570fce4bfe30afd00c', 'validated', '{"audio_key":"ef1f7cb28ab89a1a9377eaac789b125bbd82c1a8cd436cf0a4ee8d2c6477ce2b","entity_key":"d_narrative_perspective_temporal_control_03:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"a14d5b88aec60077f07e63b010571b53085e49c7e4aeba570fce4bfe30afd00c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/ef1f7cb28ab89a1a9377eaac789b125bbd82c1a8cd436cf0a4ee8d2c6477ce2b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_descriptive_normative_reasoning_03:2 -> audio/generated/de-DE/dialogues/efa5a680acbd05bb46ed5e2c5b92f44a4cd12c360e911b2598f3e70cb434e709.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('17539f01-72fe-5f10-80e4-0073df77a73f', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_descriptive_normative_reasoning_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '319cb2cdbe2c967d9a93b5f09ddd7407292f07c7ff0d44ce320ac8540e2796cf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('673abe31-1dcd-5285-b6a4-21b55c7cb993', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('17539f01-72fe-5f10-80e4-0073df77a73f', 1), '319cb2cdbe2c967d9a93b5f09ddd7407292f07c7ff0d44ce320ac8540e2796cf',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/efa5a680acbd05bb46ed5e2c5b92f44a4cd12c360e911b2598f3e70cb434e709.mp3', 4728, '2026-09-13 11:46:49.859687', '984b6df61907b313589cc8150e94167734bce7998e11c986eb142d70a228dac0', 'validated', '{"audio_key":"efa5a680acbd05bb46ed5e2c5b92f44a4cd12c360e911b2598f3e70cb434e709","entity_key":"d_descriptive_normative_reasoning_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"984b6df61907b313589cc8150e94167734bce7998e11c986eb142d70a228dac0","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/efa5a680acbd05bb46ed5e2c5b92f44a4cd12c360e911b2598f3e70cb434e709.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_narrative_perspective_temporal_control_02:1 -> audio/generated/de-DE/dialogues/f368a3b5f26474611f374e71ff87b6ecee57155944f1d340ef0950a29a23e7a7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b8056213-680f-5cc1-8fe4-6ce372bffa9f', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_narrative_perspective_temporal_control_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '767121a318fdc06f3738f8cc493e7fbb408200961314a1f4f48d62f8dda35486'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('548ea59b-46f4-5ad8-9d4f-e1294b86a823', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b8056213-680f-5cc1-8fe4-6ce372bffa9f', 1), '767121a318fdc06f3738f8cc493e7fbb408200961314a1f4f48d62f8dda35486',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f368a3b5f26474611f374e71ff87b6ecee57155944f1d340ef0950a29a23e7a7.mp3', 5093, '2026-09-13 11:46:50.391200', '617069b545c2ade1ea0e342c7fb6912a7925926729f4cd28eba042aa4988b7c5', 'validated', '{"audio_key":"f368a3b5f26474611f374e71ff87b6ecee57155944f1d340ef0950a29a23e7a7","entity_key":"d_narrative_perspective_temporal_control_02:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"617069b545c2ade1ea0e342c7fb6912a7925926729f4cd28eba042aa4988b7c5","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/f368a3b5f26474611f374e71ff87b6ecee57155944f1d340ef0950a29a23e7a7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_academic_stance_citation_distance_03:4 -> audio/generated/de-DE/dialogues/f573f03c0cd52af1cf6387cf054c2f77f194f45b8d9ce193b85fe94d18a67709.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6eaf3424-2562-541d-b8fc-52284c9c23b8', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_academic_stance_citation_distance_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ff59e0180516447e9428c6dcfe35030104d26c387c4ba4c21ce674f2973f5535'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e99ef414-695c-5715-8fdb-3892bea0c8e9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6eaf3424-2562-541d-b8fc-52284c9c23b8', 1), 'ff59e0180516447e9428c6dcfe35030104d26c387c4ba4c21ce674f2973f5535',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f573f03c0cd52af1cf6387cf054c2f77f194f45b8d9ce193b85fe94d18a67709.mp3', 2533, '2026-09-13 11:46:51.052018', 'be65b3e0b3050b465b1e58bf74d61d5ee53c602a01058051a58feabb1682e33f', 'validated', '{"audio_key":"f573f03c0cd52af1cf6387cf054c2f77f194f45b8d9ce193b85fe94d18a67709","entity_key":"d_academic_stance_citation_distance_03:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"be65b3e0b3050b465b1e58bf74d61d5ee53c602a01058051a58feabb1682e33f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/f573f03c0cd52af1cf6387cf054c2f77f194f45b8d9ce193b85fe94d18a67709.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_judgment_language_capstone_02:2 -> audio/generated/de-DE/dialogues/f7a1e347941adce74b78df8dea675f8d7b758d37df49eb3ae76f1095b7b5faca.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('de153e9d-4750-5562-9053-f62f81a6a123', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_judgment_language_capstone_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9be487cc7f936d15df810c032d84f0112799033b1a8aca770e1681ee5d429f70'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('467c7ddc-b9a1-5060-9efd-81d04a250896', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('de153e9d-4750-5562-9053-f62f81a6a123', 1), '9be487cc7f936d15df810c032d84f0112799033b1a8aca770e1681ee5d429f70',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f7a1e347941adce74b78df8dea675f8d7b758d37df49eb3ae76f1095b7b5faca.mp3', 4310, '2026-09-13 11:46:51.854512', '651cdc79e694fc5bfd2a0aacdc2601d34b0bb46ed83b62d23851ce9b8bacbfb3', 'validated', '{"audio_key":"f7a1e347941adce74b78df8dea675f8d7b758d37df49eb3ae76f1095b7b5faca","entity_key":"d_judgment_language_capstone_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"651cdc79e694fc5bfd2a0aacdc2601d34b0bb46ed83b62d23851ce9b8bacbfb3","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/f7a1e347941adce74b78df8dea675f8d7b758d37df49eb3ae76f1095b7b5faca.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_metaphor_idiom_pragmatic_transfer_01:4 -> audio/generated/de-DE/dialogues/f9e35e0f20ebc3e18bbe2210ab3a27e3ccaa478f503aa3507ac2a8ffea79823b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c483211e-91ef-5d62-bf98-3eead17c05cd', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_metaphor_idiom_pragmatic_transfer_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6d1e93a7c7783b57dabf9e9bd0051106cb138e435f80b099ced4d3e03e7f1e61'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b7b6bf6b-68ac-5f6f-9b94-feea81791905', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c483211e-91ef-5d62-bf98-3eead17c05cd', 1), '6d1e93a7c7783b57dabf9e9bd0051106cb138e435f80b099ced4d3e03e7f1e61',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f9e35e0f20ebc3e18bbe2210ab3a27e3ccaa478f503aa3507ac2a8ffea79823b.mp3', 3474, '2026-09-13 11:46:52.354019', '776f1b87e0221c9709780e3d0cd66977dc048b120c0a9787ee3219d7067810f0', 'validated', '{"audio_key":"f9e35e0f20ebc3e18bbe2210ab3a27e3ccaa478f503aa3507ac2a8ffea79823b","entity_key":"d_metaphor_idiom_pragmatic_transfer_01:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"776f1b87e0221c9709780e3d0cd66977dc048b120c0a9787ee3219d7067810f0","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/f9e35e0f20ebc3e18bbe2210ab3a27e3ccaa478f503aa3507ac2a8ffea79823b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_oral_synthesis_pressure_02:4 -> audio/generated/de-DE/dialogues/faa966bd04a024fb589f442df5a3e035f1cffe9b690fd5d3dd2cb5be444b4fd6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f47b701e-9863-522f-9e57-15e6b46ba64c', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_oral_synthesis_pressure_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd3b71c86accb32aa5e43f29e0890c693ba82c346b048f995474bf2b21ee3e50f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fdfcc96a-6d10-50cd-9631-34fbc083267c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f47b701e-9863-522f-9e57-15e6b46ba64c', 1), 'd3b71c86accb32aa5e43f29e0890c693ba82c346b048f995474bf2b21ee3e50f',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/faa966bd04a024fb589f442df5a3e035f1cffe9b690fd5d3dd2cb5be444b4fd6.mp3', 2821, '2026-09-13 11:46:53.068504', 'dffdc555bbd750455afe1412ee0d8e7df23899ecc7339e1ba7b877f4d679322b', 'validated', '{"audio_key":"faa966bd04a024fb589f442df5a3e035f1cffe9b690fd5d3dd2cb5be444b4fd6","entity_key":"d_oral_synthesis_pressure_02:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"dffdc555bbd750455afe1412ee0d8e7df23899ecc7339e1ba7b877f4d679322b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/faa966bd04a024fb589f442df5a3e035f1cffe9b690fd5d3dd2cb5be444b4fd6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_steelmanning_concession_03:4 -> audio/generated/de-DE/dialogues/fbaa2f4b3e4fa1d7c95f54ce6e588256eccad3403eea7d911930ec1684e273ae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ca127bb7-7cb5-5e5f-9b54-17f8322411c5', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_steelmanning_concession_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3d61538542a10e083a94509f867882c74ab46a7445221794607e71848edb5094'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('93dddcf3-d60a-5f7c-8236-94d49bdd6448', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ca127bb7-7cb5-5e5f-9b54-17f8322411c5', 1), '3d61538542a10e083a94509f867882c74ab46a7445221794607e71848edb5094',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/fbaa2f4b3e4fa1d7c95f54ce6e588256eccad3403eea7d911930ec1684e273ae.mp3', 2455, '2026-09-13 11:46:53.542308', '4fb49e6b74842cc2aabf6c13623e679449252a44accb51f602e69c18e1e827bd', 'validated', '{"audio_key":"fbaa2f4b3e4fa1d7c95f54ce6e588256eccad3403eea7d911930ec1684e273ae","entity_key":"d_steelmanning_concession_03:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"4fb49e6b74842cc2aabf6c13623e679449252a44accb51f602e69c18e1e827bd","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/fbaa2f4b3e4fa1d7c95f54ce6e588256eccad3403eea7d911930ec1684e273ae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_metaphor_idiom_pragmatic_transfer_01:3 -> audio/generated/de-DE/dialogues/fefbdb9f755c0ef6eb60f834bd680a619cd4d26ad74b44cdf679039dea8860ce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6887318f-7763-568c-bdaf-b08ab8ba7503', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_metaphor_idiom_pragmatic_transfer_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c2b386fdb9fa45ebf2fdda70b9304901d68391ffef45d51be48de39bbf9acb11'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e837b205-1ab8-587e-b7fc-37bd84083483', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6887318f-7763-568c-bdaf-b08ab8ba7503', 1), 'c2b386fdb9fa45ebf2fdda70b9304901d68391ffef45d51be48de39bbf9acb11',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/fefbdb9f755c0ef6eb60f834bd680a619cd4d26ad74b44cdf679039dea8860ce.mp3', 3056, '2026-09-13 11:46:54.341437', 'd5b396bbdab3ea35a423b04189258ffbb885e9b1e2e899a4bdc44d9e76648371', 'validated', '{"audio_key":"fefbdb9f755c0ef6eb60f834bd680a619cd4d26ad74b44cdf679039dea8860ce","entity_key":"d_metaphor_idiom_pragmatic_transfer_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d5b396bbdab3ea35a423b04189258ffbb885e9b1e2e899a4bdc44d9e76648371","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/fefbdb9f755c0ef6eb60f834bd680a619cd4d26ad74b44cdf679039dea8860ce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_principled_disagreement_negotiation_01:3 -> audio/generated/de-DE/dialogues/ff80d5f476538ee421d0e7db201b1196c7af9750cbd38a83d2ed6324e4c87b59.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('adf238a0-c3db-5860-950f-a6c237ff33a5', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_principled_disagreement_negotiation_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '139205fb5fead9b089315af1d80525e4b6a8aaf0bcd3165327c45f7cdaccec40'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2fe4634c-c046-576a-b91f-db96b0438c1b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('adf238a0-c3db-5860-950f-a6c237ff33a5', 1), '139205fb5fead9b089315af1d80525e4b6a8aaf0bcd3165327c45f7cdaccec40',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ff80d5f476538ee421d0e7db201b1196c7af9750cbd38a83d2ed6324e4c87b59.mp3', 4022, '2026-09-13 11:46:54.924050', 'c96cb6047f603a08944c1be70c914499c435b0b03d998c8c852f6dc8856c0c38', 'validated', '{"audio_key":"ff80d5f476538ee421d0e7db201b1196c7af9750cbd38a83d2ed6324e4c87b59","entity_key":"d_principled_disagreement_negotiation_01:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c96cb6047f603a08944c1be70c914499c435b0b03d998c8c852f6dc8856c0c38","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/ff80d5f476538ee421d0e7db201b1196c7af9750cbd38a83d2ed6324e4c87b59.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_principled_disagreement_negotiation_01:1 -> audio/generated/de-DE/dialogues/ffb4f9c1410f5e70075e68b16007dd4e149c6d7e3f279216fec53fcc2bb830b9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('75f0bb7c-5f09-5fa5-bec3-cf70038ab430', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_principled_disagreement_negotiation_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6f6aa85972e178c564488e1340e7a5f63200a5b665fff5aaa89b446db3c5cb46'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('983d1f30-bc21-558e-803d-4e3a1f992820', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('75f0bb7c-5f09-5fa5-bec3-cf70038ab430', 1), '6f6aa85972e178c564488e1340e7a5f63200a5b665fff5aaa89b446db3c5cb46',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ffb4f9c1410f5e70075e68b16007dd4e149c6d7e3f279216fec53fcc2bb830b9.mp3', 2821, '2026-09-13 11:46:55.787623', '21f6e4ff7b29a6a385387884e4292b84fe63ba68606ca79098b107dd9f5b65be', 'validated', '{"audio_key":"ffb4f9c1410f5e70075e68b16007dd4e149c6d7e3f279216fec53fcc2bb830b9","entity_key":"d_principled_disagreement_negotiation_01:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"21f6e4ff7b29a6a385387884e4292b84fe63ba68606ca79098b107dd9f5b65be","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/ffb4f9c1410f5e70075e68b16007dd4e149c6d7e3f279216fec53fcc2bb830b9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_narrative_perspective_temporal_control_04 -> audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('10b466dd-bab5-5600-acc1-c86dbf45debe', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_narrative_perspective_temporal_control_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '01d7b6b0a44ec287f7a2f34165bf1ece9650d8f4fdd1c549f82124555c4bf772'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ebe2c831-94d0-5e8c-8585-eafa8a07f00d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('10b466dd-bab5-5600-acc1-c86dbf45debe', 1), '01d7b6b0a44ec287f7a2f34165bf1ece9650d8f4fdd1c549f82124555c4bf772',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3', 1097, '2026-09-13 07:53:09.267825', '223a4d7002da7de01172c6a4f1e481c1dca32003dac9491e92cfe1064efddb91', 'validated', '{"audio_key":"0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21","entity_key":"lx_narrative_perspective_temporal_control_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"223a4d7002da7de01172c6a4f1e481c1dca32003dac9491e92cfe1064efddb91","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_narrative_perspective_temporal_control_04 -> audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b2d7b198-98a4-5ca0-a843-acac8aeda550', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_narrative_perspective_temporal_control_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '01d7b6b0a44ec287f7a2f34165bf1ece9650d8f4fdd1c549f82124555c4bf772'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5cbc0795-cf77-52a2-8e94-70ca053f9751', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b2d7b198-98a4-5ca0-a843-acac8aeda550', 1), '01d7b6b0a44ec287f7a2f34165bf1ece9650d8f4fdd1c549f82124555c4bf772',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3', 1097, '2026-09-13 07:53:09.267825', '223a4d7002da7de01172c6a4f1e481c1dca32003dac9491e92cfe1064efddb91', 'validated', '{"audio_key":"0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21","entity_key":"wf_narrative_perspective_temporal_control_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"223a4d7002da7de01172c6a4f1e481c1dca32003dac9491e92cfe1064efddb91","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0c7e795b4cb895b3450d3f93429afc9bfedba4ddfdaa85163741ae6b1b1cbf21.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_principled_disagreement_negotiation_06 -> audio/generated/de-DE/lexical/0dba0eb0570137d9bbb412ebb79e7ed69213aa77e58ba618e6dcd5b58d0fbfc8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1679f72e-04ca-5fe8-b4cc-59127dfe425f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_principled_disagreement_negotiation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '662a5d99c247d0b59f0cbf6127a99bb008e15fc4a6976be05b2a00f3523fa528'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f7fb0c14-b683-560b-98e1-23fea6d02b09', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1679f72e-04ca-5fe8-b4cc-59127dfe425f', 1), '662a5d99c247d0b59f0cbf6127a99bb008e15fc4a6976be05b2a00f3523fa528',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0dba0eb0570137d9bbb412ebb79e7ed69213aa77e58ba618e6dcd5b58d0fbfc8.mp3', 1253, '2026-09-13 09:18:14.709135', 'fb08237698beb13667167a4580ca484a59d6861d53d1b7a49120383baa5adaeb', 'validated', '{"audio_key":"0dba0eb0570137d9bbb412ebb79e7ed69213aa77e58ba618e6dcd5b58d0fbfc8","entity_key":"lx_principled_disagreement_negotiation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fb08237698beb13667167a4580ca484a59d6861d53d1b7a49120383baa5adaeb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0dba0eb0570137d9bbb412ebb79e7ed69213aa77e58ba618e6dcd5b58d0fbfc8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_principled_disagreement_negotiation_06 -> audio/generated/de-DE/lexical/0dba0eb0570137d9bbb412ebb79e7ed69213aa77e58ba618e6dcd5b58d0fbfc8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('111135c8-3907-5469-8d0c-6ff965e7b3ae', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_principled_disagreement_negotiation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '662a5d99c247d0b59f0cbf6127a99bb008e15fc4a6976be05b2a00f3523fa528'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('868d498d-5949-5abf-8537-1bd79b5ab46b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('111135c8-3907-5469-8d0c-6ff965e7b3ae', 1), '662a5d99c247d0b59f0cbf6127a99bb008e15fc4a6976be05b2a00f3523fa528',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0dba0eb0570137d9bbb412ebb79e7ed69213aa77e58ba618e6dcd5b58d0fbfc8.mp3', 1253, '2026-09-13 09:18:14.709135', 'fb08237698beb13667167a4580ca484a59d6861d53d1b7a49120383baa5adaeb', 'validated', '{"audio_key":"0dba0eb0570137d9bbb412ebb79e7ed69213aa77e58ba618e6dcd5b58d0fbfc8","entity_key":"wf_principled_disagreement_negotiation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fb08237698beb13667167a4580ca484a59d6861d53d1b7a49120383baa5adaeb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0dba0eb0570137d9bbb412ebb79e7ed69213aa77e58ba618e6dcd5b58d0fbfc8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_institutional_register_precision_04 -> audio/generated/de-DE/lexical/1129f3ef14ab19c6a5b4f0a1b9d3c8bd0afefee5413152fae9641cf0e5acad64.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8b09dcf1-7ee3-5a0b-aef4-d4a67d2b45af', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_institutional_register_precision_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5b8d3f7f12c41102e158a48cc366d82323413a1e68bab25a8e8923b2c3883520'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0d574be4-7780-5c3f-a4e6-2eb79402fc9d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8b09dcf1-7ee3-5a0b-aef4-d4a67d2b45af', 1), '5b8d3f7f12c41102e158a48cc366d82323413a1e68bab25a8e8923b2c3883520',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1129f3ef14ab19c6a5b4f0a1b9d3c8bd0afefee5413152fae9641cf0e5acad64.mp3', 1253, '2026-09-13 11:46:55.962708', '664681ed20ec9d328d14967c759acd30a0e0a3bfc091464ba95a94620f02f081', 'validated', '{"audio_key":"1129f3ef14ab19c6a5b4f0a1b9d3c8bd0afefee5413152fae9641cf0e5acad64","entity_key":"lx_institutional_register_precision_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"664681ed20ec9d328d14967c759acd30a0e0a3bfc091464ba95a94620f02f081","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1129f3ef14ab19c6a5b4f0a1b9d3c8bd0afefee5413152fae9641cf0e5acad64.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_institutional_register_precision_04 -> audio/generated/de-DE/lexical/1129f3ef14ab19c6a5b4f0a1b9d3c8bd0afefee5413152fae9641cf0e5acad64.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('65cc14ee-e8dd-5efc-a278-c486a4a35289', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_institutional_register_precision_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5b8d3f7f12c41102e158a48cc366d82323413a1e68bab25a8e8923b2c3883520'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9674ded1-4ddb-55d9-a119-30c142af39b1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('65cc14ee-e8dd-5efc-a278-c486a4a35289', 1), '5b8d3f7f12c41102e158a48cc366d82323413a1e68bab25a8e8923b2c3883520',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1129f3ef14ab19c6a5b4f0a1b9d3c8bd0afefee5413152fae9641cf0e5acad64.mp3', 1253, '2026-09-13 11:46:55.962708', '664681ed20ec9d328d14967c759acd30a0e0a3bfc091464ba95a94620f02f081', 'validated', '{"audio_key":"1129f3ef14ab19c6a5b4f0a1b9d3c8bd0afefee5413152fae9641cf0e5acad64","entity_key":"wf_institutional_register_precision_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"664681ed20ec9d328d14967c759acd30a0e0a3bfc091464ba95a94620f02f081","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1129f3ef14ab19c6a5b4f0a1b9d3c8bd0afefee5413152fae9641cf0e5acad64.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_oral_synthesis_pressure_06 -> audio/generated/de-DE/lexical/11309149410d646aa6a5681d1f7934bf87cd9ce2f53a4ef17698371a60112534.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('134c6b49-0be5-5eff-8f8e-2939cf9fcaf5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_oral_synthesis_pressure_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c87fe857078fc884bf92fabf9d056cde866e3b3a720fb0906ad61964549c23f2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c620cff8-7cfb-5697-9f52-7cefb880c845', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('134c6b49-0be5-5eff-8f8e-2939cf9fcaf5', 1), 'c87fe857078fc884bf92fabf9d056cde866e3b3a720fb0906ad61964549c23f2',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/11309149410d646aa6a5681d1f7934bf87cd9ce2f53a4ef17698371a60112534.mp3', 1149, '2026-09-13 11:46:56.839551', '3f7ce70b3fa649314fe87ff358094500e9b2e4ba7e06ffa7c24c284cd1c832ed', 'validated', '{"audio_key":"11309149410d646aa6a5681d1f7934bf87cd9ce2f53a4ef17698371a60112534","entity_key":"lx_oral_synthesis_pressure_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3f7ce70b3fa649314fe87ff358094500e9b2e4ba7e06ffa7c24c284cd1c832ed","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/11309149410d646aa6a5681d1f7934bf87cd9ce2f53a4ef17698371a60112534.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_oral_synthesis_pressure_06 -> audio/generated/de-DE/lexical/11309149410d646aa6a5681d1f7934bf87cd9ce2f53a4ef17698371a60112534.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c64212c2-02fb-568f-baea-27e26f638975', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_oral_synthesis_pressure_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c87fe857078fc884bf92fabf9d056cde866e3b3a720fb0906ad61964549c23f2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3b86faea-a839-519d-8729-c71e100a46c1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c64212c2-02fb-568f-baea-27e26f638975', 1), 'c87fe857078fc884bf92fabf9d056cde866e3b3a720fb0906ad61964549c23f2',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/11309149410d646aa6a5681d1f7934bf87cd9ce2f53a4ef17698371a60112534.mp3', 1149, '2026-09-13 11:46:56.839551', '3f7ce70b3fa649314fe87ff358094500e9b2e4ba7e06ffa7c24c284cd1c832ed', 'validated', '{"audio_key":"11309149410d646aa6a5681d1f7934bf87cd9ce2f53a4ef17698371a60112534","entity_key":"wf_oral_synthesis_pressure_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3f7ce70b3fa649314fe87ff358094500e9b2e4ba7e06ffa7c24c284cd1c832ed","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/11309149410d646aa6a5681d1f7934bf87cd9ce2f53a4ef17698371a60112534.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_academic_stance_citation_distance_03 -> audio/generated/de-DE/lexical/12d818a0fe6568711f20bb5d0f592981b9879ecf285a00d6145bac75e80767fc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('dad4044f-6c59-5394-9ea9-48ec4ad62cd6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_academic_stance_citation_distance_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '094511c98a2ec7e258530ce8e327842ae368822cf7761fd7bcc767529944f785'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4bbada41-f94f-5c8d-994a-dae125e3c19f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('dad4044f-6c59-5394-9ea9-48ec4ad62cd6', 1), '094511c98a2ec7e258530ce8e327842ae368822cf7761fd7bcc767529944f785',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/12d818a0fe6568711f20bb5d0f592981b9879ecf285a00d6145bac75e80767fc.mp3', 1201, '2026-09-13 11:46:57.044337', 'c9261af3f8c1d86753d3a6b35d43f2d5ef8b635d618293b1375cf9a9aa18eb0b', 'validated', '{"audio_key":"12d818a0fe6568711f20bb5d0f592981b9879ecf285a00d6145bac75e80767fc","entity_key":"lx_academic_stance_citation_distance_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c9261af3f8c1d86753d3a6b35d43f2d5ef8b635d618293b1375cf9a9aa18eb0b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/12d818a0fe6568711f20bb5d0f592981b9879ecf285a00d6145bac75e80767fc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_academic_stance_citation_distance_03 -> audio/generated/de-DE/lexical/12d818a0fe6568711f20bb5d0f592981b9879ecf285a00d6145bac75e80767fc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f3ad78f9-5541-5a32-abf5-6774a9bcf57d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_academic_stance_citation_distance_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '094511c98a2ec7e258530ce8e327842ae368822cf7761fd7bcc767529944f785'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f6eb1cd3-0198-5bcc-9fb0-4020c6029d4f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f3ad78f9-5541-5a32-abf5-6774a9bcf57d', 1), '094511c98a2ec7e258530ce8e327842ae368822cf7761fd7bcc767529944f785',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/12d818a0fe6568711f20bb5d0f592981b9879ecf285a00d6145bac75e80767fc.mp3', 1201, '2026-09-13 11:46:57.044337', 'c9261af3f8c1d86753d3a6b35d43f2d5ef8b635d618293b1375cf9a9aa18eb0b', 'validated', '{"audio_key":"12d818a0fe6568711f20bb5d0f592981b9879ecf285a00d6145bac75e80767fc","entity_key":"wf_academic_stance_citation_distance_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c9261af3f8c1d86753d3a6b35d43f2d5ef8b635d618293b1375cf9a9aa18eb0b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/12d818a0fe6568711f20bb5d0f592981b9879ecf285a00d6145bac75e80767fc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_principled_disagreement_negotiation_05 -> audio/generated/de-DE/lexical/1620ab3973ea66297ddd651449a9d9f4a2fc7e10cb20180901247578b25ab4f4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a0b473e3-7949-5590-bfe0-1d69dcc99bf4', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_principled_disagreement_negotiation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '85163114a9ddffc9defb0aea35ba5dc9887dfc3d9e85fe8e3a5c770344b2e93b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ef37c866-4de8-505a-a2cc-ee004c9cbcfd', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a0b473e3-7949-5590-bfe0-1d69dcc99bf4', 1), '85163114a9ddffc9defb0aea35ba5dc9887dfc3d9e85fe8e3a5c770344b2e93b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1620ab3973ea66297ddd651449a9d9f4a2fc7e10cb20180901247578b25ab4f4.mp3', 1149, '2026-09-13 11:46:57.891597', 'a5525683ef2d9f4d59981f46cf88a624d3d2016b31c247cf5186a7bc11d21890', 'validated', '{"audio_key":"1620ab3973ea66297ddd651449a9d9f4a2fc7e10cb20180901247578b25ab4f4","entity_key":"lx_principled_disagreement_negotiation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a5525683ef2d9f4d59981f46cf88a624d3d2016b31c247cf5186a7bc11d21890","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1620ab3973ea66297ddd651449a9d9f4a2fc7e10cb20180901247578b25ab4f4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_principled_disagreement_negotiation_05 -> audio/generated/de-DE/lexical/1620ab3973ea66297ddd651449a9d9f4a2fc7e10cb20180901247578b25ab4f4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f05bae54-b62f-5c0d-a67d-edf22028fcf0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_principled_disagreement_negotiation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '85163114a9ddffc9defb0aea35ba5dc9887dfc3d9e85fe8e3a5c770344b2e93b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fd4cc5af-d71a-5211-ae2f-ef06fc8b32cc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f05bae54-b62f-5c0d-a67d-edf22028fcf0', 1), '85163114a9ddffc9defb0aea35ba5dc9887dfc3d9e85fe8e3a5c770344b2e93b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1620ab3973ea66297ddd651449a9d9f4a2fc7e10cb20180901247578b25ab4f4.mp3', 1149, '2026-09-13 11:46:57.891597', 'a5525683ef2d9f4d59981f46cf88a624d3d2016b31c247cf5186a7bc11d21890', 'validated', '{"audio_key":"1620ab3973ea66297ddd651449a9d9f4a2fc7e10cb20180901247578b25ab4f4","entity_key":"wf_principled_disagreement_negotiation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a5525683ef2d9f4d59981f46cf88a624d3d2016b31c247cf5186a7bc11d21890","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1620ab3973ea66297ddd651449a9d9f4a2fc7e10cb20180901247578b25ab4f4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_academic_stance_citation_distance_05 -> audio/generated/de-DE/lexical/174285cb39c060be3935603ff68cf689d0af6a22005102dba00e1ea678528f8a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8fc19bd8-ebad-5a3d-9a4c-c3d87e67f4b1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_academic_stance_citation_distance_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3716b9243171fec0de1305b1c191548e88911dba6971f7cb0c7eec7fe68b11d2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0fa652ee-dedb-59f9-a0ee-ac6f9b0a6bdf', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8fc19bd8-ebad-5a3d-9a4c-c3d87e67f4b1', 1), '3716b9243171fec0de1305b1c191548e88911dba6971f7cb0c7eec7fe68b11d2',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/174285cb39c060be3935603ff68cf689d0af6a22005102dba00e1ea678528f8a.mp3', 1280, '2026-09-13 11:46:58.163063', '0ae5aa9c4683b4642a55df0443639438834509c0fb97aa306441ed5a1af683ba', 'validated', '{"audio_key":"174285cb39c060be3935603ff68cf689d0af6a22005102dba00e1ea678528f8a","entity_key":"lx_academic_stance_citation_distance_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0ae5aa9c4683b4642a55df0443639438834509c0fb97aa306441ed5a1af683ba","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/174285cb39c060be3935603ff68cf689d0af6a22005102dba00e1ea678528f8a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_academic_stance_citation_distance_05 -> audio/generated/de-DE/lexical/174285cb39c060be3935603ff68cf689d0af6a22005102dba00e1ea678528f8a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('23322919-9be7-5fc3-8865-93e6128a29a5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_academic_stance_citation_distance_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3716b9243171fec0de1305b1c191548e88911dba6971f7cb0c7eec7fe68b11d2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3ed9d933-149e-518f-a217-2e5efd418dea', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('23322919-9be7-5fc3-8865-93e6128a29a5', 1), '3716b9243171fec0de1305b1c191548e88911dba6971f7cb0c7eec7fe68b11d2',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/174285cb39c060be3935603ff68cf689d0af6a22005102dba00e1ea678528f8a.mp3', 1280, '2026-09-13 11:46:58.163063', '0ae5aa9c4683b4642a55df0443639438834509c0fb97aa306441ed5a1af683ba', 'validated', '{"audio_key":"174285cb39c060be3935603ff68cf689d0af6a22005102dba00e1ea678528f8a","entity_key":"wf_academic_stance_citation_distance_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0ae5aa9c4683b4642a55df0443639438834509c0fb97aa306441ed5a1af683ba","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/174285cb39c060be3935603ff68cf689d0af6a22005102dba00e1ea678528f8a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_narrative_perspective_temporal_control_06 -> audio/generated/de-DE/lexical/18ba33446f0349bb27a848d063a9ffafc966f5c174387226c7f8cad23942debc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('71daa7c4-d879-571e-b99f-11ad7be38aed', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_narrative_perspective_temporal_control_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1e2a189c62f2093ae06ef806a2d0900bf99f87c44870ac0ac2ce45d5d2d0f125'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fb69a09c-c96c-5d41-8b45-6dfd029be179', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('71daa7c4-d879-571e-b99f-11ad7be38aed', 1), '1e2a189c62f2093ae06ef806a2d0900bf99f87c44870ac0ac2ce45d5d2d0f125',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/18ba33446f0349bb27a848d063a9ffafc966f5c174387226c7f8cad23942debc.mp3', 1149, '2026-09-13 11:46:58.964509', 'a77e44aec23bc49fb140bba8f24db98319f768a494679f6dfb8751240131e090', 'validated', '{"audio_key":"18ba33446f0349bb27a848d063a9ffafc966f5c174387226c7f8cad23942debc","entity_key":"lx_narrative_perspective_temporal_control_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a77e44aec23bc49fb140bba8f24db98319f768a494679f6dfb8751240131e090","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/18ba33446f0349bb27a848d063a9ffafc966f5c174387226c7f8cad23942debc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_narrative_perspective_temporal_control_06 -> audio/generated/de-DE/lexical/18ba33446f0349bb27a848d063a9ffafc966f5c174387226c7f8cad23942debc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1ccb50a0-f41b-5455-bbf5-37961561a7dd', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_narrative_perspective_temporal_control_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1e2a189c62f2093ae06ef806a2d0900bf99f87c44870ac0ac2ce45d5d2d0f125'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('47186f2e-7f03-529f-be68-a8f80e8f7977', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1ccb50a0-f41b-5455-bbf5-37961561a7dd', 1), '1e2a189c62f2093ae06ef806a2d0900bf99f87c44870ac0ac2ce45d5d2d0f125',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/18ba33446f0349bb27a848d063a9ffafc966f5c174387226c7f8cad23942debc.mp3', 1149, '2026-09-13 11:46:58.964509', 'a77e44aec23bc49fb140bba8f24db98319f768a494679f6dfb8751240131e090', 'validated', '{"audio_key":"18ba33446f0349bb27a848d063a9ffafc966f5c174387226c7f8cad23942debc","entity_key":"wf_narrative_perspective_temporal_control_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a77e44aec23bc49fb140bba8f24db98319f768a494679f6dfb8751240131e090","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/18ba33446f0349bb27a848d063a9ffafc966f5c174387226c7f8cad23942debc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_descriptive_normative_reasoning_01 -> audio/generated/de-DE/lexical/1e95672fa2bfc8abd15de45ccc92774ce19a75256bb0cddae07ff52a5d9520d7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8473da44-663d-5f7b-86a8-ee31dad62945', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_descriptive_normative_reasoning_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '866558cb77a7dd95645106220c3f4e8c0c68c850efb922a4f0c727519d2da7f2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1aef0c93-5009-5391-945d-c206741ff9c3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8473da44-663d-5f7b-86a8-ee31dad62945', 1), '866558cb77a7dd95645106220c3f4e8c0c68c850efb922a4f0c727519d2da7f2',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1e95672fa2bfc8abd15de45ccc92774ce19a75256bb0cddae07ff52a5d9520d7.mp3', 1436, '2026-09-13 11:46:59.261455', '1b291e4c07c381774165b0a5e432e3572f26eb0eaf9f9da9deadff6ab0eedd95', 'validated', '{"audio_key":"1e95672fa2bfc8abd15de45ccc92774ce19a75256bb0cddae07ff52a5d9520d7","entity_key":"lx_descriptive_normative_reasoning_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1b291e4c07c381774165b0a5e432e3572f26eb0eaf9f9da9deadff6ab0eedd95","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1e95672fa2bfc8abd15de45ccc92774ce19a75256bb0cddae07ff52a5d9520d7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_descriptive_normative_reasoning_01 -> audio/generated/de-DE/lexical/1e95672fa2bfc8abd15de45ccc92774ce19a75256bb0cddae07ff52a5d9520d7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7da9264b-1d13-5074-a43b-8b2ed5d9b74d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_descriptive_normative_reasoning_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '866558cb77a7dd95645106220c3f4e8c0c68c850efb922a4f0c727519d2da7f2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('42d57d4f-cbff-51b5-9ccf-6380220b970b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7da9264b-1d13-5074-a43b-8b2ed5d9b74d', 1), '866558cb77a7dd95645106220c3f4e8c0c68c850efb922a4f0c727519d2da7f2',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1e95672fa2bfc8abd15de45ccc92774ce19a75256bb0cddae07ff52a5d9520d7.mp3', 1436, '2026-09-13 11:46:59.261455', '1b291e4c07c381774165b0a5e432e3572f26eb0eaf9f9da9deadff6ab0eedd95', 'validated', '{"audio_key":"1e95672fa2bfc8abd15de45ccc92774ce19a75256bb0cddae07ff52a5d9520d7","entity_key":"wf_descriptive_normative_reasoning_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1b291e4c07c381774165b0a5e432e3572f26eb0eaf9f9da9deadff6ab0eedd95","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1e95672fa2bfc8abd15de45ccc92774ce19a75256bb0cddae07ff52a5d9520d7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_metaphor_idiom_pragmatic_transfer_05 -> audio/generated/de-DE/lexical/26b0ab8528845d3f9ad17e21c056ed88709751418ee390faa1a377703c9601a3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('31a54650-3df8-5e63-ae03-f79b9de73562', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_metaphor_idiom_pragmatic_transfer_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fec572999e0c744d56c6818ff9894a3b67644f40dca2ad104c027593b9c74bf7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d4077e6e-de7c-5bf9-8ed0-e7da89542de5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('31a54650-3df8-5e63-ae03-f79b9de73562', 1), 'fec572999e0c744d56c6818ff9894a3b67644f40dca2ad104c027593b9c74bf7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/26b0ab8528845d3f9ad17e21c056ed88709751418ee390faa1a377703c9601a3.mp3', 1149, '2026-09-13 08:16:32.726321', '550cc747149a8da33567a2c01584f490cb29222fa09543ff6fe00265891ef597', 'validated', '{"audio_key":"26b0ab8528845d3f9ad17e21c056ed88709751418ee390faa1a377703c9601a3","entity_key":"lx_metaphor_idiom_pragmatic_transfer_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"550cc747149a8da33567a2c01584f490cb29222fa09543ff6fe00265891ef597","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/26b0ab8528845d3f9ad17e21c056ed88709751418ee390faa1a377703c9601a3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_metaphor_idiom_pragmatic_transfer_05 -> audio/generated/de-DE/lexical/26b0ab8528845d3f9ad17e21c056ed88709751418ee390faa1a377703c9601a3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a9e7966f-5dbc-5463-93be-38c0ba486887', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_metaphor_idiom_pragmatic_transfer_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fec572999e0c744d56c6818ff9894a3b67644f40dca2ad104c027593b9c74bf7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6a4ae336-88d6-5dc7-9d58-b65dcfbdf256', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a9e7966f-5dbc-5463-93be-38c0ba486887', 1), 'fec572999e0c744d56c6818ff9894a3b67644f40dca2ad104c027593b9c74bf7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/26b0ab8528845d3f9ad17e21c056ed88709751418ee390faa1a377703c9601a3.mp3', 1149, '2026-09-13 08:16:32.726321', '550cc747149a8da33567a2c01584f490cb29222fa09543ff6fe00265891ef597', 'validated', '{"audio_key":"26b0ab8528845d3f9ad17e21c056ed88709751418ee390faa1a377703c9601a3","entity_key":"wf_metaphor_idiom_pragmatic_transfer_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"550cc747149a8da33567a2c01584f490cb29222fa09543ff6fe00265891ef597","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/26b0ab8528845d3f9ad17e21c056ed88709751418ee390faa1a377703c9601a3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_steelmanning_concession_03 -> audio/generated/de-DE/lexical/2bea2f3323ab97a3f7a241b72b4f6a0bc75e699aa5e894028afbc4bd1fd67bd9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4258767d-12f4-54d7-866e-4adaf1bb4104', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_steelmanning_concession_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '72cc66cc74fac92ff194e57cc2545d07f87f984d50f0b4ed8611525cb52c187f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('583dc382-157b-54a7-9ad8-4f3fbddd9b49', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4258767d-12f4-54d7-866e-4adaf1bb4104', 1), '72cc66cc74fac92ff194e57cc2545d07f87f984d50f0b4ed8611525cb52c187f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2bea2f3323ab97a3f7a241b72b4f6a0bc75e699aa5e894028afbc4bd1fd67bd9.mp3', 1201, '2026-09-13 11:47:00.006810', '8168b083787f7f1bdc90eb0aafd3b04b22f2529648777d075378f081be55b11b', 'validated', '{"audio_key":"2bea2f3323ab97a3f7a241b72b4f6a0bc75e699aa5e894028afbc4bd1fd67bd9","entity_key":"lx_steelmanning_concession_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8168b083787f7f1bdc90eb0aafd3b04b22f2529648777d075378f081be55b11b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2bea2f3323ab97a3f7a241b72b4f6a0bc75e699aa5e894028afbc4bd1fd67bd9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_steelmanning_concession_03 -> audio/generated/de-DE/lexical/2bea2f3323ab97a3f7a241b72b4f6a0bc75e699aa5e894028afbc4bd1fd67bd9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f372087b-8e3a-5ae0-aef7-e819403fa93d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_steelmanning_concession_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '72cc66cc74fac92ff194e57cc2545d07f87f984d50f0b4ed8611525cb52c187f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a8130e75-4e61-5ce4-820c-33450c50460d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f372087b-8e3a-5ae0-aef7-e819403fa93d', 1), '72cc66cc74fac92ff194e57cc2545d07f87f984d50f0b4ed8611525cb52c187f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2bea2f3323ab97a3f7a241b72b4f6a0bc75e699aa5e894028afbc4bd1fd67bd9.mp3', 1201, '2026-09-13 11:47:00.006810', '8168b083787f7f1bdc90eb0aafd3b04b22f2529648777d075378f081be55b11b', 'validated', '{"audio_key":"2bea2f3323ab97a3f7a241b72b4f6a0bc75e699aa5e894028afbc4bd1fd67bd9","entity_key":"wf_steelmanning_concession_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8168b083787f7f1bdc90eb0aafd3b04b22f2529648777d075378f081be55b11b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2bea2f3323ab97a3f7a241b72b4f6a0bc75e699aa5e894028afbc4bd1fd67bd9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_presupposition_accommodation_06 -> audio/generated/de-DE/lexical/345f4bfbe3ac4871b10349ac8eeeab483edef20275ef3d8c6596e5becceddf60.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('407bf782-fd89-5812-a29a-5f62367e1a73', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_presupposition_accommodation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e7442332f3cbf62dfde78b18b42c26fdb07c39ddaedb4601c8bed115a5b57e45'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ee2c5a15-6c77-5a86-84c9-19955e227251', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('407bf782-fd89-5812-a29a-5f62367e1a73', 1), 'e7442332f3cbf62dfde78b18b42c26fdb07c39ddaedb4601c8bed115a5b57e45',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/345f4bfbe3ac4871b10349ac8eeeab483edef20275ef3d8c6596e5becceddf60.mp3', 1332, '2026-09-13 11:47:00.344704', 'fb2cc514c0cbc995b88207bfdfafa48d8405869188cabc12e5c967db92e2630b', 'validated', '{"audio_key":"345f4bfbe3ac4871b10349ac8eeeab483edef20275ef3d8c6596e5becceddf60","entity_key":"lx_presupposition_accommodation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fb2cc514c0cbc995b88207bfdfafa48d8405869188cabc12e5c967db92e2630b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/345f4bfbe3ac4871b10349ac8eeeab483edef20275ef3d8c6596e5becceddf60.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_presupposition_accommodation_06 -> audio/generated/de-DE/lexical/345f4bfbe3ac4871b10349ac8eeeab483edef20275ef3d8c6596e5becceddf60.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c19150f0-56ce-5b34-b2aa-b9e6d9619768', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_presupposition_accommodation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e7442332f3cbf62dfde78b18b42c26fdb07c39ddaedb4601c8bed115a5b57e45'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('45b2c475-1f40-500e-9621-b1190102d79e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c19150f0-56ce-5b34-b2aa-b9e6d9619768', 1), 'e7442332f3cbf62dfde78b18b42c26fdb07c39ddaedb4601c8bed115a5b57e45',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/345f4bfbe3ac4871b10349ac8eeeab483edef20275ef3d8c6596e5becceddf60.mp3', 1332, '2026-09-13 11:47:00.344704', 'fb2cc514c0cbc995b88207bfdfafa48d8405869188cabc12e5c967db92e2630b', 'validated', '{"audio_key":"345f4bfbe3ac4871b10349ac8eeeab483edef20275ef3d8c6596e5becceddf60","entity_key":"wf_presupposition_accommodation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fb2cc514c0cbc995b88207bfdfafa48d8405869188cabc12e5c967db92e2630b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/345f4bfbe3ac4871b10349ac8eeeab483edef20275ef3d8c6596e5becceddf60.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_judgment_language_capstone_06 -> audio/generated/de-DE/lexical/38df5b5e21fa82b670a20f28256970a1912497dc4c1cec33f1b6d7752d18bb95.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d56f8470-878f-5272-b654-9ca13ceb8596', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_judgment_language_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '859118ec42ece6aec1e4bcb3a8d97b32e0b457dfc05c660c037bc099621d5218'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6fb4a5c6-720e-5c4e-a1d1-ae54c7503384', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d56f8470-878f-5272-b654-9ca13ceb8596', 1), '859118ec42ece6aec1e4bcb3a8d97b32e0b457dfc05c660c037bc099621d5218',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/38df5b5e21fa82b670a20f28256970a1912497dc4c1cec33f1b6d7752d18bb95.mp3', 1201, '2026-09-13 11:47:01.068987', 'ad2ccfecb17685c3da267a87167c4deb21f27ebb6cf6b0a51bb2e3562544fca1', 'validated', '{"audio_key":"38df5b5e21fa82b670a20f28256970a1912497dc4c1cec33f1b6d7752d18bb95","entity_key":"lx_judgment_language_capstone_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ad2ccfecb17685c3da267a87167c4deb21f27ebb6cf6b0a51bb2e3562544fca1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/38df5b5e21fa82b670a20f28256970a1912497dc4c1cec33f1b6d7752d18bb95.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_judgment_language_capstone_06 -> audio/generated/de-DE/lexical/38df5b5e21fa82b670a20f28256970a1912497dc4c1cec33f1b6d7752d18bb95.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4e34fc83-720e-5b7e-af16-d0f3e6cf823d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_judgment_language_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '859118ec42ece6aec1e4bcb3a8d97b32e0b457dfc05c660c037bc099621d5218'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bf0bf65f-548c-5438-a905-0c024ede496f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4e34fc83-720e-5b7e-af16-d0f3e6cf823d', 1), '859118ec42ece6aec1e4bcb3a8d97b32e0b457dfc05c660c037bc099621d5218',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/38df5b5e21fa82b670a20f28256970a1912497dc4c1cec33f1b6d7752d18bb95.mp3', 1201, '2026-09-13 11:47:01.068987', 'ad2ccfecb17685c3da267a87167c4deb21f27ebb6cf6b0a51bb2e3562544fca1', 'validated', '{"audio_key":"38df5b5e21fa82b670a20f28256970a1912497dc4c1cec33f1b6d7752d18bb95","entity_key":"wf_judgment_language_capstone_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ad2ccfecb17685c3da267a87167c4deb21f27ebb6cf6b0a51bb2e3562544fca1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/38df5b5e21fa82b670a20f28256970a1912497dc4c1cec33f1b6d7752d18bb95.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_presupposition_accommodation_04 -> audio/generated/de-DE/lexical/392f6d74d3313c23497115dbc2bb3a3361dea7153c90f6e3d81b1067d26210ba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a4231859-b1b5-5302-8865-4c5f4dbb4de4', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_presupposition_accommodation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd7bae8acb27d97c41fc0c8d7f867267b9534aa4e09c5c5bfd0318a0c6da08ee4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aee20ede-7023-59c4-85e0-4ccfae06f881', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a4231859-b1b5-5302-8865-4c5f4dbb4de4', 1), 'd7bae8acb27d97c41fc0c8d7f867267b9534aa4e09c5c5bfd0318a0c6da08ee4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/392f6d74d3313c23497115dbc2bb3a3361dea7153c90f6e3d81b1067d26210ba.mp3', 1071, '2026-09-13 11:47:01.422091', '7c513eb7650a31416a7674ec9827820ac6e8abb37fd4bfdffb418c5660c0c398', 'validated', '{"audio_key":"392f6d74d3313c23497115dbc2bb3a3361dea7153c90f6e3d81b1067d26210ba","entity_key":"lx_presupposition_accommodation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7c513eb7650a31416a7674ec9827820ac6e8abb37fd4bfdffb418c5660c0c398","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/392f6d74d3313c23497115dbc2bb3a3361dea7153c90f6e3d81b1067d26210ba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_presupposition_accommodation_04 -> audio/generated/de-DE/lexical/392f6d74d3313c23497115dbc2bb3a3361dea7153c90f6e3d81b1067d26210ba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5515e2f2-4d13-5333-b8a9-d55c4e6e1fea', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_presupposition_accommodation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd7bae8acb27d97c41fc0c8d7f867267b9534aa4e09c5c5bfd0318a0c6da08ee4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('675fb917-e661-5c65-a717-6ee07b14a8fb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5515e2f2-4d13-5333-b8a9-d55c4e6e1fea', 1), 'd7bae8acb27d97c41fc0c8d7f867267b9534aa4e09c5c5bfd0318a0c6da08ee4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/392f6d74d3313c23497115dbc2bb3a3361dea7153c90f6e3d81b1067d26210ba.mp3', 1071, '2026-09-13 11:47:01.422091', '7c513eb7650a31416a7674ec9827820ac6e8abb37fd4bfdffb418c5660c0c398', 'validated', '{"audio_key":"392f6d74d3313c23497115dbc2bb3a3361dea7153c90f6e3d81b1067d26210ba","entity_key":"wf_presupposition_accommodation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7c513eb7650a31416a7674ec9827820ac6e8abb37fd4bfdffb418c5660c0c398","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/392f6d74d3313c23497115dbc2bb3a3361dea7153c90f6e3d81b1067d26210ba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_oral_synthesis_pressure_05 -> audio/generated/de-DE/lexical/3e8992cc1204735887bc9d2fae74eb4a56fe63209b082269975ef48c6c8733f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('285a015f-da30-59a8-ad7e-963d3097865d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_oral_synthesis_pressure_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '239c641cb291e527ea6fc36dbf519ccbb47cdae94ed544a76061483020b1f8b6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1dc32be3-dc4c-5e4f-887b-c9062f3cbb19', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('285a015f-da30-59a8-ad7e-963d3097865d', 1), '239c641cb291e527ea6fc36dbf519ccbb47cdae94ed544a76061483020b1f8b6',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3e8992cc1204735887bc9d2fae74eb4a56fe63209b082269975ef48c6c8733f9.mp3', 1332, '2026-09-13 10:38:41.417114', '41ae1866af553a7e94893167ff42336971b4157cae26bd110cc4b8e329b260bd', 'validated', '{"audio_key":"3e8992cc1204735887bc9d2fae74eb4a56fe63209b082269975ef48c6c8733f9","entity_key":"lx_oral_synthesis_pressure_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"41ae1866af553a7e94893167ff42336971b4157cae26bd110cc4b8e329b260bd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3e8992cc1204735887bc9d2fae74eb4a56fe63209b082269975ef48c6c8733f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_oral_synthesis_pressure_05 -> audio/generated/de-DE/lexical/3e8992cc1204735887bc9d2fae74eb4a56fe63209b082269975ef48c6c8733f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e17a7291-2a84-5792-9b45-98e9e3ff02d5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_oral_synthesis_pressure_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '239c641cb291e527ea6fc36dbf519ccbb47cdae94ed544a76061483020b1f8b6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fc5e61ee-1703-5fdf-9320-2bf1ac877781', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e17a7291-2a84-5792-9b45-98e9e3ff02d5', 1), '239c641cb291e527ea6fc36dbf519ccbb47cdae94ed544a76061483020b1f8b6',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3e8992cc1204735887bc9d2fae74eb4a56fe63209b082269975ef48c6c8733f9.mp3', 1332, '2026-09-13 10:38:41.417114', '41ae1866af553a7e94893167ff42336971b4157cae26bd110cc4b8e329b260bd', 'validated', '{"audio_key":"3e8992cc1204735887bc9d2fae74eb4a56fe63209b082269975ef48c6c8733f9","entity_key":"wf_oral_synthesis_pressure_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"41ae1866af553a7e94893167ff42336971b4157cae26bd110cc4b8e329b260bd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3e8992cc1204735887bc9d2fae74eb4a56fe63209b082269975ef48c6c8733f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_principled_disagreement_negotiation_01 -> audio/generated/de-DE/lexical/3ebf0487589b44249fd757b0ee9841420362848c365551f86480115b863aabab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d006c3c3-3217-5f53-8f9d-b7017eabde0a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_principled_disagreement_negotiation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ea0df837e8f978c91c7a00bb2431b16d0380d9482f51311b3120c00f4d106f37'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d11b498c-c71b-5f42-86c9-2a6fe6724cdf', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d006c3c3-3217-5f53-8f9d-b7017eabde0a', 1), 'ea0df837e8f978c91c7a00bb2431b16d0380d9482f51311b3120c00f4d106f37',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3ebf0487589b44249fd757b0ee9841420362848c365551f86480115b863aabab.mp3', 1018, '2026-09-13 11:47:02.072149', '3d9164f8f51c9ed14c50b8cd2239a17b72638c71f57ac51bd6101c28ca96fd3e', 'validated', '{"audio_key":"3ebf0487589b44249fd757b0ee9841420362848c365551f86480115b863aabab","entity_key":"lx_principled_disagreement_negotiation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3d9164f8f51c9ed14c50b8cd2239a17b72638c71f57ac51bd6101c28ca96fd3e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3ebf0487589b44249fd757b0ee9841420362848c365551f86480115b863aabab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_principled_disagreement_negotiation_01 -> audio/generated/de-DE/lexical/3ebf0487589b44249fd757b0ee9841420362848c365551f86480115b863aabab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('427f7a1b-d8a6-54b1-af08-a521deba5daa', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_principled_disagreement_negotiation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ea0df837e8f978c91c7a00bb2431b16d0380d9482f51311b3120c00f4d106f37'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('726940bc-4b88-5e84-831e-6bc1d25bc5d2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('427f7a1b-d8a6-54b1-af08-a521deba5daa', 1), 'ea0df837e8f978c91c7a00bb2431b16d0380d9482f51311b3120c00f4d106f37',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3ebf0487589b44249fd757b0ee9841420362848c365551f86480115b863aabab.mp3', 1018, '2026-09-13 11:47:02.072149', '3d9164f8f51c9ed14c50b8cd2239a17b72638c71f57ac51bd6101c28ca96fd3e', 'validated', '{"audio_key":"3ebf0487589b44249fd757b0ee9841420362848c365551f86480115b863aabab","entity_key":"wf_principled_disagreement_negotiation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3d9164f8f51c9ed14c50b8cd2239a17b72638c71f57ac51bd6101c28ca96fd3e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3ebf0487589b44249fd757b0ee9841420362848c365551f86480115b863aabab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_steelmanning_concession_02 -> audio/generated/de-DE/lexical/41dfb79b12f3099c78fd8872b3453a9fd26b6368e8810273ab8ea5d628765664.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('901d4a22-91a4-54cf-b1a5-54a08d127f66', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_steelmanning_concession_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6ae678df563b84e3e346d77ef741d99ceb092ff1af8dd9c3c2f9052be7b4e647'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b7319cc5-f84c-59cf-af55-9d65744ab8d5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('901d4a22-91a4-54cf-b1a5-54a08d127f66', 1), '6ae678df563b84e3e346d77ef741d99ceb092ff1af8dd9c3c2f9052be7b4e647',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/41dfb79b12f3099c78fd8872b3453a9fd26b6368e8810273ab8ea5d628765664.mp3', 1280, '2026-09-13 11:47:02.470629', '33489ff0598a110a8c9df18e864a866064fdc20d41ffac8b15fc220911f6f33b', 'validated', '{"audio_key":"41dfb79b12f3099c78fd8872b3453a9fd26b6368e8810273ab8ea5d628765664","entity_key":"lx_steelmanning_concession_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"33489ff0598a110a8c9df18e864a866064fdc20d41ffac8b15fc220911f6f33b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/41dfb79b12f3099c78fd8872b3453a9fd26b6368e8810273ab8ea5d628765664.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_steelmanning_concession_02 -> audio/generated/de-DE/lexical/41dfb79b12f3099c78fd8872b3453a9fd26b6368e8810273ab8ea5d628765664.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d1f97276-6e65-50da-b5d7-dac40665d6eb', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_steelmanning_concession_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6ae678df563b84e3e346d77ef741d99ceb092ff1af8dd9c3c2f9052be7b4e647'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('20c8fdbd-c357-5d6a-a98b-613e56a2f11e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d1f97276-6e65-50da-b5d7-dac40665d6eb', 1), '6ae678df563b84e3e346d77ef741d99ceb092ff1af8dd9c3c2f9052be7b4e647',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/41dfb79b12f3099c78fd8872b3453a9fd26b6368e8810273ab8ea5d628765664.mp3', 1280, '2026-09-13 11:47:02.470629', '33489ff0598a110a8c9df18e864a866064fdc20d41ffac8b15fc220911f6f33b', 'validated', '{"audio_key":"41dfb79b12f3099c78fd8872b3453a9fd26b6368e8810273ab8ea5d628765664","entity_key":"wf_steelmanning_concession_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"33489ff0598a110a8c9df18e864a866064fdc20d41ffac8b15fc220911f6f33b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/41dfb79b12f3099c78fd8872b3453a9fd26b6368e8810273ab8ea5d628765664.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_metaphor_idiom_pragmatic_transfer_04 -> audio/generated/de-DE/lexical/4afa924b0860798537c7940629015181581159fa02de13c46cc7b5688a1b2fd4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('effe2d76-ed57-5f36-b881-211349a956c6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_metaphor_idiom_pragmatic_transfer_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f250d4ad40e39712377a38c94db2f2ae53810c27739daedd0fc7737c31805423'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a891f51d-c317-55cc-9282-365bf4018f12', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('effe2d76-ed57-5f36-b881-211349a956c6', 1), 'f250d4ad40e39712377a38c94db2f2ae53810c27739daedd0fc7737c31805423',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4afa924b0860798537c7940629015181581159fa02de13c46cc7b5688a1b2fd4.mp3', 1253, '2026-09-13 11:47:03.169076', '21296931ebe3d5dfe461a01193e2fac361011cd14b7c9e6b03c0ccd859c8b36a', 'validated', '{"audio_key":"4afa924b0860798537c7940629015181581159fa02de13c46cc7b5688a1b2fd4","entity_key":"lx_metaphor_idiom_pragmatic_transfer_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"21296931ebe3d5dfe461a01193e2fac361011cd14b7c9e6b03c0ccd859c8b36a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4afa924b0860798537c7940629015181581159fa02de13c46cc7b5688a1b2fd4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_metaphor_idiom_pragmatic_transfer_04 -> audio/generated/de-DE/lexical/4afa924b0860798537c7940629015181581159fa02de13c46cc7b5688a1b2fd4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4280d6aa-4771-5bdb-b990-86a83594bc10', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_metaphor_idiom_pragmatic_transfer_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f250d4ad40e39712377a38c94db2f2ae53810c27739daedd0fc7737c31805423'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('26d31b3c-9a26-5390-b1f4-0c098943ff2d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4280d6aa-4771-5bdb-b990-86a83594bc10', 1), 'f250d4ad40e39712377a38c94db2f2ae53810c27739daedd0fc7737c31805423',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4afa924b0860798537c7940629015181581159fa02de13c46cc7b5688a1b2fd4.mp3', 1253, '2026-09-13 11:47:03.169076', '21296931ebe3d5dfe461a01193e2fac361011cd14b7c9e6b03c0ccd859c8b36a', 'validated', '{"audio_key":"4afa924b0860798537c7940629015181581159fa02de13c46cc7b5688a1b2fd4","entity_key":"wf_metaphor_idiom_pragmatic_transfer_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"21296931ebe3d5dfe461a01193e2fac361011cd14b7c9e6b03c0ccd859c8b36a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4afa924b0860798537c7940629015181581159fa02de13c46cc7b5688a1b2fd4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_academic_stance_citation_distance_06 -> audio/generated/de-DE/lexical/4efbb619c41b1132ca038293b33465493223527e692f53d70ec3fe37cc9a1419.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a3429e28-b6c6-50de-9866-5c664da9d5de', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_academic_stance_citation_distance_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '23f0fa72c2c9313c235ac11d0b34d25c5885be3488a095ff5ceeb3beab84021f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6e00d1ca-5568-5d1f-9b2b-5d7e62b81de1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a3429e28-b6c6-50de-9866-5c664da9d5de', 1), '23f0fa72c2c9313c235ac11d0b34d25c5885be3488a095ff5ceeb3beab84021f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4efbb619c41b1132ca038293b33465493223527e692f53d70ec3fe37cc9a1419.mp3', 1201, '2026-09-13 11:47:03.551168', '20027d1a217c71b0ed2298473753c42dc0070ad4d505e6499c5c148f7613b1fb', 'validated', '{"audio_key":"4efbb619c41b1132ca038293b33465493223527e692f53d70ec3fe37cc9a1419","entity_key":"lx_academic_stance_citation_distance_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"20027d1a217c71b0ed2298473753c42dc0070ad4d505e6499c5c148f7613b1fb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4efbb619c41b1132ca038293b33465493223527e692f53d70ec3fe37cc9a1419.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_academic_stance_citation_distance_06 -> audio/generated/de-DE/lexical/4efbb619c41b1132ca038293b33465493223527e692f53d70ec3fe37cc9a1419.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0e20ca93-f355-55a7-ae12-24608fa6f91a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_academic_stance_citation_distance_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '23f0fa72c2c9313c235ac11d0b34d25c5885be3488a095ff5ceeb3beab84021f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('91e1e681-81be-5dc2-95ce-a56dce7e5f5c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0e20ca93-f355-55a7-ae12-24608fa6f91a', 1), '23f0fa72c2c9313c235ac11d0b34d25c5885be3488a095ff5ceeb3beab84021f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4efbb619c41b1132ca038293b33465493223527e692f53d70ec3fe37cc9a1419.mp3', 1201, '2026-09-13 11:47:03.551168', '20027d1a217c71b0ed2298473753c42dc0070ad4d505e6499c5c148f7613b1fb', 'validated', '{"audio_key":"4efbb619c41b1132ca038293b33465493223527e692f53d70ec3fe37cc9a1419","entity_key":"wf_academic_stance_citation_distance_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"20027d1a217c71b0ed2298473753c42dc0070ad4d505e6499c5c148f7613b1fb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4efbb619c41b1132ca038293b33465493223527e692f53d70ec3fe37cc9a1419.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_descriptive_normative_reasoning_02 -> audio/generated/de-DE/lexical/5183a4e62af35989dcdc838c5fc06a544c4cc6127d49d2a118eb2c7549ef7a7e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('45a4076c-27ad-5cc0-bb20-7d193df0beb7', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_descriptive_normative_reasoning_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '07e406b58125e75e37f804a17c09d7fa9985e7b639661cb7647b1a223a5702ac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('893bb837-e319-5d08-abf7-c3871a469719', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('45a4076c-27ad-5cc0-bb20-7d193df0beb7', 1), '07e406b58125e75e37f804a17c09d7fa9985e7b639661cb7647b1a223a5702ac',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5183a4e62af35989dcdc838c5fc06a544c4cc6127d49d2a118eb2c7549ef7a7e.mp3', 1253, '2026-09-13 11:47:04.261232', 'd7852f3784365cf58b0b3fde0d33bdfaabd7ce55978950aca0c073cadf5744f7', 'validated', '{"audio_key":"5183a4e62af35989dcdc838c5fc06a544c4cc6127d49d2a118eb2c7549ef7a7e","entity_key":"lx_descriptive_normative_reasoning_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d7852f3784365cf58b0b3fde0d33bdfaabd7ce55978950aca0c073cadf5744f7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5183a4e62af35989dcdc838c5fc06a544c4cc6127d49d2a118eb2c7549ef7a7e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_descriptive_normative_reasoning_02 -> audio/generated/de-DE/lexical/5183a4e62af35989dcdc838c5fc06a544c4cc6127d49d2a118eb2c7549ef7a7e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a904a2e4-4d5b-56c8-b73d-da76a856b9d6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_descriptive_normative_reasoning_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '07e406b58125e75e37f804a17c09d7fa9985e7b639661cb7647b1a223a5702ac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('be84f62b-2db9-5b4b-a217-df3ca2ec8206', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a904a2e4-4d5b-56c8-b73d-da76a856b9d6', 1), '07e406b58125e75e37f804a17c09d7fa9985e7b639661cb7647b1a223a5702ac',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5183a4e62af35989dcdc838c5fc06a544c4cc6127d49d2a118eb2c7549ef7a7e.mp3', 1253, '2026-09-13 11:47:04.261232', 'd7852f3784365cf58b0b3fde0d33bdfaabd7ce55978950aca0c073cadf5744f7', 'validated', '{"audio_key":"5183a4e62af35989dcdc838c5fc06a544c4cc6127d49d2a118eb2c7549ef7a7e","entity_key":"wf_descriptive_normative_reasoning_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d7852f3784365cf58b0b3fde0d33bdfaabd7ce55978950aca0c073cadf5744f7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5183a4e62af35989dcdc838c5fc06a544c4cc6127d49d2a118eb2c7549ef7a7e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_institutional_register_precision_05 -> audio/generated/de-DE/lexical/51e86883ec446577bc13c92fcea7c0416aac7afbe785a26a47280705a5dac894.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0ad7fa53-c42d-5e70-973a-8397ede8e5f6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_institutional_register_precision_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '28d303176de710f72430be630a7f72b85fcd9c3c865a33a301969dd4d9b3adc7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('67969434-03bd-5aff-ad37-d8e4fdeaf8c6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0ad7fa53-c42d-5e70-973a-8397ede8e5f6', 1), '28d303176de710f72430be630a7f72b85fcd9c3c865a33a301969dd4d9b3adc7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/51e86883ec446577bc13c92fcea7c0416aac7afbe785a26a47280705a5dac894.mp3', 1097, '2026-09-13 11:47:04.657039', '10ea15cab5c57c4ccd912e39915c4d9e78f8d1533570eaf52a245fc271b680d7', 'validated', '{"audio_key":"51e86883ec446577bc13c92fcea7c0416aac7afbe785a26a47280705a5dac894","entity_key":"lx_institutional_register_precision_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"10ea15cab5c57c4ccd912e39915c4d9e78f8d1533570eaf52a245fc271b680d7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/51e86883ec446577bc13c92fcea7c0416aac7afbe785a26a47280705a5dac894.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_institutional_register_precision_05 -> audio/generated/de-DE/lexical/51e86883ec446577bc13c92fcea7c0416aac7afbe785a26a47280705a5dac894.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7ba8a325-a426-5acd-af8b-43ba846386dc', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_institutional_register_precision_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '28d303176de710f72430be630a7f72b85fcd9c3c865a33a301969dd4d9b3adc7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1c09b52f-a9d7-52d3-96ae-2c85d3df6485', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7ba8a325-a426-5acd-af8b-43ba846386dc', 1), '28d303176de710f72430be630a7f72b85fcd9c3c865a33a301969dd4d9b3adc7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/51e86883ec446577bc13c92fcea7c0416aac7afbe785a26a47280705a5dac894.mp3', 1097, '2026-09-13 11:47:04.657039', '10ea15cab5c57c4ccd912e39915c4d9e78f8d1533570eaf52a245fc271b680d7', 'validated', '{"audio_key":"51e86883ec446577bc13c92fcea7c0416aac7afbe785a26a47280705a5dac894","entity_key":"wf_institutional_register_precision_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"10ea15cab5c57c4ccd912e39915c4d9e78f8d1533570eaf52a245fc271b680d7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/51e86883ec446577bc13c92fcea7c0416aac7afbe785a26a47280705a5dac894.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_oral_synthesis_pressure_03 -> audio/generated/de-DE/lexical/570ba59b1429e6c9e2cd4f36ca9d62ef6f46126a03d78529f2541de2856d5e2c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('264130d6-1e39-5ee7-84f5-dbc333c8e69e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_oral_synthesis_pressure_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd599e753044dbca82a81b79c3196896fdfb4f560921f7b934002fd83de4cd398'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5dac5e26-b048-5fda-9fd1-903ef8d69ac7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('264130d6-1e39-5ee7-84f5-dbc333c8e69e', 1), 'd599e753044dbca82a81b79c3196896fdfb4f560921f7b934002fd83de4cd398',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/570ba59b1429e6c9e2cd4f36ca9d62ef6f46126a03d78529f2541de2856d5e2c.mp3', 1149, '2026-09-13 10:21:19.044720', '916e95dffd58ad0e1fb20d2f81616df1b502f53585d46ba92243dff4f883e9f2', 'validated', '{"audio_key":"570ba59b1429e6c9e2cd4f36ca9d62ef6f46126a03d78529f2541de2856d5e2c","entity_key":"lx_oral_synthesis_pressure_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"916e95dffd58ad0e1fb20d2f81616df1b502f53585d46ba92243dff4f883e9f2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/570ba59b1429e6c9e2cd4f36ca9d62ef6f46126a03d78529f2541de2856d5e2c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_oral_synthesis_pressure_03 -> audio/generated/de-DE/lexical/570ba59b1429e6c9e2cd4f36ca9d62ef6f46126a03d78529f2541de2856d5e2c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2595d25e-25d3-5c4c-b878-955ee92a83ae', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_oral_synthesis_pressure_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd599e753044dbca82a81b79c3196896fdfb4f560921f7b934002fd83de4cd398'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1ab6c203-88d2-5828-af8c-83678804785a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2595d25e-25d3-5c4c-b878-955ee92a83ae', 1), 'd599e753044dbca82a81b79c3196896fdfb4f560921f7b934002fd83de4cd398',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/570ba59b1429e6c9e2cd4f36ca9d62ef6f46126a03d78529f2541de2856d5e2c.mp3', 1149, '2026-09-13 10:21:19.044720', '916e95dffd58ad0e1fb20d2f81616df1b502f53585d46ba92243dff4f883e9f2', 'validated', '{"audio_key":"570ba59b1429e6c9e2cd4f36ca9d62ef6f46126a03d78529f2541de2856d5e2c","entity_key":"wf_oral_synthesis_pressure_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"916e95dffd58ad0e1fb20d2f81616df1b502f53585d46ba92243dff4f883e9f2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/570ba59b1429e6c9e2cd4f36ca9d62ef6f46126a03d78529f2541de2856d5e2c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_institutional_register_precision_03 -> audio/generated/de-DE/lexical/5be50387a4ef29c98c2f833c03d49173cbfe187e6727c8466a9864e57d7c54d3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0a4112ff-241d-5f72-9261-1e763d69a03a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_institutional_register_precision_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7ef012db8b6a25b1d21658d420d913ffbc9355746d0af00e2af11e2d9e70bf36'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('70583cd7-3bc1-558d-b60f-dce733c973ae', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0a4112ff-241d-5f72-9261-1e763d69a03a', 1), '7ef012db8b6a25b1d21658d420d913ffbc9355746d0af00e2af11e2d9e70bf36',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5be50387a4ef29c98c2f833c03d49173cbfe187e6727c8466a9864e57d7c54d3.mp3', 1384, '2026-09-13 07:53:16.729947', '63076da153a6573ba4ecaa5a35a882c7665be0686dfc70355bf4749984105aef', 'validated', '{"audio_key":"5be50387a4ef29c98c2f833c03d49173cbfe187e6727c8466a9864e57d7c54d3","entity_key":"lx_institutional_register_precision_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"63076da153a6573ba4ecaa5a35a882c7665be0686dfc70355bf4749984105aef","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5be50387a4ef29c98c2f833c03d49173cbfe187e6727c8466a9864e57d7c54d3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_institutional_register_precision_03 -> audio/generated/de-DE/lexical/5be50387a4ef29c98c2f833c03d49173cbfe187e6727c8466a9864e57d7c54d3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7941ccbb-3181-5ca3-9723-8a072ce9d6ff', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_institutional_register_precision_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7ef012db8b6a25b1d21658d420d913ffbc9355746d0af00e2af11e2d9e70bf36'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('06b4155f-c884-5a19-892d-d7293e21d147', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7941ccbb-3181-5ca3-9723-8a072ce9d6ff', 1), '7ef012db8b6a25b1d21658d420d913ffbc9355746d0af00e2af11e2d9e70bf36',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/5be50387a4ef29c98c2f833c03d49173cbfe187e6727c8466a9864e57d7c54d3.mp3', 1384, '2026-09-13 07:53:16.729947', '63076da153a6573ba4ecaa5a35a882c7665be0686dfc70355bf4749984105aef', 'validated', '{"audio_key":"5be50387a4ef29c98c2f833c03d49173cbfe187e6727c8466a9864e57d7c54d3","entity_key":"wf_institutional_register_precision_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"63076da153a6573ba4ecaa5a35a882c7665be0686dfc70355bf4749984105aef","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/5be50387a4ef29c98c2f833c03d49173cbfe187e6727c8466a9864e57d7c54d3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_judgment_language_capstone_04 -> audio/generated/de-DE/lexical/60c21fb6fda690a8982886016f16945475e4d6c66c6c9acb658a5e4ad02dc99b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('87d4a938-8c34-58f1-8350-ad6147ae9292', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_judgment_language_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2b377b71e1f15c64a03daaeecc23dbf5a26b67d4b4bfaba00291fbad1f412b63'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('204eb9a2-8171-5a8f-9964-444b705502f6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('87d4a938-8c34-58f1-8350-ad6147ae9292', 1), '2b377b71e1f15c64a03daaeecc23dbf5a26b67d4b4bfaba00291fbad1f412b63',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/60c21fb6fda690a8982886016f16945475e4d6c66c6c9acb658a5e4ad02dc99b.mp3', 1332, '2026-09-13 11:47:05.326695', 'a5cd9d2a2f3309ffd566d8dc558da156bf045b9aa40a4e4a62984fab889519f4', 'validated', '{"audio_key":"60c21fb6fda690a8982886016f16945475e4d6c66c6c9acb658a5e4ad02dc99b","entity_key":"lx_judgment_language_capstone_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a5cd9d2a2f3309ffd566d8dc558da156bf045b9aa40a4e4a62984fab889519f4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/60c21fb6fda690a8982886016f16945475e4d6c66c6c9acb658a5e4ad02dc99b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_judgment_language_capstone_04 -> audio/generated/de-DE/lexical/60c21fb6fda690a8982886016f16945475e4d6c66c6c9acb658a5e4ad02dc99b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('99fa6986-f969-5d54-af95-ae060f945715', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_judgment_language_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2b377b71e1f15c64a03daaeecc23dbf5a26b67d4b4bfaba00291fbad1f412b63'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4828cac4-772b-558a-86da-1c87cd083c15', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('99fa6986-f969-5d54-af95-ae060f945715', 1), '2b377b71e1f15c64a03daaeecc23dbf5a26b67d4b4bfaba00291fbad1f412b63',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/60c21fb6fda690a8982886016f16945475e4d6c66c6c9acb658a5e4ad02dc99b.mp3', 1332, '2026-09-13 11:47:05.326695', 'a5cd9d2a2f3309ffd566d8dc558da156bf045b9aa40a4e4a62984fab889519f4', 'validated', '{"audio_key":"60c21fb6fda690a8982886016f16945475e4d6c66c6c9acb658a5e4ad02dc99b","entity_key":"wf_judgment_language_capstone_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a5cd9d2a2f3309ffd566d8dc558da156bf045b9aa40a4e4a62984fab889519f4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/60c21fb6fda690a8982886016f16945475e4d6c66c6c9acb658a5e4ad02dc99b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_principled_disagreement_negotiation_03 -> audio/generated/de-DE/lexical/64ac38d7c685125bb2e84b832289a6b6bed9babcb9ac7d066f379da20ca7f973.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('16acfccd-1e7e-5192-bcb7-7c495b5516fd', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_principled_disagreement_negotiation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cc105a2ad2d8378178371024bb1a1e6fd4551ca5a841e18796537e9b208d0c51'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c573f520-7ccc-5d9e-a5ef-4c4a0499d756', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('16acfccd-1e7e-5192-bcb7-7c495b5516fd', 1), 'cc105a2ad2d8378178371024bb1a1e6fd4551ca5a841e18796537e9b208d0c51',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/64ac38d7c685125bb2e84b832289a6b6bed9babcb9ac7d066f379da20ca7f973.mp3', 1201, '2026-09-13 11:47:05.719266', '977d7198f7ca5e7e4d638f322a358e9e798c154c9d05bc387068f3e43f3d6987', 'validated', '{"audio_key":"64ac38d7c685125bb2e84b832289a6b6bed9babcb9ac7d066f379da20ca7f973","entity_key":"lx_principled_disagreement_negotiation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"977d7198f7ca5e7e4d638f322a358e9e798c154c9d05bc387068f3e43f3d6987","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/64ac38d7c685125bb2e84b832289a6b6bed9babcb9ac7d066f379da20ca7f973.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_principled_disagreement_negotiation_03 -> audio/generated/de-DE/lexical/64ac38d7c685125bb2e84b832289a6b6bed9babcb9ac7d066f379da20ca7f973.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('77dc5fb3-af1c-55d5-85d6-b4f2cf135454', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_principled_disagreement_negotiation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cc105a2ad2d8378178371024bb1a1e6fd4551ca5a841e18796537e9b208d0c51'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c2964b52-e04d-51b4-bd79-516c910c9643', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('77dc5fb3-af1c-55d5-85d6-b4f2cf135454', 1), 'cc105a2ad2d8378178371024bb1a1e6fd4551ca5a841e18796537e9b208d0c51',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/64ac38d7c685125bb2e84b832289a6b6bed9babcb9ac7d066f379da20ca7f973.mp3', 1201, '2026-09-13 11:47:05.719266', '977d7198f7ca5e7e4d638f322a358e9e798c154c9d05bc387068f3e43f3d6987', 'validated', '{"audio_key":"64ac38d7c685125bb2e84b832289a6b6bed9babcb9ac7d066f379da20ca7f973","entity_key":"wf_principled_disagreement_negotiation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"977d7198f7ca5e7e4d638f322a358e9e798c154c9d05bc387068f3e43f3d6987","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/64ac38d7c685125bb2e84b832289a6b6bed9babcb9ac7d066f379da20ca7f973.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_institutional_register_precision_06 -> audio/generated/de-DE/lexical/6b728cb16c2837a348a2c7224fc0f54dc17b152343036da05b44206dd508d442.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('db06a2b7-fe8b-575f-ae67-bd63a82ad2d4', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_institutional_register_precision_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3129831b695f2d4a691ce703bce5688b9a333f17f28542e8adc145516c0dc741'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d7c75e06-346e-5ed1-a1f3-1155051a6d5a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('db06a2b7-fe8b-575f-ae67-bd63a82ad2d4', 1), '3129831b695f2d4a691ce703bce5688b9a333f17f28542e8adc145516c0dc741',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6b728cb16c2837a348a2c7224fc0f54dc17b152343036da05b44206dd508d442.mp3', 1488, '2026-09-13 11:47:06.424228', '85f3905e71a48dbb9f310a6abc299d6420f250a9a9f7051ef1fe4bdde042d77f', 'validated', '{"audio_key":"6b728cb16c2837a348a2c7224fc0f54dc17b152343036da05b44206dd508d442","entity_key":"lx_institutional_register_precision_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"85f3905e71a48dbb9f310a6abc299d6420f250a9a9f7051ef1fe4bdde042d77f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6b728cb16c2837a348a2c7224fc0f54dc17b152343036da05b44206dd508d442.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_institutional_register_precision_06 -> audio/generated/de-DE/lexical/6b728cb16c2837a348a2c7224fc0f54dc17b152343036da05b44206dd508d442.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('10d50670-6ce4-5ff8-8683-681723781f85', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_institutional_register_precision_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3129831b695f2d4a691ce703bce5688b9a333f17f28542e8adc145516c0dc741'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4fbd0c6b-e5b3-54b0-a553-a972baffd2dc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('10d50670-6ce4-5ff8-8683-681723781f85', 1), '3129831b695f2d4a691ce703bce5688b9a333f17f28542e8adc145516c0dc741',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6b728cb16c2837a348a2c7224fc0f54dc17b152343036da05b44206dd508d442.mp3', 1488, '2026-09-13 11:47:06.424228', '85f3905e71a48dbb9f310a6abc299d6420f250a9a9f7051ef1fe4bdde042d77f', 'validated', '{"audio_key":"6b728cb16c2837a348a2c7224fc0f54dc17b152343036da05b44206dd508d442","entity_key":"wf_institutional_register_precision_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"85f3905e71a48dbb9f310a6abc299d6420f250a9a9f7051ef1fe4bdde042d77f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6b728cb16c2837a348a2c7224fc0f54dc17b152343036da05b44206dd508d442.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_academic_stance_citation_distance_02 -> audio/generated/de-DE/lexical/71d2ef53d1d2efe69f370f7186ad6ea6183dfc02188f35f534c0868ff2162085.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5c223628-22a0-5629-84f2-8292cdab25fe', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_academic_stance_citation_distance_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ed44e6e4df915f9ba144596391fc7d1c42cfdafa8e8426266906c5e7b591fe0e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('86a1dcb8-aa33-5691-baed-b45322268958', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5c223628-22a0-5629-84f2-8292cdab25fe', 1), 'ed44e6e4df915f9ba144596391fc7d1c42cfdafa8e8426266906c5e7b591fe0e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/71d2ef53d1d2efe69f370f7186ad6ea6183dfc02188f35f534c0868ff2162085.mp3', 1384, '2026-09-13 11:47:06.858484', 'ec33c8d9b033fdb16a3ebb62599166ed348021cf567ae9536c4441c7cc0c335c', 'validated', '{"audio_key":"71d2ef53d1d2efe69f370f7186ad6ea6183dfc02188f35f534c0868ff2162085","entity_key":"lx_academic_stance_citation_distance_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ec33c8d9b033fdb16a3ebb62599166ed348021cf567ae9536c4441c7cc0c335c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/71d2ef53d1d2efe69f370f7186ad6ea6183dfc02188f35f534c0868ff2162085.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_academic_stance_citation_distance_02 -> audio/generated/de-DE/lexical/71d2ef53d1d2efe69f370f7186ad6ea6183dfc02188f35f534c0868ff2162085.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e174a343-b6d9-5cec-b4f1-2b53fa657a6d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_academic_stance_citation_distance_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ed44e6e4df915f9ba144596391fc7d1c42cfdafa8e8426266906c5e7b591fe0e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('337defdd-9704-5516-b505-787ec0baf2e9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e174a343-b6d9-5cec-b4f1-2b53fa657a6d', 1), 'ed44e6e4df915f9ba144596391fc7d1c42cfdafa8e8426266906c5e7b591fe0e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/71d2ef53d1d2efe69f370f7186ad6ea6183dfc02188f35f534c0868ff2162085.mp3', 1384, '2026-09-13 11:47:06.858484', 'ec33c8d9b033fdb16a3ebb62599166ed348021cf567ae9536c4441c7cc0c335c', 'validated', '{"audio_key":"71d2ef53d1d2efe69f370f7186ad6ea6183dfc02188f35f534c0868ff2162085","entity_key":"wf_academic_stance_citation_distance_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ec33c8d9b033fdb16a3ebb62599166ed348021cf567ae9536c4441c7cc0c335c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/71d2ef53d1d2efe69f370f7186ad6ea6183dfc02188f35f534c0868ff2162085.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_descriptive_normative_reasoning_03 -> audio/generated/de-DE/lexical/75abf6124267a392dee4d82b83f0d71f9f5d4e8446d1c785ac858886932cfaf4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a4cbcca9-658a-5d40-aaa7-7905f5f8f0f9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_descriptive_normative_reasoning_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '37e05a0b548f5513c77a41082e9bc2e81a33adf7fa41f1728b030d61070e8373'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('95508873-cc29-5753-ba3f-e2d6cf36a2e6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a4cbcca9-658a-5d40-aaa7-7905f5f8f0f9', 1), '37e05a0b548f5513c77a41082e9bc2e81a33adf7fa41f1728b030d61070e8373',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/75abf6124267a392dee4d82b83f0d71f9f5d4e8446d1c785ac858886932cfaf4.mp3', 1201, '2026-09-13 11:47:07.537502', '79bde386dce99eb3aaf187cda447f38e3386f9e3dd400973d1e17bf03bdfd343', 'validated', '{"audio_key":"75abf6124267a392dee4d82b83f0d71f9f5d4e8446d1c785ac858886932cfaf4","entity_key":"lx_descriptive_normative_reasoning_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"79bde386dce99eb3aaf187cda447f38e3386f9e3dd400973d1e17bf03bdfd343","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/75abf6124267a392dee4d82b83f0d71f9f5d4e8446d1c785ac858886932cfaf4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_descriptive_normative_reasoning_03 -> audio/generated/de-DE/lexical/75abf6124267a392dee4d82b83f0d71f9f5d4e8446d1c785ac858886932cfaf4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ae2e139c-b52a-56cc-a72f-ddb0452533f2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_descriptive_normative_reasoning_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '37e05a0b548f5513c77a41082e9bc2e81a33adf7fa41f1728b030d61070e8373'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('226e2d71-634d-50f5-8c56-3cd0b4d6d27e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ae2e139c-b52a-56cc-a72f-ddb0452533f2', 1), '37e05a0b548f5513c77a41082e9bc2e81a33adf7fa41f1728b030d61070e8373',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/75abf6124267a392dee4d82b83f0d71f9f5d4e8446d1c785ac858886932cfaf4.mp3', 1201, '2026-09-13 11:47:07.537502', '79bde386dce99eb3aaf187cda447f38e3386f9e3dd400973d1e17bf03bdfd343', 'validated', '{"audio_key":"75abf6124267a392dee4d82b83f0d71f9f5d4e8446d1c785ac858886932cfaf4","entity_key":"wf_descriptive_normative_reasoning_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"79bde386dce99eb3aaf187cda447f38e3386f9e3dd400973d1e17bf03bdfd343","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/75abf6124267a392dee4d82b83f0d71f9f5d4e8446d1c785ac858886932cfaf4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_presupposition_accommodation_02 -> audio/generated/de-DE/lexical/7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('02119228-1f23-5439-916d-bb17852aab55', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_presupposition_accommodation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '88f1b9555864d6b30b444277c2905aa5ee68a812cfa1937ccd718e094336d68b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8136e613-5df0-527b-ae0c-229f283a4409', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('02119228-1f23-5439-916d-bb17852aab55', 1), '88f1b9555864d6b30b444277c2905aa5ee68a812cfa1937ccd718e094336d68b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a.mp3', 1332, '2026-09-13 06:17:34.057551', '6241bc03d1f54abf4eec43d5e817a4f57f4c05a907442bcf8950c2b6a8c12c67', 'validated', '{"audio_key":"7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a","entity_key":"lx_presupposition_accommodation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6241bc03d1f54abf4eec43d5e817a4f57f4c05a907442bcf8950c2b6a8c12c67","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_presupposition_accommodation_02 -> audio/generated/de-DE/lexical/7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ba8d7ebf-c539-55b7-a843-f7941e8b2ec3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_presupposition_accommodation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '88f1b9555864d6b30b444277c2905aa5ee68a812cfa1937ccd718e094336d68b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f12087e6-02da-58a3-b6a0-256fa2143494', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ba8d7ebf-c539-55b7-a843-f7941e8b2ec3', 1), '88f1b9555864d6b30b444277c2905aa5ee68a812cfa1937ccd718e094336d68b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a.mp3', 1332, '2026-09-13 06:17:34.057551', '6241bc03d1f54abf4eec43d5e817a4f57f4c05a907442bcf8950c2b6a8c12c67', 'validated', '{"audio_key":"7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a","entity_key":"wf_presupposition_accommodation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6241bc03d1f54abf4eec43d5e817a4f57f4c05a907442bcf8950c2b6a8c12c67","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_descriptive_normative_reasoning_06 -> audio/generated/de-DE/lexical/7da18b8aca5a1a1e26818d6c84fcb4b4d63419ee7788d711ac18b4c4d40091fd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('df71ef88-50a4-5319-910f-82c78b6476ab', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_descriptive_normative_reasoning_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bcc199adc32b2d7887415300f969f71fed5ab4e73a492bc7946fe00d75d6c516'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7c91ff41-cccd-574f-b104-14d6706965d1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('df71ef88-50a4-5319-910f-82c78b6476ab', 1), 'bcc199adc32b2d7887415300f969f71fed5ab4e73a492bc7946fe00d75d6c516',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7da18b8aca5a1a1e26818d6c84fcb4b4d63419ee7788d711ac18b4c4d40091fd.mp3', 1332, '2026-09-13 11:47:07.946286', '53b933fdf39764775bdf5a0b5912648fbc5b8967c70aecb34a0664ba17c9f37f', 'validated', '{"audio_key":"7da18b8aca5a1a1e26818d6c84fcb4b4d63419ee7788d711ac18b4c4d40091fd","entity_key":"lx_descriptive_normative_reasoning_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"53b933fdf39764775bdf5a0b5912648fbc5b8967c70aecb34a0664ba17c9f37f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7da18b8aca5a1a1e26818d6c84fcb4b4d63419ee7788d711ac18b4c4d40091fd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_descriptive_normative_reasoning_06 -> audio/generated/de-DE/lexical/7da18b8aca5a1a1e26818d6c84fcb4b4d63419ee7788d711ac18b4c4d40091fd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('88e51674-f8f8-520e-ba3d-da644e8a1ae2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_descriptive_normative_reasoning_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bcc199adc32b2d7887415300f969f71fed5ab4e73a492bc7946fe00d75d6c516'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e7990a44-7c3b-55b5-9891-59eb132fa20c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('88e51674-f8f8-520e-ba3d-da644e8a1ae2', 1), 'bcc199adc32b2d7887415300f969f71fed5ab4e73a492bc7946fe00d75d6c516',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7da18b8aca5a1a1e26818d6c84fcb4b4d63419ee7788d711ac18b4c4d40091fd.mp3', 1332, '2026-09-13 11:47:07.946286', '53b933fdf39764775bdf5a0b5912648fbc5b8967c70aecb34a0664ba17c9f37f', 'validated', '{"audio_key":"7da18b8aca5a1a1e26818d6c84fcb4b4d63419ee7788d711ac18b4c4d40091fd","entity_key":"wf_descriptive_normative_reasoning_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"53b933fdf39764775bdf5a0b5912648fbc5b8967c70aecb34a0664ba17c9f37f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7da18b8aca5a1a1e26818d6c84fcb4b4d63419ee7788d711ac18b4c4d40091fd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_academic_stance_citation_distance_01 -> audio/generated/de-DE/lexical/80c26a58f55c171d0c35bc97af445d2da6ce09bfe978293787bf2683ba759b98.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('315b7675-2d91-5b45-b36e-367154975787', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_academic_stance_citation_distance_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a12fc53e316b25f7342775d5af5c9415f5e1537938bd8c78f712ceece067d95f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eb8235c4-bb88-5db5-8eb0-10f9474f11f4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('315b7675-2d91-5b45-b36e-367154975787', 1), 'a12fc53e316b25f7342775d5af5c9415f5e1537938bd8c78f712ceece067d95f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/80c26a58f55c171d0c35bc97af445d2da6ce09bfe978293787bf2683ba759b98.mp3', 1384, '2026-09-13 11:47:08.677431', '0babd9b5159d5c943375d83f73890fa4f0319cb65413b7d9a5b71fcf3b6a0e35', 'validated', '{"audio_key":"80c26a58f55c171d0c35bc97af445d2da6ce09bfe978293787bf2683ba759b98","entity_key":"lx_academic_stance_citation_distance_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0babd9b5159d5c943375d83f73890fa4f0319cb65413b7d9a5b71fcf3b6a0e35","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/80c26a58f55c171d0c35bc97af445d2da6ce09bfe978293787bf2683ba759b98.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_academic_stance_citation_distance_01 -> audio/generated/de-DE/lexical/80c26a58f55c171d0c35bc97af445d2da6ce09bfe978293787bf2683ba759b98.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1428ebb3-0c3e-53a5-a049-dc8ff81284e6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_academic_stance_citation_distance_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a12fc53e316b25f7342775d5af5c9415f5e1537938bd8c78f712ceece067d95f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b1c76c3b-d604-5c85-84ec-b378f1d125e0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1428ebb3-0c3e-53a5-a049-dc8ff81284e6', 1), 'a12fc53e316b25f7342775d5af5c9415f5e1537938bd8c78f712ceece067d95f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/80c26a58f55c171d0c35bc97af445d2da6ce09bfe978293787bf2683ba759b98.mp3', 1384, '2026-09-13 11:47:08.677431', '0babd9b5159d5c943375d83f73890fa4f0319cb65413b7d9a5b71fcf3b6a0e35', 'validated', '{"audio_key":"80c26a58f55c171d0c35bc97af445d2da6ce09bfe978293787bf2683ba759b98","entity_key":"wf_academic_stance_citation_distance_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0babd9b5159d5c943375d83f73890fa4f0319cb65413b7d9a5b71fcf3b6a0e35","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/80c26a58f55c171d0c35bc97af445d2da6ce09bfe978293787bf2683ba759b98.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_judgment_language_capstone_02 -> audio/generated/de-DE/lexical/8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5af071bf-840c-5a33-9699-c0cc0f8390f6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_judgment_language_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8740d5d37f564796bffd624f43744a7098cbfa6ca1ad7f64c5aafce0e3272f22'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bdf3c5b5-da10-5ad4-8e77-79e964d5b3a8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5af071bf-840c-5a33-9699-c0cc0f8390f6', 1), '8740d5d37f564796bffd624f43744a7098cbfa6ca1ad7f64c5aafce0e3272f22',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313.mp3', 1071, '2026-09-13 08:16:38.902185', 'c7e085e9a23fad8636cb1f8fa4b42d44d22deee90041e72c0ed98952ff258af9', 'validated', '{"audio_key":"8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313","entity_key":"lx_judgment_language_capstone_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c7e085e9a23fad8636cb1f8fa4b42d44d22deee90041e72c0ed98952ff258af9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_judgment_language_capstone_02 -> audio/generated/de-DE/lexical/8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2b78bebc-d265-5265-8b93-2c0a12d820e1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_judgment_language_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8740d5d37f564796bffd624f43744a7098cbfa6ca1ad7f64c5aafce0e3272f22'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4e338b9e-2e6a-59a1-8d46-ccd3bb6ba840', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2b78bebc-d265-5265-8b93-2c0a12d820e1', 1), '8740d5d37f564796bffd624f43744a7098cbfa6ca1ad7f64c5aafce0e3272f22',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313.mp3', 1071, '2026-09-13 08:16:38.902185', 'c7e085e9a23fad8636cb1f8fa4b42d44d22deee90041e72c0ed98952ff258af9', 'validated', '{"audio_key":"8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313","entity_key":"wf_judgment_language_capstone_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c7e085e9a23fad8636cb1f8fa4b42d44d22deee90041e72c0ed98952ff258af9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_narrative_perspective_temporal_control_02 -> audio/generated/de-DE/lexical/8f56a71bb050a0d45037e7510c4cb52da4e9087eabc535c52f27946e524627c2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ec7741f4-6280-52dd-aee4-ce623a98ef08', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_narrative_perspective_temporal_control_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fc3085d7e2eb9ffbe6ad3f8c152af24bde0a515cb599d54ec13fc7723e03c361'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('30404d9d-818d-5fb3-a090-1a18445da4ba', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ec7741f4-6280-52dd-aee4-ce623a98ef08', 1), 'fc3085d7e2eb9ffbe6ad3f8c152af24bde0a515cb599d54ec13fc7723e03c361',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8f56a71bb050a0d45037e7510c4cb52da4e9087eabc535c52f27946e524627c2.mp3', 966, '2026-09-13 11:47:08.960985', '154af294aabce10976367cca5bf555e28c59942b6866daba8b9d2064db7705a5', 'validated', '{"audio_key":"8f56a71bb050a0d45037e7510c4cb52da4e9087eabc535c52f27946e524627c2","entity_key":"lx_narrative_perspective_temporal_control_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"154af294aabce10976367cca5bf555e28c59942b6866daba8b9d2064db7705a5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8f56a71bb050a0d45037e7510c4cb52da4e9087eabc535c52f27946e524627c2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_narrative_perspective_temporal_control_02 -> audio/generated/de-DE/lexical/8f56a71bb050a0d45037e7510c4cb52da4e9087eabc535c52f27946e524627c2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e624e26d-7008-5b7d-8e58-a2c90597e1a0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_narrative_perspective_temporal_control_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fc3085d7e2eb9ffbe6ad3f8c152af24bde0a515cb599d54ec13fc7723e03c361'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('21d1aab3-df23-5b97-96b6-1f64027deb01', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e624e26d-7008-5b7d-8e58-a2c90597e1a0', 1), 'fc3085d7e2eb9ffbe6ad3f8c152af24bde0a515cb599d54ec13fc7723e03c361',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8f56a71bb050a0d45037e7510c4cb52da4e9087eabc535c52f27946e524627c2.mp3', 966, '2026-09-13 11:47:08.960985', '154af294aabce10976367cca5bf555e28c59942b6866daba8b9d2064db7705a5', 'validated', '{"audio_key":"8f56a71bb050a0d45037e7510c4cb52da4e9087eabc535c52f27946e524627c2","entity_key":"wf_narrative_perspective_temporal_control_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"154af294aabce10976367cca5bf555e28c59942b6866daba8b9d2064db7705a5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8f56a71bb050a0d45037e7510c4cb52da4e9087eabc535c52f27946e524627c2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_principled_disagreement_negotiation_04 -> audio/generated/de-DE/lexical/946c0ce7da483e64166c289813572d4ddc16f0a02a8f841f2867b07d5f2d96ac.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4ec25454-e825-582d-82e2-82d5f93f8a59', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_principled_disagreement_negotiation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '52af7419970f8f2647e760f7c6f89b1e69ddcdf266a715eec08c57bda1134e0c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7bc2cab9-0c75-5a00-9f4a-8536cc530cb7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4ec25454-e825-582d-82e2-82d5f93f8a59', 1), '52af7419970f8f2647e760f7c6f89b1e69ddcdf266a715eec08c57bda1134e0c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/946c0ce7da483e64166c289813572d4ddc16f0a02a8f841f2867b07d5f2d96ac.mp3', 1201, '2026-09-13 11:47:09.761708', 'd84bf20833f62112963d0e2a28d733a20983d1063c574231be53495743dea7d4', 'validated', '{"audio_key":"946c0ce7da483e64166c289813572d4ddc16f0a02a8f841f2867b07d5f2d96ac","entity_key":"lx_principled_disagreement_negotiation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d84bf20833f62112963d0e2a28d733a20983d1063c574231be53495743dea7d4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/946c0ce7da483e64166c289813572d4ddc16f0a02a8f841f2867b07d5f2d96ac.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_principled_disagreement_negotiation_04 -> audio/generated/de-DE/lexical/946c0ce7da483e64166c289813572d4ddc16f0a02a8f841f2867b07d5f2d96ac.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ed91f6fb-680e-5b62-b65f-6ed719c483d3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_principled_disagreement_negotiation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '52af7419970f8f2647e760f7c6f89b1e69ddcdf266a715eec08c57bda1134e0c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a2b41e41-0a64-5886-90f0-b671bc2af397', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ed91f6fb-680e-5b62-b65f-6ed719c483d3', 1), '52af7419970f8f2647e760f7c6f89b1e69ddcdf266a715eec08c57bda1134e0c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/946c0ce7da483e64166c289813572d4ddc16f0a02a8f841f2867b07d5f2d96ac.mp3', 1201, '2026-09-13 11:47:09.761708', 'd84bf20833f62112963d0e2a28d733a20983d1063c574231be53495743dea7d4', 'validated', '{"audio_key":"946c0ce7da483e64166c289813572d4ddc16f0a02a8f841f2867b07d5f2d96ac","entity_key":"wf_principled_disagreement_negotiation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d84bf20833f62112963d0e2a28d733a20983d1063c574231be53495743dea7d4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/946c0ce7da483e64166c289813572d4ddc16f0a02a8f841f2867b07d5f2d96ac.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_judgment_language_capstone_01 -> audio/generated/de-DE/lexical/9c550927c2ad22332ef4763e85d055f906e0c2eb3b6aec0c0e36e93ce570d9e9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6348a79b-37e9-5423-b597-fcc16f357d9f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_judgment_language_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6b96b4c29f9dc5df281ab4df6438dca98c75c835758cfdec26d1d9fe24779549'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a2d6cd34-f145-599c-8053-df865db0fe31', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6348a79b-37e9-5423-b597-fcc16f357d9f', 1), '6b96b4c29f9dc5df281ab4df6438dca98c75c835758cfdec26d1d9fe24779549',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9c550927c2ad22332ef4763e85d055f906e0c2eb3b6aec0c0e36e93ce570d9e9.mp3', 1253, '2026-09-13 11:01:16.600251', '75d87fcc3fac933cfefdcde8809dbbbb9bbbb1af4d1bc401fb9a6fddf63bb567', 'validated', '{"audio_key":"9c550927c2ad22332ef4763e85d055f906e0c2eb3b6aec0c0e36e93ce570d9e9","entity_key":"lx_judgment_language_capstone_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"75d87fcc3fac933cfefdcde8809dbbbb9bbbb1af4d1bc401fb9a6fddf63bb567","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9c550927c2ad22332ef4763e85d055f906e0c2eb3b6aec0c0e36e93ce570d9e9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_judgment_language_capstone_01 -> audio/generated/de-DE/lexical/9c550927c2ad22332ef4763e85d055f906e0c2eb3b6aec0c0e36e93ce570d9e9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('859df36e-63e7-51c9-876b-b55253910fda', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_judgment_language_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6b96b4c29f9dc5df281ab4df6438dca98c75c835758cfdec26d1d9fe24779549'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d4779fe0-cb35-5bb9-87e9-a3a473ee3431', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('859df36e-63e7-51c9-876b-b55253910fda', 1), '6b96b4c29f9dc5df281ab4df6438dca98c75c835758cfdec26d1d9fe24779549',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9c550927c2ad22332ef4763e85d055f906e0c2eb3b6aec0c0e36e93ce570d9e9.mp3', 1253, '2026-09-13 11:01:16.600251', '75d87fcc3fac933cfefdcde8809dbbbb9bbbb1af4d1bc401fb9a6fddf63bb567', 'validated', '{"audio_key":"9c550927c2ad22332ef4763e85d055f906e0c2eb3b6aec0c0e36e93ce570d9e9","entity_key":"wf_judgment_language_capstone_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"75d87fcc3fac933cfefdcde8809dbbbb9bbbb1af4d1bc401fb9a6fddf63bb567","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9c550927c2ad22332ef4763e85d055f906e0c2eb3b6aec0c0e36e93ce570d9e9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_descriptive_normative_reasoning_05 -> audio/generated/de-DE/lexical/9ed10153d81c03e29d2d934d146618113bd78b437c2a30bbac4ddcd310341035.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d0f40d5f-a6c9-5adc-a9b2-e9e7149b4daa', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_descriptive_normative_reasoning_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f0e48cd1c8a4025f93b07888b4eb15f7a5a6f986e69a1a7f458336555ae095ff'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f1e7f5cf-4e90-5a8d-91c4-966674150240', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d0f40d5f-a6c9-5adc-a9b2-e9e7149b4daa', 1), 'f0e48cd1c8a4025f93b07888b4eb15f7a5a6f986e69a1a7f458336555ae095ff',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9ed10153d81c03e29d2d934d146618113bd78b437c2a30bbac4ddcd310341035.mp3', 1071, '2026-09-13 09:41:02.311806', 'd266869a5b7dad5f578d3f3d8a98e17368f4340a235e86e72b550a29e3427dad', 'validated', '{"audio_key":"9ed10153d81c03e29d2d934d146618113bd78b437c2a30bbac4ddcd310341035","entity_key":"lx_descriptive_normative_reasoning_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d266869a5b7dad5f578d3f3d8a98e17368f4340a235e86e72b550a29e3427dad","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9ed10153d81c03e29d2d934d146618113bd78b437c2a30bbac4ddcd310341035.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_descriptive_normative_reasoning_05 -> audio/generated/de-DE/lexical/9ed10153d81c03e29d2d934d146618113bd78b437c2a30bbac4ddcd310341035.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b6c086f4-f6b6-542c-a1da-737b9d883562', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_descriptive_normative_reasoning_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f0e48cd1c8a4025f93b07888b4eb15f7a5a6f986e69a1a7f458336555ae095ff'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('be8dfb36-ac18-5fdc-9f1d-fee57f1a3048', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b6c086f4-f6b6-542c-a1da-737b9d883562', 1), 'f0e48cd1c8a4025f93b07888b4eb15f7a5a6f986e69a1a7f458336555ae095ff',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9ed10153d81c03e29d2d934d146618113bd78b437c2a30bbac4ddcd310341035.mp3', 1071, '2026-09-13 09:41:02.311806', 'd266869a5b7dad5f578d3f3d8a98e17368f4340a235e86e72b550a29e3427dad', 'validated', '{"audio_key":"9ed10153d81c03e29d2d934d146618113bd78b437c2a30bbac4ddcd310341035","entity_key":"wf_descriptive_normative_reasoning_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d266869a5b7dad5f578d3f3d8a98e17368f4340a235e86e72b550a29e3427dad","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9ed10153d81c03e29d2d934d146618113bd78b437c2a30bbac4ddcd310341035.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_institutional_register_precision_01 -> audio/generated/de-DE/lexical/a40ce4730b9f3865b6c7e45d614bddb89347b58549cf500a2cbf4e0314e9fede.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('18d26662-8109-5c9a-a866-abc42d07fb06', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_institutional_register_precision_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '90872e364d62609ccf060f779201121864fa2cc349545c5b4d209b85a4620120'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5663ecd3-8673-5288-96c3-97863e9fa771', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('18d26662-8109-5c9a-a866-abc42d07fb06', 1), '90872e364d62609ccf060f779201121864fa2cc349545c5b4d209b85a4620120',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a40ce4730b9f3865b6c7e45d614bddb89347b58549cf500a2cbf4e0314e9fede.mp3', 1384, '2026-09-13 09:41:03.346911', 'c865ae64260435bf7145891b8662f4495a052d7155c575c509f205178c298082', 'validated', '{"audio_key":"a40ce4730b9f3865b6c7e45d614bddb89347b58549cf500a2cbf4e0314e9fede","entity_key":"lx_institutional_register_precision_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c865ae64260435bf7145891b8662f4495a052d7155c575c509f205178c298082","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a40ce4730b9f3865b6c7e45d614bddb89347b58549cf500a2cbf4e0314e9fede.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_institutional_register_precision_01 -> audio/generated/de-DE/lexical/a40ce4730b9f3865b6c7e45d614bddb89347b58549cf500a2cbf4e0314e9fede.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6dc3dad8-5a7e-5d98-be69-ae8e326f6703', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_institutional_register_precision_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '90872e364d62609ccf060f779201121864fa2cc349545c5b4d209b85a4620120'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('09459c37-1861-5371-adca-b2eeedda0efa', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6dc3dad8-5a7e-5d98-be69-ae8e326f6703', 1), '90872e364d62609ccf060f779201121864fa2cc349545c5b4d209b85a4620120',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a40ce4730b9f3865b6c7e45d614bddb89347b58549cf500a2cbf4e0314e9fede.mp3', 1384, '2026-09-13 09:41:03.346911', 'c865ae64260435bf7145891b8662f4495a052d7155c575c509f205178c298082', 'validated', '{"audio_key":"a40ce4730b9f3865b6c7e45d614bddb89347b58549cf500a2cbf4e0314e9fede","entity_key":"wf_institutional_register_precision_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c865ae64260435bf7145891b8662f4495a052d7155c575c509f205178c298082","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a40ce4730b9f3865b6c7e45d614bddb89347b58549cf500a2cbf4e0314e9fede.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_narrative_perspective_temporal_control_03 -> audio/generated/de-DE/lexical/aeb8917ac6848800ff3114bee69f85b1eacf179cad14c66710fdc416dfa83e47.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('58f83d9f-1b57-50a6-8c4a-abfa58ad2497', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_narrative_perspective_temporal_control_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4ded211bbc9306525802fb423704f95b6c33512654dc75076be39427ad75f8d3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4c93c1df-a21e-54de-ae7d-9cd68801b390', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('58f83d9f-1b57-50a6-8c4a-abfa58ad2497', 1), '4ded211bbc9306525802fb423704f95b6c33512654dc75076be39427ad75f8d3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/aeb8917ac6848800ff3114bee69f85b1eacf179cad14c66710fdc416dfa83e47.mp3', 1488, '2026-09-13 11:47:10.126748', '5fe5f0109beb99f03ba55c5a38abdacd4210b9b9efa0eb7af23a06e49a38f06b', 'validated', '{"audio_key":"aeb8917ac6848800ff3114bee69f85b1eacf179cad14c66710fdc416dfa83e47","entity_key":"lx_narrative_perspective_temporal_control_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5fe5f0109beb99f03ba55c5a38abdacd4210b9b9efa0eb7af23a06e49a38f06b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/aeb8917ac6848800ff3114bee69f85b1eacf179cad14c66710fdc416dfa83e47.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_narrative_perspective_temporal_control_03 -> audio/generated/de-DE/lexical/aeb8917ac6848800ff3114bee69f85b1eacf179cad14c66710fdc416dfa83e47.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7453fb8a-4a07-50b2-bf82-73cc8bf1ab0b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_narrative_perspective_temporal_control_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4ded211bbc9306525802fb423704f95b6c33512654dc75076be39427ad75f8d3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6cd9c0bb-3e21-5eb4-b060-1e72c78bdaac', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7453fb8a-4a07-50b2-bf82-73cc8bf1ab0b', 1), '4ded211bbc9306525802fb423704f95b6c33512654dc75076be39427ad75f8d3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/aeb8917ac6848800ff3114bee69f85b1eacf179cad14c66710fdc416dfa83e47.mp3', 1488, '2026-09-13 11:47:10.126748', '5fe5f0109beb99f03ba55c5a38abdacd4210b9b9efa0eb7af23a06e49a38f06b', 'validated', '{"audio_key":"aeb8917ac6848800ff3114bee69f85b1eacf179cad14c66710fdc416dfa83e47","entity_key":"wf_narrative_perspective_temporal_control_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5fe5f0109beb99f03ba55c5a38abdacd4210b9b9efa0eb7af23a06e49a38f06b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/aeb8917ac6848800ff3114bee69f85b1eacf179cad14c66710fdc416dfa83e47.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_descriptive_normative_reasoning_04 -> audio/generated/de-DE/lexical/b561108ba413f8848c7f1d9fca777a6a0d9c238dc8888bb9ad7e515cbbf2b8e3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a3a5e4de-cc0c-5d0d-aaf1-5513313fb341', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_descriptive_normative_reasoning_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fb8c3ff8024a7c5c758326686ddde69dd60845b2eaba6737dab04bbe7c119a84'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b467fcb6-a25f-5a3e-b805-0c8d2a213f80', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a3a5e4de-cc0c-5d0d-aaf1-5513313fb341', 1), 'fb8c3ff8024a7c5c758326686ddde69dd60845b2eaba6737dab04bbe7c119a84',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b561108ba413f8848c7f1d9fca777a6a0d9c238dc8888bb9ad7e515cbbf2b8e3.mp3', 1332, '2026-09-13 11:47:10.847697', '440d575db750a2033768e1571ac303d2a1798bdd463b4aa52d7b702437affa34', 'validated', '{"audio_key":"b561108ba413f8848c7f1d9fca777a6a0d9c238dc8888bb9ad7e515cbbf2b8e3","entity_key":"lx_descriptive_normative_reasoning_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"440d575db750a2033768e1571ac303d2a1798bdd463b4aa52d7b702437affa34","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b561108ba413f8848c7f1d9fca777a6a0d9c238dc8888bb9ad7e515cbbf2b8e3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_descriptive_normative_reasoning_04 -> audio/generated/de-DE/lexical/b561108ba413f8848c7f1d9fca777a6a0d9c238dc8888bb9ad7e515cbbf2b8e3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b9265387-95c1-5ba0-af31-e1de3131a583', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_descriptive_normative_reasoning_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fb8c3ff8024a7c5c758326686ddde69dd60845b2eaba6737dab04bbe7c119a84'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7f75ec36-7a18-5394-94cf-18c0d3d887f0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b9265387-95c1-5ba0-af31-e1de3131a583', 1), 'fb8c3ff8024a7c5c758326686ddde69dd60845b2eaba6737dab04bbe7c119a84',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b561108ba413f8848c7f1d9fca777a6a0d9c238dc8888bb9ad7e515cbbf2b8e3.mp3', 1332, '2026-09-13 11:47:10.847697', '440d575db750a2033768e1571ac303d2a1798bdd463b4aa52d7b702437affa34', 'validated', '{"audio_key":"b561108ba413f8848c7f1d9fca777a6a0d9c238dc8888bb9ad7e515cbbf2b8e3","entity_key":"wf_descriptive_normative_reasoning_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"440d575db750a2033768e1571ac303d2a1798bdd463b4aa52d7b702437affa34","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b561108ba413f8848c7f1d9fca777a6a0d9c238dc8888bb9ad7e515cbbf2b8e3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_steelmanning_concession_06 -> audio/generated/de-DE/lexical/b5a428a3d84e01b5c57befc81679d943c9702d910c18cf6b80cf0edf2b108e8d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3c805057-2d2a-5f54-8568-b3a360469fcc', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_steelmanning_concession_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0f54a2ecac2d29805732a95cde3774cb1b869da902ee94449963cc344a4c2c98'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5ef2fead-4f42-5299-acd0-64d78b6363e7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3c805057-2d2a-5f54-8568-b3a360469fcc', 1), '0f54a2ecac2d29805732a95cde3774cb1b869da902ee94449963cc344a4c2c98',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b5a428a3d84e01b5c57befc81679d943c9702d910c18cf6b80cf0edf2b108e8d.mp3', 1097, '2026-09-13 11:47:11.164213', 'b1a5de205296e1e8354f6b99e1578a27b64baa3df26c94433c87d3b292fa9dc6', 'validated', '{"audio_key":"b5a428a3d84e01b5c57befc81679d943c9702d910c18cf6b80cf0edf2b108e8d","entity_key":"lx_steelmanning_concession_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b1a5de205296e1e8354f6b99e1578a27b64baa3df26c94433c87d3b292fa9dc6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b5a428a3d84e01b5c57befc81679d943c9702d910c18cf6b80cf0edf2b108e8d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_steelmanning_concession_06 -> audio/generated/de-DE/lexical/b5a428a3d84e01b5c57befc81679d943c9702d910c18cf6b80cf0edf2b108e8d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f1870456-bbfd-5946-9a05-adacbedb02d7', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_steelmanning_concession_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0f54a2ecac2d29805732a95cde3774cb1b869da902ee94449963cc344a4c2c98'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('290a8410-f990-5189-909e-5418c2963b29', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f1870456-bbfd-5946-9a05-adacbedb02d7', 1), '0f54a2ecac2d29805732a95cde3774cb1b869da902ee94449963cc344a4c2c98',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b5a428a3d84e01b5c57befc81679d943c9702d910c18cf6b80cf0edf2b108e8d.mp3', 1097, '2026-09-13 11:47:11.164213', 'b1a5de205296e1e8354f6b99e1578a27b64baa3df26c94433c87d3b292fa9dc6', 'validated', '{"audio_key":"b5a428a3d84e01b5c57befc81679d943c9702d910c18cf6b80cf0edf2b108e8d","entity_key":"wf_steelmanning_concession_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b1a5de205296e1e8354f6b99e1578a27b64baa3df26c94433c87d3b292fa9dc6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b5a428a3d84e01b5c57befc81679d943c9702d910c18cf6b80cf0edf2b108e8d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_institutional_register_precision_02 -> audio/generated/de-DE/lexical/b8c9b23f12307b1c663a27f03904398e9fd715332035899f5645b1a689fab860.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a85bf450-bb37-5263-b1c4-13ab6de4a8e5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_institutional_register_precision_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '963ce885a0574a7d66c67301f920684c82412132da379e733d4d650e7229b93a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2d9ef754-4a3f-5ffc-b1a9-a1701bd541d0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a85bf450-bb37-5263-b1c4-13ab6de4a8e5', 1), '963ce885a0574a7d66c67301f920684c82412132da379e733d4d650e7229b93a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b8c9b23f12307b1c663a27f03904398e9fd715332035899f5645b1a689fab860.mp3', 1280, '2026-09-13 10:01:12.191034', '3442164691c8ddab4e1285abc2356107c3a055827889db640b83fa4d583da527', 'validated', '{"audio_key":"b8c9b23f12307b1c663a27f03904398e9fd715332035899f5645b1a689fab860","entity_key":"lx_institutional_register_precision_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3442164691c8ddab4e1285abc2356107c3a055827889db640b83fa4d583da527","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b8c9b23f12307b1c663a27f03904398e9fd715332035899f5645b1a689fab860.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_institutional_register_precision_02 -> audio/generated/de-DE/lexical/b8c9b23f12307b1c663a27f03904398e9fd715332035899f5645b1a689fab860.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2ef65447-97dc-5b3c-bb14-db7871eda231', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_institutional_register_precision_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '963ce885a0574a7d66c67301f920684c82412132da379e733d4d650e7229b93a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7f6c2556-21f8-57ea-a747-304b8230843f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2ef65447-97dc-5b3c-bb14-db7871eda231', 1), '963ce885a0574a7d66c67301f920684c82412132da379e733d4d650e7229b93a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b8c9b23f12307b1c663a27f03904398e9fd715332035899f5645b1a689fab860.mp3', 1280, '2026-09-13 10:01:12.191034', '3442164691c8ddab4e1285abc2356107c3a055827889db640b83fa4d583da527', 'validated', '{"audio_key":"b8c9b23f12307b1c663a27f03904398e9fd715332035899f5645b1a689fab860","entity_key":"wf_institutional_register_precision_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3442164691c8ddab4e1285abc2356107c3a055827889db640b83fa4d583da527","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b8c9b23f12307b1c663a27f03904398e9fd715332035899f5645b1a689fab860.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_oral_synthesis_pressure_02 -> audio/generated/de-DE/lexical/bb6539d3f5aba51408c81be02f73b72ac6f3e75d89424a201448d3991b525e16.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e048bd3f-bf1a-56df-9768-657599b3df21', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_oral_synthesis_pressure_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '406987e21f96a405e996ca24aef6c7603fda033090c2ca1794e96bf8360ed913'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('354b6b1a-6a7b-5457-9e31-abc947bd0d84', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e048bd3f-bf1a-56df-9768-657599b3df21', 1), '406987e21f96a405e996ca24aef6c7603fda033090c2ca1794e96bf8360ed913',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/bb6539d3f5aba51408c81be02f73b72ac6f3e75d89424a201448d3991b525e16.mp3', 1253, '2026-09-13 11:47:12.000631', '403aced0262d40cce503ae20feb3a09432008bd7d90250a56049d99f36dd75ea', 'validated', '{"audio_key":"bb6539d3f5aba51408c81be02f73b72ac6f3e75d89424a201448d3991b525e16","entity_key":"lx_oral_synthesis_pressure_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"403aced0262d40cce503ae20feb3a09432008bd7d90250a56049d99f36dd75ea","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/bb6539d3f5aba51408c81be02f73b72ac6f3e75d89424a201448d3991b525e16.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_oral_synthesis_pressure_02 -> audio/generated/de-DE/lexical/bb6539d3f5aba51408c81be02f73b72ac6f3e75d89424a201448d3991b525e16.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('963e1a6a-207a-552b-a025-56e3b5a228ee', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_oral_synthesis_pressure_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '406987e21f96a405e996ca24aef6c7603fda033090c2ca1794e96bf8360ed913'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f55774f1-4b8c-59c1-8365-93aac1640881', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('963e1a6a-207a-552b-a025-56e3b5a228ee', 1), '406987e21f96a405e996ca24aef6c7603fda033090c2ca1794e96bf8360ed913',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/bb6539d3f5aba51408c81be02f73b72ac6f3e75d89424a201448d3991b525e16.mp3', 1253, '2026-09-13 11:47:12.000631', '403aced0262d40cce503ae20feb3a09432008bd7d90250a56049d99f36dd75ea', 'validated', '{"audio_key":"bb6539d3f5aba51408c81be02f73b72ac6f3e75d89424a201448d3991b525e16","entity_key":"wf_oral_synthesis_pressure_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"403aced0262d40cce503ae20feb3a09432008bd7d90250a56049d99f36dd75ea","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/bb6539d3f5aba51408c81be02f73b72ac6f3e75d89424a201448d3991b525e16.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_metaphor_idiom_pragmatic_transfer_01 -> audio/generated/de-DE/lexical/c6821335085020699b629aaab18aa79dc1b6d79e3c3de2576187ba1b01c6044d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('199ba5b9-8ba1-5426-93ee-b66bf0002e46', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_metaphor_idiom_pragmatic_transfer_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ce09c7326ff9665934858b0bbf2cb4a712e881f5314e6fd2eadf6a1684123233'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('80f515d8-3305-5d42-a4a9-9c50c9c06da2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('199ba5b9-8ba1-5426-93ee-b66bf0002e46', 1), 'ce09c7326ff9665934858b0bbf2cb4a712e881f5314e6fd2eadf6a1684123233',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c6821335085020699b629aaab18aa79dc1b6d79e3c3de2576187ba1b01c6044d.mp3', 1384, '2026-09-13 11:47:12.230622', 'd3fbec0733aeb0fdb2cdeb49caa4c6214ee425619eb1cf8fa192a342946ad9ff', 'validated', '{"audio_key":"c6821335085020699b629aaab18aa79dc1b6d79e3c3de2576187ba1b01c6044d","entity_key":"lx_metaphor_idiom_pragmatic_transfer_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d3fbec0733aeb0fdb2cdeb49caa4c6214ee425619eb1cf8fa192a342946ad9ff","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c6821335085020699b629aaab18aa79dc1b6d79e3c3de2576187ba1b01c6044d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_metaphor_idiom_pragmatic_transfer_01 -> audio/generated/de-DE/lexical/c6821335085020699b629aaab18aa79dc1b6d79e3c3de2576187ba1b01c6044d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a54c5d7f-f25a-526c-bc76-e15d11190b0e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_metaphor_idiom_pragmatic_transfer_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ce09c7326ff9665934858b0bbf2cb4a712e881f5314e6fd2eadf6a1684123233'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('60330b8a-1179-5a14-b1dd-6585d5d25cbd', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a54c5d7f-f25a-526c-bc76-e15d11190b0e', 1), 'ce09c7326ff9665934858b0bbf2cb4a712e881f5314e6fd2eadf6a1684123233',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c6821335085020699b629aaab18aa79dc1b6d79e3c3de2576187ba1b01c6044d.mp3', 1384, '2026-09-13 11:47:12.230622', 'd3fbec0733aeb0fdb2cdeb49caa4c6214ee425619eb1cf8fa192a342946ad9ff', 'validated', '{"audio_key":"c6821335085020699b629aaab18aa79dc1b6d79e3c3de2576187ba1b01c6044d","entity_key":"wf_metaphor_idiom_pragmatic_transfer_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d3fbec0733aeb0fdb2cdeb49caa4c6214ee425619eb1cf8fa192a342946ad9ff","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c6821335085020699b629aaab18aa79dc1b6d79e3c3de2576187ba1b01c6044d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_presupposition_accommodation_03 -> audio/generated/de-DE/lexical/c9030c2074e6e287339454473170bb8fcd5a83abe8f07786994bae090220aeb6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2ca0bac1-1f44-5cac-83b0-ae4e28759a5d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_presupposition_accommodation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4b1c077fce4402e4fd8f6bdf06633b933d313cfa6aaf585f2d452fe158c30b3d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7b149fd7-38c0-5318-9ee0-4f19b7fbe20a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2ca0bac1-1f44-5cac-83b0-ae4e28759a5d', 1), '4b1c077fce4402e4fd8f6bdf06633b933d313cfa6aaf585f2d452fe158c30b3d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c9030c2074e6e287339454473170bb8fcd5a83abe8f07786994bae090220aeb6.mp3', 1071, '2026-09-13 11:47:13.044298', 'a4a0ff1dff3c452a444a9aa502010f919d878f4b7b049b7ba8b41e15c4517ecd', 'validated', '{"audio_key":"c9030c2074e6e287339454473170bb8fcd5a83abe8f07786994bae090220aeb6","entity_key":"lx_presupposition_accommodation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a4a0ff1dff3c452a444a9aa502010f919d878f4b7b049b7ba8b41e15c4517ecd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c9030c2074e6e287339454473170bb8fcd5a83abe8f07786994bae090220aeb6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_presupposition_accommodation_03 -> audio/generated/de-DE/lexical/c9030c2074e6e287339454473170bb8fcd5a83abe8f07786994bae090220aeb6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('18e40136-e7b5-59bf-8e51-d46a830a1026', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_presupposition_accommodation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4b1c077fce4402e4fd8f6bdf06633b933d313cfa6aaf585f2d452fe158c30b3d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8634cc4a-2402-5e57-96a9-b16f2cf482c1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('18e40136-e7b5-59bf-8e51-d46a830a1026', 1), '4b1c077fce4402e4fd8f6bdf06633b933d313cfa6aaf585f2d452fe158c30b3d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c9030c2074e6e287339454473170bb8fcd5a83abe8f07786994bae090220aeb6.mp3', 1071, '2026-09-13 11:47:13.044298', 'a4a0ff1dff3c452a444a9aa502010f919d878f4b7b049b7ba8b41e15c4517ecd', 'validated', '{"audio_key":"c9030c2074e6e287339454473170bb8fcd5a83abe8f07786994bae090220aeb6","entity_key":"wf_presupposition_accommodation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a4a0ff1dff3c452a444a9aa502010f919d878f4b7b049b7ba8b41e15c4517ecd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c9030c2074e6e287339454473170bb8fcd5a83abe8f07786994bae090220aeb6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_steelmanning_concession_04 -> audio/generated/de-DE/lexical/cb94d483b8257f4e267f8f84f08a9acc79824707bd2af95b2cf852a3846c5150.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f38e229e-4c43-5ca8-bacd-56a078c9e915', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_steelmanning_concession_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '239b0ca1cbed7a6edf49ac79acefbdb77c1b0cfed1703f3a6396d414ca7db868'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f70cf655-7736-53b6-bef3-1deb3c1f1518', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f38e229e-4c43-5ca8-bacd-56a078c9e915', 1), '239b0ca1cbed7a6edf49ac79acefbdb77c1b0cfed1703f3a6396d414ca7db868',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/cb94d483b8257f4e267f8f84f08a9acc79824707bd2af95b2cf852a3846c5150.mp3', 1149, '2026-09-13 11:33:02.477397', '9624d41690e565d710aa1bb19eea6253ebab8eafc468b3bb316369415f913c80', 'validated', '{"audio_key":"cb94d483b8257f4e267f8f84f08a9acc79824707bd2af95b2cf852a3846c5150","entity_key":"lx_steelmanning_concession_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9624d41690e565d710aa1bb19eea6253ebab8eafc468b3bb316369415f913c80","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/cb94d483b8257f4e267f8f84f08a9acc79824707bd2af95b2cf852a3846c5150.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_steelmanning_concession_04 -> audio/generated/de-DE/lexical/cb94d483b8257f4e267f8f84f08a9acc79824707bd2af95b2cf852a3846c5150.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('54643c34-b284-5800-b0f7-e742009581d3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_steelmanning_concession_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '239b0ca1cbed7a6edf49ac79acefbdb77c1b0cfed1703f3a6396d414ca7db868'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2bb62b0d-9945-51b1-96e5-ca84c535448b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('54643c34-b284-5800-b0f7-e742009581d3', 1), '239b0ca1cbed7a6edf49ac79acefbdb77c1b0cfed1703f3a6396d414ca7db868',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/cb94d483b8257f4e267f8f84f08a9acc79824707bd2af95b2cf852a3846c5150.mp3', 1149, '2026-09-13 11:33:02.477397', '9624d41690e565d710aa1bb19eea6253ebab8eafc468b3bb316369415f913c80', 'validated', '{"audio_key":"cb94d483b8257f4e267f8f84f08a9acc79824707bd2af95b2cf852a3846c5150","entity_key":"wf_steelmanning_concession_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9624d41690e565d710aa1bb19eea6253ebab8eafc468b3bb316369415f913c80","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/cb94d483b8257f4e267f8f84f08a9acc79824707bd2af95b2cf852a3846c5150.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_metaphor_idiom_pragmatic_transfer_02 -> audio/generated/de-DE/lexical/cc82123388bcf527a86911a3eb46de63b8a141d20db0e81cb4b7eef047bb0852.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0fbf1ff8-a484-5c0b-8114-6f20db9102b9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_metaphor_idiom_pragmatic_transfer_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8df239a99449a03a70a1734a5ec19717d8a738f913b032895ff1f0c4d3e6f905'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('55201ed7-4880-5f2a-897b-e17280b58313', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0fbf1ff8-a484-5c0b-8114-6f20db9102b9', 1), '8df239a99449a03a70a1734a5ec19717d8a738f913b032895ff1f0c4d3e6f905',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/cc82123388bcf527a86911a3eb46de63b8a141d20db0e81cb4b7eef047bb0852.mp3', 1253, '2026-09-13 11:18:53.936689', '0b77135fc0a4494ad6c82b658dda98f3721c1015692397d069f8837a05b4913c', 'validated', '{"audio_key":"cc82123388bcf527a86911a3eb46de63b8a141d20db0e81cb4b7eef047bb0852","entity_key":"lx_metaphor_idiom_pragmatic_transfer_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0b77135fc0a4494ad6c82b658dda98f3721c1015692397d069f8837a05b4913c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/cc82123388bcf527a86911a3eb46de63b8a141d20db0e81cb4b7eef047bb0852.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_metaphor_idiom_pragmatic_transfer_02 -> audio/generated/de-DE/lexical/cc82123388bcf527a86911a3eb46de63b8a141d20db0e81cb4b7eef047bb0852.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('446a11be-8fa3-5f23-a00c-37b4b123b7e8', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_metaphor_idiom_pragmatic_transfer_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8df239a99449a03a70a1734a5ec19717d8a738f913b032895ff1f0c4d3e6f905'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eb71a32f-e871-524d-819c-f1fb9e9dc7eb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('446a11be-8fa3-5f23-a00c-37b4b123b7e8', 1), '8df239a99449a03a70a1734a5ec19717d8a738f913b032895ff1f0c4d3e6f905',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/cc82123388bcf527a86911a3eb46de63b8a141d20db0e81cb4b7eef047bb0852.mp3', 1253, '2026-09-13 11:18:53.936689', '0b77135fc0a4494ad6c82b658dda98f3721c1015692397d069f8837a05b4913c', 'validated', '{"audio_key":"cc82123388bcf527a86911a3eb46de63b8a141d20db0e81cb4b7eef047bb0852","entity_key":"wf_metaphor_idiom_pragmatic_transfer_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0b77135fc0a4494ad6c82b658dda98f3721c1015692397d069f8837a05b4913c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/cc82123388bcf527a86911a3eb46de63b8a141d20db0e81cb4b7eef047bb0852.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_narrative_perspective_temporal_control_01 -> audio/generated/de-DE/lexical/d18e9fac9a0041d897be0d0527436f03b4e1dbc3e51bcb1fe4870b1790bc0851.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1035fdb7-acb8-53f5-ba0a-2f3850e5a9f9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_narrative_perspective_temporal_control_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b50025f96f4fbcb9b6d2cc9ef3cecc7f3d32d1801f4cace070f18f1ad02a4855'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cc15a9d1-eade-5f36-9b42-1ef75a9349ff', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1035fdb7-acb8-53f5-ba0a-2f3850e5a9f9', 1), 'b50025f96f4fbcb9b6d2cc9ef3cecc7f3d32d1801f4cace070f18f1ad02a4855',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d18e9fac9a0041d897be0d0527436f03b4e1dbc3e51bcb1fe4870b1790bc0851.mp3', 1097, '2026-09-13 11:47:13.335667', '172dd0c7938d75a571c7fa8dae16c82dc4302c3336ed5e452db693dbed7abef0', 'validated', '{"audio_key":"d18e9fac9a0041d897be0d0527436f03b4e1dbc3e51bcb1fe4870b1790bc0851","entity_key":"lx_narrative_perspective_temporal_control_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"172dd0c7938d75a571c7fa8dae16c82dc4302c3336ed5e452db693dbed7abef0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d18e9fac9a0041d897be0d0527436f03b4e1dbc3e51bcb1fe4870b1790bc0851.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_narrative_perspective_temporal_control_01 -> audio/generated/de-DE/lexical/d18e9fac9a0041d897be0d0527436f03b4e1dbc3e51bcb1fe4870b1790bc0851.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fee09a8a-d892-52e5-a532-2fada1c305bb', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_narrative_perspective_temporal_control_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b50025f96f4fbcb9b6d2cc9ef3cecc7f3d32d1801f4cace070f18f1ad02a4855'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d90ea0f5-56a3-5b29-bd05-36d2919a4cd7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fee09a8a-d892-52e5-a532-2fada1c305bb', 1), 'b50025f96f4fbcb9b6d2cc9ef3cecc7f3d32d1801f4cace070f18f1ad02a4855',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d18e9fac9a0041d897be0d0527436f03b4e1dbc3e51bcb1fe4870b1790bc0851.mp3', 1097, '2026-09-13 11:47:13.335667', '172dd0c7938d75a571c7fa8dae16c82dc4302c3336ed5e452db693dbed7abef0', 'validated', '{"audio_key":"d18e9fac9a0041d897be0d0527436f03b4e1dbc3e51bcb1fe4870b1790bc0851","entity_key":"wf_narrative_perspective_temporal_control_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"172dd0c7938d75a571c7fa8dae16c82dc4302c3336ed5e452db693dbed7abef0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d18e9fac9a0041d897be0d0527436f03b4e1dbc3e51bcb1fe4870b1790bc0851.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_metaphor_idiom_pragmatic_transfer_06 -> audio/generated/de-DE/lexical/d5c2a6f4d129b5e3730f37bff7ab80ddc153cab0009dad7d5a4a0ae8b00b6532.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('46095cff-666e-5b48-be84-b329922b4189', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_metaphor_idiom_pragmatic_transfer_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f1b23f1ffa118dd2b541404bc9bc21325105beb4c771d1d8aa53772740b6496e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7c741cf1-d98e-5341-aa4e-9832d181ad56', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('46095cff-666e-5b48-be84-b329922b4189', 1), 'f1b23f1ffa118dd2b541404bc9bc21325105beb4c771d1d8aa53772740b6496e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d5c2a6f4d129b5e3730f37bff7ab80ddc153cab0009dad7d5a4a0ae8b00b6532.mp3', 1332, '2026-09-13 11:47:14.145320', '584472c41f59d0c1d07998b14dfcc5898067c67cb8f90ee6094906642ee10660', 'validated', '{"audio_key":"d5c2a6f4d129b5e3730f37bff7ab80ddc153cab0009dad7d5a4a0ae8b00b6532","entity_key":"lx_metaphor_idiom_pragmatic_transfer_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"584472c41f59d0c1d07998b14dfcc5898067c67cb8f90ee6094906642ee10660","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d5c2a6f4d129b5e3730f37bff7ab80ddc153cab0009dad7d5a4a0ae8b00b6532.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_metaphor_idiom_pragmatic_transfer_06 -> audio/generated/de-DE/lexical/d5c2a6f4d129b5e3730f37bff7ab80ddc153cab0009dad7d5a4a0ae8b00b6532.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('16ccb505-d8d4-561a-aceb-ad1afd25bb41', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_metaphor_idiom_pragmatic_transfer_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f1b23f1ffa118dd2b541404bc9bc21325105beb4c771d1d8aa53772740b6496e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('674734a3-f20b-5b64-9eb5-49b5423e3399', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('16ccb505-d8d4-561a-aceb-ad1afd25bb41', 1), 'f1b23f1ffa118dd2b541404bc9bc21325105beb4c771d1d8aa53772740b6496e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d5c2a6f4d129b5e3730f37bff7ab80ddc153cab0009dad7d5a4a0ae8b00b6532.mp3', 1332, '2026-09-13 11:47:14.145320', '584472c41f59d0c1d07998b14dfcc5898067c67cb8f90ee6094906642ee10660', 'validated', '{"audio_key":"d5c2a6f4d129b5e3730f37bff7ab80ddc153cab0009dad7d5a4a0ae8b00b6532","entity_key":"wf_metaphor_idiom_pragmatic_transfer_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"584472c41f59d0c1d07998b14dfcc5898067c67cb8f90ee6094906642ee10660","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d5c2a6f4d129b5e3730f37bff7ab80ddc153cab0009dad7d5a4a0ae8b00b6532.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_steelmanning_concession_05 -> audio/generated/de-DE/lexical/d63b2e0454c52bb56a921dee1b96eaefec99054b8da796246d5a804373ff62b7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('95f0ce57-a2da-51eb-8aaa-957207bf250f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_steelmanning_concession_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cbb55bb867fb8d6e34af9bd918fc8f0d88518f51c14df6f98f523f9130ad10da'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9f8b3ea0-45b1-5cee-bb97-0182e4b6fad9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('95f0ce57-a2da-51eb-8aaa-957207bf250f', 1), 'cbb55bb867fb8d6e34af9bd918fc8f0d88518f51c14df6f98f523f9130ad10da',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d63b2e0454c52bb56a921dee1b96eaefec99054b8da796246d5a804373ff62b7.mp3', 1149, '2026-09-13 10:01:15.327150', 'b1f03505227259b67b2921aedfd782b5444f0fd08e7250aa48ce6e3323c9d179', 'validated', '{"audio_key":"d63b2e0454c52bb56a921dee1b96eaefec99054b8da796246d5a804373ff62b7","entity_key":"lx_steelmanning_concession_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b1f03505227259b67b2921aedfd782b5444f0fd08e7250aa48ce6e3323c9d179","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d63b2e0454c52bb56a921dee1b96eaefec99054b8da796246d5a804373ff62b7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_steelmanning_concession_05 -> audio/generated/de-DE/lexical/d63b2e0454c52bb56a921dee1b96eaefec99054b8da796246d5a804373ff62b7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('519afcef-7f6f-5ceb-87ae-2eb35757328a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_steelmanning_concession_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cbb55bb867fb8d6e34af9bd918fc8f0d88518f51c14df6f98f523f9130ad10da'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6e5443ea-4424-5a50-a5ec-64ea10d14421', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('519afcef-7f6f-5ceb-87ae-2eb35757328a', 1), 'cbb55bb867fb8d6e34af9bd918fc8f0d88518f51c14df6f98f523f9130ad10da',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d63b2e0454c52bb56a921dee1b96eaefec99054b8da796246d5a804373ff62b7.mp3', 1149, '2026-09-13 10:01:15.327150', 'b1f03505227259b67b2921aedfd782b5444f0fd08e7250aa48ce6e3323c9d179', 'validated', '{"audio_key":"d63b2e0454c52bb56a921dee1b96eaefec99054b8da796246d5a804373ff62b7","entity_key":"wf_steelmanning_concession_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b1f03505227259b67b2921aedfd782b5444f0fd08e7250aa48ce6e3323c9d179","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d63b2e0454c52bb56a921dee1b96eaefec99054b8da796246d5a804373ff62b7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_oral_synthesis_pressure_01 -> audio/generated/de-DE/lexical/dda0461d138359ff6a6a9ce575a8174d3304ebdc9d03b85ae9f7351859dc4d70.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('56dceb87-d2b9-5e0a-b74c-8f462f3e9fde', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_oral_synthesis_pressure_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '57c3ac6d31bc974b5218075cad1de9781fa1e426351e12d0d499f4f1ac2dabfc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b8df51b5-89a2-5c87-97da-495f77ba89ce', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('56dceb87-d2b9-5e0a-b74c-8f462f3e9fde', 1), '57c3ac6d31bc974b5218075cad1de9781fa1e426351e12d0d499f4f1ac2dabfc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/dda0461d138359ff6a6a9ce575a8174d3304ebdc9d03b85ae9f7351859dc4d70.mp3', 1384, '2026-09-13 10:21:30.410630', '6964b38db529d76c8dc9801f2a7dfd34d50b4b14f88ae46d81aacae91e1b6159', 'validated', '{"audio_key":"dda0461d138359ff6a6a9ce575a8174d3304ebdc9d03b85ae9f7351859dc4d70","entity_key":"lx_oral_synthesis_pressure_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6964b38db529d76c8dc9801f2a7dfd34d50b4b14f88ae46d81aacae91e1b6159","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/dda0461d138359ff6a6a9ce575a8174d3304ebdc9d03b85ae9f7351859dc4d70.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_oral_synthesis_pressure_01 -> audio/generated/de-DE/lexical/dda0461d138359ff6a6a9ce575a8174d3304ebdc9d03b85ae9f7351859dc4d70.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('08be35cf-e92c-5538-8eb5-72c0e85eb321', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_oral_synthesis_pressure_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '57c3ac6d31bc974b5218075cad1de9781fa1e426351e12d0d499f4f1ac2dabfc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1e612d48-384b-5e0e-b692-b2f5e6bf3b49', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('08be35cf-e92c-5538-8eb5-72c0e85eb321', 1), '57c3ac6d31bc974b5218075cad1de9781fa1e426351e12d0d499f4f1ac2dabfc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/dda0461d138359ff6a6a9ce575a8174d3304ebdc9d03b85ae9f7351859dc4d70.mp3', 1384, '2026-09-13 10:21:30.410630', '6964b38db529d76c8dc9801f2a7dfd34d50b4b14f88ae46d81aacae91e1b6159', 'validated', '{"audio_key":"dda0461d138359ff6a6a9ce575a8174d3304ebdc9d03b85ae9f7351859dc4d70","entity_key":"wf_oral_synthesis_pressure_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6964b38db529d76c8dc9801f2a7dfd34d50b4b14f88ae46d81aacae91e1b6159","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/dda0461d138359ff6a6a9ce575a8174d3304ebdc9d03b85ae9f7351859dc4d70.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_presupposition_accommodation_05 -> audio/generated/de-DE/lexical/e73d94f18e54030c0ae41ce6606219709dd49424a61af452398c13527c53152f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('768f4a3a-35d9-5155-b2aa-1a6795899555', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_presupposition_accommodation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '61f1de1c1223e4b349d07f91ed1dc1bf52ebc4ba4345a85db6d298f4a9127e29'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('213696f8-76a3-542a-ba9c-25bbee539802', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('768f4a3a-35d9-5155-b2aa-1a6795899555', 1), '61f1de1c1223e4b349d07f91ed1dc1bf52ebc4ba4345a85db6d298f4a9127e29',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e73d94f18e54030c0ae41ce6606219709dd49424a61af452398c13527c53152f.mp3', 1097, '2026-09-13 11:47:14.389149', '5e09a8f2b1e8f1a921e9258f410743dd8fa338f349b489c94cdafa2b17b92311', 'validated', '{"audio_key":"e73d94f18e54030c0ae41ce6606219709dd49424a61af452398c13527c53152f","entity_key":"lx_presupposition_accommodation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5e09a8f2b1e8f1a921e9258f410743dd8fa338f349b489c94cdafa2b17b92311","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e73d94f18e54030c0ae41ce6606219709dd49424a61af452398c13527c53152f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_presupposition_accommodation_05 -> audio/generated/de-DE/lexical/e73d94f18e54030c0ae41ce6606219709dd49424a61af452398c13527c53152f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('97a9678d-d1ec-5eb1-90da-d003e7195e12', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_presupposition_accommodation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '61f1de1c1223e4b349d07f91ed1dc1bf52ebc4ba4345a85db6d298f4a9127e29'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('600dba47-3123-5e7a-b5fe-24db0e4d2ea0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('97a9678d-d1ec-5eb1-90da-d003e7195e12', 1), '61f1de1c1223e4b349d07f91ed1dc1bf52ebc4ba4345a85db6d298f4a9127e29',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e73d94f18e54030c0ae41ce6606219709dd49424a61af452398c13527c53152f.mp3', 1097, '2026-09-13 11:47:14.389149', '5e09a8f2b1e8f1a921e9258f410743dd8fa338f349b489c94cdafa2b17b92311', 'validated', '{"audio_key":"e73d94f18e54030c0ae41ce6606219709dd49424a61af452398c13527c53152f","entity_key":"wf_presupposition_accommodation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5e09a8f2b1e8f1a921e9258f410743dd8fa338f349b489c94cdafa2b17b92311","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e73d94f18e54030c0ae41ce6606219709dd49424a61af452398c13527c53152f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_principled_disagreement_negotiation_02 -> audio/generated/de-DE/lexical/e7e6c8b750244732e21f59aa957409aa2cbb6f90f4f43ee488e76221010423df.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fdbcafb2-a970-51e9-bae8-96cdf23ee903', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_principled_disagreement_negotiation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b97a3fc4fbc6845005f035fa4e5b160d2a82a7a15624620884af46f9437e74ad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('14d89a4c-e948-53bb-a801-74e56310e29b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fdbcafb2-a970-51e9-bae8-96cdf23ee903', 1), 'b97a3fc4fbc6845005f035fa4e5b160d2a82a7a15624620884af46f9437e74ad',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e7e6c8b750244732e21f59aa957409aa2cbb6f90f4f43ee488e76221010423df.mp3', 1149, '2026-09-13 09:41:10.306327', '75f460c86d0a4f89ae1acb349f5710ccaa43a6e511aea829ebe9a561f1bb4dc4', 'validated', '{"audio_key":"e7e6c8b750244732e21f59aa957409aa2cbb6f90f4f43ee488e76221010423df","entity_key":"lx_principled_disagreement_negotiation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"75f460c86d0a4f89ae1acb349f5710ccaa43a6e511aea829ebe9a561f1bb4dc4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e7e6c8b750244732e21f59aa957409aa2cbb6f90f4f43ee488e76221010423df.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_principled_disagreement_negotiation_02 -> audio/generated/de-DE/lexical/e7e6c8b750244732e21f59aa957409aa2cbb6f90f4f43ee488e76221010423df.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9367c6e5-c78f-5f9b-8bf3-c713f1ed075c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_principled_disagreement_negotiation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b97a3fc4fbc6845005f035fa4e5b160d2a82a7a15624620884af46f9437e74ad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b9368ad6-e4be-5bc4-b9ff-9d8523f278a3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9367c6e5-c78f-5f9b-8bf3-c713f1ed075c', 1), 'b97a3fc4fbc6845005f035fa4e5b160d2a82a7a15624620884af46f9437e74ad',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e7e6c8b750244732e21f59aa957409aa2cbb6f90f4f43ee488e76221010423df.mp3', 1149, '2026-09-13 09:41:10.306327', '75f460c86d0a4f89ae1acb349f5710ccaa43a6e511aea829ebe9a561f1bb4dc4', 'validated', '{"audio_key":"e7e6c8b750244732e21f59aa957409aa2cbb6f90f4f43ee488e76221010423df","entity_key":"wf_principled_disagreement_negotiation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"75f460c86d0a4f89ae1acb349f5710ccaa43a6e511aea829ebe9a561f1bb4dc4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e7e6c8b750244732e21f59aa957409aa2cbb6f90f4f43ee488e76221010423df.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_presupposition_accommodation_01 -> audio/generated/de-DE/lexical/ef238539d3c2983d3fca2e461c63d15d794481a752985ba4f1170983cc4a5ca0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5b8c20fb-9754-5c48-ac5b-8cd8142bbcb9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_presupposition_accommodation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cef958ef2ba41fa56ea7927a1a1d2fd6e4852d6146ad6e5614623673341116e4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4be8474c-d0d0-5f44-afe4-aa822f7fe23f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5b8c20fb-9754-5c48-ac5b-8cd8142bbcb9', 1), 'cef958ef2ba41fa56ea7927a1a1d2fd6e4852d6146ad6e5614623673341116e4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ef238539d3c2983d3fca2e461c63d15d794481a752985ba4f1170983cc4a5ca0.mp3', 1619, '2026-09-13 11:47:15.284496', 'c00e90a6d1175241c1739d7ba033d062fd5bc68a4726fbe2b6ebdfbe1b658713', 'validated', '{"audio_key":"ef238539d3c2983d3fca2e461c63d15d794481a752985ba4f1170983cc4a5ca0","entity_key":"lx_presupposition_accommodation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c00e90a6d1175241c1739d7ba033d062fd5bc68a4726fbe2b6ebdfbe1b658713","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ef238539d3c2983d3fca2e461c63d15d794481a752985ba4f1170983cc4a5ca0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_presupposition_accommodation_01 -> audio/generated/de-DE/lexical/ef238539d3c2983d3fca2e461c63d15d794481a752985ba4f1170983cc4a5ca0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('120cb541-9cad-5a7a-8f56-dbd79cf37938', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_presupposition_accommodation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cef958ef2ba41fa56ea7927a1a1d2fd6e4852d6146ad6e5614623673341116e4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('69fa6def-d495-53f7-bc24-938a427d9b60', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('120cb541-9cad-5a7a-8f56-dbd79cf37938', 1), 'cef958ef2ba41fa56ea7927a1a1d2fd6e4852d6146ad6e5614623673341116e4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ef238539d3c2983d3fca2e461c63d15d794481a752985ba4f1170983cc4a5ca0.mp3', 1619, '2026-09-13 11:47:15.284496', 'c00e90a6d1175241c1739d7ba033d062fd5bc68a4726fbe2b6ebdfbe1b658713', 'validated', '{"audio_key":"ef238539d3c2983d3fca2e461c63d15d794481a752985ba4f1170983cc4a5ca0","entity_key":"wf_presupposition_accommodation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c00e90a6d1175241c1739d7ba033d062fd5bc68a4726fbe2b6ebdfbe1b658713","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ef238539d3c2983d3fca2e461c63d15d794481a752985ba4f1170983cc4a5ca0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_metaphor_idiom_pragmatic_transfer_03 -> audio/generated/de-DE/lexical/f01a1f95bbd7a8c58b2d8042c5a16a00c6281e317e3377f5e46c976fce9d1b88.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4f2b8b66-981c-52df-a45b-1b9ed8806347', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_metaphor_idiom_pragmatic_transfer_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ad5f01b028e1632d0f3aae335765c2dee3773ab41d6d1bfe2d7a5dee8acd4a89'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('94fce8b7-2908-50e2-a47e-8f1f628ab2b1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4f2b8b66-981c-52df-a45b-1b9ed8806347', 1), 'ad5f01b028e1632d0f3aae335765c2dee3773ab41d6d1bfe2d7a5dee8acd4a89',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f01a1f95bbd7a8c58b2d8042c5a16a00c6281e317e3377f5e46c976fce9d1b88.mp3', 1149, '2026-09-13 11:47:15.427311', '3df1aef09de5e2e6cfc3ff620bfb1bb6f24b5fa69cdd6d3e1b022b28a778bd6d', 'validated', '{"audio_key":"f01a1f95bbd7a8c58b2d8042c5a16a00c6281e317e3377f5e46c976fce9d1b88","entity_key":"lx_metaphor_idiom_pragmatic_transfer_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3df1aef09de5e2e6cfc3ff620bfb1bb6f24b5fa69cdd6d3e1b022b28a778bd6d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f01a1f95bbd7a8c58b2d8042c5a16a00c6281e317e3377f5e46c976fce9d1b88.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_metaphor_idiom_pragmatic_transfer_03 -> audio/generated/de-DE/lexical/f01a1f95bbd7a8c58b2d8042c5a16a00c6281e317e3377f5e46c976fce9d1b88.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('00913da8-5324-5fc1-9ed9-0da7e23e3c50', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_metaphor_idiom_pragmatic_transfer_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ad5f01b028e1632d0f3aae335765c2dee3773ab41d6d1bfe2d7a5dee8acd4a89'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3d0e3d5c-477c-57b2-bd51-4fcbbe40625e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('00913da8-5324-5fc1-9ed9-0da7e23e3c50', 1), 'ad5f01b028e1632d0f3aae335765c2dee3773ab41d6d1bfe2d7a5dee8acd4a89',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f01a1f95bbd7a8c58b2d8042c5a16a00c6281e317e3377f5e46c976fce9d1b88.mp3', 1149, '2026-09-13 11:47:15.427311', '3df1aef09de5e2e6cfc3ff620bfb1bb6f24b5fa69cdd6d3e1b022b28a778bd6d', 'validated', '{"audio_key":"f01a1f95bbd7a8c58b2d8042c5a16a00c6281e317e3377f5e46c976fce9d1b88","entity_key":"wf_metaphor_idiom_pragmatic_transfer_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3df1aef09de5e2e6cfc3ff620bfb1bb6f24b5fa69cdd6d3e1b022b28a778bd6d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f01a1f95bbd7a8c58b2d8042c5a16a00c6281e317e3377f5e46c976fce9d1b88.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_steelmanning_concession_01 -> audio/generated/de-DE/lexical/f08dd68adca52ac300b16161e898a2b1e9f753fba055f2e6443219780ef6f25c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('49a834e3-6636-5753-812c-ed61215ac356', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_steelmanning_concession_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0dc78702773f33fe1fc56efb30120f8af14c5c628401645a8a819cc093bbb2df'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('35926042-746c-583f-b362-d7d8eeaa121c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('49a834e3-6636-5753-812c-ed61215ac356', 1), '0dc78702773f33fe1fc56efb30120f8af14c5c628401645a8a819cc093bbb2df',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f08dd68adca52ac300b16161e898a2b1e9f753fba055f2e6443219780ef6f25c.mp3', 1436, '2026-09-13 11:47:16.416694', '1bf70ddaad42ba81cb41252b0c219fe12b0d6bd0d827e34b93f88d8a181ae12c', 'validated', '{"audio_key":"f08dd68adca52ac300b16161e898a2b1e9f753fba055f2e6443219780ef6f25c","entity_key":"lx_steelmanning_concession_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1bf70ddaad42ba81cb41252b0c219fe12b0d6bd0d827e34b93f88d8a181ae12c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f08dd68adca52ac300b16161e898a2b1e9f753fba055f2e6443219780ef6f25c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_steelmanning_concession_01 -> audio/generated/de-DE/lexical/f08dd68adca52ac300b16161e898a2b1e9f753fba055f2e6443219780ef6f25c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d7afd5b7-52e6-5267-a83b-8120e7417596', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_steelmanning_concession_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0dc78702773f33fe1fc56efb30120f8af14c5c628401645a8a819cc093bbb2df'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9f43ea35-922e-5f7b-962c-1a4708ca8b37', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d7afd5b7-52e6-5267-a83b-8120e7417596', 1), '0dc78702773f33fe1fc56efb30120f8af14c5c628401645a8a819cc093bbb2df',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f08dd68adca52ac300b16161e898a2b1e9f753fba055f2e6443219780ef6f25c.mp3', 1436, '2026-09-13 11:47:16.416694', '1bf70ddaad42ba81cb41252b0c219fe12b0d6bd0d827e34b93f88d8a181ae12c', 'validated', '{"audio_key":"f08dd68adca52ac300b16161e898a2b1e9f753fba055f2e6443219780ef6f25c","entity_key":"wf_steelmanning_concession_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1bf70ddaad42ba81cb41252b0c219fe12b0d6bd0d827e34b93f88d8a181ae12c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f08dd68adca52ac300b16161e898a2b1e9f753fba055f2e6443219780ef6f25c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_narrative_perspective_temporal_control_05 -> audio/generated/de-DE/lexical/f15a2f7348b7c648cd3697ae825bce9fdd4b248ef57c5e2492b4d0238436c68a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('20230c51-3028-521c-bcc1-337dfa4f0120', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_narrative_perspective_temporal_control_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1cda0310064ce7db95d479b65a80732b5c4ad021db7a164210398ddad8cbfc7a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4ff97f0d-a5d7-53a7-a07f-3d6abe7f29c8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('20230c51-3028-521c-bcc1-337dfa4f0120', 1), '1cda0310064ce7db95d479b65a80732b5c4ad021db7a164210398ddad8cbfc7a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f15a2f7348b7c648cd3697ae825bce9fdd4b248ef57c5e2492b4d0238436c68a.mp3', 1280, '2026-09-13 11:47:16.487361', 'f18e1cc649f3501c218793e2a17fa96138c279b5bba3632175c3afe81f068e3b', 'validated', '{"audio_key":"f15a2f7348b7c648cd3697ae825bce9fdd4b248ef57c5e2492b4d0238436c68a","entity_key":"lx_narrative_perspective_temporal_control_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f18e1cc649f3501c218793e2a17fa96138c279b5bba3632175c3afe81f068e3b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f15a2f7348b7c648cd3697ae825bce9fdd4b248ef57c5e2492b4d0238436c68a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_narrative_perspective_temporal_control_05 -> audio/generated/de-DE/lexical/f15a2f7348b7c648cd3697ae825bce9fdd4b248ef57c5e2492b4d0238436c68a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e9fc747a-0d4b-557a-96c8-fb47425e5a8a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_narrative_perspective_temporal_control_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1cda0310064ce7db95d479b65a80732b5c4ad021db7a164210398ddad8cbfc7a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('869f81f1-1bbc-54ff-b90e-e41d17ba9dcf', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e9fc747a-0d4b-557a-96c8-fb47425e5a8a', 1), '1cda0310064ce7db95d479b65a80732b5c4ad021db7a164210398ddad8cbfc7a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f15a2f7348b7c648cd3697ae825bce9fdd4b248ef57c5e2492b4d0238436c68a.mp3', 1280, '2026-09-13 11:47:16.487361', 'f18e1cc649f3501c218793e2a17fa96138c279b5bba3632175c3afe81f068e3b', 'validated', '{"audio_key":"f15a2f7348b7c648cd3697ae825bce9fdd4b248ef57c5e2492b4d0238436c68a","entity_key":"wf_narrative_perspective_temporal_control_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f18e1cc649f3501c218793e2a17fa96138c279b5bba3632175c3afe81f068e3b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f15a2f7348b7c648cd3697ae825bce9fdd4b248ef57c5e2492b4d0238436c68a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_oral_synthesis_pressure_04 -> audio/generated/de-DE/lexical/f820cfe141cd3d0b778efdf30e9b3f957b7f439e67ef193267e698999949fe0b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('696bf1c9-bda0-52cf-b4bc-4f8e0ba7c2fc', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_oral_synthesis_pressure_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ff0a0002d2fff6c8347afa54a48c8378b05e957b9b940c5967154773fb7d4d85'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e259af70-aad9-56f1-97e8-c5cc4d1579b5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('696bf1c9-bda0-52cf-b4bc-4f8e0ba7c2fc', 1), 'ff0a0002d2fff6c8347afa54a48c8378b05e957b9b940c5967154773fb7d4d85',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f820cfe141cd3d0b778efdf30e9b3f957b7f439e67ef193267e698999949fe0b.mp3', 1280, '2026-09-13 08:32:39.869944', '794a6bbf2291b7f33380988212ca564b3bfe91f33d15761f62c8ca03bdaad5f1', 'validated', '{"audio_key":"f820cfe141cd3d0b778efdf30e9b3f957b7f439e67ef193267e698999949fe0b","entity_key":"lx_oral_synthesis_pressure_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"794a6bbf2291b7f33380988212ca564b3bfe91f33d15761f62c8ca03bdaad5f1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f820cfe141cd3d0b778efdf30e9b3f957b7f439e67ef193267e698999949fe0b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_oral_synthesis_pressure_04 -> audio/generated/de-DE/lexical/f820cfe141cd3d0b778efdf30e9b3f957b7f439e67ef193267e698999949fe0b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('74b83e15-1190-505b-ab3e-bec5373f1c0d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_oral_synthesis_pressure_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ff0a0002d2fff6c8347afa54a48c8378b05e957b9b940c5967154773fb7d4d85'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8cc3ea13-4dd8-547a-8a8d-be56879f68ef', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('74b83e15-1190-505b-ab3e-bec5373f1c0d', 1), 'ff0a0002d2fff6c8347afa54a48c8378b05e957b9b940c5967154773fb7d4d85',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f820cfe141cd3d0b778efdf30e9b3f957b7f439e67ef193267e698999949fe0b.mp3', 1280, '2026-09-13 08:32:39.869944', '794a6bbf2291b7f33380988212ca564b3bfe91f33d15761f62c8ca03bdaad5f1', 'validated', '{"audio_key":"f820cfe141cd3d0b778efdf30e9b3f957b7f439e67ef193267e698999949fe0b","entity_key":"wf_oral_synthesis_pressure_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"794a6bbf2291b7f33380988212ca564b3bfe91f33d15761f62c8ca03bdaad5f1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f820cfe141cd3d0b778efdf30e9b3f957b7f439e67ef193267e698999949fe0b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_judgment_language_capstone_05 -> audio/generated/de-DE/lexical/fab38ef00c4200f094aee91e3de6cf10a59cca265a4d946a57f984bcb833c483.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('04e2611d-89ae-50a4-a7ea-db6a2c0f4ec1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_judgment_language_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eda50a97ae808cf9c87e9dca7671641081be6cf1b59074565c4063ad9ab91bcb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ba5a65fc-b37a-5ad2-a3ad-3d7f30a6805b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('04e2611d-89ae-50a4-a7ea-db6a2c0f4ec1', 1), 'eda50a97ae808cf9c87e9dca7671641081be6cf1b59074565c4063ad9ab91bcb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fab38ef00c4200f094aee91e3de6cf10a59cca265a4d946a57f984bcb833c483.mp3', 1332, '2026-09-13 11:47:17.519252', '32b56d2a1681e5a1e48b926eb40a5c7d5b41e8521f9203586f4ad0ba74fbcd8f', 'validated', '{"audio_key":"fab38ef00c4200f094aee91e3de6cf10a59cca265a4d946a57f984bcb833c483","entity_key":"lx_judgment_language_capstone_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"32b56d2a1681e5a1e48b926eb40a5c7d5b41e8521f9203586f4ad0ba74fbcd8f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fab38ef00c4200f094aee91e3de6cf10a59cca265a4d946a57f984bcb833c483.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_judgment_language_capstone_05 -> audio/generated/de-DE/lexical/fab38ef00c4200f094aee91e3de6cf10a59cca265a4d946a57f984bcb833c483.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7a5d877a-8f96-5c5d-9049-44a436a7f3d6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_judgment_language_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eda50a97ae808cf9c87e9dca7671641081be6cf1b59074565c4063ad9ab91bcb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('81ffe890-0026-5045-b16c-656543c9ae07', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7a5d877a-8f96-5c5d-9049-44a436a7f3d6', 1), 'eda50a97ae808cf9c87e9dca7671641081be6cf1b59074565c4063ad9ab91bcb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fab38ef00c4200f094aee91e3de6cf10a59cca265a4d946a57f984bcb833c483.mp3', 1332, '2026-09-13 11:47:17.519252', '32b56d2a1681e5a1e48b926eb40a5c7d5b41e8521f9203586f4ad0ba74fbcd8f', 'validated', '{"audio_key":"fab38ef00c4200f094aee91e3de6cf10a59cca265a4d946a57f984bcb833c483","entity_key":"wf_judgment_language_capstone_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"32b56d2a1681e5a1e48b926eb40a5c7d5b41e8521f9203586f4ad0ba74fbcd8f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fab38ef00c4200f094aee91e3de6cf10a59cca265a4d946a57f984bcb833c483.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_academic_stance_citation_distance_04 -> audio/generated/de-DE/lexical/fd2af271ff7b309c7fb8df1f98de77d431df00c545582c7d6c651974b47656a6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6ada3964-093c-5070-98f6-7f9fb2f6139c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_academic_stance_citation_distance_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3713853297d1d6cceb5625e29b53a800a981be4914c95bd681e60d31bdb341c2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('28d531be-8565-58bb-962f-04e8a349a37e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6ada3964-093c-5070-98f6-7f9fb2f6139c', 1), '3713853297d1d6cceb5625e29b53a800a981be4914c95bd681e60d31bdb341c2',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fd2af271ff7b309c7fb8df1f98de77d431df00c545582c7d6c651974b47656a6.mp3', 1071, '2026-09-13 11:47:17.503330', 'c2e089660a39d74550448513f94a699a6b0375940f06b616fac4cdca5221adfc', 'validated', '{"audio_key":"fd2af271ff7b309c7fb8df1f98de77d431df00c545582c7d6c651974b47656a6","entity_key":"lx_academic_stance_citation_distance_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c2e089660a39d74550448513f94a699a6b0375940f06b616fac4cdca5221adfc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fd2af271ff7b309c7fb8df1f98de77d431df00c545582c7d6c651974b47656a6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_academic_stance_citation_distance_04 -> audio/generated/de-DE/lexical/fd2af271ff7b309c7fb8df1f98de77d431df00c545582c7d6c651974b47656a6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fafb4f9b-b32d-5ecf-92a4-8a0fe175e6e6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_academic_stance_citation_distance_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3713853297d1d6cceb5625e29b53a800a981be4914c95bd681e60d31bdb341c2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b66de346-e79b-5453-a5de-ec1924fa8d9b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fafb4f9b-b32d-5ecf-92a4-8a0fe175e6e6', 1), '3713853297d1d6cceb5625e29b53a800a981be4914c95bd681e60d31bdb341c2',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fd2af271ff7b309c7fb8df1f98de77d431df00c545582c7d6c651974b47656a6.mp3', 1071, '2026-09-13 11:47:17.503330', 'c2e089660a39d74550448513f94a699a6b0375940f06b616fac4cdca5221adfc', 'validated', '{"audio_key":"fd2af271ff7b309c7fb8df1f98de77d431df00c545582c7d6c651974b47656a6","entity_key":"wf_academic_stance_citation_distance_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c2e089660a39d74550448513f94a699a6b0375940f06b616fac4cdca5221adfc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fd2af271ff7b309c7fb8df1f98de77d431df00c545582c7d6c651974b47656a6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_judgment_language_capstone_03 -> audio/generated/de-DE/lexical/fffe008c9a1b5afe6456c81543c23cd215f5952f8c6ae9556d643c65bc407606.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('91235ea8-ac08-5a6b-941e-ba883c1d90c6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_judgment_language_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '05bf956cc4078c26ce0c475c71d7eb9c5aeaba987026504b8ba796202435f59f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('999b4c91-ebe2-546b-8565-18080c14a4f6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('91235ea8-ac08-5a6b-941e-ba883c1d90c6', 1), '05bf956cc4078c26ce0c475c71d7eb9c5aeaba987026504b8ba796202435f59f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fffe008c9a1b5afe6456c81543c23cd215f5952f8c6ae9556d643c65bc407606.mp3', 1071, '2026-09-13 09:41:11.277574', '107161d001d0bcdbb688e5bb7d90b066c0c485c6aa6be8c9255f7a5685b2122e', 'validated', '{"audio_key":"fffe008c9a1b5afe6456c81543c23cd215f5952f8c6ae9556d643c65bc407606","entity_key":"lx_judgment_language_capstone_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"107161d001d0bcdbb688e5bb7d90b066c0c485c6aa6be8c9255f7a5685b2122e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fffe008c9a1b5afe6456c81543c23cd215f5952f8c6ae9556d643c65bc407606.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_judgment_language_capstone_03 -> audio/generated/de-DE/lexical/fffe008c9a1b5afe6456c81543c23cd215f5952f8c6ae9556d643c65bc407606.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c49650e5-f89c-5e8c-bc53-6d8fdf89de3a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_judgment_language_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '05bf956cc4078c26ce0c475c71d7eb9c5aeaba987026504b8ba796202435f59f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('75f237c3-e253-5862-a14c-626f5e418346', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c49650e5-f89c-5e8c-bc53-6d8fdf89de3a', 1), '05bf956cc4078c26ce0c475c71d7eb9c5aeaba987026504b8ba796202435f59f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fffe008c9a1b5afe6456c81543c23cd215f5952f8c6ae9556d643c65bc407606.mp3', 1071, '2026-09-13 09:41:11.277574', '107161d001d0bcdbb688e5bb7d90b066c0c485c6aa6be8c9255f7a5685b2122e', 'validated', '{"audio_key":"fffe008c9a1b5afe6456c81543c23cd215f5952f8c6ae9556d643c65bc407606","entity_key":"wf_judgment_language_capstone_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"107161d001d0bcdbb688e5bb7d90b066c0c485c6aa6be8c9255f7a5685b2122e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fffe008c9a1b5afe6456c81543c23cd215f5952f8c6ae9556d643c65bc407606.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_principled_disagreement_negotiation_01 -> audio/generated/de-DE/utterances/0144f6fe35a9f422a01bb5405da14567dabc0afbc4352e6f2965a55e4763cf52.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a2ef87d7-876a-5a39-9ec3-4a13aba13c86', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_principled_disagreement_negotiation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dc4ec7e9545a9011e9d4d61cf2ebdb7163755d8e08289cc1fef33c60d514dd75'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6d393c76-14e5-5be6-a3e2-df8bd93b4f24', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a2ef87d7-876a-5a39-9ec3-4a13aba13c86', 1), 'dc4ec7e9545a9011e9d4d61cf2ebdb7163755d8e08289cc1fef33c60d514dd75',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0144f6fe35a9f422a01bb5405da14567dabc0afbc4352e6f2965a55e4763cf52.mp3', 3944, '2026-09-13 11:47:18.868003', 'e6b3e5ccca4fbe425aa9b2f47a9e603acabc4594de10f9944809dd6ae8756352', 'validated', '{"audio_key":"0144f6fe35a9f422a01bb5405da14567dabc0afbc4352e6f2965a55e4763cf52","entity_key":"u_principled_disagreement_negotiation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e6b3e5ccca4fbe425aa9b2f47a9e603acabc4594de10f9944809dd6ae8756352","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0144f6fe35a9f422a01bb5405da14567dabc0afbc4352e6f2965a55e4763cf52.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_principled_disagreement_negotiation_01_listen -> audio/generated/de-DE/utterances/0144f6fe35a9f422a01bb5405da14567dabc0afbc4352e6f2965a55e4763cf52.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('152c852b-0194-52a2-b4ee-cfd22354aca9', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_principled_disagreement_negotiation_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dc4ec7e9545a9011e9d4d61cf2ebdb7163755d8e08289cc1fef33c60d514dd75'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d7d13e1b-76d4-57f2-9ac3-1b52e22e4dd7', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('152c852b-0194-52a2-b4ee-cfd22354aca9', 1), 'dc4ec7e9545a9011e9d4d61cf2ebdb7163755d8e08289cc1fef33c60d514dd75',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0144f6fe35a9f422a01bb5405da14567dabc0afbc4352e6f2965a55e4763cf52.mp3', 3944, '2026-09-13 11:47:18.868003', 'e6b3e5ccca4fbe425aa9b2f47a9e603acabc4594de10f9944809dd6ae8756352', 'validated', '{"audio_key":"0144f6fe35a9f422a01bb5405da14567dabc0afbc4352e6f2965a55e4763cf52","entity_key":"ex_principled_disagreement_negotiation_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e6b3e5ccca4fbe425aa9b2f47a9e603acabc4594de10f9944809dd6ae8756352","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0144f6fe35a9f422a01bb5405da14567dabc0afbc4352e6f2965a55e4763cf52.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_academic_stance_citation_distance_02 -> audio/generated/de-DE/utterances/081cc466287e3bc8c9986b9a90db6c5d183e4237862627caa260dda4aae9086d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('385ca132-4b81-535a-a8a4-74cad0cce0b2', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_academic_stance_citation_distance_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4723050760e51feaa4432251107c96647ace4007ea153d1a5f01a60be44adc09'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ebd3c8f4-c9e4-54f8-bf6b-766178b7bfb6', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('385ca132-4b81-535a-a8a4-74cad0cce0b2', 1), '4723050760e51feaa4432251107c96647ace4007ea153d1a5f01a60be44adc09',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/081cc466287e3bc8c9986b9a90db6c5d183e4237862627caa260dda4aae9086d.mp3', 5694, '2026-09-13 11:47:19.115985', 'fc8fb73b9f4024a36cdb9dd9a2f05de958847e85ed26489bce9d38244d8590f9', 'validated', '{"audio_key":"081cc466287e3bc8c9986b9a90db6c5d183e4237862627caa260dda4aae9086d","entity_key":"u_academic_stance_citation_distance_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fc8fb73b9f4024a36cdb9dd9a2f05de958847e85ed26489bce9d38244d8590f9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/081cc466287e3bc8c9986b9a90db6c5d183e4237862627caa260dda4aae9086d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_oral_synthesis_pressure_01 -> audio/generated/de-DE/utterances/124eeb9f49e172e0f9a0b78d7d5b754f81681028f76c894841e3ea000286f157.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a60ac117-3acd-5135-b372-8e147a43d461', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_oral_synthesis_pressure_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4a80746c23476375db1ba62d2bb821fc440f7e3458ec116ccaa752f8cd3b9607'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d6f4891d-53a9-5c7f-8a8b-0b74c1e9303f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a60ac117-3acd-5135-b372-8e147a43d461', 1), '4a80746c23476375db1ba62d2bb821fc440f7e3458ec116ccaa752f8cd3b9607',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/124eeb9f49e172e0f9a0b78d7d5b754f81681028f76c894841e3ea000286f157.mp3', 3604, '2026-09-13 11:47:20.219786', '118c5f321686e8565448c555ea568ebc74e01a4abab518abbe643918604ad5ca', 'validated', '{"audio_key":"124eeb9f49e172e0f9a0b78d7d5b754f81681028f76c894841e3ea000286f157","entity_key":"u_oral_synthesis_pressure_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"118c5f321686e8565448c555ea568ebc74e01a4abab518abbe643918604ad5ca","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/124eeb9f49e172e0f9a0b78d7d5b754f81681028f76c894841e3ea000286f157.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_oral_synthesis_pressure_01_listen -> audio/generated/de-DE/utterances/124eeb9f49e172e0f9a0b78d7d5b754f81681028f76c894841e3ea000286f157.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('bc2e80a3-a337-5d60-858e-74b88d503b02', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_oral_synthesis_pressure_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4a80746c23476375db1ba62d2bb821fc440f7e3458ec116ccaa752f8cd3b9607'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6b950483-d6f7-5fbc-935a-f1212a7a6699', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('bc2e80a3-a337-5d60-858e-74b88d503b02', 1), '4a80746c23476375db1ba62d2bb821fc440f7e3458ec116ccaa752f8cd3b9607',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/124eeb9f49e172e0f9a0b78d7d5b754f81681028f76c894841e3ea000286f157.mp3', 3604, '2026-09-13 11:47:20.219786', '118c5f321686e8565448c555ea568ebc74e01a4abab518abbe643918604ad5ca', 'validated', '{"audio_key":"124eeb9f49e172e0f9a0b78d7d5b754f81681028f76c894841e3ea000286f157","entity_key":"ex_oral_synthesis_pressure_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"118c5f321686e8565448c555ea568ebc74e01a4abab518abbe643918604ad5ca","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/124eeb9f49e172e0f9a0b78d7d5b754f81681028f76c894841e3ea000286f157.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_narrative_perspective_temporal_control_05 -> audio/generated/de-DE/utterances/138626cbf431fadc528b76f268ec5e7afa1e89ffee3796e511f3f770b9a083e6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f16bfe3d-cb82-547e-a200-4f2a490dd029', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_narrative_perspective_temporal_control_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c111aa436acfc2b677a1d814a4661108273eb218bffa12fd0055b7e5177bf38e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('365e2303-d866-5ce2-8772-effbb61d8156', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f16bfe3d-cb82-547e-a200-4f2a490dd029', 1), 'c111aa436acfc2b677a1d814a4661108273eb218bffa12fd0055b7e5177bf38e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/138626cbf431fadc528b76f268ec5e7afa1e89ffee3796e511f3f770b9a083e6.mp3', 4832, '2026-09-13 11:47:20.658238', 'd35681e809a90f91cb9063a359b8ab81a7964667bc5c97f6600fe4f505586145', 'validated', '{"audio_key":"138626cbf431fadc528b76f268ec5e7afa1e89ffee3796e511f3f770b9a083e6","entity_key":"u_narrative_perspective_temporal_control_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d35681e809a90f91cb9063a359b8ab81a7964667bc5c97f6600fe4f505586145","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/138626cbf431fadc528b76f268ec5e7afa1e89ffee3796e511f3f770b9a083e6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_narrative_perspective_temporal_control_03_listen -> audio/generated/de-DE/utterances/138626cbf431fadc528b76f268ec5e7afa1e89ffee3796e511f3f770b9a083e6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('5029183c-202b-5560-9767-1e5c24318f74', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_narrative_perspective_temporal_control_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c111aa436acfc2b677a1d814a4661108273eb218bffa12fd0055b7e5177bf38e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dce94d11-2f59-5b24-8d32-e3aab67ef56e', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('5029183c-202b-5560-9767-1e5c24318f74', 1), 'c111aa436acfc2b677a1d814a4661108273eb218bffa12fd0055b7e5177bf38e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/138626cbf431fadc528b76f268ec5e7afa1e89ffee3796e511f3f770b9a083e6.mp3', 4832, '2026-09-13 11:47:20.658238', 'd35681e809a90f91cb9063a359b8ab81a7964667bc5c97f6600fe4f505586145', 'validated', '{"audio_key":"138626cbf431fadc528b76f268ec5e7afa1e89ffee3796e511f3f770b9a083e6","entity_key":"ex_narrative_perspective_temporal_control_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d35681e809a90f91cb9063a359b8ab81a7964667bc5c97f6600fe4f505586145","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/138626cbf431fadc528b76f268ec5e7afa1e89ffee3796e511f3f770b9a083e6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_steelmanning_concession_02 -> audio/generated/de-DE/utterances/204c4a48f27c8988fcbc84a22ed7ef3d2b02a23d7950cb05f0412d105714dd08.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8cd046da-fc60-5f90-9b25-9bb7a7635319', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_steelmanning_concession_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f3b41e488d89f27c870427926df931ab83b218b8dbce10bf98d88013c684daf1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9cff29db-37df-55f0-85d3-cf128da02aa7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8cd046da-fc60-5f90-9b25-9bb7a7635319', 1), 'f3b41e488d89f27c870427926df931ab83b218b8dbce10bf98d88013c684daf1',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/204c4a48f27c8988fcbc84a22ed7ef3d2b02a23d7950cb05f0412d105714dd08.mp3', 4362, '2026-09-13 11:47:21.633643', '923483f570fe9a0fa26bc8f204c93d762bd6323ac1e3df55d0f0d9521e1e1a3d', 'validated', '{"audio_key":"204c4a48f27c8988fcbc84a22ed7ef3d2b02a23d7950cb05f0412d105714dd08","entity_key":"u_steelmanning_concession_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"923483f570fe9a0fa26bc8f204c93d762bd6323ac1e3df55d0f0d9521e1e1a3d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/204c4a48f27c8988fcbc84a22ed7ef3d2b02a23d7950cb05f0412d105714dd08.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_principled_disagreement_negotiation_06 -> audio/generated/de-DE/utterances/24f49829efb881a08e4ec994219f802b1b8bc0e9ce7e9a2c91a0de1ff65d6ce7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b57051e1-6a92-5c29-9cea-b89f18e9f1bd', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_principled_disagreement_negotiation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '05a4805f7c340188b8a97b89bd3059cd754950efa8c59b37a89077ca5bc1d9cf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6615d2ef-58ca-55c9-93fc-3451c5db68da', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b57051e1-6a92-5c29-9cea-b89f18e9f1bd', 1), '05a4805f7c340188b8a97b89bd3059cd754950efa8c59b37a89077ca5bc1d9cf',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/24f49829efb881a08e4ec994219f802b1b8bc0e9ce7e9a2c91a0de1ff65d6ce7.mp3', 4257, '2026-09-13 11:47:22.136931', '080472d7aa766a0ac0dcc8bac0a560ebd00f33bd297425e7ebcff477e0d2706a', 'validated', '{"audio_key":"24f49829efb881a08e4ec994219f802b1b8bc0e9ce7e9a2c91a0de1ff65d6ce7","entity_key":"u_principled_disagreement_negotiation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"080472d7aa766a0ac0dcc8bac0a560ebd00f33bd297425e7ebcff477e0d2706a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/24f49829efb881a08e4ec994219f802b1b8bc0e9ce7e9a2c91a0de1ff65d6ce7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_presupposition_accommodation_01 -> audio/generated/de-DE/utterances/26a7929f71cedba2da9e97e46f9d87afb610bed587af980791863688a9b2c8c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3fa8c959-9c7c-5cf0-ad68-837c1dd4bf76', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_presupposition_accommodation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c5d7773d1bae98b9d31dd6c6ab05de5a6384bbc30a5e205febc4f4f2a7a3d430'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1743e197-6d4a-5553-96d1-92c819126121', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3fa8c959-9c7c-5cf0-ad68-837c1dd4bf76', 1), 'c5d7773d1bae98b9d31dd6c6ab05de5a6384bbc30a5e205febc4f4f2a7a3d430',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/26a7929f71cedba2da9e97e46f9d87afb610bed587af980791863688a9b2c8c8.mp3', 5276, '2026-09-13 11:47:23.210610', '711bb5b807fc86d40033bbe8e66b509edb84f4b8cf006f23788df2aa94460bbf', 'validated', '{"audio_key":"26a7929f71cedba2da9e97e46f9d87afb610bed587af980791863688a9b2c8c8","entity_key":"u_presupposition_accommodation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"711bb5b807fc86d40033bbe8e66b509edb84f4b8cf006f23788df2aa94460bbf","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/26a7929f71cedba2da9e97e46f9d87afb610bed587af980791863688a9b2c8c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_presupposition_accommodation_01_listen -> audio/generated/de-DE/utterances/26a7929f71cedba2da9e97e46f9d87afb610bed587af980791863688a9b2c8c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('339f29f1-acef-5971-8487-4cfdf89d0c5a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_presupposition_accommodation_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c5d7773d1bae98b9d31dd6c6ab05de5a6384bbc30a5e205febc4f4f2a7a3d430'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4a4ce7de-fd41-5686-b490-7525c51e8794', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('339f29f1-acef-5971-8487-4cfdf89d0c5a', 1), 'c5d7773d1bae98b9d31dd6c6ab05de5a6384bbc30a5e205febc4f4f2a7a3d430',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/26a7929f71cedba2da9e97e46f9d87afb610bed587af980791863688a9b2c8c8.mp3', 5276, '2026-09-13 11:47:23.210610', '711bb5b807fc86d40033bbe8e66b509edb84f4b8cf006f23788df2aa94460bbf', 'validated', '{"audio_key":"26a7929f71cedba2da9e97e46f9d87afb610bed587af980791863688a9b2c8c8","entity_key":"ex_presupposition_accommodation_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"711bb5b807fc86d40033bbe8e66b509edb84f4b8cf006f23788df2aa94460bbf","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/26a7929f71cedba2da9e97e46f9d87afb610bed587af980791863688a9b2c8c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_metaphor_idiom_pragmatic_transfer_01 -> audio/generated/de-DE/utterances/288b2e79709b5186c6e825950f82ed70597124c54f33755367bc6944c1c649ce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6714362c-7e3b-53ed-baba-aaaa0338257f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_metaphor_idiom_pragmatic_transfer_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ebc8dbd5f21970b798da8396d4c08fcb57d222c9613bb85d06512f3de3c4b951'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('123c1946-a36b-5b7a-bb58-b5c38c5cbf20', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6714362c-7e3b-53ed-baba-aaaa0338257f', 1), 'ebc8dbd5f21970b798da8396d4c08fcb57d222c9613bb85d06512f3de3c4b951',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/288b2e79709b5186c6e825950f82ed70597124c54f33755367bc6944c1c649ce.mp3', 4728, '2026-09-13 11:47:23.645927', '2b8a7577efb7aa27db8907bc5d41e75fd2434b9868ee9a76d3ca61c045a6b586', 'validated', '{"audio_key":"288b2e79709b5186c6e825950f82ed70597124c54f33755367bc6944c1c649ce","entity_key":"u_metaphor_idiom_pragmatic_transfer_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2b8a7577efb7aa27db8907bc5d41e75fd2434b9868ee9a76d3ca61c045a6b586","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/288b2e79709b5186c6e825950f82ed70597124c54f33755367bc6944c1c649ce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_metaphor_idiom_pragmatic_transfer_01_listen -> audio/generated/de-DE/utterances/288b2e79709b5186c6e825950f82ed70597124c54f33755367bc6944c1c649ce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('170715c0-8d5c-54ad-864d-b873cdc55bb7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_metaphor_idiom_pragmatic_transfer_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ebc8dbd5f21970b798da8396d4c08fcb57d222c9613bb85d06512f3de3c4b951'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f07bc5aa-fffc-5738-aad0-afac4cd25fb8', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('170715c0-8d5c-54ad-864d-b873cdc55bb7', 1), 'ebc8dbd5f21970b798da8396d4c08fcb57d222c9613bb85d06512f3de3c4b951',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/288b2e79709b5186c6e825950f82ed70597124c54f33755367bc6944c1c649ce.mp3', 4728, '2026-09-13 11:47:23.645927', '2b8a7577efb7aa27db8907bc5d41e75fd2434b9868ee9a76d3ca61c045a6b586', 'validated', '{"audio_key":"288b2e79709b5186c6e825950f82ed70597124c54f33755367bc6944c1c649ce","entity_key":"ex_metaphor_idiom_pragmatic_transfer_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2b8a7577efb7aa27db8907bc5d41e75fd2434b9868ee9a76d3ca61c045a6b586","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/288b2e79709b5186c6e825950f82ed70597124c54f33755367bc6944c1c649ce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_narrative_perspective_temporal_control_04 -> audio/generated/de-DE/utterances/28b9bf8eaa8adfbb9d55837c80587d53460cb18b7e5d0dba77780e96c0a1b2da.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3884eb22-2d50-5564-9ddf-f81d8eabe796', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_narrative_perspective_temporal_control_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c7296b611a1473ec7ac598cd63301b29f6956189edec23c9dfec352916d26248'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('62fe9c60-ffca-5c8b-9155-fb473e6c7bb9', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3884eb22-2d50-5564-9ddf-f81d8eabe796', 1), 'c7296b611a1473ec7ac598cd63301b29f6956189edec23c9dfec352916d26248',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/28b9bf8eaa8adfbb9d55837c80587d53460cb18b7e5d0dba77780e96c0a1b2da.mp3', 4362, '2026-09-13 11:47:24.675029', '1be0ae86e63b74c5fb24648d9a40269204866ab2474d1ccc13795f473cee671e', 'validated', '{"audio_key":"28b9bf8eaa8adfbb9d55837c80587d53460cb18b7e5d0dba77780e96c0a1b2da","entity_key":"u_narrative_perspective_temporal_control_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1be0ae86e63b74c5fb24648d9a40269204866ab2474d1ccc13795f473cee671e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/28b9bf8eaa8adfbb9d55837c80587d53460cb18b7e5d0dba77780e96c0a1b2da.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_descriptive_normative_reasoning_03 -> audio/generated/de-DE/utterances/2e5ce3a41ba0b0ba572eacd44c01d5552d90229b3b647358c2442546d4b6945f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('094782c9-54dd-545f-9721-47418e5b681e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_descriptive_normative_reasoning_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ceb3c4f84b73f468b02aa9b18bb18698144aeeb875d71aaebabe1828b11f0c57'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aa045eca-5efa-52f1-93e6-96d7a1317e91', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('094782c9-54dd-545f-9721-47418e5b681e', 1), 'ceb3c4f84b73f468b02aa9b18bb18698144aeeb875d71aaebabe1828b11f0c57',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2e5ce3a41ba0b0ba572eacd44c01d5552d90229b3b647358c2442546d4b6945f.mp3', 4205, '2026-09-13 11:47:25.091653', 'ad88d9c72dd2d84f06156e615b3d4d3b80dc6518581a62b31f04cdc8fda04ea3', 'validated', '{"audio_key":"2e5ce3a41ba0b0ba572eacd44c01d5552d90229b3b647358c2442546d4b6945f","entity_key":"u_descriptive_normative_reasoning_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ad88d9c72dd2d84f06156e615b3d4d3b80dc6518581a62b31f04cdc8fda04ea3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2e5ce3a41ba0b0ba572eacd44c01d5552d90229b3b647358c2442546d4b6945f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_descriptive_normative_reasoning_02_listen -> audio/generated/de-DE/utterances/2e5ce3a41ba0b0ba572eacd44c01d5552d90229b3b647358c2442546d4b6945f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('af826571-b26b-54fc-9d6c-50fc9ded6cb7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_descriptive_normative_reasoning_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ceb3c4f84b73f468b02aa9b18bb18698144aeeb875d71aaebabe1828b11f0c57'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c93f5cb9-6c6d-58c8-b611-84b95e2bcceb', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('af826571-b26b-54fc-9d6c-50fc9ded6cb7', 1), 'ceb3c4f84b73f468b02aa9b18bb18698144aeeb875d71aaebabe1828b11f0c57',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2e5ce3a41ba0b0ba572eacd44c01d5552d90229b3b647358c2442546d4b6945f.mp3', 4205, '2026-09-13 11:47:25.091653', 'ad88d9c72dd2d84f06156e615b3d4d3b80dc6518581a62b31f04cdc8fda04ea3', 'validated', '{"audio_key":"2e5ce3a41ba0b0ba572eacd44c01d5552d90229b3b647358c2442546d4b6945f","entity_key":"ex_descriptive_normative_reasoning_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ad88d9c72dd2d84f06156e615b3d4d3b80dc6518581a62b31f04cdc8fda04ea3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2e5ce3a41ba0b0ba572eacd44c01d5552d90229b3b647358c2442546d4b6945f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_steelmanning_concession_05 -> audio/generated/de-DE/utterances/2e67b36e530153fa72bd7ceff84b4430bb60bcfb6f848bbb3b3079c696d7dd1d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d202d18c-9920-5acb-8553-4c6899347cfd', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_steelmanning_concession_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd77cdcdfd118093a90a85bae0194a5a1649dc635049e2dc5457585a19f7abff0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d18f642b-9ef9-5f80-a3a0-e467b90ec225', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d202d18c-9920-5acb-8553-4c6899347cfd', 1), 'd77cdcdfd118093a90a85bae0194a5a1649dc635049e2dc5457585a19f7abff0',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2e67b36e530153fa72bd7ceff84b4430bb60bcfb6f848bbb3b3079c696d7dd1d.mp3', 5276, '2026-09-13 11:47:26.212715', 'b0574248eb317e90ae329e35b3891ea9bc9e4c5aeb80608cbdaa8876b0a300e1', 'validated', '{"audio_key":"2e67b36e530153fa72bd7ceff84b4430bb60bcfb6f848bbb3b3079c696d7dd1d","entity_key":"u_steelmanning_concession_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b0574248eb317e90ae329e35b3891ea9bc9e4c5aeb80608cbdaa8876b0a300e1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2e67b36e530153fa72bd7ceff84b4430bb60bcfb6f848bbb3b3079c696d7dd1d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_steelmanning_concession_03_listen -> audio/generated/de-DE/utterances/2e67b36e530153fa72bd7ceff84b4430bb60bcfb6f848bbb3b3079c696d7dd1d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('1c19eec7-28f9-5f8e-b4e3-e9da501afd1d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_steelmanning_concession_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd77cdcdfd118093a90a85bae0194a5a1649dc635049e2dc5457585a19f7abff0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1c80e980-c1f1-5199-a4ca-ede2880aa123', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('1c19eec7-28f9-5f8e-b4e3-e9da501afd1d', 1), 'd77cdcdfd118093a90a85bae0194a5a1649dc635049e2dc5457585a19f7abff0',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2e67b36e530153fa72bd7ceff84b4430bb60bcfb6f848bbb3b3079c696d7dd1d.mp3', 5276, '2026-09-13 11:47:26.212715', 'b0574248eb317e90ae329e35b3891ea9bc9e4c5aeb80608cbdaa8876b0a300e1', 'validated', '{"audio_key":"2e67b36e530153fa72bd7ceff84b4430bb60bcfb6f848bbb3b3079c696d7dd1d","entity_key":"ex_steelmanning_concession_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b0574248eb317e90ae329e35b3891ea9bc9e4c5aeb80608cbdaa8876b0a300e1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2e67b36e530153fa72bd7ceff84b4430bb60bcfb6f848bbb3b3079c696d7dd1d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_academic_stance_citation_distance_06 -> audio/generated/de-DE/utterances/329e8e88114ec5c157a62f0bb8d8f5444080d9554b4ca326b32c90275de40a1c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('948d1ff4-1037-5e2c-9eb5-b55a54a439b8', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_academic_stance_citation_distance_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '01ebe86e2290169bc3531bea80d85bbffaccfd324fcb278e727f032c4230e3dc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dd4afbcb-7bbe-5868-95c2-0f6c43566c6d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('948d1ff4-1037-5e2c-9eb5-b55a54a439b8', 1), '01ebe86e2290169bc3531bea80d85bbffaccfd324fcb278e727f032c4230e3dc',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/329e8e88114ec5c157a62f0bb8d8f5444080d9554b4ca326b32c90275de40a1c.mp3', 4310, '2026-09-13 11:47:26.491943', '4390fb46e91442b72b129e2369abcd784902313f28ac239bf10444cb4eef05c5', 'validated', '{"audio_key":"329e8e88114ec5c157a62f0bb8d8f5444080d9554b4ca326b32c90275de40a1c","entity_key":"u_academic_stance_citation_distance_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4390fb46e91442b72b129e2369abcd784902313f28ac239bf10444cb4eef05c5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/329e8e88114ec5c157a62f0bb8d8f5444080d9554b4ca326b32c90275de40a1c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_principled_disagreement_negotiation_05 -> audio/generated/de-DE/utterances/33df2bfe6790331a5cf9f02cc81f0187877cc56c9668264a3bd4812206de71e3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a782a558-4022-56cb-8a61-1ae31607d6e2', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_principled_disagreement_negotiation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b9dd266b504f5f261db88a65570b46391c316a4f187c241a92833906837e3a90'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8c000b87-2574-5388-ad96-dbc45b44e7f7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a782a558-4022-56cb-8a61-1ae31607d6e2', 1), 'b9dd266b504f5f261db88a65570b46391c316a4f187c241a92833906837e3a90',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/33df2bfe6790331a5cf9f02cc81f0187877cc56c9668264a3bd4812206de71e3.mp3', 4257, '2026-09-13 11:47:27.635748', '0120f645fd876b4bbcb745ff9c606108fc0fc729ce1315689b5d598bc4b0e193', 'validated', '{"audio_key":"33df2bfe6790331a5cf9f02cc81f0187877cc56c9668264a3bd4812206de71e3","entity_key":"u_principled_disagreement_negotiation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0120f645fd876b4bbcb745ff9c606108fc0fc729ce1315689b5d598bc4b0e193","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/33df2bfe6790331a5cf9f02cc81f0187877cc56c9668264a3bd4812206de71e3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_principled_disagreement_negotiation_03_listen -> audio/generated/de-DE/utterances/33df2bfe6790331a5cf9f02cc81f0187877cc56c9668264a3bd4812206de71e3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('1db92944-ab6d-54de-9a4d-7c5a346cb43b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_principled_disagreement_negotiation_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b9dd266b504f5f261db88a65570b46391c316a4f187c241a92833906837e3a90'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('43dbbd53-7719-559c-acd2-8a92ca960d1e', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('1db92944-ab6d-54de-9a4d-7c5a346cb43b', 1), 'b9dd266b504f5f261db88a65570b46391c316a4f187c241a92833906837e3a90',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/33df2bfe6790331a5cf9f02cc81f0187877cc56c9668264a3bd4812206de71e3.mp3', 4257, '2026-09-13 11:47:27.635748', '0120f645fd876b4bbcb745ff9c606108fc0fc729ce1315689b5d598bc4b0e193', 'validated', '{"audio_key":"33df2bfe6790331a5cf9f02cc81f0187877cc56c9668264a3bd4812206de71e3","entity_key":"ex_principled_disagreement_negotiation_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0120f645fd876b4bbcb745ff9c606108fc0fc729ce1315689b5d598bc4b0e193","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/33df2bfe6790331a5cf9f02cc81f0187877cc56c9668264a3bd4812206de71e3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_oral_synthesis_pressure_04 -> audio/generated/de-DE/utterances/3659da85205766d37dc86d0e4152281a2e987f890197293d1bcb837882ebf52c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('060f17ce-c634-5f16-ab39-336eeafb867c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_oral_synthesis_pressure_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ebec8f22a28f2a1505075f8a4cfd0b13ab43ebf181f9ae2f087004c584acc0a3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ced8000b-2533-566a-8928-8e310a26eacc', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('060f17ce-c634-5f16-ab39-336eeafb867c', 1), 'ebec8f22a28f2a1505075f8a4cfd0b13ab43ebf181f9ae2f087004c584acc0a3',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3659da85205766d37dc86d0e4152281a2e987f890197293d1bcb837882ebf52c.mp3', 3526, '2026-09-13 11:47:27.828775', 'c9539d419395c5c3dc543e08a581b322c753b77d07bfcf966b96c600c0fd6e5c', 'validated', '{"audio_key":"3659da85205766d37dc86d0e4152281a2e987f890197293d1bcb837882ebf52c","entity_key":"u_oral_synthesis_pressure_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c9539d419395c5c3dc543e08a581b322c753b77d07bfcf966b96c600c0fd6e5c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3659da85205766d37dc86d0e4152281a2e987f890197293d1bcb837882ebf52c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_principled_disagreement_negotiation_02 -> audio/generated/de-DE/utterances/3b22f993090b0221a01506d8fb915d0c983b3be05ca620fc749a4af3f396d4a6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('27b89ccd-bba7-5a4f-8e08-c346b607cbe0', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_principled_disagreement_negotiation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3475d5f49e16111d6f2cf2e0f9a1910f409e0fcccc342accbb268c06d6495175'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('986b9544-74a4-5bcd-a7e3-580b9d047e2f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('27b89ccd-bba7-5a4f-8e08-c346b607cbe0', 1), '3475d5f49e16111d6f2cf2e0f9a1910f409e0fcccc342accbb268c06d6495175',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3b22f993090b0221a01506d8fb915d0c983b3be05ca620fc749a4af3f396d4a6.mp3', 4075, '2026-09-13 11:47:29.075673', 'c5d03f4330a2c34d0160cf1684c274b8b26f088676a9f6c0afdf8ffe75745528', 'validated', '{"audio_key":"3b22f993090b0221a01506d8fb915d0c983b3be05ca620fc749a4af3f396d4a6","entity_key":"u_principled_disagreement_negotiation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c5d03f4330a2c34d0160cf1684c274b8b26f088676a9f6c0afdf8ffe75745528","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3b22f993090b0221a01506d8fb915d0c983b3be05ca620fc749a4af3f396d4a6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_metaphor_idiom_pragmatic_transfer_05 -> audio/generated/de-DE/utterances/3dfe4471a817fc08988a246394f428a7e8792c6fe61a710677efe5e6c0376276.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('feeb2a22-d769-5da0-9c89-05003dee8da9', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_metaphor_idiom_pragmatic_transfer_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4a0635407452351a3c497b4086255e0db8dbcdb8ca0c5eb72f7eb380a1222607'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d6851f8a-2790-55a7-9599-5eb1d247cba0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('feeb2a22-d769-5da0-9c89-05003dee8da9', 1), '4a0635407452351a3c497b4086255e0db8dbcdb8ca0c5eb72f7eb380a1222607',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3dfe4471a817fc08988a246394f428a7e8792c6fe61a710677efe5e6c0376276.mp3', 4911, '2026-09-13 11:47:29.359278', 'e665effaeb0e7f7a66f8f94dcae70d21a8792445b442f272224db833d26e0885', 'validated', '{"audio_key":"3dfe4471a817fc08988a246394f428a7e8792c6fe61a710677efe5e6c0376276","entity_key":"u_metaphor_idiom_pragmatic_transfer_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e665effaeb0e7f7a66f8f94dcae70d21a8792445b442f272224db833d26e0885","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3dfe4471a817fc08988a246394f428a7e8792c6fe61a710677efe5e6c0376276.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_metaphor_idiom_pragmatic_transfer_03_listen -> audio/generated/de-DE/utterances/3dfe4471a817fc08988a246394f428a7e8792c6fe61a710677efe5e6c0376276.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('d1113b01-eb40-5289-8d83-1160cc4eb4fc', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_metaphor_idiom_pragmatic_transfer_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4a0635407452351a3c497b4086255e0db8dbcdb8ca0c5eb72f7eb380a1222607'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d8b90a20-1f8a-56d0-ba8b-797b87e2f45d', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('d1113b01-eb40-5289-8d83-1160cc4eb4fc', 1), '4a0635407452351a3c497b4086255e0db8dbcdb8ca0c5eb72f7eb380a1222607',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3dfe4471a817fc08988a246394f428a7e8792c6fe61a710677efe5e6c0376276.mp3', 4911, '2026-09-13 11:47:29.359278', 'e665effaeb0e7f7a66f8f94dcae70d21a8792445b442f272224db833d26e0885', 'validated', '{"audio_key":"3dfe4471a817fc08988a246394f428a7e8792c6fe61a710677efe5e6c0376276","entity_key":"ex_metaphor_idiom_pragmatic_transfer_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e665effaeb0e7f7a66f8f94dcae70d21a8792445b442f272224db833d26e0885","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3dfe4471a817fc08988a246394f428a7e8792c6fe61a710677efe5e6c0376276.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_institutional_register_precision_04 -> audio/generated/de-DE/utterances/427917844f7ff04c46185fcba09df4adcac3dad670b71b80d81ddcc479a7afe6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1dd0d122-b63a-52e8-be1e-035d2f1efacf', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_institutional_register_precision_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'adba4e3934abba42b59d1d87545b2e83b955d434124fdfe01f55761dad739ec4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ce78a8a5-02ad-53d3-a05a-6d46751d6f6e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1dd0d122-b63a-52e8-be1e-035d2f1efacf', 1), 'adba4e3934abba42b59d1d87545b2e83b955d434124fdfe01f55761dad739ec4',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/427917844f7ff04c46185fcba09df4adcac3dad670b71b80d81ddcc479a7afe6.mp3', 3996, '2026-09-13 11:47:30.460368', '4b4d1bddca33754dcd23f238a04bacd42369b222bbb38bc1a38c8cb416158cfa', 'validated', '{"audio_key":"427917844f7ff04c46185fcba09df4adcac3dad670b71b80d81ddcc479a7afe6","entity_key":"u_institutional_register_precision_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4b4d1bddca33754dcd23f238a04bacd42369b222bbb38bc1a38c8cb416158cfa","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/427917844f7ff04c46185fcba09df4adcac3dad670b71b80d81ddcc479a7afe6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_academic_stance_citation_distance_04 -> audio/generated/de-DE/utterances/4726231a8403dce5c5016126efcedfb69625f5e358a5aef0e06d382886630102.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('313d4b25-9e3e-5806-9991-e16ae06d6a9d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_academic_stance_citation_distance_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c01858eee2b079183cc70200fd6ccf205b59699cefd2b6bfe95d3e740e00b79c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f3dd6683-1f2d-5879-a7ab-9a68e14e45a1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('313d4b25-9e3e-5806-9991-e16ae06d6a9d', 1), 'c01858eee2b079183cc70200fd6ccf205b59699cefd2b6bfe95d3e740e00b79c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4726231a8403dce5c5016126efcedfb69625f5e358a5aef0e06d382886630102.mp3', 4414, '2026-09-13 11:47:30.778025', '2bfeb3dd86c909b2eeb3d4a13729371923feccd019d13ecbf32c2cdf4a8df998', 'validated', '{"audio_key":"4726231a8403dce5c5016126efcedfb69625f5e358a5aef0e06d382886630102","entity_key":"u_academic_stance_citation_distance_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2bfeb3dd86c909b2eeb3d4a13729371923feccd019d13ecbf32c2cdf4a8df998","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4726231a8403dce5c5016126efcedfb69625f5e358a5aef0e06d382886630102.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_narrative_perspective_temporal_control_01 -> audio/generated/de-DE/utterances/47b3f39a81b774816f98d969abae6780cb6e9555a88f01bb039e9a2a9006fa24.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('308ecf0f-3e22-57e8-8be3-e589f3a87e14', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_narrative_perspective_temporal_control_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b86fc2aedee563dcd5a8363898152147e2720c850719b97c6d5807b6e457ee58'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8261a8ab-e44d-58a0-b0e7-92aa43eef422', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('308ecf0f-3e22-57e8-8be3-e589f3a87e14', 1), 'b86fc2aedee563dcd5a8363898152147e2720c850719b97c6d5807b6e457ee58',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/47b3f39a81b774816f98d969abae6780cb6e9555a88f01bb039e9a2a9006fa24.mp3', 4780, '2026-09-13 11:47:31.978068', '85857bfca8d4bbcce0a22acc701282a478d14ac589fdddd0fdf0c1c5f06bdacb', 'validated', '{"audio_key":"47b3f39a81b774816f98d969abae6780cb6e9555a88f01bb039e9a2a9006fa24","entity_key":"u_narrative_perspective_temporal_control_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"85857bfca8d4bbcce0a22acc701282a478d14ac589fdddd0fdf0c1c5f06bdacb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/47b3f39a81b774816f98d969abae6780cb6e9555a88f01bb039e9a2a9006fa24.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_narrative_perspective_temporal_control_01_listen -> audio/generated/de-DE/utterances/47b3f39a81b774816f98d969abae6780cb6e9555a88f01bb039e9a2a9006fa24.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('250774df-e8d1-52f1-8af0-110547b463d9', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_narrative_perspective_temporal_control_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b86fc2aedee563dcd5a8363898152147e2720c850719b97c6d5807b6e457ee58'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('887a453f-892e-53e4-a995-ebd303547e9a', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('250774df-e8d1-52f1-8af0-110547b463d9', 1), 'b86fc2aedee563dcd5a8363898152147e2720c850719b97c6d5807b6e457ee58',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/47b3f39a81b774816f98d969abae6780cb6e9555a88f01bb039e9a2a9006fa24.mp3', 4780, '2026-09-13 11:47:31.978068', '85857bfca8d4bbcce0a22acc701282a478d14ac589fdddd0fdf0c1c5f06bdacb', 'validated', '{"audio_key":"47b3f39a81b774816f98d969abae6780cb6e9555a88f01bb039e9a2a9006fa24","entity_key":"ex_narrative_perspective_temporal_control_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"85857bfca8d4bbcce0a22acc701282a478d14ac589fdddd0fdf0c1c5f06bdacb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/47b3f39a81b774816f98d969abae6780cb6e9555a88f01bb039e9a2a9006fa24.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_presupposition_accommodation_02 -> audio/generated/de-DE/utterances/482b45a318b005e4a8d873df9ac85afbc77dd655a0019a48b27f611709dafce9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('94c14586-de7e-5194-b23c-b19bb1e18f08', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_presupposition_accommodation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b0d5df8c8e1709cf7fb5cb612ea9d934dcf14203e1da4ca6b20929dea76c59eb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('60725ba2-d898-59f6-903e-aa3830df3a62', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('94c14586-de7e-5194-b23c-b19bb1e18f08', 1), 'b0d5df8c8e1709cf7fb5cb612ea9d934dcf14203e1da4ca6b20929dea76c59eb',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/482b45a318b005e4a8d873df9ac85afbc77dd655a0019a48b27f611709dafce9.mp3', 3840, '2026-09-13 11:47:32.176952', '2a122224c0ee9c4382c66eaa09f5514e4e991b7d0b25e015cd67e3db8fce8741', 'validated', '{"audio_key":"482b45a318b005e4a8d873df9ac85afbc77dd655a0019a48b27f611709dafce9","entity_key":"u_presupposition_accommodation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2a122224c0ee9c4382c66eaa09f5514e4e991b7d0b25e015cd67e3db8fce8741","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/482b45a318b005e4a8d873df9ac85afbc77dd655a0019a48b27f611709dafce9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_steelmanning_concession_03 -> audio/generated/de-DE/utterances/486c9c04a2efce74165708a403ab5f0bb274275a523b4c24a8cd9106210423e3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b1e1aa27-bb91-5486-8be5-5c04cf2a363d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_steelmanning_concession_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b0ec607b0aaffdf8a9f7caa6e683ab664c27cfe2db2cd7f9d8212230ac202d97'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('728d6bd2-ac07-5062-a4db-8dee10cc39c1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b1e1aa27-bb91-5486-8be5-5c04cf2a363d', 1), 'b0ec607b0aaffdf8a9f7caa6e683ab664c27cfe2db2cd7f9d8212230ac202d97',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/486c9c04a2efce74165708a403ab5f0bb274275a523b4c24a8cd9106210423e3.mp3', 4623, '2026-09-13 11:47:33.521574', '3fcd3481f8a8eb85fbac8f6875639577195374cb139e4b57f90ce3a2530d9286', 'validated', '{"audio_key":"486c9c04a2efce74165708a403ab5f0bb274275a523b4c24a8cd9106210423e3","entity_key":"u_steelmanning_concession_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3fcd3481f8a8eb85fbac8f6875639577195374cb139e4b57f90ce3a2530d9286","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/486c9c04a2efce74165708a403ab5f0bb274275a523b4c24a8cd9106210423e3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_steelmanning_concession_02_listen -> audio/generated/de-DE/utterances/486c9c04a2efce74165708a403ab5f0bb274275a523b4c24a8cd9106210423e3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('463b558b-c822-58ca-833d-188b7503c930', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_steelmanning_concession_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b0ec607b0aaffdf8a9f7caa6e683ab664c27cfe2db2cd7f9d8212230ac202d97'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('11fc8582-7126-5b39-a20a-402fe313b25f', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('463b558b-c822-58ca-833d-188b7503c930', 1), 'b0ec607b0aaffdf8a9f7caa6e683ab664c27cfe2db2cd7f9d8212230ac202d97',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/486c9c04a2efce74165708a403ab5f0bb274275a523b4c24a8cd9106210423e3.mp3', 4623, '2026-09-13 11:47:33.521574', '3fcd3481f8a8eb85fbac8f6875639577195374cb139e4b57f90ce3a2530d9286', 'validated', '{"audio_key":"486c9c04a2efce74165708a403ab5f0bb274275a523b4c24a8cd9106210423e3","entity_key":"ex_steelmanning_concession_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3fcd3481f8a8eb85fbac8f6875639577195374cb139e4b57f90ce3a2530d9286","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/486c9c04a2efce74165708a403ab5f0bb274275a523b4c24a8cd9106210423e3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_oral_synthesis_pressure_03 -> audio/generated/de-DE/utterances/4ba227c839dd40ebdb7fdc68aeb085f2a1c8c5cde8729aa7bc38a5cbab195c1a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('73e8ecd0-89c6-50fc-bf3f-61fb7e208096', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_oral_synthesis_pressure_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bbb5b477fbbff3cdaf6f410a635e5c097c5b977e0626e02b4e0314be5b64a184'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('797d5bcf-9cda-5045-88d3-69a852b9cb84', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('73e8ecd0-89c6-50fc-bf3f-61fb7e208096', 1), 'bbb5b477fbbff3cdaf6f410a635e5c097c5b977e0626e02b4e0314be5b64a184',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4ba227c839dd40ebdb7fdc68aeb085f2a1c8c5cde8729aa7bc38a5cbab195c1a.mp3', 4440, '2026-09-13 11:47:33.622726', '25676e54294c935427878cafed3f78c11c6c8def7319ad186d60c496969a8204', 'validated', '{"audio_key":"4ba227c839dd40ebdb7fdc68aeb085f2a1c8c5cde8729aa7bc38a5cbab195c1a","entity_key":"u_oral_synthesis_pressure_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"25676e54294c935427878cafed3f78c11c6c8def7319ad186d60c496969a8204","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4ba227c839dd40ebdb7fdc68aeb085f2a1c8c5cde8729aa7bc38a5cbab195c1a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_oral_synthesis_pressure_02_listen -> audio/generated/de-DE/utterances/4ba227c839dd40ebdb7fdc68aeb085f2a1c8c5cde8729aa7bc38a5cbab195c1a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('6fc5f944-8b46-5a81-9bb4-3da450e315af', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_oral_synthesis_pressure_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bbb5b477fbbff3cdaf6f410a635e5c097c5b977e0626e02b4e0314be5b64a184'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ddbfac3f-cb97-59eb-b00f-3a7b33955f96', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('6fc5f944-8b46-5a81-9bb4-3da450e315af', 1), 'bbb5b477fbbff3cdaf6f410a635e5c097c5b977e0626e02b4e0314be5b64a184',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4ba227c839dd40ebdb7fdc68aeb085f2a1c8c5cde8729aa7bc38a5cbab195c1a.mp3', 4440, '2026-09-13 11:47:33.622726', '25676e54294c935427878cafed3f78c11c6c8def7319ad186d60c496969a8204', 'validated', '{"audio_key":"4ba227c839dd40ebdb7fdc68aeb085f2a1c8c5cde8729aa7bc38a5cbab195c1a","entity_key":"ex_oral_synthesis_pressure_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"25676e54294c935427878cafed3f78c11c6c8def7319ad186d60c496969a8204","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4ba227c839dd40ebdb7fdc68aeb085f2a1c8c5cde8729aa7bc38a5cbab195c1a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_judgment_language_capstone_01 -> audio/generated/de-DE/utterances/4ce12587efc1627e78ca853e2a69d79c6c0f775403370f93686469527dc94fe0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b9adbcb9-0a06-5370-9c02-b492d30e462f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_judgment_language_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9c79b30020bf34e9dffad4f72d067e271d401ef56dbee177dc4ccec171b6ea41'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d2a8b0bc-dfbe-5522-a6da-18daee0e089c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b9adbcb9-0a06-5370-9c02-b492d30e462f', 1), '9c79b30020bf34e9dffad4f72d067e271d401ef56dbee177dc4ccec171b6ea41',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4ce12587efc1627e78ca853e2a69d79c6c0f775403370f93686469527dc94fe0.mp3', 5433, '2026-09-13 11:47:35.078867', 'f137dfa6e070de6917d721358105756da18f09288543743c15ecf7f979316137', 'validated', '{"audio_key":"4ce12587efc1627e78ca853e2a69d79c6c0f775403370f93686469527dc94fe0","entity_key":"u_judgment_language_capstone_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f137dfa6e070de6917d721358105756da18f09288543743c15ecf7f979316137","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4ce12587efc1627e78ca853e2a69d79c6c0f775403370f93686469527dc94fe0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_judgment_language_capstone_01_listen -> audio/generated/de-DE/utterances/4ce12587efc1627e78ca853e2a69d79c6c0f775403370f93686469527dc94fe0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('62a66ad5-14cc-5653-bd2f-9bd3ffeb53d9', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_judgment_language_capstone_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9c79b30020bf34e9dffad4f72d067e271d401ef56dbee177dc4ccec171b6ea41'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5e1f062e-c92f-5697-8b21-c3404cf34235', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('62a66ad5-14cc-5653-bd2f-9bd3ffeb53d9', 1), '9c79b30020bf34e9dffad4f72d067e271d401ef56dbee177dc4ccec171b6ea41',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4ce12587efc1627e78ca853e2a69d79c6c0f775403370f93686469527dc94fe0.mp3', 5433, '2026-09-13 11:47:35.078867', 'f137dfa6e070de6917d721358105756da18f09288543743c15ecf7f979316137', 'validated', '{"audio_key":"4ce12587efc1627e78ca853e2a69d79c6c0f775403370f93686469527dc94fe0","entity_key":"ex_judgment_language_capstone_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f137dfa6e070de6917d721358105756da18f09288543743c15ecf7f979316137","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4ce12587efc1627e78ca853e2a69d79c6c0f775403370f93686469527dc94fe0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_narrative_perspective_temporal_control_02 -> audio/generated/de-DE/utterances/4d0f69cc3ecefd066085d06b85658386acd7ad8a6a8f4a78d3d13d8e17934226.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ee494e94-aec2-58d2-b489-c557cf6bf6b4', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_narrative_perspective_temporal_control_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd5c2c918ecaf2db1b2796aa49904b3975f43fc6ef41df1f88437de8d526f03f3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e95a888c-5412-56db-8b6b-73813d0b40df', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ee494e94-aec2-58d2-b489-c557cf6bf6b4', 1), 'd5c2c918ecaf2db1b2796aa49904b3975f43fc6ef41df1f88437de8d526f03f3',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4d0f69cc3ecefd066085d06b85658386acd7ad8a6a8f4a78d3d13d8e17934226.mp3', 5093, '2026-09-13 11:47:35.151557', '6a972723d952c5f3b69c97e5d093c2f4847f81e474ffb02aa5a96736ee983d54', 'validated', '{"audio_key":"4d0f69cc3ecefd066085d06b85658386acd7ad8a6a8f4a78d3d13d8e17934226","entity_key":"u_narrative_perspective_temporal_control_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6a972723d952c5f3b69c97e5d093c2f4847f81e474ffb02aa5a96736ee983d54","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4d0f69cc3ecefd066085d06b85658386acd7ad8a6a8f4a78d3d13d8e17934226.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_presupposition_accommodation_03 -> audio/generated/de-DE/utterances/50372e8f0938d8f6c4231be484baeb5e7feacef8b7b6e59abab73c38502ad177.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('56056b0a-7344-502e-8e52-691215fbe632', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_presupposition_accommodation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0ada0e507628b6e77032ddd39639bb4898f799fd3643a02f5fe35faa46d48470'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('35735f3e-85b2-5aa4-9b1f-7933edbe5c32', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('56056b0a-7344-502e-8e52-691215fbe632', 1), '0ada0e507628b6e77032ddd39639bb4898f799fd3643a02f5fe35faa46d48470',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/50372e8f0938d8f6c4231be484baeb5e7feacef8b7b6e59abab73c38502ad177.mp3', 4022, '2026-09-13 11:47:36.474234', 'c3517db2777dff29534f0d4f19263d907c441f7ea2f42551cf472a1c42217e39', 'validated', '{"audio_key":"50372e8f0938d8f6c4231be484baeb5e7feacef8b7b6e59abab73c38502ad177","entity_key":"u_presupposition_accommodation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c3517db2777dff29534f0d4f19263d907c441f7ea2f42551cf472a1c42217e39","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/50372e8f0938d8f6c4231be484baeb5e7feacef8b7b6e59abab73c38502ad177.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_presupposition_accommodation_02_listen -> audio/generated/de-DE/utterances/50372e8f0938d8f6c4231be484baeb5e7feacef8b7b6e59abab73c38502ad177.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('b5ee7485-0115-56b5-b1df-cd1114066421', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_presupposition_accommodation_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0ada0e507628b6e77032ddd39639bb4898f799fd3643a02f5fe35faa46d48470'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c1b7e7e2-86bc-579c-a6d4-a5395126e96c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('b5ee7485-0115-56b5-b1df-cd1114066421', 1), '0ada0e507628b6e77032ddd39639bb4898f799fd3643a02f5fe35faa46d48470',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/50372e8f0938d8f6c4231be484baeb5e7feacef8b7b6e59abab73c38502ad177.mp3', 4022, '2026-09-13 11:47:36.474234', 'c3517db2777dff29534f0d4f19263d907c441f7ea2f42551cf472a1c42217e39', 'validated', '{"audio_key":"50372e8f0938d8f6c4231be484baeb5e7feacef8b7b6e59abab73c38502ad177","entity_key":"ex_presupposition_accommodation_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c3517db2777dff29534f0d4f19263d907c441f7ea2f42551cf472a1c42217e39","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/50372e8f0938d8f6c4231be484baeb5e7feacef8b7b6e59abab73c38502ad177.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_presupposition_accommodation_05 -> audio/generated/de-DE/utterances/543011c999e41a3c5c6ee269718eea9ca6ae037927c483b64cbc47fd7cb06e29.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('13d6b036-bff0-5596-942a-d8aaf84430d1', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_presupposition_accommodation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '09e4f96b0cae5fac8d3f183348fd53b257405253b32805f286d168f9ef6fc68c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1c297391-c4e3-5355-8d6b-5819fa2d1513', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('13d6b036-bff0-5596-942a-d8aaf84430d1', 1), '09e4f96b0cae5fac8d3f183348fd53b257405253b32805f286d168f9ef6fc68c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/543011c999e41a3c5c6ee269718eea9ca6ae037927c483b64cbc47fd7cb06e29.mp3', 5799, '2026-09-13 11:47:36.716094', 'af75459d190d7a6635fc40ab31ca7123f9cd3e036c8a6b2dc224a5d4583779a9', 'validated', '{"audio_key":"543011c999e41a3c5c6ee269718eea9ca6ae037927c483b64cbc47fd7cb06e29","entity_key":"u_presupposition_accommodation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"af75459d190d7a6635fc40ab31ca7123f9cd3e036c8a6b2dc224a5d4583779a9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/543011c999e41a3c5c6ee269718eea9ca6ae037927c483b64cbc47fd7cb06e29.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_presupposition_accommodation_03_listen -> audio/generated/de-DE/utterances/543011c999e41a3c5c6ee269718eea9ca6ae037927c483b64cbc47fd7cb06e29.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ca278137-57dd-592b-ab2d-c04121f4715e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_presupposition_accommodation_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '09e4f96b0cae5fac8d3f183348fd53b257405253b32805f286d168f9ef6fc68c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('42da4b43-1de4-5e3f-8606-b48c82163449', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ca278137-57dd-592b-ab2d-c04121f4715e', 1), '09e4f96b0cae5fac8d3f183348fd53b257405253b32805f286d168f9ef6fc68c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/543011c999e41a3c5c6ee269718eea9ca6ae037927c483b64cbc47fd7cb06e29.mp3', 5799, '2026-09-13 11:47:36.716094', 'af75459d190d7a6635fc40ab31ca7123f9cd3e036c8a6b2dc224a5d4583779a9', 'validated', '{"audio_key":"543011c999e41a3c5c6ee269718eea9ca6ae037927c483b64cbc47fd7cb06e29","entity_key":"ex_presupposition_accommodation_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"af75459d190d7a6635fc40ab31ca7123f9cd3e036c8a6b2dc224a5d4583779a9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/543011c999e41a3c5c6ee269718eea9ca6ae037927c483b64cbc47fd7cb06e29.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_descriptive_normative_reasoning_04 -> audio/generated/de-DE/utterances/5b43d277f8c91d8db0456d0d7dc6da45d24eb883efe75bc8c2b366e74bc71ffd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e9c1a75a-d3fc-5f6b-a62c-db83169eb1c8', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_descriptive_normative_reasoning_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '86d4cdb110877e6dda6a901c3703ae5377aff4931abeddc01d2fa7902b19f2f8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3dfefda1-0359-57d5-ac63-146d0df371dd', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e9c1a75a-d3fc-5f6b-a62c-db83169eb1c8', 1), '86d4cdb110877e6dda6a901c3703ae5377aff4931abeddc01d2fa7902b19f2f8',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5b43d277f8c91d8db0456d0d7dc6da45d24eb883efe75bc8c2b366e74bc71ffd.mp3', 3709, '2026-09-13 11:47:37.831257', 'ba64721d0ed773ee8f67ffaaec9ba30dea7fa4ad8caed34b627a927df280a4ca', 'validated', '{"audio_key":"5b43d277f8c91d8db0456d0d7dc6da45d24eb883efe75bc8c2b366e74bc71ffd","entity_key":"u_descriptive_normative_reasoning_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ba64721d0ed773ee8f67ffaaec9ba30dea7fa4ad8caed34b627a927df280a4ca","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5b43d277f8c91d8db0456d0d7dc6da45d24eb883efe75bc8c2b366e74bc71ffd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_presupposition_accommodation_06 -> audio/generated/de-DE/utterances/5b8dfa662fc4f8cbac9ee7a3497ae5b9dea0e3e909457fdb92eee98231c641f6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b691479d-724e-50ef-8c28-3314b45cf5b8', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_presupposition_accommodation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1e9f96f786a7d4d95bc8df55b26f7da210774f5bdb63c4cdfd1e30629171c174'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e2f1c821-2b56-5060-8fc4-10ab52eb58b3', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b691479d-724e-50ef-8c28-3314b45cf5b8', 1), '1e9f96f786a7d4d95bc8df55b26f7da210774f5bdb63c4cdfd1e30629171c174',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5b8dfa662fc4f8cbac9ee7a3497ae5b9dea0e3e909457fdb92eee98231c641f6.mp3', 3474, '2026-09-13 11:47:38.054796', '9b114e554d9949dbe3162cf0eeeef8e0010b9b6f28a4b44c39fbdcfbd6acae12', 'validated', '{"audio_key":"5b8dfa662fc4f8cbac9ee7a3497ae5b9dea0e3e909457fdb92eee98231c641f6","entity_key":"u_presupposition_accommodation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9b114e554d9949dbe3162cf0eeeef8e0010b9b6f28a4b44c39fbdcfbd6acae12","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5b8dfa662fc4f8cbac9ee7a3497ae5b9dea0e3e909457fdb92eee98231c641f6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_institutional_register_precision_01 -> audio/generated/de-DE/utterances/5e31d55c4265d612a072b2c9ff2c3e33a236e62f2ef59e9af15111a8a67232d9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('55060d4b-be39-5a29-b00a-2fe5f3106542', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_institutional_register_precision_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dbb542f1f15915bdfa1eaf7c39c69c47945941afad77225da3bb49700558ae2f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7b888756-bb08-53ee-bcac-fd104f668129', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('55060d4b-be39-5a29-b00a-2fe5f3106542', 1), 'dbb542f1f15915bdfa1eaf7c39c69c47945941afad77225da3bb49700558ae2f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5e31d55c4265d612a072b2c9ff2c3e33a236e62f2ef59e9af15111a8a67232d9.mp3', 5250, '2026-09-13 11:47:39.423902', '2aa511d1d5857fbb3ce92dee95564d6427d1bf72d492d09896165bf22090811a', 'validated', '{"audio_key":"5e31d55c4265d612a072b2c9ff2c3e33a236e62f2ef59e9af15111a8a67232d9","entity_key":"u_institutional_register_precision_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2aa511d1d5857fbb3ce92dee95564d6427d1bf72d492d09896165bf22090811a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5e31d55c4265d612a072b2c9ff2c3e33a236e62f2ef59e9af15111a8a67232d9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_institutional_register_precision_01_listen -> audio/generated/de-DE/utterances/5e31d55c4265d612a072b2c9ff2c3e33a236e62f2ef59e9af15111a8a67232d9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('50cac4de-84cd-594e-96ff-357563426cbd', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_institutional_register_precision_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dbb542f1f15915bdfa1eaf7c39c69c47945941afad77225da3bb49700558ae2f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('50c05031-c6f0-5b52-aa98-31ec4cba9a96', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('50cac4de-84cd-594e-96ff-357563426cbd', 1), 'dbb542f1f15915bdfa1eaf7c39c69c47945941afad77225da3bb49700558ae2f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5e31d55c4265d612a072b2c9ff2c3e33a236e62f2ef59e9af15111a8a67232d9.mp3', 5250, '2026-09-13 11:47:39.423902', '2aa511d1d5857fbb3ce92dee95564d6427d1bf72d492d09896165bf22090811a', 'validated', '{"audio_key":"5e31d55c4265d612a072b2c9ff2c3e33a236e62f2ef59e9af15111a8a67232d9","entity_key":"ex_institutional_register_precision_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2aa511d1d5857fbb3ce92dee95564d6427d1bf72d492d09896165bf22090811a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5e31d55c4265d612a072b2c9ff2c3e33a236e62f2ef59e9af15111a8a67232d9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_judgment_language_capstone_02 -> audio/generated/de-DE/utterances/679a58cb0a0c78e53da1e2bfd3b78d5b9e7b2b906f5e8cdb8bc21024c0651d75.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c834b4c0-d1e9-5d6f-919d-650b1ab92b19', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_judgment_language_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8471a10f2e95341be27d04b8391d5bbd1fb4c1c3c3ff1fd57f6b131ed0dbcec8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9c675026-78b3-5b6d-af43-829ccbdbfe4f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c834b4c0-d1e9-5d6f-919d-650b1ab92b19', 1), '8471a10f2e95341be27d04b8391d5bbd1fb4c1c3c3ff1fd57f6b131ed0dbcec8',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/679a58cb0a0c78e53da1e2bfd3b78d5b9e7b2b906f5e8cdb8bc21024c0651d75.mp3', 6034, '2026-09-13 11:47:39.703541', '583242d51c1c2594d5c443f2584a2c326b8328f2c14cf3c676f5c502732382c4', 'validated', '{"audio_key":"679a58cb0a0c78e53da1e2bfd3b78d5b9e7b2b906f5e8cdb8bc21024c0651d75","entity_key":"u_judgment_language_capstone_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"583242d51c1c2594d5c443f2584a2c326b8328f2c14cf3c676f5c502732382c4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/679a58cb0a0c78e53da1e2bfd3b78d5b9e7b2b906f5e8cdb8bc21024c0651d75.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_descriptive_normative_reasoning_02 -> audio/generated/de-DE/utterances/6d04b96798bd105ae212c17c5d9a26e727990c3e90890987e1e368ac37f6c40f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('271639fb-73c6-5ddb-925c-5be8f11097b5', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_descriptive_normative_reasoning_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8557e89df91561f7b851913c449cfeebab5b7d5956d5ee1da2cf858fb9f289fd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('19306e28-a0d5-5367-9a93-63bafc1cef04', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('271639fb-73c6-5ddb-925c-5be8f11097b5', 1), '8557e89df91561f7b851913c449cfeebab5b7d5956d5ee1da2cf858fb9f289fd',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/6d04b96798bd105ae212c17c5d9a26e727990c3e90890987e1e368ac37f6c40f.mp3', 5799, '2026-09-13 11:47:41.023333', 'b8c9800a1e8ae3966292b864f0776fdd14cc618846397e491cffc9a110e9b5de', 'validated', '{"audio_key":"6d04b96798bd105ae212c17c5d9a26e727990c3e90890987e1e368ac37f6c40f","entity_key":"u_descriptive_normative_reasoning_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b8c9800a1e8ae3966292b864f0776fdd14cc618846397e491cffc9a110e9b5de","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/6d04b96798bd105ae212c17c5d9a26e727990c3e90890987e1e368ac37f6c40f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_steelmanning_concession_01 -> audio/generated/de-DE/utterances/822196a8e43ebd1dc11a5949f8aee96d487f630910e0937d4dcdb6c8dca8cf17.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('84426a18-717d-51e3-a628-f25aec0b75cf', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_steelmanning_concession_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2d83176e3a91a9049a55e789ced3cbc22ace64ebab58426b4b2b60b264dda66e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('59b812ce-16e4-56b8-82df-b7160560aa27', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('84426a18-717d-51e3-a628-f25aec0b75cf', 1), '2d83176e3a91a9049a55e789ced3cbc22ace64ebab58426b4b2b60b264dda66e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/822196a8e43ebd1dc11a5949f8aee96d487f630910e0937d4dcdb6c8dca8cf17.mp3', 4858, '2026-09-13 11:47:41.278573', '79fee3defce612779cac3d0d543a1d3fa70f44a22b1f65fa3e173171b3fca87a', 'validated', '{"audio_key":"822196a8e43ebd1dc11a5949f8aee96d487f630910e0937d4dcdb6c8dca8cf17","entity_key":"u_steelmanning_concession_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"79fee3defce612779cac3d0d543a1d3fa70f44a22b1f65fa3e173171b3fca87a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/822196a8e43ebd1dc11a5949f8aee96d487f630910e0937d4dcdb6c8dca8cf17.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_steelmanning_concession_01_listen -> audio/generated/de-DE/utterances/822196a8e43ebd1dc11a5949f8aee96d487f630910e0937d4dcdb6c8dca8cf17.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('91c61407-bd83-5488-ac4b-90ff9253cfe5', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_steelmanning_concession_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2d83176e3a91a9049a55e789ced3cbc22ace64ebab58426b4b2b60b264dda66e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4b8c8642-6544-5986-b0f6-84433d9f9a94', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('91c61407-bd83-5488-ac4b-90ff9253cfe5', 1), '2d83176e3a91a9049a55e789ced3cbc22ace64ebab58426b4b2b60b264dda66e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/822196a8e43ebd1dc11a5949f8aee96d487f630910e0937d4dcdb6c8dca8cf17.mp3', 4858, '2026-09-13 11:47:41.278573', '79fee3defce612779cac3d0d543a1d3fa70f44a22b1f65fa3e173171b3fca87a', 'validated', '{"audio_key":"822196a8e43ebd1dc11a5949f8aee96d487f630910e0937d4dcdb6c8dca8cf17","entity_key":"ex_steelmanning_concession_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"79fee3defce612779cac3d0d543a1d3fa70f44a22b1f65fa3e173171b3fca87a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/822196a8e43ebd1dc11a5949f8aee96d487f630910e0937d4dcdb6c8dca8cf17.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_narrative_perspective_temporal_control_03 -> audio/generated/de-DE/utterances/835848b7609dc1a61c0537792c2fd74a05c386f13c53c8d7fcbc5ec022e874db.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('db674802-1efb-5ed6-8f2b-b53cdff1a057', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_narrative_perspective_temporal_control_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bc1a45981d1ea9b0c10c5849324888a0cfc8d93937ddf261eebd873ab8768359'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6118880c-54d9-5537-8120-c606220303a1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('db674802-1efb-5ed6-8f2b-b53cdff1a057', 1), 'bc1a45981d1ea9b0c10c5849324888a0cfc8d93937ddf261eebd873ab8768359',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/835848b7609dc1a61c0537792c2fd74a05c386f13c53c8d7fcbc5ec022e874db.mp3', 4728, '2026-09-13 11:47:42.644690', '5fdae4f1b8518ff595e995ba4ac1df7fce743863c5c9e5d065785c65a5dabccf', 'validated', '{"audio_key":"835848b7609dc1a61c0537792c2fd74a05c386f13c53c8d7fcbc5ec022e874db","entity_key":"u_narrative_perspective_temporal_control_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5fdae4f1b8518ff595e995ba4ac1df7fce743863c5c9e5d065785c65a5dabccf","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/835848b7609dc1a61c0537792c2fd74a05c386f13c53c8d7fcbc5ec022e874db.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_narrative_perspective_temporal_control_02_listen -> audio/generated/de-DE/utterances/835848b7609dc1a61c0537792c2fd74a05c386f13c53c8d7fcbc5ec022e874db.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7b4ca8e4-d996-55e9-988c-abc947416be5', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_narrative_perspective_temporal_control_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bc1a45981d1ea9b0c10c5849324888a0cfc8d93937ddf261eebd873ab8768359'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('491db04c-7155-5604-9a11-2da3bb518284', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7b4ca8e4-d996-55e9-988c-abc947416be5', 1), 'bc1a45981d1ea9b0c10c5849324888a0cfc8d93937ddf261eebd873ab8768359',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/835848b7609dc1a61c0537792c2fd74a05c386f13c53c8d7fcbc5ec022e874db.mp3', 4728, '2026-09-13 11:47:42.644690', '5fdae4f1b8518ff595e995ba4ac1df7fce743863c5c9e5d065785c65a5dabccf', 'validated', '{"audio_key":"835848b7609dc1a61c0537792c2fd74a05c386f13c53c8d7fcbc5ec022e874db","entity_key":"ex_narrative_perspective_temporal_control_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5fdae4f1b8518ff595e995ba4ac1df7fce743863c5c9e5d065785c65a5dabccf","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/835848b7609dc1a61c0537792c2fd74a05c386f13c53c8d7fcbc5ec022e874db.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_judgment_language_capstone_03 -> audio/generated/de-DE/utterances/836e73138d273bc74569611305a6b177e57cb1c8c92f1be195fcbe3c8f237841.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('69f994a0-9439-5f4d-a81a-15289cf5b3a5', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_judgment_language_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd77a113684c97d5c236c77a47c76b47451911c973d87776843f03ec126be1fb5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ede8230c-bbcd-5295-a9e9-88f277c00faf', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('69f994a0-9439-5f4d-a81a-15289cf5b3a5', 1), 'd77a113684c97d5c236c77a47c76b47451911c973d87776843f03ec126be1fb5',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/836e73138d273bc74569611305a6b177e57cb1c8c92f1be195fcbe3c8f237841.mp3', 4963, '2026-09-13 11:47:42.798932', '097186859bcfa45f3fea6ac29e2c51086ebf9ebdef67c6823e8665e1611b218c', 'validated', '{"audio_key":"836e73138d273bc74569611305a6b177e57cb1c8c92f1be195fcbe3c8f237841","entity_key":"u_judgment_language_capstone_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"097186859bcfa45f3fea6ac29e2c51086ebf9ebdef67c6823e8665e1611b218c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/836e73138d273bc74569611305a6b177e57cb1c8c92f1be195fcbe3c8f237841.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_judgment_language_capstone_02_listen -> audio/generated/de-DE/utterances/836e73138d273bc74569611305a6b177e57cb1c8c92f1be195fcbe3c8f237841.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('645c6b8b-4c8a-58f3-b6c2-6d5635286081', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_judgment_language_capstone_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd77a113684c97d5c236c77a47c76b47451911c973d87776843f03ec126be1fb5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7d662e78-7096-5b0d-b598-b7e763e02bad', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('645c6b8b-4c8a-58f3-b6c2-6d5635286081', 1), 'd77a113684c97d5c236c77a47c76b47451911c973d87776843f03ec126be1fb5',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/836e73138d273bc74569611305a6b177e57cb1c8c92f1be195fcbe3c8f237841.mp3', 4963, '2026-09-13 11:47:42.798932', '097186859bcfa45f3fea6ac29e2c51086ebf9ebdef67c6823e8665e1611b218c', 'validated', '{"audio_key":"836e73138d273bc74569611305a6b177e57cb1c8c92f1be195fcbe3c8f237841","entity_key":"ex_judgment_language_capstone_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"097186859bcfa45f3fea6ac29e2c51086ebf9ebdef67c6823e8665e1611b218c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/836e73138d273bc74569611305a6b177e57cb1c8c92f1be195fcbe3c8f237841.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_academic_stance_citation_distance_03 -> audio/generated/de-DE/utterances/8596712064153cb5634a5bfd4f64f528e301284b89f94498463bc283738699d3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1c5b8286-07e2-57ab-9f38-ee768bfb729c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_academic_stance_citation_distance_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '231511b3735e735209662e50958b6ce19b8540dd0aeff86744afc0d081994be8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('05f2d2ee-d1f6-5a8f-8199-251805dd65ce', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1c5b8286-07e2-57ab-9f38-ee768bfb729c', 1), '231511b3735e735209662e50958b6ce19b8540dd0aeff86744afc0d081994be8',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8596712064153cb5634a5bfd4f64f528e301284b89f94498463bc283738699d3.mp3', 4127, '2026-09-13 11:47:44.076874', 'f6333e48f80e1b55359e694ebcd001339095858ee0ba9a1a9c2020cc7a7635cb', 'validated', '{"audio_key":"8596712064153cb5634a5bfd4f64f528e301284b89f94498463bc283738699d3","entity_key":"u_academic_stance_citation_distance_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f6333e48f80e1b55359e694ebcd001339095858ee0ba9a1a9c2020cc7a7635cb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8596712064153cb5634a5bfd4f64f528e301284b89f94498463bc283738699d3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_academic_stance_citation_distance_02_listen -> audio/generated/de-DE/utterances/8596712064153cb5634a5bfd4f64f528e301284b89f94498463bc283738699d3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('0fc99527-f977-59c9-ad5b-2a7f695e1696', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_academic_stance_citation_distance_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '231511b3735e735209662e50958b6ce19b8540dd0aeff86744afc0d081994be8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d6e2eb5e-8488-5328-8d31-1a2984d54b32', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('0fc99527-f977-59c9-ad5b-2a7f695e1696', 1), '231511b3735e735209662e50958b6ce19b8540dd0aeff86744afc0d081994be8',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8596712064153cb5634a5bfd4f64f528e301284b89f94498463bc283738699d3.mp3', 4127, '2026-09-13 11:47:44.076874', 'f6333e48f80e1b55359e694ebcd001339095858ee0ba9a1a9c2020cc7a7635cb', 'validated', '{"audio_key":"8596712064153cb5634a5bfd4f64f528e301284b89f94498463bc283738699d3","entity_key":"ex_academic_stance_citation_distance_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f6333e48f80e1b55359e694ebcd001339095858ee0ba9a1a9c2020cc7a7635cb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8596712064153cb5634a5bfd4f64f528e301284b89f94498463bc283738699d3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_principled_disagreement_negotiation_04 -> audio/generated/de-DE/utterances/8663090e46118e704a1e92d59340fff4950aedd7e9d7f167e6959fd6543064d4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9505344d-684f-5f7c-b3b9-605a4b080369', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_principled_disagreement_negotiation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '68a69f46dbda2f3e8f386230195e332bffbb1a300a2e94aa520e06e306b905ef'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e82c13bc-ac9d-5820-96af-cad009154b98', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9505344d-684f-5f7c-b3b9-605a4b080369', 1), '68a69f46dbda2f3e8f386230195e332bffbb1a300a2e94aa520e06e306b905ef',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8663090e46118e704a1e92d59340fff4950aedd7e9d7f167e6959fd6543064d4.mp3', 4440, '2026-09-13 11:47:44.296020', 'c2f043d3727c1f5791510c7cd1de1da147a1b9fb72ac7818b36f8b198c2e7d76', 'validated', '{"audio_key":"8663090e46118e704a1e92d59340fff4950aedd7e9d7f167e6959fd6543064d4","entity_key":"u_principled_disagreement_negotiation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c2f043d3727c1f5791510c7cd1de1da147a1b9fb72ac7818b36f8b198c2e7d76","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8663090e46118e704a1e92d59340fff4950aedd7e9d7f167e6959fd6543064d4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_academic_stance_citation_distance_01 -> audio/generated/de-DE/utterances/88fb2e2b739a39598d20c3fe8ca016ebea33452b0d2d32db39e5d993da813329.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d77e5f6b-e4ba-5247-852a-7aced93b0bf4', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_academic_stance_citation_distance_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a3e79cd017742b31f93a294ae31a5d78c615d0862f07cb551fd99c2db25672da'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5bd843e1-498a-5a1e-ace5-15029ba0b0d0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d77e5f6b-e4ba-5247-852a-7aced93b0bf4', 1), 'a3e79cd017742b31f93a294ae31a5d78c615d0862f07cb551fd99c2db25672da',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/88fb2e2b739a39598d20c3fe8ca016ebea33452b0d2d32db39e5d993da813329.mp3', 4597, '2026-09-13 11:47:45.584499', '4a11ef4ec500e9a4ff9deafd176e15e5ccb0a37b399b7380662333ade888e202', 'validated', '{"audio_key":"88fb2e2b739a39598d20c3fe8ca016ebea33452b0d2d32db39e5d993da813329","entity_key":"u_academic_stance_citation_distance_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4a11ef4ec500e9a4ff9deafd176e15e5ccb0a37b399b7380662333ade888e202","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/88fb2e2b739a39598d20c3fe8ca016ebea33452b0d2d32db39e5d993da813329.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_academic_stance_citation_distance_01_listen -> audio/generated/de-DE/utterances/88fb2e2b739a39598d20c3fe8ca016ebea33452b0d2d32db39e5d993da813329.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('1cfa0c09-7bbc-5a19-bc2c-97b8bf533908', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_academic_stance_citation_distance_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a3e79cd017742b31f93a294ae31a5d78c615d0862f07cb551fd99c2db25672da'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6cac80dc-be54-5fb3-9dbd-56826e3c4098', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('1cfa0c09-7bbc-5a19-bc2c-97b8bf533908', 1), 'a3e79cd017742b31f93a294ae31a5d78c615d0862f07cb551fd99c2db25672da',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/88fb2e2b739a39598d20c3fe8ca016ebea33452b0d2d32db39e5d993da813329.mp3', 4597, '2026-09-13 11:47:45.584499', '4a11ef4ec500e9a4ff9deafd176e15e5ccb0a37b399b7380662333ade888e202', 'validated', '{"audio_key":"88fb2e2b739a39598d20c3fe8ca016ebea33452b0d2d32db39e5d993da813329","entity_key":"ex_academic_stance_citation_distance_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4a11ef4ec500e9a4ff9deafd176e15e5ccb0a37b399b7380662333ade888e202","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/88fb2e2b739a39598d20c3fe8ca016ebea33452b0d2d32db39e5d993da813329.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_metaphor_idiom_pragmatic_transfer_04 -> audio/generated/de-DE/utterances/8d3c5e7a39da491a1b3f8d07ad56c27880985543832972f20fbb4f0ba129750a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f63fa1f9-7c50-5a64-880b-0656110a77ef', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_metaphor_idiom_pragmatic_transfer_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b6f449657c98a425b8a78e95894311fcbce2a5ea7c009dd7f68310e45e5c6b6e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9f5d8e0e-1a9a-5855-b45c-46754f687f82', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f63fa1f9-7c50-5a64-880b-0656110a77ef', 1), 'b6f449657c98a425b8a78e95894311fcbce2a5ea7c009dd7f68310e45e5c6b6e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8d3c5e7a39da491a1b3f8d07ad56c27880985543832972f20fbb4f0ba129750a.mp3', 4858, '2026-09-13 11:47:45.823615', 'cff3983381392d8d79b4b60b4c6d498557a3494ffb7a75f129d518dc171de338', 'validated', '{"audio_key":"8d3c5e7a39da491a1b3f8d07ad56c27880985543832972f20fbb4f0ba129750a","entity_key":"u_metaphor_idiom_pragmatic_transfer_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cff3983381392d8d79b4b60b4c6d498557a3494ffb7a75f129d518dc171de338","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8d3c5e7a39da491a1b3f8d07ad56c27880985543832972f20fbb4f0ba129750a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_academic_stance_citation_distance_05 -> audio/generated/de-DE/utterances/905cd9cb189d2339565b016c7ff08358b8f7ed56ec3f6fe886cd72ef03685716.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e255eca2-2c47-5136-a372-d5c6bbab3edd', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_academic_stance_citation_distance_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2cf3e988616127034a9405435bda3da1faf5eae17ec0b924513a307c6aa2e398'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('241802a8-b137-57dd-beb5-a31c6eee786e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e255eca2-2c47-5136-a372-d5c6bbab3edd', 1), '2cf3e988616127034a9405435bda3da1faf5eae17ec0b924513a307c6aa2e398',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/905cd9cb189d2339565b016c7ff08358b8f7ed56ec3f6fe886cd72ef03685716.mp3', 4362, '2026-09-13 11:47:47.008247', 'aaef457aada237bef16273074a5a51770dc1d70a3edf5c98a6724550f7ea3158', 'validated', '{"audio_key":"905cd9cb189d2339565b016c7ff08358b8f7ed56ec3f6fe886cd72ef03685716","entity_key":"u_academic_stance_citation_distance_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"aaef457aada237bef16273074a5a51770dc1d70a3edf5c98a6724550f7ea3158","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/905cd9cb189d2339565b016c7ff08358b8f7ed56ec3f6fe886cd72ef03685716.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_academic_stance_citation_distance_03_listen -> audio/generated/de-DE/utterances/905cd9cb189d2339565b016c7ff08358b8f7ed56ec3f6fe886cd72ef03685716.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('4a515cf7-1eff-5ce3-a287-09b4ef367da4', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_academic_stance_citation_distance_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2cf3e988616127034a9405435bda3da1faf5eae17ec0b924513a307c6aa2e398'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e9a1b267-47c3-5916-87cf-0d6ddf353068', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('4a515cf7-1eff-5ce3-a287-09b4ef367da4', 1), '2cf3e988616127034a9405435bda3da1faf5eae17ec0b924513a307c6aa2e398',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/905cd9cb189d2339565b016c7ff08358b8f7ed56ec3f6fe886cd72ef03685716.mp3', 4362, '2026-09-13 11:47:47.008247', 'aaef457aada237bef16273074a5a51770dc1d70a3edf5c98a6724550f7ea3158', 'validated', '{"audio_key":"905cd9cb189d2339565b016c7ff08358b8f7ed56ec3f6fe886cd72ef03685716","entity_key":"ex_academic_stance_citation_distance_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"aaef457aada237bef16273074a5a51770dc1d70a3edf5c98a6724550f7ea3158","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/905cd9cb189d2339565b016c7ff08358b8f7ed56ec3f6fe886cd72ef03685716.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_narrative_perspective_temporal_control_06 -> audio/generated/de-DE/utterances/9329e5f4b4d152e48d141f4c092b57030efc344c66664cff642d5eb3001a435c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('051fa53d-fe58-555f-b892-8424cea4c570', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_narrative_perspective_temporal_control_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '21c140baf395afaad535f0657d67c334f07eafaf99db442b9d81a28ec1a50074'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('756f3e5c-9997-5964-9d0c-52442bef759c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('051fa53d-fe58-555f-b892-8424cea4c570', 1), '21c140baf395afaad535f0657d67c334f07eafaf99db442b9d81a28ec1a50074',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9329e5f4b4d152e48d141f4c092b57030efc344c66664cff642d5eb3001a435c.mp3', 4858, '2026-09-13 11:47:47.288426', '3f69ada3e1d69862b8ae0c9886a99629bcaa0c6e3ba2c2914f7fcbd646ad615b', 'validated', '{"audio_key":"9329e5f4b4d152e48d141f4c092b57030efc344c66664cff642d5eb3001a435c","entity_key":"u_narrative_perspective_temporal_control_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3f69ada3e1d69862b8ae0c9886a99629bcaa0c6e3ba2c2914f7fcbd646ad615b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9329e5f4b4d152e48d141f4c092b57030efc344c66664cff642d5eb3001a435c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_institutional_register_precision_06 -> audio/generated/de-DE/utterances/ab1e1daeeca446a5e9cbbdb44d5aa964da3dd7dce9371b6c70973d4ad35e80b1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f7ba92ba-78f8-52d0-9a14-d64fa4521922', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_institutional_register_precision_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '72a3f13f8aefe3872aa7401c3985102f133fc85253491dabc9c3f7082b24866f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f0dd8000-d2ea-521e-817c-9e80b312380e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f7ba92ba-78f8-52d0-9a14-d64fa4521922', 1), '72a3f13f8aefe3872aa7401c3985102f133fc85253491dabc9c3f7082b24866f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ab1e1daeeca446a5e9cbbdb44d5aa964da3dd7dce9371b6c70973d4ad35e80b1.mp3', 3787, '2026-09-13 11:47:48.353273', '2d9341ec69b4e8e7cbad877afd1f5043775a9afb8e97f583c2a949090621869f', 'validated', '{"audio_key":"ab1e1daeeca446a5e9cbbdb44d5aa964da3dd7dce9371b6c70973d4ad35e80b1","entity_key":"u_institutional_register_precision_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2d9341ec69b4e8e7cbad877afd1f5043775a9afb8e97f583c2a949090621869f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ab1e1daeeca446a5e9cbbdb44d5aa964da3dd7dce9371b6c70973d4ad35e80b1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_oral_synthesis_pressure_02 -> audio/generated/de-DE/utterances/ad0ddf8bee5ee3a76860ebcd7817c1a75993d3bb6dc83f70d83f4f76575f9281.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('db0aae2c-230c-5458-8686-5ac90cb44fee', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_oral_synthesis_pressure_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7548176a6023d0c0dd6848ae2ca3232414e260483418855900d5a04f311d03b1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ab78f183-03ca-53db-a419-0185feca42f5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('db0aae2c-230c-5458-8686-5ac90cb44fee', 1), '7548176a6023d0c0dd6848ae2ca3232414e260483418855900d5a04f311d03b1',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ad0ddf8bee5ee3a76860ebcd7817c1a75993d3bb6dc83f70d83f4f76575f9281.mp3', 5093, '2026-09-13 11:47:48.893590', '152e607f0af2a276d19dc15af40be77d09b6073e0d949af77040ea69d6bdf2b8', 'validated', '{"audio_key":"ad0ddf8bee5ee3a76860ebcd7817c1a75993d3bb6dc83f70d83f4f76575f9281","entity_key":"u_oral_synthesis_pressure_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"152e607f0af2a276d19dc15af40be77d09b6073e0d949af77040ea69d6bdf2b8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ad0ddf8bee5ee3a76860ebcd7817c1a75993d3bb6dc83f70d83f4f76575f9281.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_principled_disagreement_negotiation_03 -> audio/generated/de-DE/utterances/b5b51b956de76b94f7751a9b4171e2051aff70076672946241311d45e5f8d26f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('31bdee6d-8dbf-54e5-b354-6ded5256d1ce', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_principled_disagreement_negotiation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7b766fb37c7965f086d00ca7448520e9a0997a10767078da8e5372954a7310c7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('93b7f624-4d7c-5624-a2d3-9196c89ecc95', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('31bdee6d-8dbf-54e5-b354-6ded5256d1ce', 1), '7b766fb37c7965f086d00ca7448520e9a0997a10767078da8e5372954a7310c7',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b5b51b956de76b94f7751a9b4171e2051aff70076672946241311d45e5f8d26f.mp3', 4310, '2026-09-13 11:47:49.763419', '860a4bfae01fde3f9b15001c5d17b9a47f39a60a2f0fb3f18fda2c24de64829d', 'validated', '{"audio_key":"b5b51b956de76b94f7751a9b4171e2051aff70076672946241311d45e5f8d26f","entity_key":"u_principled_disagreement_negotiation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"860a4bfae01fde3f9b15001c5d17b9a47f39a60a2f0fb3f18fda2c24de64829d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b5b51b956de76b94f7751a9b4171e2051aff70076672946241311d45e5f8d26f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_principled_disagreement_negotiation_02_listen -> audio/generated/de-DE/utterances/b5b51b956de76b94f7751a9b4171e2051aff70076672946241311d45e5f8d26f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('6058cc74-de4c-508f-817c-569fb4ea1ab1', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_principled_disagreement_negotiation_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7b766fb37c7965f086d00ca7448520e9a0997a10767078da8e5372954a7310c7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f07c290c-87b8-5035-9bef-0e317e9f8910', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('6058cc74-de4c-508f-817c-569fb4ea1ab1', 1), '7b766fb37c7965f086d00ca7448520e9a0997a10767078da8e5372954a7310c7',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b5b51b956de76b94f7751a9b4171e2051aff70076672946241311d45e5f8d26f.mp3', 4310, '2026-09-13 11:47:49.763419', '860a4bfae01fde3f9b15001c5d17b9a47f39a60a2f0fb3f18fda2c24de64829d', 'validated', '{"audio_key":"b5b51b956de76b94f7751a9b4171e2051aff70076672946241311d45e5f8d26f","entity_key":"ex_principled_disagreement_negotiation_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"860a4bfae01fde3f9b15001c5d17b9a47f39a60a2f0fb3f18fda2c24de64829d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b5b51b956de76b94f7751a9b4171e2051aff70076672946241311d45e5f8d26f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_institutional_register_precision_02 -> audio/generated/de-DE/utterances/bb16f9faf4bb71d4b8015e59187bb74baa972c04273fef90cdf51447755427a6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c674a791-a154-58b9-95fe-ec97e81d7561', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_institutional_register_precision_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1565d2a5edf05f9b084b14d235faf2c837be42c321a864abb85953dacd18e01b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5c89524d-78fa-52f8-9623-372ffa5be0ee', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c674a791-a154-58b9-95fe-ec97e81d7561', 1), '1565d2a5edf05f9b084b14d235faf2c837be42c321a864abb85953dacd18e01b',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/bb16f9faf4bb71d4b8015e59187bb74baa972c04273fef90cdf51447755427a6.mp3', 4414, '2026-09-13 11:47:50.304122', '02b7e738d930c81e33736033ebadf66631397d00b5d5084be2d5aa78a7e36d8a', 'validated', '{"audio_key":"bb16f9faf4bb71d4b8015e59187bb74baa972c04273fef90cdf51447755427a6","entity_key":"u_institutional_register_precision_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"02b7e738d930c81e33736033ebadf66631397d00b5d5084be2d5aa78a7e36d8a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/bb16f9faf4bb71d4b8015e59187bb74baa972c04273fef90cdf51447755427a6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_descriptive_normative_reasoning_05 -> audio/generated/de-DE/utterances/bb3a455af511fd21af9b9cccb743b2543cc22b20a8a4916cb00b4b33182890b0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7bbded9e-09d5-54d4-8cdc-2ec36dfa343f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_descriptive_normative_reasoning_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '964b678e4bd469ed3a7f3a08281fe6d8fb23bb16b7f34db47e792200b456ff97'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('acec8b62-e17f-530a-9329-5870bec9db13', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7bbded9e-09d5-54d4-8cdc-2ec36dfa343f', 1), '964b678e4bd469ed3a7f3a08281fe6d8fb23bb16b7f34db47e792200b456ff97',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/bb3a455af511fd21af9b9cccb743b2543cc22b20a8a4916cb00b4b33182890b0.mp3', 5616, '2026-09-13 11:47:51.349470', '650f3756bc0fb869500b8a5200f0d8400b24dc17cee4d7a56f28fcd77e54ed11', 'validated', '{"audio_key":"bb3a455af511fd21af9b9cccb743b2543cc22b20a8a4916cb00b4b33182890b0","entity_key":"u_descriptive_normative_reasoning_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"650f3756bc0fb869500b8a5200f0d8400b24dc17cee4d7a56f28fcd77e54ed11","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/bb3a455af511fd21af9b9cccb743b2543cc22b20a8a4916cb00b4b33182890b0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_descriptive_normative_reasoning_03_listen -> audio/generated/de-DE/utterances/bb3a455af511fd21af9b9cccb743b2543cc22b20a8a4916cb00b4b33182890b0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('8954b08d-fd89-50b1-bb9e-e09a852d0fb7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_descriptive_normative_reasoning_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '964b678e4bd469ed3a7f3a08281fe6d8fb23bb16b7f34db47e792200b456ff97'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4ea5186c-1342-5cbb-a5f0-3421cd50b3ea', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('8954b08d-fd89-50b1-bb9e-e09a852d0fb7', 1), '964b678e4bd469ed3a7f3a08281fe6d8fb23bb16b7f34db47e792200b456ff97',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/bb3a455af511fd21af9b9cccb743b2543cc22b20a8a4916cb00b4b33182890b0.mp3', 5616, '2026-09-13 11:47:51.349470', '650f3756bc0fb869500b8a5200f0d8400b24dc17cee4d7a56f28fcd77e54ed11', 'validated', '{"audio_key":"bb3a455af511fd21af9b9cccb743b2543cc22b20a8a4916cb00b4b33182890b0","entity_key":"ex_descriptive_normative_reasoning_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"650f3756bc0fb869500b8a5200f0d8400b24dc17cee4d7a56f28fcd77e54ed11","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/bb3a455af511fd21af9b9cccb743b2543cc22b20a8a4916cb00b4b33182890b0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_oral_synthesis_pressure_06 -> audio/generated/de-DE/utterances/c59c38ccc7dd5ac444e6aeeccbd731248004629e1531482e8a6bb398608f1418.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b342b229-5c7e-59c5-97c8-bd1890501e23', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_oral_synthesis_pressure_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6e6d07f5d9a123fd5e42941dfb148767da4ee9f34cc2e6ebf8a53d3f51a5ff19'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ca42cfff-088b-53ed-80e4-5264dd8074ef', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b342b229-5c7e-59c5-97c8-bd1890501e23', 1), '6e6d07f5d9a123fd5e42941dfb148767da4ee9f34cc2e6ebf8a53d3f51a5ff19',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c59c38ccc7dd5ac444e6aeeccbd731248004629e1531482e8a6bb398608f1418.mp3', 3108, '2026-09-13 11:47:51.657445', 'f60666adb4d264ee8ad7e5f069b1b429f1a6f93e8e25631540ae16fb84a3c6e0', 'validated', '{"audio_key":"c59c38ccc7dd5ac444e6aeeccbd731248004629e1531482e8a6bb398608f1418","entity_key":"u_oral_synthesis_pressure_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f60666adb4d264ee8ad7e5f069b1b429f1a6f93e8e25631540ae16fb84a3c6e0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c59c38ccc7dd5ac444e6aeeccbd731248004629e1531482e8a6bb398608f1418.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_steelmanning_concession_04 -> audio/generated/de-DE/utterances/c7d85db9495c4d1927ef13eceebf12bf911481ee11ac57c92ad442864c130d3c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d94a0012-f877-55f8-9ed9-6e30d86c3742', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_steelmanning_concession_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '56992445322d87ce573380055a82d408a04c9ea5ac506cf1eff116a59db53bb9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ed64519a-612d-5a2d-b417-b7a66c2324bb', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d94a0012-f877-55f8-9ed9-6e30d86c3742', 1), '56992445322d87ce573380055a82d408a04c9ea5ac506cf1eff116a59db53bb9',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c7d85db9495c4d1927ef13eceebf12bf911481ee11ac57c92ad442864c130d3c.mp3', 4597, '2026-09-13 11:47:52.890314', '672612c91100022e32dfca7cb44ac0bc07c5f9be1131d149e86d6167a2e355c4', 'validated', '{"audio_key":"c7d85db9495c4d1927ef13eceebf12bf911481ee11ac57c92ad442864c130d3c","entity_key":"u_steelmanning_concession_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"672612c91100022e32dfca7cb44ac0bc07c5f9be1131d149e86d6167a2e355c4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c7d85db9495c4d1927ef13eceebf12bf911481ee11ac57c92ad442864c130d3c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_metaphor_idiom_pragmatic_transfer_02 -> audio/generated/de-DE/utterances/ca1f0e561f8fc09e8ad45f128f73f4606d7fe759cf45fdb02fc10aeb540a4e5f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('17c940d8-372c-5811-a6f2-3b306665aa4d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_metaphor_idiom_pragmatic_transfer_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9fc6b05c2b4654772f1b26a6aadd34c3dc5ed307c1c0241ff9056dcc0a120af0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4bd25e85-a382-550e-901e-722430bbea76', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('17c940d8-372c-5811-a6f2-3b306665aa4d', 1), '9fc6b05c2b4654772f1b26a6aadd34c3dc5ed307c1c0241ff9056dcc0a120af0',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ca1f0e561f8fc09e8ad45f128f73f4606d7fe759cf45fdb02fc10aeb540a4e5f.mp3', 4127, '2026-09-13 11:47:53.077333', 'd544775b749d0eef377fb330a9471e314ffd7996ef5e7be3708aa47e3503da44', 'validated', '{"audio_key":"ca1f0e561f8fc09e8ad45f128f73f4606d7fe759cf45fdb02fc10aeb540a4e5f","entity_key":"u_metaphor_idiom_pragmatic_transfer_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d544775b749d0eef377fb330a9471e314ffd7996ef5e7be3708aa47e3503da44","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ca1f0e561f8fc09e8ad45f128f73f4606d7fe759cf45fdb02fc10aeb540a4e5f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_presupposition_accommodation_04 -> audio/generated/de-DE/utterances/cc2fb131571d138d5bf7d1cdc238d6803adf1f7b20cc1684bc229a966d1f530c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('16084f21-7299-53ab-ac3e-e0a6952838e7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_presupposition_accommodation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7939d2fc221c82595a6b9c42091a1868adb5d147a906280a58ea9192a10be9d6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1c34d22f-3efd-5370-a64a-84746af2bf41', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('16084f21-7299-53ab-ac3e-e0a6952838e7', 1), '7939d2fc221c82595a6b9c42091a1868adb5d147a906280a58ea9192a10be9d6',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/cc2fb131571d138d5bf7d1cdc238d6803adf1f7b20cc1684bc229a966d1f530c.mp3', 4414, '2026-09-13 11:47:54.346456', '01c332218439bb4f2af078351bfadd6733df1bcda6a8b0d3c677238331b3484e', 'validated', '{"audio_key":"cc2fb131571d138d5bf7d1cdc238d6803adf1f7b20cc1684bc229a966d1f530c","entity_key":"u_presupposition_accommodation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"01c332218439bb4f2af078351bfadd6733df1bcda6a8b0d3c677238331b3484e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/cc2fb131571d138d5bf7d1cdc238d6803adf1f7b20cc1684bc229a966d1f530c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_metaphor_idiom_pragmatic_transfer_06 -> audio/generated/de-DE/utterances/d03c4a2d7f1722057433b73b2c8ea2dbe45ca2763ffc766a05c44c8b3068bf22.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f7f97c5d-90ff-5783-a4aa-f0e8b4b6a5dd', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_metaphor_idiom_pragmatic_transfer_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '45cec8dcd5e9d4a2c1edceee731d8e72715f72de106a5196ef2ed6ec890a5d0e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1dcb79d0-a68e-5305-9a23-c8e550d51a30', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f7f97c5d-90ff-5783-a4aa-f0e8b4b6a5dd', 1), '45cec8dcd5e9d4a2c1edceee731d8e72715f72de106a5196ef2ed6ec890a5d0e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d03c4a2d7f1722057433b73b2c8ea2dbe45ca2763ffc766a05c44c8b3068bf22.mp3', 5616, '2026-09-13 11:47:54.670959', 'a3f2362a2036dae03f5aa3873c079dab151aec9170cf1e548a2fb6d65f78cee4', 'validated', '{"audio_key":"d03c4a2d7f1722057433b73b2c8ea2dbe45ca2763ffc766a05c44c8b3068bf22","entity_key":"u_metaphor_idiom_pragmatic_transfer_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a3f2362a2036dae03f5aa3873c079dab151aec9170cf1e548a2fb6d65f78cee4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d03c4a2d7f1722057433b73b2c8ea2dbe45ca2763ffc766a05c44c8b3068bf22.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_oral_synthesis_pressure_05 -> audio/generated/de-DE/utterances/d1e58af881f5aff3611da173c49fbdad93340f9b8adb87868ebc4ad9ae106128.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('02b936fb-1503-570c-9c9b-656bed941824', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_oral_synthesis_pressure_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a2d008ade9b4cb36daf3cba7ec3a000f40f930fae406d3c0250ce4aad565945f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('69ae570e-0435-5a71-a207-742e2faeec9a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('02b936fb-1503-570c-9c9b-656bed941824', 1), 'a2d008ade9b4cb36daf3cba7ec3a000f40f930fae406d3c0250ce4aad565945f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d1e58af881f5aff3611da173c49fbdad93340f9b8adb87868ebc4ad9ae106128.mp3', 3840, '2026-09-13 11:47:55.683822', 'd263d9f3010cb4407b54d8ea491511d1874cf1531ab2b96aef79b902c28222a9', 'validated', '{"audio_key":"d1e58af881f5aff3611da173c49fbdad93340f9b8adb87868ebc4ad9ae106128","entity_key":"u_oral_synthesis_pressure_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d263d9f3010cb4407b54d8ea491511d1874cf1531ab2b96aef79b902c28222a9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d1e58af881f5aff3611da173c49fbdad93340f9b8adb87868ebc4ad9ae106128.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_oral_synthesis_pressure_03_listen -> audio/generated/de-DE/utterances/d1e58af881f5aff3611da173c49fbdad93340f9b8adb87868ebc4ad9ae106128.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('736d938c-1909-516a-b54a-be96c32d04cd', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_oral_synthesis_pressure_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a2d008ade9b4cb36daf3cba7ec3a000f40f930fae406d3c0250ce4aad565945f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('19230c54-a3d7-562d-898f-b2b1e73e4a1d', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('736d938c-1909-516a-b54a-be96c32d04cd', 1), 'a2d008ade9b4cb36daf3cba7ec3a000f40f930fae406d3c0250ce4aad565945f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d1e58af881f5aff3611da173c49fbdad93340f9b8adb87868ebc4ad9ae106128.mp3', 3840, '2026-09-13 11:47:55.683822', 'd263d9f3010cb4407b54d8ea491511d1874cf1531ab2b96aef79b902c28222a9', 'validated', '{"audio_key":"d1e58af881f5aff3611da173c49fbdad93340f9b8adb87868ebc4ad9ae106128","entity_key":"ex_oral_synthesis_pressure_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d263d9f3010cb4407b54d8ea491511d1874cf1531ab2b96aef79b902c28222a9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d1e58af881f5aff3611da173c49fbdad93340f9b8adb87868ebc4ad9ae106128.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_judgment_language_capstone_04 -> audio/generated/de-DE/utterances/d8b35182c24b5325c57ffdea5100abb5cdff57d1eaab42159c8322c904a06fc7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('91124cd5-3ae6-559b-97c9-20fadb9fe23b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_judgment_language_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5064f50b84dc48c54bf9262badd7a652b10d7ee67a71762f2dfb0034b71bf58f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5f450cab-01ea-5fd2-af62-d3c1cc4e006b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('91124cd5-3ae6-559b-97c9-20fadb9fe23b', 1), '5064f50b84dc48c54bf9262badd7a652b10d7ee67a71762f2dfb0034b71bf58f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d8b35182c24b5325c57ffdea5100abb5cdff57d1eaab42159c8322c904a06fc7.mp3', 4675, '2026-09-13 11:47:56.139600', 'f11b6f50cadc745e1993484d9500f3c22a97fa8c83763ae145b96d1276fd643a', 'validated', '{"audio_key":"d8b35182c24b5325c57ffdea5100abb5cdff57d1eaab42159c8322c904a06fc7","entity_key":"u_judgment_language_capstone_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f11b6f50cadc745e1993484d9500f3c22a97fa8c83763ae145b96d1276fd643a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d8b35182c24b5325c57ffdea5100abb5cdff57d1eaab42159c8322c904a06fc7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_descriptive_normative_reasoning_06 -> audio/generated/de-DE/utterances/e4ef1f0c1176dbf660f19181131b084d5a180b50b848f170c5a934281fd21e84.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6e234720-64a7-5f28-b971-ce82da30a47f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_descriptive_normative_reasoning_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '16aa0dc989dd6b8fa392eddc5177395791d8973ef974158cc4afe339a7f14cad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('423fee6b-8bd1-5cb7-83ba-420ae2bb87b5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6e234720-64a7-5f28-b971-ce82da30a47f', 1), '16aa0dc989dd6b8fa392eddc5177395791d8973ef974158cc4afe339a7f14cad',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e4ef1f0c1176dbf660f19181131b084d5a180b50b848f170c5a934281fd21e84.mp3', 7053, '2026-09-13 11:47:57.456994', '7301a64a606760eb9bc7a080241e4ef3c4b96050f732412ed20c8543f8345c4a', 'validated', '{"audio_key":"e4ef1f0c1176dbf660f19181131b084d5a180b50b848f170c5a934281fd21e84","entity_key":"u_descriptive_normative_reasoning_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7301a64a606760eb9bc7a080241e4ef3c4b96050f732412ed20c8543f8345c4a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e4ef1f0c1176dbf660f19181131b084d5a180b50b848f170c5a934281fd21e84.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_judgment_language_capstone_06 -> audio/generated/de-DE/utterances/e71f9c4e3cc756cdc4518c15245db2320025774e5528d3f66700ffa389babfe0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f8e9d824-0545-57ea-aa2b-79b51a08dca0', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_judgment_language_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5f5ff836f71719e4019ef950483f8c85a40166e440d9dddd91b0ce56167ec6e2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('15c9766c-f3d5-5cfb-8574-0971d1913932', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f8e9d824-0545-57ea-aa2b-79b51a08dca0', 1), '5f5ff836f71719e4019ef950483f8c85a40166e440d9dddd91b0ce56167ec6e2',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e71f9c4e3cc756cdc4518c15245db2320025774e5528d3f66700ffa389babfe0.mp3', 5041, '2026-09-13 11:47:57.661770', '695463d52a246ce3c3366a05016f07e6e04782cb9250d8ecb4b1a52f931c4434', 'validated', '{"audio_key":"e71f9c4e3cc756cdc4518c15245db2320025774e5528d3f66700ffa389babfe0","entity_key":"u_judgment_language_capstone_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"695463d52a246ce3c3366a05016f07e6e04782cb9250d8ecb4b1a52f931c4434","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e71f9c4e3cc756cdc4518c15245db2320025774e5528d3f66700ffa389babfe0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_steelmanning_concession_06 -> audio/generated/de-DE/utterances/eb8c9cb09cbf41693e8d0c2d89a85f377dc1e7530764ad9bf6489274623dcc73.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('21c31a1b-d537-5401-9e56-02e63aa0fb0f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_steelmanning_concession_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7cb8ca1a1671a70b073ada7e3b4caa4d1bb2946206c82f9e003ed17978234c4d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cc47465a-6d69-5342-a29b-c764c38a858b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('21c31a1b-d537-5401-9e56-02e63aa0fb0f', 1), '7cb8ca1a1671a70b073ada7e3b4caa4d1bb2946206c82f9e003ed17978234c4d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/eb8c9cb09cbf41693e8d0c2d89a85f377dc1e7530764ad9bf6489274623dcc73.mp3', 4858, '2026-09-13 11:47:58.961915', '22ca234cfbe288b99db30348e95ba13d25620b124c05fdb3b4693d660bcbe48e', 'validated', '{"audio_key":"eb8c9cb09cbf41693e8d0c2d89a85f377dc1e7530764ad9bf6489274623dcc73","entity_key":"u_steelmanning_concession_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"22ca234cfbe288b99db30348e95ba13d25620b124c05fdb3b4693d660bcbe48e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/eb8c9cb09cbf41693e8d0c2d89a85f377dc1e7530764ad9bf6489274623dcc73.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_institutional_register_precision_03 -> audio/generated/de-DE/utterances/edc7df3c4c0f533c41bffd5ca95a1eea24a5bcd10dba99eee31c2568aec6359f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('554109e1-8ed9-556f-97f7-553e2fe5038a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_institutional_register_precision_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7be9535a960682345e17c3672822ae8f797ff37b878ae7cd3d1dcc6adcca1a47'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('840e8120-98ea-52af-8484-1c4b26e4ee1d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('554109e1-8ed9-556f-97f7-553e2fe5038a', 1), '7be9535a960682345e17c3672822ae8f797ff37b878ae7cd3d1dcc6adcca1a47',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/edc7df3c4c0f533c41bffd5ca95a1eea24a5bcd10dba99eee31c2568aec6359f.mp3', 5433, '2026-09-13 11:47:59.231013', '137fc9a08276edcc532ca9b4d38dfcf0daa836ae38eae8278ff8ab88de6846ca', 'validated', '{"audio_key":"edc7df3c4c0f533c41bffd5ca95a1eea24a5bcd10dba99eee31c2568aec6359f","entity_key":"u_institutional_register_precision_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"137fc9a08276edcc532ca9b4d38dfcf0daa836ae38eae8278ff8ab88de6846ca","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/edc7df3c4c0f533c41bffd5ca95a1eea24a5bcd10dba99eee31c2568aec6359f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_institutional_register_precision_02_listen -> audio/generated/de-DE/utterances/edc7df3c4c0f533c41bffd5ca95a1eea24a5bcd10dba99eee31c2568aec6359f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('107a5cc2-c895-5d8e-8ccd-abe5670087a6', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_institutional_register_precision_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7be9535a960682345e17c3672822ae8f797ff37b878ae7cd3d1dcc6adcca1a47'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3a417137-f4b7-554f-a944-5db079abe8ea', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('107a5cc2-c895-5d8e-8ccd-abe5670087a6', 1), '7be9535a960682345e17c3672822ae8f797ff37b878ae7cd3d1dcc6adcca1a47',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/edc7df3c4c0f533c41bffd5ca95a1eea24a5bcd10dba99eee31c2568aec6359f.mp3', 5433, '2026-09-13 11:47:59.231013', '137fc9a08276edcc532ca9b4d38dfcf0daa836ae38eae8278ff8ab88de6846ca', 'validated', '{"audio_key":"edc7df3c4c0f533c41bffd5ca95a1eea24a5bcd10dba99eee31c2568aec6359f","entity_key":"ex_institutional_register_precision_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"137fc9a08276edcc532ca9b4d38dfcf0daa836ae38eae8278ff8ab88de6846ca","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/edc7df3c4c0f533c41bffd5ca95a1eea24a5bcd10dba99eee31c2568aec6359f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_descriptive_normative_reasoning_01 -> audio/generated/de-DE/utterances/ef766133afd09af1df9716b4dfac99f9491bc3fb0c2b53a4dd54263e45179b6b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6f37d795-a59c-59f8-a768-588d88995794', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_descriptive_normative_reasoning_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d67842c80ea56a7943b7efc65758a1b3bb56acca89b913e5cd710766f3855ed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5b0319eb-3d3a-5f92-8e3e-e16b5ca9657e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6f37d795-a59c-59f8-a768-588d88995794', 1), '8d67842c80ea56a7943b7efc65758a1b3bb56acca89b913e5cd710766f3855ed',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ef766133afd09af1df9716b4dfac99f9491bc3fb0c2b53a4dd54263e45179b6b.mp3', 5015, '2026-09-13 11:48:00.488614', '97c82e20cd8a9aa748e7af96e400fcdc6315f0a8f785d5676589566f5eb98b7d', 'validated', '{"audio_key":"ef766133afd09af1df9716b4dfac99f9491bc3fb0c2b53a4dd54263e45179b6b","entity_key":"u_descriptive_normative_reasoning_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"97c82e20cd8a9aa748e7af96e400fcdc6315f0a8f785d5676589566f5eb98b7d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ef766133afd09af1df9716b4dfac99f9491bc3fb0c2b53a4dd54263e45179b6b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_descriptive_normative_reasoning_01_listen -> audio/generated/de-DE/utterances/ef766133afd09af1df9716b4dfac99f9491bc3fb0c2b53a4dd54263e45179b6b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('30848034-6fb0-5b22-a0b6-21f96f06daca', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_descriptive_normative_reasoning_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d67842c80ea56a7943b7efc65758a1b3bb56acca89b913e5cd710766f3855ed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3ed4bf28-ccb2-5a5b-9399-90b9d21615c5', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('30848034-6fb0-5b22-a0b6-21f96f06daca', 1), '8d67842c80ea56a7943b7efc65758a1b3bb56acca89b913e5cd710766f3855ed',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ef766133afd09af1df9716b4dfac99f9491bc3fb0c2b53a4dd54263e45179b6b.mp3', 5015, '2026-09-13 11:48:00.488614', '97c82e20cd8a9aa748e7af96e400fcdc6315f0a8f785d5676589566f5eb98b7d', 'validated', '{"audio_key":"ef766133afd09af1df9716b4dfac99f9491bc3fb0c2b53a4dd54263e45179b6b","entity_key":"ex_descriptive_normative_reasoning_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"97c82e20cd8a9aa748e7af96e400fcdc6315f0a8f785d5676589566f5eb98b7d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ef766133afd09af1df9716b4dfac99f9491bc3fb0c2b53a4dd54263e45179b6b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_judgment_language_capstone_05 -> audio/generated/de-DE/utterances/f8ce810d6cfcb05c4a869b64aaa47832ab302211f1d2063ff934bbec9ad8990d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7c69abde-4b85-5b22-be1a-01c9940345ef', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_judgment_language_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1f8f3ca89c23a62ec5f82f6489197816eed75a02f133dbf9fb2d9f82f379e822'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('77bbd8a4-883a-5bcf-9a9f-73ec02662d43', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7c69abde-4b85-5b22-be1a-01c9940345ef', 1), '1f8f3ca89c23a62ec5f82f6489197816eed75a02f133dbf9fb2d9f82f379e822',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f8ce810d6cfcb05c4a869b64aaa47832ab302211f1d2063ff934bbec9ad8990d.mp3', 4911, '2026-09-13 11:48:00.753363', '2fcb242bbf6d75e3e4a94d542853b54543edcabc0859972a1a5ba736ea8ac86d', 'validated', '{"audio_key":"f8ce810d6cfcb05c4a869b64aaa47832ab302211f1d2063ff934bbec9ad8990d","entity_key":"u_judgment_language_capstone_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2fcb242bbf6d75e3e4a94d542853b54543edcabc0859972a1a5ba736ea8ac86d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f8ce810d6cfcb05c4a869b64aaa47832ab302211f1d2063ff934bbec9ad8990d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_judgment_language_capstone_03_listen -> audio/generated/de-DE/utterances/f8ce810d6cfcb05c4a869b64aaa47832ab302211f1d2063ff934bbec9ad8990d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('8330ed4a-27f7-5d05-abc9-5b2da048a3b0', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_judgment_language_capstone_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1f8f3ca89c23a62ec5f82f6489197816eed75a02f133dbf9fb2d9f82f379e822'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3c3aef29-7033-5e34-8c52-cc3108c45f36', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('8330ed4a-27f7-5d05-abc9-5b2da048a3b0', 1), '1f8f3ca89c23a62ec5f82f6489197816eed75a02f133dbf9fb2d9f82f379e822',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f8ce810d6cfcb05c4a869b64aaa47832ab302211f1d2063ff934bbec9ad8990d.mp3', 4911, '2026-09-13 11:48:00.753363', '2fcb242bbf6d75e3e4a94d542853b54543edcabc0859972a1a5ba736ea8ac86d', 'validated', '{"audio_key":"f8ce810d6cfcb05c4a869b64aaa47832ab302211f1d2063ff934bbec9ad8990d","entity_key":"ex_judgment_language_capstone_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2fcb242bbf6d75e3e4a94d542853b54543edcabc0859972a1a5ba736ea8ac86d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f8ce810d6cfcb05c4a869b64aaa47832ab302211f1d2063ff934bbec9ad8990d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_institutional_register_precision_05 -> audio/generated/de-DE/utterances/fba390b2e4a7f15d77d07dbe3a5438b9a9fac45578985f7a9959e9a83136d321.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4e1035ae-e3d1-51b5-b123-573b1b899176', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_institutional_register_precision_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '10e6f0f8de9830e48f2d71d1f82ab18a43d168c6502295ddc508a93a6b6c01fe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('50e0146a-5d19-544e-b500-33285cc512c2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4e1035ae-e3d1-51b5-b123-573b1b899176', 1), '10e6f0f8de9830e48f2d71d1f82ab18a43d168c6502295ddc508a93a6b6c01fe',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/fba390b2e4a7f15d77d07dbe3a5438b9a9fac45578985f7a9959e9a83136d321.mp3', 4675, '2026-09-13 11:48:01.979333', '675aeefd782de77cff4848eb4a3e5414aa9cd3146cdf5d6f832ff167223524bd', 'validated', '{"audio_key":"fba390b2e4a7f15d77d07dbe3a5438b9a9fac45578985f7a9959e9a83136d321","entity_key":"u_institutional_register_precision_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"675aeefd782de77cff4848eb4a3e5414aa9cd3146cdf5d6f832ff167223524bd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/fba390b2e4a7f15d77d07dbe3a5438b9a9fac45578985f7a9959e9a83136d321.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_institutional_register_precision_03_listen -> audio/generated/de-DE/utterances/fba390b2e4a7f15d77d07dbe3a5438b9a9fac45578985f7a9959e9a83136d321.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('15c1eafe-42fe-5bcf-b1c2-adc9431714e2', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_institutional_register_precision_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '10e6f0f8de9830e48f2d71d1f82ab18a43d168c6502295ddc508a93a6b6c01fe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1e574a2f-35c8-5f2d-bbf3-92598438442a', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('15c1eafe-42fe-5bcf-b1c2-adc9431714e2', 1), '10e6f0f8de9830e48f2d71d1f82ab18a43d168c6502295ddc508a93a6b6c01fe',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/fba390b2e4a7f15d77d07dbe3a5438b9a9fac45578985f7a9959e9a83136d321.mp3', 4675, '2026-09-13 11:48:01.979333', '675aeefd782de77cff4848eb4a3e5414aa9cd3146cdf5d6f832ff167223524bd', 'validated', '{"audio_key":"fba390b2e4a7f15d77d07dbe3a5438b9a9fac45578985f7a9959e9a83136d321","entity_key":"ex_institutional_register_precision_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"675aeefd782de77cff4848eb4a3e5414aa9cd3146cdf5d6f832ff167223524bd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/fba390b2e4a7f15d77d07dbe3a5438b9a9fac45578985f7a9959e9a83136d321.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_metaphor_idiom_pragmatic_transfer_03 -> audio/generated/de-DE/utterances/ffb2a52436418e87ffce0bd3ba886490c24c18925765cf8d21c59ff10a69df74.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('60a0cd1c-2bcc-587c-a3d3-1bf0a4c506b1', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_metaphor_idiom_pragmatic_transfer_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f7349b654eeabe97c8884f2f2bd6960b1f9816276253f6a9c077f1514b4e5dcd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('af9d276c-f3f6-568d-9ed8-e0c1895f244b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('60a0cd1c-2bcc-587c-a3d3-1bf0a4c506b1', 1), 'f7349b654eeabe97c8884f2f2bd6960b1f9816276253f6a9c077f1514b4e5dcd',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ffb2a52436418e87ffce0bd3ba886490c24c18925765cf8d21c59ff10a69df74.mp3', 6400, '2026-09-13 11:48:02.490300', 'a57092ca54e1537fd637b6142b172739d524592d2edecac26385baa30d32de74', 'validated', '{"audio_key":"ffb2a52436418e87ffce0bd3ba886490c24c18925765cf8d21c59ff10a69df74","entity_key":"u_metaphor_idiom_pragmatic_transfer_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a57092ca54e1537fd637b6142b172739d524592d2edecac26385baa30d32de74","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ffb2a52436418e87ffce0bd3ba886490c24c18925765cf8d21c59ff10a69df74.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_metaphor_idiom_pragmatic_transfer_02_listen -> audio/generated/de-DE/utterances/ffb2a52436418e87ffce0bd3ba886490c24c18925765cf8d21c59ff10a69df74.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('02fabc29-2e75-5d03-8305-7a9e69cb5925', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_metaphor_idiom_pragmatic_transfer_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f7349b654eeabe97c8884f2f2bd6960b1f9816276253f6a9c077f1514b4e5dcd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('20bc720f-bc59-5634-a549-36bb66a029ac', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('02fabc29-2e75-5d03-8305-7a9e69cb5925', 1), 'f7349b654eeabe97c8884f2f2bd6960b1f9816276253f6a9c077f1514b4e5dcd',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ffb2a52436418e87ffce0bd3ba886490c24c18925765cf8d21c59ff10a69df74.mp3', 6400, '2026-09-13 11:48:02.490300', 'a57092ca54e1537fd637b6142b172739d524592d2edecac26385baa30d32de74', 'validated', '{"audio_key":"ffb2a52436418e87ffce0bd3ba886490c24c18925765cf8d21c59ff10a69df74","entity_key":"ex_metaphor_idiom_pragmatic_transfer_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a57092ca54e1537fd637b6142b172739d524592d2edecac26385baa30d32de74","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ffb2a52436418e87ffce0bd3ba886490c24c18925765cf8d21c59ff10a69df74.mp3"}'
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

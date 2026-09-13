-- Generated audio link import for de-DE C2
-- Source manifest: audio/manifests/de/C2-batch-4.json
-- Generated rows: 330
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'de' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'de-DE' LIMIT 1);
START TRANSACTION;

-- d_humor_irony_repair_01:2 -> audio/generated/de-DE/dialogues/011381636894f56f7902a5170bfe9de0baec6f9969cf9b63ee5fd5b89228e8b5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('26f18c5b-7f96-5be9-bca7-91f9b35d6856', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_humor_irony_repair_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd4365ffabf9a30d36871519588420240afdfc0ec75eb85a62eeb6b0b4c1671c7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fd54a006-7aaa-5cc4-9ebd-6d260f0f08c8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('26f18c5b-7f96-5be9-bca7-91f9b35d6856', 1), 'd4365ffabf9a30d36871519588420240afdfc0ec75eb85a62eeb6b0b4c1671c7',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/011381636894f56f7902a5170bfe9de0baec6f9969cf9b63ee5fd5b89228e8b5.mp3', 3578, '2026-09-13 14:03:23.315678', '0d9b44e17249a76a1fad603420dc040464945dba24cadcaca65f03ed0e1445fa', 'validated', '{"audio_key":"011381636894f56f7902a5170bfe9de0baec6f9969cf9b63ee5fd5b89228e8b5","entity_key":"d_humor_irony_repair_01:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"0d9b44e17249a76a1fad603420dc040464945dba24cadcaca65f03ed0e1445fa","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/011381636894f56f7902a5170bfe9de0baec6f9969cf9b63ee5fd5b89228e8b5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_and_implicature_03:2 -> audio/generated/de-DE/dialogues/0122c8716bedc7f472dfb317f7bd52254a6dfa45a0faa719506368659c34816d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8fcf23f5-8658-5bbe-adf3-f7aae27db9eb', 1)
  AND voice_key = 'character:mara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_and_implicature_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c02f351c4efed211fcde9f137961c31ff5479d097056ecbaa4ee37e942f4f6cb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('be19e337-0563-5334-87af-f2f5c629af16', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8fcf23f5-8658-5bbe-adf3-f7aae27db9eb', 1), 'c02f351c4efed211fcde9f137961c31ff5479d097056ecbaa4ee37e942f4f6cb',
  'character:mara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0122c8716bedc7f472dfb317f7bd52254a6dfa45a0faa719506368659c34816d.mp3', 4597, '2026-09-13 14:03:23.485411', '9d558d39f366a68e9ab7db3d6924b7d53717a504322eed1796b165edf883480c', 'validated', '{"audio_key":"0122c8716bedc7f472dfb317f7bd52254a6dfa45a0faa719506368659c34816d","entity_key":"d_register_and_implicature_03:2","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9d558d39f366a68e9ab7db3d6924b7d53717a504322eed1796b165edf883480c","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/0122c8716bedc7f472dfb317f7bd52254a6dfa45a0faa719506368659c34816d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidential_calibration_02:3 -> audio/generated/de-DE/dialogues/03f33987d609f71f33c06d13c3fef6f55b3e7269112942e9f0b0f906721df1d4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5bdae104-9c52-5a3f-bd79-3e4879d0f983', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidential_calibration_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '58a39807d4bfda9ab963d0fcbb76adfce8229f4aba268a81d23bb95593513900'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0af9edeb-1a77-5d0f-b7e2-c4740ca6199f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5bdae104-9c52-5a3f-bd79-3e4879d0f983', 1), '58a39807d4bfda9ab963d0fcbb76adfce8229f4aba268a81d23bb95593513900',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/03f33987d609f71f33c06d13c3fef6f55b3e7269112942e9f0b0f906721df1d4.mp3', 4545, '2026-09-13 14:03:24.975485', 'ef140837c07c8e32649a15e25fbdc87195c6856c073d1beb6fb6432fdda7fd22', 'validated', '{"audio_key":"03f33987d609f71f33c06d13c3fef6f55b3e7269112942e9f0b0f906721df1d4","entity_key":"d_evidential_calibration_02:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"ef140837c07c8e32649a15e25fbdc87195c6856c073d1beb6fb6432fdda7fd22","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/03f33987d609f71f33c06d13c3fef6f55b3e7269112942e9f0b0f906721df1d4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidential_calibration_01:2 -> audio/generated/de-DE/dialogues/05df19013debc0ceee488f0a6760542705c4f5b1fbdb550f2b755edead5af945.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('19126991-5f18-5958-a7bf-13691c37e231', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidential_calibration_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'abe43be347cdd989cbc742210ca9f0c9f5135eeccaa2cafcfb1928519d5da02d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a8cc74f5-aee7-5dd4-a669-e7af9ac8b138', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('19126991-5f18-5958-a7bf-13691c37e231', 1), 'abe43be347cdd989cbc742210ca9f0c9f5135eeccaa2cafcfb1928519d5da02d',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/05df19013debc0ceee488f0a6760542705c4f5b1fbdb550f2b755edead5af945.mp3', 7366, '2026-09-13 14:03:25.271777', 'cef6f24a0b5986a091a2c9989dfd8f4c16ed8c1d41d3b20d21436164ddd55cdd', 'validated', '{"audio_key":"05df19013debc0ceee488f0a6760542705c4f5b1fbdb550f2b755edead5af945","entity_key":"d_evidential_calibration_01:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"cef6f24a0b5986a091a2c9989dfd8f4c16ed8c1d41d3b20d21436164ddd55cdd","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/05df19013debc0ceee488f0a6760542705c4f5b1fbdb550f2b755edead5af945.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_and_implicature_01:4 -> audio/generated/de-DE/dialogues/06b2913b18311ecf304daf22471e3b4008dcc21be26dc91fe0c197c23586314b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('54819ce5-ae75-5509-a1b8-c224a34b2140', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_and_implicature_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cf76798e3fc3ea181384ff0222b5b4c6e19ccbde4d74c16f7a4adaf83f69083c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2952804c-f7e3-53a2-abf5-47067ecb5919', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('54819ce5-ae75-5509-a1b8-c224a34b2140', 1), 'cf76798e3fc3ea181384ff0222b5b4c6e19ccbde4d74c16f7a4adaf83f69083c',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/06b2913b18311ecf304daf22471e3b4008dcc21be26dc91fe0c197c23586314b.mp3', 3709, '2026-09-13 14:03:26.471503', '79ff5994b2e49783d132edf8e9d5785aecf016256ddc34b7a8c28162260a98d3', 'validated', '{"audio_key":"06b2913b18311ecf304daf22471e3b4008dcc21be26dc91fe0c197c23586314b","entity_key":"d_register_and_implicature_01:4","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"79ff5994b2e49783d132edf8e9d5785aecf016256ddc34b7a8c28162260a98d3","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/06b2913b18311ecf304daf22471e3b4008dcc21be26dc91fe0c197c23586314b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_live_reformulation_02:4 -> audio/generated/de-DE/dialogues/071b7c3c9fabb81faae437d6c0510d32d223c7dd51fb38ba62242238f3f230c5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('09491d72-4c47-59dc-84a5-60403158e996', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_live_reformulation_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '947661e18d62aaa7c00725bc0257b23a9ce34bba9d0a74c4cc955daf886315bf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('453e75dd-1e16-5b4b-aa79-72e744c8ff5c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('09491d72-4c47-59dc-84a5-60403158e996', 1), '947661e18d62aaa7c00725bc0257b23a9ce34bba9d0a74c4cc955daf886315bf',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/071b7c3c9fabb81faae437d6c0510d32d223c7dd51fb38ba62242238f3f230c5.mp3', 2873, '2026-09-13 14:03:26.523228', '11209f088f27884150ea508343571cadb7c35dac9bc9f0f1287ddba38c4dea18', 'validated', '{"audio_key":"071b7c3c9fabb81faae437d6c0510d32d223c7dd51fb38ba62242238f3f230c5","entity_key":"d_live_reformulation_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"11209f088f27884150ea508343571cadb7c35dac9bc9f0f1287ddba38c4dea18","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/071b7c3c9fabb81faae437d6c0510d32d223c7dd51fb38ba62242238f3f230c5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_expert_briefing_capstone_03:2 -> audio/generated/de-DE/dialogues/0bb2a5167401e4e85c418fd81e093bc2953fe7035ab2ff3c824a2a258005f2a3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1e8948c6-46b9-590c-8b35-7ca921ad8ff5', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_expert_briefing_capstone_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fcd1af98698f81f96de1d206247deac27cac4ae4e3107a1b989f561bcbaba53a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('01870cee-bd32-5744-9d88-925b0f52ddc4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1e8948c6-46b9-590c-8b35-7ca921ad8ff5', 1), 'fcd1af98698f81f96de1d206247deac27cac4ae4e3107a1b989f561bcbaba53a',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0bb2a5167401e4e85c418fd81e093bc2953fe7035ab2ff3c824a2a258005f2a3.mp3', 16953, '2026-09-13 14:03:29.769274', '30e4468aec74edd95c9e921d3630eb549b5308ce8029218a90deab134b5d43cf', 'validated', '{"audio_key":"0bb2a5167401e4e85c418fd81e093bc2953fe7035ab2ff3c824a2a258005f2a3","entity_key":"d_expert_briefing_capstone_03:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"30e4468aec74edd95c9e921d3630eb549b5308ce8029218a90deab134b5d43cf","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/0bb2a5167401e4e85c418fd81e093bc2953fe7035ab2ff3c824a2a258005f2a3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_definitional_disputes_03:1 -> audio/generated/de-DE/dialogues/1124634501a7f9dc8a8d3e8de0910e7bb84d8938e1329f357dfd0af3d938ad4f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('850c0e59-5cfa-5cb1-9783-b023eb3f3d94', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_definitional_disputes_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'be304ebbee824a8a6dd86267e07c071a8ccdae27540f8cb0fce472d035e96ce3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ad2fc42a-f54d-5048-bc73-642d859eab36', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('850c0e59-5cfa-5cb1-9783-b023eb3f3d94', 1), 'be304ebbee824a8a6dd86267e07c071a8ccdae27540f8cb0fce472d035e96ce3',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1124634501a7f9dc8a8d3e8de0910e7bb84d8938e1329f357dfd0af3d938ad4f.mp3', 3578, '2026-09-13 14:03:27.801235', '02c59cc24fe75886c41d8d342978a21e920b3c68c5e9fcee45f82ed0e65a7d17', 'validated', '{"audio_key":"1124634501a7f9dc8a8d3e8de0910e7bb84d8938e1329f357dfd0af3d938ad4f","entity_key":"d_definitional_disputes_03:1","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"02c59cc24fe75886c41d8d342978a21e920b3c68c5e9fcee45f82ed0e65a7d17","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/1124634501a7f9dc8a8d3e8de0910e7bb84d8938e1329f357dfd0af3d938ad4f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_and_implicature_03:1 -> audio/generated/de-DE/dialogues/12b0a48934cacdf9c03645daac32579e0ceb2e76855cedc5a4bd4d98649c5982.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7d92bd2d-3d3d-5d85-a3cd-30216c898edd', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_and_implicature_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bb7429b99c6ffcfb5d3c1e32dbbb4ec85789e0f4a8e1ce30989e28a7086f95c7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f8a1ff79-ce50-5d3d-8f40-55f5f1eb8a91', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7d92bd2d-3d3d-5d85-a3cd-30216c898edd', 1), 'bb7429b99c6ffcfb5d3c1e32dbbb4ec85789e0f4a8e1ce30989e28a7086f95c7',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/12b0a48934cacdf9c03645daac32579e0ceb2e76855cedc5a4bd4d98649c5982.mp3', 4440, '2026-09-13 14:03:29.327744', '61fe08fd588e12d490fb602e4c648638d5be30d0b6ee0fbfabd534511c105f86', 'validated', '{"audio_key":"12b0a48934cacdf9c03645daac32579e0ceb2e76855cedc5a4bd4d98649c5982","entity_key":"d_register_and_implicature_03:1","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"61fe08fd588e12d490fb602e4c648638d5be30d0b6ee0fbfabd534511c105f86","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/12b0a48934cacdf9c03645daac32579e0ceb2e76855cedc5a4bd4d98649c5982.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_legal_administrative_nuance_02:1 -> audio/generated/de-DE/dialogues/12b9f2e323c6c25f368892c0a998d4f0c1839e73f4e0f3ad1655788d3bdda72f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5f0cfc29-4977-5375-9812-59f766ed8162', 1)
  AND voice_key = 'character:mara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_legal_administrative_nuance_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8feb1715a0f36e12f0b5ecfa1d1d78db916bbc755551a4fd715e019c6e545d6f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9e721f89-856f-5c0f-912a-6c4df1b4d888', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5f0cfc29-4977-5375-9812-59f766ed8162', 1), '8feb1715a0f36e12f0b5ecfa1d1d78db916bbc755551a4fd715e019c6e545d6f',
  'character:mara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/12b9f2e323c6c25f368892c0a998d4f0c1839e73f4e0f3ad1655788d3bdda72f.mp3', 3108, '2026-09-13 14:03:30.537640', 'e1b05e0168e8a6eca6bb2af083f2494277c2084c950dd547f6c1b4c79350ffd1', 'validated', '{"audio_key":"12b9f2e323c6c25f368892c0a998d4f0c1839e73f4e0f3ad1655788d3bdda72f","entity_key":"d_legal_administrative_nuance_02:1","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e1b05e0168e8a6eca6bb2af083f2494277c2084c950dd547f6c1b4c79350ffd1","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/12b9f2e323c6c25f368892c0a998d4f0c1839e73f4e0f3ad1655788d3bdda72f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_live_reformulation_01:2 -> audio/generated/de-DE/dialogues/1310fdc2df75bbc259ad3a68bac8ca4bae7d0113363a48436e9f7b69f13817f7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('95939b72-a6ac-5a96-b23b-516629de7b24', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_live_reformulation_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b32c1da2faf100ab7fa119bf063c372e938b0a0408a3fadc03e4a5ab076f071e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4abd65ad-4e53-5892-9441-971c72d62ff2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('95939b72-a6ac-5a96-b23b-516629de7b24', 1), 'b32c1da2faf100ab7fa119bf063c372e938b0a0408a3fadc03e4a5ab076f071e',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1310fdc2df75bbc259ad3a68bac8ca4bae7d0113363a48436e9f7b69f13817f7.mp3', 4728, '2026-09-13 14:03:31.301555', '49459e4dc1efefe3a5ff3f663e619d5c35095ef501fd6f25ed0104c5a2c1a7ad', 'validated', '{"audio_key":"1310fdc2df75bbc259ad3a68bac8ca4bae7d0113363a48436e9f7b69f13817f7","entity_key":"d_live_reformulation_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"49459e4dc1efefe3a5ff3f663e619d5c35095ef501fd6f25ed0104c5a2c1a7ad","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/1310fdc2df75bbc259ad3a68bac8ca4bae7d0113363a48436e9f7b69f13817f7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_legal_administrative_nuance_03:4 -> audio/generated/de-DE/dialogues/1410e76de380fd0bc96a5d6efe7cb7f6072189724e5db87e61e5685a1a7ee79f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4fe63694-2f0e-5116-9ec1-86d72e4caf3b', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_legal_administrative_nuance_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '61dd4aa54766b534568279cab17eeedff5c5d94ad3b4797105cd6c4df8e3b6ac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('20a46d2e-0458-5982-b5c7-21a7416d57da', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4fe63694-2f0e-5116-9ec1-86d72e4caf3b', 1), '61dd4aa54766b534568279cab17eeedff5c5d94ad3b4797105cd6c4df8e3b6ac',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1410e76de380fd0bc96a5d6efe7cb7f6072189724e5db87e61e5685a1a7ee79f.mp3', 4075, '2026-09-13 14:03:31.878243', 'ea5f13ad32918d0536ee977e949af4f0d7db205b2cc1a1c221bf683936bd8036', 'validated', '{"audio_key":"1410e76de380fd0bc96a5d6efe7cb7f6072189724e5db87e61e5685a1a7ee79f","entity_key":"d_legal_administrative_nuance_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ea5f13ad32918d0536ee977e949af4f0d7db205b2cc1a1c221bf683936bd8036","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/1410e76de380fd0bc96a5d6efe7cb7f6072189724e5db87e61e5685a1a7ee79f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_mediation_across_frameworks_02:4 -> audio/generated/de-DE/dialogues/1d5d0d738850578aae19fd82f6cfc27ddd4ba5db53952153ab30e7bba827b29f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('28d100b8-2ba1-5a18-80f4-c18e34af0595', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_mediation_across_frameworks_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5dd08f1df49b96a9f2885077093e517728a021396e68ba5a15e9c6f6cb4eee39'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f3c65a35-ac9c-5c5b-8e52-fe633defd933', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('28d100b8-2ba1-5a18-80f4-c18e34af0595', 1), '5dd08f1df49b96a9f2885077093e517728a021396e68ba5a15e9c6f6cb4eee39',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1d5d0d738850578aae19fd82f6cfc27ddd4ba5db53952153ab30e7bba827b29f.mp3', 3840, '2026-09-13 14:03:32.609075', '48dd65a885d0953daa0037c49a139b31ebbcec46c4d84d3c5d04be9a778f89f4', 'validated', '{"audio_key":"1d5d0d738850578aae19fd82f6cfc27ddd4ba5db53952153ab30e7bba827b29f","entity_key":"d_mediation_across_frameworks_02:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"48dd65a885d0953daa0037c49a139b31ebbcec46c4d84d3c5d04be9a778f89f4","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/1d5d0d738850578aae19fd82f6cfc27ddd4ba5db53952153ab30e7bba827b29f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_mediation_across_frameworks_01:3 -> audio/generated/de-DE/dialogues/1ed8dd6971a82ee835e13d1c5e427b4296727466ca7ddfd41ffded089f0db8c0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('54ce451a-6f2a-5b2e-96f4-32e7a4587555', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_mediation_across_frameworks_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b0684dac42b2abb9d460b9e024b5f6fd69354583b8a142e5467a9cb46c112962'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b7baa7bc-7ec7-5564-9d39-612048d382a4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('54ce451a-6f2a-5b2e-96f4-32e7a4587555', 1), 'b0684dac42b2abb9d460b9e024b5f6fd69354583b8a142e5467a9cb46c112962',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1ed8dd6971a82ee835e13d1c5e427b4296727466ca7ddfd41ffded089f0db8c0.mp3', 3186, '2026-09-13 14:03:33.134197', 'b801803b48e5194c989aa1a7dbcd7063c9f30a7bba108d394209da35c43b92cf', 'validated', '{"audio_key":"1ed8dd6971a82ee835e13d1c5e427b4296727466ca7ddfd41ffded089f0db8c0","entity_key":"d_mediation_across_frameworks_01:3","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"b801803b48e5194c989aa1a7dbcd7063c9f30a7bba108d394209da35c43b92cf","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/1ed8dd6971a82ee835e13d1c5e427b4296727466ca7ddfd41ffded089f0db8c0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_legal_administrative_nuance_03:1 -> audio/generated/de-DE/dialogues/2156ebb15fc1aa7cd2dd6b7e664e9d64b8ce8059f612ce71748805815d6a8390.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('02159ac2-375b-5530-9f8d-4c6c5e639d98', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_legal_administrative_nuance_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cda68341371c50088c7f2b4d3f9c024dd927955f94d617bcea01090a72b4e9ae'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f33bb991-77e2-5ef7-b008-84197aaa5246', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('02159ac2-375b-5530-9f8d-4c6c5e639d98', 1), 'cda68341371c50088c7f2b4d3f9c024dd927955f94d617bcea01090a72b4e9ae',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2156ebb15fc1aa7cd2dd6b7e664e9d64b8ce8059f612ce71748805815d6a8390.mp3', 3160, '2026-09-13 14:03:33.836550', '25a2b33199aac09db1d3b6d98905a706af3b0d9d5d147722b7c559f9a60e31b6', 'validated', '{"audio_key":"2156ebb15fc1aa7cd2dd6b7e664e9d64b8ce8059f612ce71748805815d6a8390","entity_key":"d_legal_administrative_nuance_03:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"25a2b33199aac09db1d3b6d98905a706af3b0d9d5d147722b7c559f9a60e31b6","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/2156ebb15fc1aa7cd2dd6b7e664e9d64b8ce8059f612ce71748805815d6a8390.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_expert_briefing_capstone_01:4 -> audio/generated/de-DE/dialogues/229c5cf10f169911207eb041a7db3973ad22dccc68158cdc506d121cbd90c881.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5c7d422b-1af0-5e63-9336-e5ebc6ae694e', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_expert_briefing_capstone_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '61c845c4092da1b9e9fa97c08dd5e0ddc765aff10794c1d023e326c68e89b6de'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e65de91e-aabf-5f3f-951f-5c0eb92e8a7a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5c7d422b-1af0-5e63-9336-e5ebc6ae694e', 1), '61c845c4092da1b9e9fa97c08dd5e0ddc765aff10794c1d023e326c68e89b6de',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/229c5cf10f169911207eb041a7db3973ad22dccc68158cdc506d121cbd90c881.mp3', 3840, '2026-09-13 14:03:34.443758', 'd371020a8ee38038fcf14b7d8014e237d7223e41c6ad24d6dba68fc155e07fdb', 'validated', '{"audio_key":"229c5cf10f169911207eb041a7db3973ad22dccc68158cdc506d121cbd90c881","entity_key":"d_expert_briefing_capstone_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"d371020a8ee38038fcf14b7d8014e237d7223e41c6ad24d6dba68fc155e07fdb","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/229c5cf10f169911207eb041a7db3973ad22dccc68158cdc506d121cbd90c881.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_counterfactual_reasoning_03:3 -> audio/generated/de-DE/dialogues/250fb4becea817f1da7f68f004c4e7adb84681f17f3d805c590c4569e8cdf307.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cd7e00e0-002e-57f8-a65b-f835694e54f9', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_counterfactual_reasoning_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e04239855fc505d61caf3c24b9da5fa965c7b86e16d33f34a811e823cb8bc96d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0079fa66-9c9c-5d9b-a1d0-082a8d551944', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cd7e00e0-002e-57f8-a65b-f835694e54f9', 1), 'e04239855fc505d61caf3c24b9da5fa965c7b86e16d33f34a811e823cb8bc96d',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/250fb4becea817f1da7f68f004c4e7adb84681f17f3d805c590c4569e8cdf307.mp3', 2742, '2026-09-13 14:03:34.982662', '01153855426683d3b41ca002e425e9752836a36fdb97656240b72f71d7c051cd', 'validated', '{"audio_key":"250fb4becea817f1da7f68f004c4e7adb84681f17f3d805c590c4569e8cdf307","entity_key":"d_counterfactual_reasoning_03:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"01153855426683d3b41ca002e425e9752836a36fdb97656240b72f71d7c051cd","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/250fb4becea817f1da7f68f004c4e7adb84681f17f3d805c590c4569e8cdf307.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_legal_administrative_nuance_01:3 -> audio/generated/de-DE/dialogues/254adcc13e2ec23cc7102c97c17950e369ff2873b567515bdd95cf893708bcc8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a5c6b98e-2f7f-5106-a175-c6985e096d1e', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_legal_administrative_nuance_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e8bf9c06aa1c10100874eefd9194983105470ec4efd50f11aef98ee366891d40'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a1e7146c-0328-5a67-8ed9-bf20b712b7db', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a5c6b98e-2f7f-5106-a175-c6985e096d1e', 1), 'e8bf9c06aa1c10100874eefd9194983105470ec4efd50f11aef98ee366891d40',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/254adcc13e2ec23cc7102c97c17950e369ff2873b567515bdd95cf893708bcc8.mp3', 3709, '2026-09-13 14:03:35.732386', '576d353d9f6db4e65e068442c20b8a017270ce125d400177a91d047b29af6ab3', 'validated', '{"audio_key":"254adcc13e2ec23cc7102c97c17950e369ff2873b567515bdd95cf893708bcc8","entity_key":"d_legal_administrative_nuance_01:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"576d353d9f6db4e65e068442c20b8a017270ce125d400177a91d047b29af6ab3","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/254adcc13e2ec23cc7102c97c17950e369ff2873b567515bdd95cf893708bcc8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_and_implicature_02:1 -> audio/generated/de-DE/dialogues/26a2ea670aac0334d77b4705a70c58e93a665be636bd9b9e51ae3ef79fc74e73.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e6eb5c82-4d50-5c41-9b39-f521c396c806', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_and_implicature_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4169dfeb27a7f6d1c54e5b99db40883c4a85af321fb1e630478c53a118245fcd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6c0d619c-55b7-58b7-84e5-891e63cb63b7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e6eb5c82-4d50-5c41-9b39-f521c396c806', 1), '4169dfeb27a7f6d1c54e5b99db40883c4a85af321fb1e630478c53a118245fcd',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/26a2ea670aac0334d77b4705a70c58e93a665be636bd9b9e51ae3ef79fc74e73.mp3', 3239, '2026-09-13 14:03:36.230996', '79656f5971712020233673414e50bcaa05d4e044336c781fd3eb2ed6e15c2463', 'validated', '{"audio_key":"26a2ea670aac0334d77b4705a70c58e93a665be636bd9b9e51ae3ef79fc74e73","entity_key":"d_register_and_implicature_02:1","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"79656f5971712020233673414e50bcaa05d4e044336c781fd3eb2ed6e15c2463","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/26a2ea670aac0334d77b4705a70c58e93a665be636bd9b9e51ae3ef79fc74e73.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_humor_irony_repair_02:2 -> audio/generated/de-DE/dialogues/277b307762dd5ff836d6729564bf54aec59b4d59a463edb307cddf9ed18f28d9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e1396951-df6d-52ac-b751-534f06ebdbbb', 1)
  AND voice_key = 'character:mara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_humor_irony_repair_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2afe64de6281185d8f84faf39bbacdf7a6aa2ccf0943782dfed5ac6917e41cfa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7a2f4120-c109-5028-bf7d-f02d2af97489', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e1396951-df6d-52ac-b751-534f06ebdbbb', 1), '2afe64de6281185d8f84faf39bbacdf7a6aa2ccf0943782dfed5ac6917e41cfa',
  'character:mara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/277b307762dd5ff836d6729564bf54aec59b4d59a463edb307cddf9ed18f28d9.mp3', 3004, '2026-09-13 14:03:37.027003', '5fd969a79131136464be6f7712f9be58d51208cece8f155ae0affef9340a0d30', 'validated', '{"audio_key":"277b307762dd5ff836d6729564bf54aec59b4d59a463edb307cddf9ed18f28d9","entity_key":"d_humor_irony_repair_02:2","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5fd969a79131136464be6f7712f9be58d51208cece8f155ae0affef9340a0d30","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/277b307762dd5ff836d6729564bf54aec59b4d59a463edb307cddf9ed18f28d9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_counterfactual_reasoning_03:1 -> audio/generated/de-DE/dialogues/29261687b757df2f8c0e770f1f6e0a1684cffe1b8f97ef3cf9fd105a6109e82b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('873860a6-483d-5372-adb3-9ddec23d704d', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_counterfactual_reasoning_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3f82d0aa41e39743e915cb3f355c73d46936b91779faede485a83e98090e26ac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('150663fd-cb5c-513d-93ab-af91fbb9c2bc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('873860a6-483d-5372-adb3-9ddec23d704d', 1), '3f82d0aa41e39743e915cb3f355c73d46936b91779faede485a83e98090e26ac',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/29261687b757df2f8c0e770f1f6e0a1684cffe1b8f97ef3cf9fd105a6109e82b.mp3', 4127, '2026-09-13 14:03:37.571189', 'e0a79964fe69d27259911026ab02a46414d0fcb7d19e48473b3828c8ca5c5fc8', 'validated', '{"audio_key":"29261687b757df2f8c0e770f1f6e0a1684cffe1b8f97ef3cf9fd105a6109e82b","entity_key":"d_counterfactual_reasoning_03:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"e0a79964fe69d27259911026ab02a46414d0fcb7d19e48473b3828c8ca5c5fc8","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/29261687b757df2f8c0e770f1f6e0a1684cffe1b8f97ef3cf9fd105a6109e82b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_live_reformulation_03:3 -> audio/generated/de-DE/dialogues/298622bef0f9c2380a6d68e893d7e3d28252b3d7b7bdfb40d7d187ac8bebdb8b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f1fcb988-849d-52f1-bd21-1a19c9579383', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_live_reformulation_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '70df5b2a1ab9b7602807f9bd198ca7b1952c8fbea682f1dd419f58a254c7ae4f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a0b66725-cb14-5076-af4f-1495896c12b1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f1fcb988-849d-52f1-bd21-1a19c9579383', 1), '70df5b2a1ab9b7602807f9bd198ca7b1952c8fbea682f1dd419f58a254c7ae4f',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/298622bef0f9c2380a6d68e893d7e3d28252b3d7b7bdfb40d7d187ac8bebdb8b.mp3', 3108, '2026-09-13 14:03:38.289369', '614207510e4a2c462831f2f679536eb38b455dc0e852ded89596bc8fdc42860e', 'validated', '{"audio_key":"298622bef0f9c2380a6d68e893d7e3d28252b3d7b7bdfb40d7d187ac8bebdb8b","entity_key":"d_live_reformulation_03:3","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"614207510e4a2c462831f2f679536eb38b455dc0e852ded89596bc8fdc42860e","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/298622bef0f9c2380a6d68e893d7e3d28252b3d7b7bdfb40d7d187ac8bebdb8b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_legal_administrative_nuance_02:2 -> audio/generated/de-DE/dialogues/2a4a965d848aee3b14814d48e01afe6ffeeb4fbfd2826f088b404ca9e0b9eb56.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('77c10a37-ccff-591c-bbb6-5eb0abeddbec', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_legal_administrative_nuance_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '50fe9c228e9099f75d32c950e5de88b645fdeca4bdcaf153a93c708110fff0f3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7a7a96bd-7db9-51af-a2c3-5e3380f5b0dd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('77c10a37-ccff-591c-bbb6-5eb0abeddbec', 1), '50fe9c228e9099f75d32c950e5de88b645fdeca4bdcaf153a93c708110fff0f3',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2a4a965d848aee3b14814d48e01afe6ffeeb4fbfd2826f088b404ca9e0b9eb56.mp3', 3474, '2026-09-13 14:03:38.843497', '8bcb8d191588d7f232c9707dd87b1a3e54ec7b88ac6bcb2aa3da73b833ad20ee', 'validated', '{"audio_key":"2a4a965d848aee3b14814d48e01afe6ffeeb4fbfd2826f088b404ca9e0b9eb56","entity_key":"d_legal_administrative_nuance_02:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"8bcb8d191588d7f232c9707dd87b1a3e54ec7b88ac6bcb2aa3da73b833ad20ee","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/2a4a965d848aee3b14814d48e01afe6ffeeb4fbfd2826f088b404ca9e0b9eb56.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_compressed_synthesis_01:1 -> audio/generated/de-DE/dialogues/2a4ccac15e34eb45a8cbd9d197f53fe59f22017e041446c861b6cfcedfeae775.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4b398194-e950-5155-ad28-5d7e8efbe1e6', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_compressed_synthesis_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e265198face637552e590e3e41dbcf95236f082bd67560077e9a0faf5ba6bb72'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bb83f99e-3c61-509e-8adc-f56b650c8dd3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4b398194-e950-5155-ad28-5d7e8efbe1e6', 1), 'e265198face637552e590e3e41dbcf95236f082bd67560077e9a0faf5ba6bb72',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2a4ccac15e34eb45a8cbd9d197f53fe59f22017e041446c861b6cfcedfeae775.mp3', 3840, '2026-09-13 14:03:39.747842', 'b0596e5389820e3d9004c2210229a0f42973858fcc8398caf354e84b423d6c24', 'validated', '{"audio_key":"2a4ccac15e34eb45a8cbd9d197f53fe59f22017e041446c861b6cfcedfeae775","entity_key":"d_compressed_synthesis_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"b0596e5389820e3d9004c2210229a0f42973858fcc8398caf354e84b423d6c24","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/2a4ccac15e34eb45a8cbd9d197f53fe59f22017e041446c861b6cfcedfeae775.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_humor_irony_repair_01:3 -> audio/generated/de-DE/dialogues/2ab3734fcf1082b25b294463c19a7b00e953fdf627ac55d90aec80bd87ee9ec7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4cfe9432-67ca-5259-9044-417f2a2330dd', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_humor_irony_repair_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '67fd0ce7bc49fd06cabcd1cfaafca9e0ad2b764affbd5acd1204186300354890'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2c061c54-f7ab-5c10-9838-933cffc5ea35', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4cfe9432-67ca-5259-9044-417f2a2330dd', 1), '67fd0ce7bc49fd06cabcd1cfaafca9e0ad2b764affbd5acd1204186300354890',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2ab3734fcf1082b25b294463c19a7b00e953fdf627ac55d90aec80bd87ee9ec7.mp3', 3892, '2026-09-13 14:03:40.263015', 'e6146b1d4c68555424f1af340a001e3638af5fc96c9a68ac4038acf0dabc3938', 'validated', '{"audio_key":"2ab3734fcf1082b25b294463c19a7b00e953fdf627ac55d90aec80bd87ee9ec7","entity_key":"d_humor_irony_repair_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"e6146b1d4c68555424f1af340a001e3638af5fc96c9a68ac4038acf0dabc3938","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/2ab3734fcf1082b25b294463c19a7b00e953fdf627ac55d90aec80bd87ee9ec7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_expert_briefing_capstone_02:2 -> audio/generated/de-DE/dialogues/2ad2835324812955f4a4a622a9314b4dafc46d3cb5dbf469ae41380c9a4ddee0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('144ac6df-e362-58f9-b51e-ffd17b015547', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_expert_briefing_capstone_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4b143714ab35e0010253bb9a09617792b421f4d5775ba027e4f3719581c4d06f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8442b12f-8775-584c-bc16-8be77ae6dd0e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('144ac6df-e362-58f9-b51e-ffd17b015547', 1), '4b143714ab35e0010253bb9a09617792b421f4d5775ba027e4f3719581c4d06f',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2ad2835324812955f4a4a622a9314b4dafc46d3cb5dbf469ae41380c9a4ddee0.mp3', 3996, '2026-09-13 14:03:41.171751', 'bf8955730d6f0ace004f73e607df73f211c07ae705127bb803a864f8e5b99315', 'validated', '{"audio_key":"2ad2835324812955f4a4a622a9314b4dafc46d3cb5dbf469ae41380c9a4ddee0","entity_key":"d_expert_briefing_capstone_02:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"bf8955730d6f0ace004f73e607df73f211c07ae705127bb803a864f8e5b99315","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/2ad2835324812955f4a4a622a9314b4dafc46d3cb5dbf469ae41380c9a4ddee0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_compressed_synthesis_02:2 -> audio/generated/de-DE/dialogues/2e72f5ba251a92bcb0d78d6475a685536a06640d644ffb7a1b2a03b21f510fc1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('56233fe1-c65b-5761-846e-dfd70172d1d9', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_compressed_synthesis_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'beb2c6db6f81ae546d2cbefb2d0c3ecffbffe0fc2b4ad272ecb53337d1f3b94c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('53429de4-12b6-5deb-8389-e599cc08936b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('56233fe1-c65b-5761-846e-dfd70172d1d9', 1), 'beb2c6db6f81ae546d2cbefb2d0c3ecffbffe0fc2b4ad272ecb53337d1f3b94c',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2e72f5ba251a92bcb0d78d6475a685536a06640d644ffb7a1b2a03b21f510fc1.mp3', 4858, '2026-09-13 14:03:41.674831', 'd1885af05566513c3dafb4b2b7c4b21a838347f1f6422ff9f5fcf4f212f337c8', 'validated', '{"audio_key":"2e72f5ba251a92bcb0d78d6475a685536a06640d644ffb7a1b2a03b21f510fc1","entity_key":"d_compressed_synthesis_02:2","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d1885af05566513c3dafb4b2b7c4b21a838347f1f6422ff9f5fcf4f212f337c8","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/2e72f5ba251a92bcb0d78d6475a685536a06640d644ffb7a1b2a03b21f510fc1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_compressed_synthesis_01:2 -> audio/generated/de-DE/dialogues/35fc929ff05ac69a2192e7e0b203c78f49989fae74bf3b1984fecd0a1fdf04aa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5be906e8-5fc2-58d7-ae72-acf84126d942', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_compressed_synthesis_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b8ea119f7cedf4d6a9e1c0e1b68754cfdfc82070f9747435d873e9838eddd271'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0d2c47c1-0409-5229-8253-99d173a28d03', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5be906e8-5fc2-58d7-ae72-acf84126d942', 1), 'b8ea119f7cedf4d6a9e1c0e1b68754cfdfc82070f9747435d873e9838eddd271',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/35fc929ff05ac69a2192e7e0b203c78f49989fae74bf3b1984fecd0a1fdf04aa.mp3', 4597, '2026-09-13 14:03:42.615087', '6aca94707fd5b3be2859c9bd49ed2961fd61162eec6790c5f647ba338eeb0fb7', 'validated', '{"audio_key":"35fc929ff05ac69a2192e7e0b203c78f49989fae74bf3b1984fecd0a1fdf04aa","entity_key":"d_compressed_synthesis_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"6aca94707fd5b3be2859c9bd49ed2961fd61162eec6790c5f647ba338eeb0fb7","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/35fc929ff05ac69a2192e7e0b203c78f49989fae74bf3b1984fecd0a1fdf04aa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_live_reformulation_02:2 -> audio/generated/de-DE/dialogues/38af02888c4d4ce87e46b971685d813aede9216a5af6f33d3688fc6ba2f99de6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('82f90885-e3ba-51e6-926d-44a2236e2474', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_live_reformulation_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '13c6f6fe10f6db41ffe4b97fd1a855e40fe46bd059698e1ff58b968694540d57'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8dd86866-6f44-5ce4-8476-fcad2eb8c09c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('82f90885-e3ba-51e6-926d-44a2236e2474', 1), '13c6f6fe10f6db41ffe4b97fd1a855e40fe46bd059698e1ff58b968694540d57',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/38af02888c4d4ce87e46b971685d813aede9216a5af6f33d3688fc6ba2f99de6.mp3', 7183, '2026-09-13 14:03:43.403726', 'd20b32648c9cff5ec532b23ecf6537ca1125690c34b558abdc03c38fac33f222', 'validated', '{"audio_key":"38af02888c4d4ce87e46b971685d813aede9216a5af6f33d3688fc6ba2f99de6","entity_key":"d_live_reformulation_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"d20b32648c9cff5ec532b23ecf6537ca1125690c34b558abdc03c38fac33f222","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/38af02888c4d4ce87e46b971685d813aede9216a5af6f33d3688fc6ba2f99de6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_expert_briefing_capstone_02:1 -> audio/generated/de-DE/dialogues/3bcaf1a7269cece25b5b4aefa1c86e17edf371d4c5a6ff838e43a05159719050.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d1a4b553-0f7d-5516-9545-fdb89ff7b90a', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_expert_briefing_capstone_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd95aa87f0bb3ec5fc15683adb9529a860a67870d1f9d772d68d2ea4f668b4ff0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('175e072b-bd2d-53fd-88f3-e06c7e03ee28', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d1a4b553-0f7d-5516-9545-fdb89ff7b90a', 1), 'd95aa87f0bb3ec5fc15683adb9529a860a67870d1f9d772d68d2ea4f668b4ff0',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3bcaf1a7269cece25b5b4aefa1c86e17edf371d4c5a6ff838e43a05159719050.mp3', 4623, '2026-09-13 14:03:44.434217', '8b09934569d7d9b714f65a34e868d90c1a035363d5e0941e3ad504bb40f0736c', 'validated', '{"audio_key":"3bcaf1a7269cece25b5b4aefa1c86e17edf371d4c5a6ff838e43a05159719050","entity_key":"d_expert_briefing_capstone_02:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"8b09934569d7d9b714f65a34e868d90c1a035363d5e0941e3ad504bb40f0736c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/3bcaf1a7269cece25b5b4aefa1c86e17edf371d4c5a6ff838e43a05159719050.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_counterfactual_reasoning_03:4 -> audio/generated/de-DE/dialogues/3d6690e11d03b7fc745d16e378e6f88e27d615c618aee3236d37bff328c9c27b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ada74439-0df7-5e21-b984-f36263cd7c50', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_counterfactual_reasoning_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8ded9da94b35e41960d68a1b0ad1ae0de97bfd2afe2fef286da9932273b0d93c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('115b873f-20a2-5523-8ca7-470b188c6ce9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ada74439-0df7-5e21-b984-f36263cd7c50', 1), '8ded9da94b35e41960d68a1b0ad1ae0de97bfd2afe2fef286da9932273b0d93c',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3d6690e11d03b7fc745d16e378e6f88e27d615c618aee3236d37bff328c9c27b.mp3', 4597, '2026-09-13 14:03:44.897412', '36618f7dd2147b0abd4e85af8057945ca87297ef47f3249e3b39fef182c4ae02', 'validated', '{"audio_key":"3d6690e11d03b7fc745d16e378e6f88e27d615c618aee3236d37bff328c9c27b","entity_key":"d_counterfactual_reasoning_03:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"36618f7dd2147b0abd4e85af8057945ca87297ef47f3249e3b39fef182c4ae02","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/3d6690e11d03b7fc745d16e378e6f88e27d615c618aee3236d37bff328c9c27b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_mediation_across_frameworks_03:1 -> audio/generated/de-DE/dialogues/422b19ceec3866a023ece2686f4b428a8cc2e32f37e24839bd664012eabe916a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ca550505-4b72-543f-b2d4-af0861d98867', 1)
  AND voice_key = 'character:mara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_mediation_across_frameworks_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '399289ebca72c465bf6f27a7d91f4fb61494a7307eccb90cfa2ff1cf77f4d773'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('733a9d63-1ab0-59fc-b332-9a09d04cfaeb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ca550505-4b72-543f-b2d4-af0861d98867', 1), '399289ebca72c465bf6f27a7d91f4fb61494a7307eccb90cfa2ff1cf77f4d773',
  'character:mara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/422b19ceec3866a023ece2686f4b428a8cc2e32f37e24839bd664012eabe916a.mp3', 3291, '2026-09-13 14:03:45.676047', '6656d23b599be00c153348a4c451eee476750efdd6435df5c155bb016816e2d4', 'validated', '{"audio_key":"422b19ceec3866a023ece2686f4b428a8cc2e32f37e24839bd664012eabe916a","entity_key":"d_mediation_across_frameworks_03:1","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6656d23b599be00c153348a4c451eee476750efdd6435df5c155bb016816e2d4","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/422b19ceec3866a023ece2686f4b428a8cc2e32f37e24839bd664012eabe916a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_and_implicature_03:3 -> audio/generated/de-DE/dialogues/445af4aa03f482d97db2618b8d0e48d07a705c0ced8d469e4f08c675574352bb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a8bdef5e-4afd-5996-8100-fd3840d8a04a', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_and_implicature_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '055ee8f55eebb5e197022e513da378ecbcc4466124cbbc306c8b9a982f667229'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('507540ee-e4eb-5379-8015-3af7fc920657', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a8bdef5e-4afd-5996-8100-fd3840d8a04a', 1), '055ee8f55eebb5e197022e513da378ecbcc4466124cbbc306c8b9a982f667229',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/445af4aa03f482d97db2618b8d0e48d07a705c0ced8d469e4f08c675574352bb.mp3', 2507, '2026-09-13 14:03:46.061125', 'f67daf2c48ed8c5986be6e2933247803fc1496a413fd3b2129d6a10f97ddeee6', 'validated', '{"audio_key":"445af4aa03f482d97db2618b8d0e48d07a705c0ced8d469e4f08c675574352bb","entity_key":"d_register_and_implicature_03:3","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"f67daf2c48ed8c5986be6e2933247803fc1496a413fd3b2129d6a10f97ddeee6","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/445af4aa03f482d97db2618b8d0e48d07a705c0ced8d469e4f08c675574352bb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidential_calibration_01:1 -> audio/generated/de-DE/dialogues/46382fbe6ce5e0589e8f6160de379ba36ce93ea496e06b80e0025f9bfe1fd936.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fea7daf1-48ac-5f0f-8744-8ccece087f3d', 1)
  AND voice_key = 'character:mara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidential_calibration_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e51fdbb37e02b873169b480afb1a310ef62122896c8a38ece8fe89d65224aee0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('02f6c699-7e3f-552a-a25b-c4afd06bc042', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fea7daf1-48ac-5f0f-8744-8ccece087f3d', 1), 'e51fdbb37e02b873169b480afb1a310ef62122896c8a38ece8fe89d65224aee0',
  'character:mara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/46382fbe6ce5e0589e8f6160de379ba36ce93ea496e06b80e0025f9bfe1fd936.mp3', 2925, '2026-09-13 14:03:46.865849', 'baed3299b9643b4663171be4b0dab14faa5573c39eaaf53587f54ab5d6d107aa', 'validated', '{"audio_key":"46382fbe6ce5e0589e8f6160de379ba36ce93ea496e06b80e0025f9bfe1fd936","entity_key":"d_evidential_calibration_01:1","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"baed3299b9643b4663171be4b0dab14faa5573c39eaaf53587f54ab5d6d107aa","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/46382fbe6ce5e0589e8f6160de379ba36ce93ea496e06b80e0025f9bfe1fd936.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_definitional_disputes_01:3 -> audio/generated/de-DE/dialogues/4ab031880573366d02decaecf30d3fc3d2e04203b7faee5791c9a266f0f3cba0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('85ac3b22-95c6-5962-aaf3-d8f700e14e6a', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_definitional_disputes_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7207cac1e08b1cadacf890b81ad90c19642f85712346dcfaae4ffc971bfc3e8b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ee869651-b1da-5dcd-a2e6-a1f2d1c5fb9e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('85ac3b22-95c6-5962-aaf3-d8f700e14e6a', 1), '7207cac1e08b1cadacf890b81ad90c19642f85712346dcfaae4ffc971bfc3e8b',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4ab031880573366d02decaecf30d3fc3d2e04203b7faee5791c9a266f0f3cba0.mp3', 4205, '2026-09-13 14:03:47.444560', '0a0b866fb3b9975b5e4bcbf237985cd29f3c13931e1e730fa3f948ca4d930458', 'validated', '{"audio_key":"4ab031880573366d02decaecf30d3fc3d2e04203b7faee5791c9a266f0f3cba0","entity_key":"d_definitional_disputes_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"0a0b866fb3b9975b5e4bcbf237985cd29f3c13931e1e730fa3f948ca4d930458","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/4ab031880573366d02decaecf30d3fc3d2e04203b7faee5791c9a266f0f3cba0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_humor_irony_repair_02:3 -> audio/generated/de-DE/dialogues/52881ae8aac39be009b4d9d0b240ed9e899c37f021d08503021c7b16d3cbc029.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5c46b489-12c7-5b2c-92bb-94404b23f989', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_humor_irony_repair_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c4db8fc02078d6d76d25a72f7f9b736b56f6d2f732833274218aefd5850a84ac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('324baab8-b9fe-59d6-bcf6-c965f522e247', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5c46b489-12c7-5b2c-92bb-94404b23f989', 1), 'c4db8fc02078d6d76d25a72f7f9b736b56f6d2f732833274218aefd5850a84ac',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/52881ae8aac39be009b4d9d0b240ed9e899c37f021d08503021c7b16d3cbc029.mp3', 5041, '2026-09-13 14:03:48.360834', 'baaa5d0def83d32495120af5671d928474b9a608b532093a1a336ec3ce461dfe', 'validated', '{"audio_key":"52881ae8aac39be009b4d9d0b240ed9e899c37f021d08503021c7b16d3cbc029","entity_key":"d_humor_irony_repair_02:3","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"baaa5d0def83d32495120af5671d928474b9a608b532093a1a336ec3ce461dfe","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/52881ae8aac39be009b4d9d0b240ed9e899c37f021d08503021c7b16d3cbc029.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_and_implicature_01:2 -> audio/generated/de-DE/dialogues/551454ee027e13a69eaf5656040412516b51ae544b3c9a4cd2f67c720651b400.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('887e910c-48dd-5d86-9c41-92b7612a14ec', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_and_implicature_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8cce688ca21596a53906ae83d55d4c175aa8e5eed9afea59ede55ae9215234b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a2e97f2a-827c-51e4-9024-c5b701eb358f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('887e910c-48dd-5d86-9c41-92b7612a14ec', 1), '8cce688ca21596a53906ae83d55d4c175aa8e5eed9afea59ede55ae9215234b4',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/551454ee027e13a69eaf5656040412516b51ae544b3c9a4cd2f67c720651b400.mp3', 3186, '2026-09-13 14:03:48.717999', '34fa2da0752a8eac72b376442b36710f6e88322c5cd5ddc960428ee2324a2d9a', 'validated', '{"audio_key":"551454ee027e13a69eaf5656040412516b51ae544b3c9a4cd2f67c720651b400","entity_key":"d_register_and_implicature_01:2","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"34fa2da0752a8eac72b376442b36710f6e88322c5cd5ddc960428ee2324a2d9a","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/551454ee027e13a69eaf5656040412516b51ae544b3c9a4cd2f67c720651b400.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_compressed_synthesis_01:4 -> audio/generated/de-DE/dialogues/580cbb7a1b49ed44278b3752fc73f1a457178c81ecd82f20acc0bab5787703d7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2671258c-4d01-50ff-88b6-37e2b26d48ab', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_compressed_synthesis_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '948b4b89198c61a72456618cbddddf3807508c7b1b269ddab9109a8129ee2121'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d707a64f-d3bf-571f-a368-b624d6fb3c72', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2671258c-4d01-50ff-88b6-37e2b26d48ab', 1), '948b4b89198c61a72456618cbddddf3807508c7b1b269ddab9109a8129ee2121',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/580cbb7a1b49ed44278b3752fc73f1a457178c81ecd82f20acc0bab5787703d7.mp3', 3657, '2026-09-13 14:03:49.610181', '32066609bbaf20473b5bf3834dea3ed8233ada8cc98296998ecbf3dfddfa1184', 'validated', '{"audio_key":"580cbb7a1b49ed44278b3752fc73f1a457178c81ecd82f20acc0bab5787703d7","entity_key":"d_compressed_synthesis_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"32066609bbaf20473b5bf3834dea3ed8233ada8cc98296998ecbf3dfddfa1184","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/580cbb7a1b49ed44278b3752fc73f1a457178c81ecd82f20acc0bab5787703d7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidential_calibration_03:4 -> audio/generated/de-DE/dialogues/5cf748379d7d8d985572c4e26d4fe1873ce9417bbbd2896781bcf2ca4c38f8c9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('94de327b-4a43-56f6-8942-104a991e0f63', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidential_calibration_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '561d7f253d98f933bfed2d547bcef42c54f697534cb69cb41e2eff7040db646b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('29f2fff3-b529-5a96-84a0-b03a03681cdf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('94de327b-4a43-56f6-8942-104a991e0f63', 1), '561d7f253d98f933bfed2d547bcef42c54f697534cb69cb41e2eff7040db646b',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5cf748379d7d8d985572c4e26d4fe1873ce9417bbbd2896781bcf2ca4c38f8c9.mp3', 3474, '2026-09-13 14:03:50.248505', '04f59830df8195302bd14c409d5bdc4a8470295ef05c56512ef8d00742ce70d8', 'validated', '{"audio_key":"5cf748379d7d8d985572c4e26d4fe1873ce9417bbbd2896781bcf2ca4c38f8c9","entity_key":"d_evidential_calibration_03:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"04f59830df8195302bd14c409d5bdc4a8470295ef05c56512ef8d00742ce70d8","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/5cf748379d7d8d985572c4e26d4fe1873ce9417bbbd2896781bcf2ca4c38f8c9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_legal_administrative_nuance_03:3 -> audio/generated/de-DE/dialogues/5dbf3dc35c715114bee9641da954baa24f82da8d8d9dcd3948507fc09a5c2e81.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('94ad2205-7569-554b-b16c-772e54482a66', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_legal_administrative_nuance_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ecd0517c9f315fcdfa78764778d026f31ca85908a7f82d3a835d9ab9bf91214c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ab35fa4b-2551-5c0a-92c5-014c635e039f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('94ad2205-7569-554b-b16c-772e54482a66', 1), 'ecd0517c9f315fcdfa78764778d026f31ca85908a7f82d3a835d9ab9bf91214c',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5dbf3dc35c715114bee9641da954baa24f82da8d8d9dcd3948507fc09a5c2e81.mp3', 4022, '2026-09-13 14:03:51.011291', '893d3348fdb95eaaca8c8882397f8debabcb0bc8c970e6a4f08de5bfe9a15f9e', 'validated', '{"audio_key":"5dbf3dc35c715114bee9641da954baa24f82da8d8d9dcd3948507fc09a5c2e81","entity_key":"d_legal_administrative_nuance_03:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"893d3348fdb95eaaca8c8882397f8debabcb0bc8c970e6a4f08de5bfe9a15f9e","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/5dbf3dc35c715114bee9641da954baa24f82da8d8d9dcd3948507fc09a5c2e81.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_mediation_across_frameworks_03:3 -> audio/generated/de-DE/dialogues/5deba95d1833647c9085c2cc53d57193cb7afaabc6d1bb24889b0dbc7531656e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('75e791d6-20fb-5d87-b3d6-3d76e0e3a489', 1)
  AND voice_key = 'character:mara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_mediation_across_frameworks_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b324f643cc9d1de534f1962ba230352f447166df69eeadc913a5290fea74821e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1386da67-7b07-577f-aebb-3b69b41ecc07', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('75e791d6-20fb-5d87-b3d6-3d76e0e3a489', 1), 'b324f643cc9d1de534f1962ba230352f447166df69eeadc913a5290fea74821e',
  'character:mara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5deba95d1833647c9085c2cc53d57193cb7afaabc6d1bb24889b0dbc7531656e.mp3', 3840, '2026-09-13 14:03:51.587638', '8d4c6681469cda790d3b84aad38e6f621a326e8357ac3ef4e1d539f45f82692f', 'validated', '{"audio_key":"5deba95d1833647c9085c2cc53d57193cb7afaabc6d1bb24889b0dbc7531656e","entity_key":"d_mediation_across_frameworks_03:3","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8d4c6681469cda790d3b84aad38e6f621a326e8357ac3ef4e1d539f45f82692f","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/5deba95d1833647c9085c2cc53d57193cb7afaabc6d1bb24889b0dbc7531656e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_counterfactual_reasoning_02:1 -> audio/generated/de-DE/dialogues/5f65f14a9a497ef880f70a31b13f2b133ef342e67524feddd94cec60b61e1b63.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9ec94a96-953c-563d-abf3-dbf3026a32e1', 1)
  AND voice_key = 'character:mara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_counterfactual_reasoning_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5695a94481f780cbb08f5e4aef8f7d1d6c60c86331b330632f41e98b73bbd081'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4ebc6a07-7163-5e99-969e-e0fabf977220', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9ec94a96-953c-563d-abf3-dbf3026a32e1', 1), '5695a94481f780cbb08f5e4aef8f7d1d6c60c86331b330632f41e98b73bbd081',
  'character:mara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5f65f14a9a497ef880f70a31b13f2b133ef342e67524feddd94cec60b61e1b63.mp3', 3787, '2026-09-13 14:03:52.379045', 'd0fbeda173ff14dd7fe9cf5967cd32091464ed6e39b274ec4574eac64827406c', 'validated', '{"audio_key":"5f65f14a9a497ef880f70a31b13f2b133ef342e67524feddd94cec60b61e1b63","entity_key":"d_counterfactual_reasoning_02:1","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d0fbeda173ff14dd7fe9cf5967cd32091464ed6e39b274ec4574eac64827406c","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/5f65f14a9a497ef880f70a31b13f2b133ef342e67524feddd94cec60b61e1b63.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_live_reformulation_01:1 -> audio/generated/de-DE/dialogues/5fd3b1b4e163271c00124f6bea780edf5b0d04b155cbef09ed0e729086c5d51d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7bba4c1e-0db3-5612-be2a-e1335c60ba5f', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_live_reformulation_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7a672fa12196acef27fbd17ab969c10c967f7ab752e928ad057c6c4b2519182c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('35abfda9-fe90-5be0-8b11-3dfd9fc842a7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7bba4c1e-0db3-5612-be2a-e1335c60ba5f', 1), '7a672fa12196acef27fbd17ab969c10c967f7ab752e928ad057c6c4b2519182c',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5fd3b1b4e163271c00124f6bea780edf5b0d04b155cbef09ed0e729086c5d51d.mp3', 2873, '2026-09-13 14:03:52.899286', 'a3c2e913ac72cd1c0a4cabe9c9fb676cf5a4238b71f760d7efc8551a8780e9af', 'validated', '{"audio_key":"5fd3b1b4e163271c00124f6bea780edf5b0d04b155cbef09ed0e729086c5d51d","entity_key":"d_live_reformulation_01:1","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"a3c2e913ac72cd1c0a4cabe9c9fb676cf5a4238b71f760d7efc8551a8780e9af","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/5fd3b1b4e163271c00124f6bea780edf5b0d04b155cbef09ed0e729086c5d51d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_compressed_synthesis_02:1 -> audio/generated/de-DE/dialogues/60ff14507ac0583388a12b107180fc3f3b70677031042e7b0751072140b022c0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5149e140-cee9-5cb3-804b-dd2a8e0a5c2e', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_compressed_synthesis_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '63f899600a2946f2222b686f11ded9f69239cfaa0f6f2e847c2e2e745fa4b9ca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4550be4b-2f5c-57ef-99da-dcc5d90d420c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5149e140-cee9-5cb3-804b-dd2a8e0a5c2e', 1), '63f899600a2946f2222b686f11ded9f69239cfaa0f6f2e847c2e2e745fa4b9ca',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/60ff14507ac0583388a12b107180fc3f3b70677031042e7b0751072140b022c0.mp3', 3604, '2026-09-13 14:03:53.686471', 'e925530edb1d6a96f1fc778105d6dab50c383a7842b20e0a2e032006355ae9ee', 'validated', '{"audio_key":"60ff14507ac0583388a12b107180fc3f3b70677031042e7b0751072140b022c0","entity_key":"d_compressed_synthesis_02:1","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"e925530edb1d6a96f1fc778105d6dab50c383a7842b20e0a2e032006355ae9ee","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/60ff14507ac0583388a12b107180fc3f3b70677031042e7b0751072140b022c0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_definitional_disputes_01:4 -> audio/generated/de-DE/dialogues/66e1a4ff4484a727c9764264240cfad9cfc0ddeff8b41677b4e8efba2fcfc128.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('28c8ff88-a7b3-5d7c-a914-0672fc47f33d', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_definitional_disputes_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5896eaad753651a8cf12b82dc17db3545786622f1c5299402379b2a34e4d1f27'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d1067950-082f-50e0-8904-a27b65172f6c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('28c8ff88-a7b3-5d7c-a914-0672fc47f33d', 1), '5896eaad753651a8cf12b82dc17db3545786622f1c5299402379b2a34e4d1f27',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/66e1a4ff4484a727c9764264240cfad9cfc0ddeff8b41677b4e8efba2fcfc128.mp3', 3108, '2026-09-13 14:03:54.144311', '82755ee57ef16cf102f395194210b187ff7a39a8878f8936ea42ddbf5b7f3499', 'validated', '{"audio_key":"66e1a4ff4484a727c9764264240cfad9cfc0ddeff8b41677b4e8efba2fcfc128","entity_key":"d_definitional_disputes_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"82755ee57ef16cf102f395194210b187ff7a39a8878f8936ea42ddbf5b7f3499","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/66e1a4ff4484a727c9764264240cfad9cfc0ddeff8b41677b4e8efba2fcfc128.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_compressed_synthesis_02:4 -> audio/generated/de-DE/dialogues/67e6d6b22d3509088ebe8d32bd349d5550f7cc99853fbf0222b755a679fcbcd0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a248087c-0ad3-5553-897a-97dc335fb2e8', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_compressed_synthesis_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9f69ec55a0a541a5ed6d20be35b226a68cf9d469ecf612c142c992727e24fdfd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dd3001e4-5189-53a3-be17-1b74e26d5909', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a248087c-0ad3-5553-897a-97dc335fb2e8', 1), '9f69ec55a0a541a5ed6d20be35b226a68cf9d469ecf612c142c992727e24fdfd',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/67e6d6b22d3509088ebe8d32bd349d5550f7cc99853fbf0222b755a679fcbcd0.mp3', 3761, '2026-09-13 14:03:54.983329', '2160e072d78481188e746dd86ffa600afc55453dec4d511cae6417a153e49bb8', 'validated', '{"audio_key":"67e6d6b22d3509088ebe8d32bd349d5550f7cc99853fbf0222b755a679fcbcd0","entity_key":"d_compressed_synthesis_02:4","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"2160e072d78481188e746dd86ffa600afc55453dec4d511cae6417a153e49bb8","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/67e6d6b22d3509088ebe8d32bd349d5550f7cc99853fbf0222b755a679fcbcd0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_legal_administrative_nuance_02:4 -> audio/generated/de-DE/dialogues/68d58f1a60035c5ca771232849d2ecd9814c54419457463e129398e0816f9632.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0c5d0d9b-9146-512d-90e2-b50e3f775342', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_legal_administrative_nuance_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4b303e55505e8788b511659f53cd8f31e412a69dda26915eb297ebcd4d58940d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1be82db3-3234-5599-9cd6-475ce1bb5e9a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0c5d0d9b-9146-512d-90e2-b50e3f775342', 1), '4b303e55505e8788b511659f53cd8f31e412a69dda26915eb297ebcd4d58940d',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/68d58f1a60035c5ca771232849d2ecd9814c54419457463e129398e0816f9632.mp3', 4075, '2026-09-13 14:03:55.472327', '062275f28f168c57eb501ed48c922b4249f068750dd68eb0663aad5acc7ce198', 'validated', '{"audio_key":"68d58f1a60035c5ca771232849d2ecd9814c54419457463e129398e0816f9632","entity_key":"d_legal_administrative_nuance_02:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"062275f28f168c57eb501ed48c922b4249f068750dd68eb0663aad5acc7ce198","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/68d58f1a60035c5ca771232849d2ecd9814c54419457463e129398e0816f9632.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_compressed_synthesis_02:3 -> audio/generated/de-DE/dialogues/6f79472e98165be7b35c7adb5186a2fd42fc8a8c2d369ec8858d1d328fb4a49f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('18e6a763-89c2-5e45-aaef-77c0d5979343', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_compressed_synthesis_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '562c560aba1347fef192415cc00d56f66b626c1e67982d4887eb2115387c1d78'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5c21386e-6d70-5fe9-95c7-1251d66bdbe3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('18e6a763-89c2-5e45-aaef-77c0d5979343', 1), '562c560aba1347fef192415cc00d56f66b626c1e67982d4887eb2115387c1d78',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6f79472e98165be7b35c7adb5186a2fd42fc8a8c2d369ec8858d1d328fb4a49f.mp3', 3291, '2026-09-13 14:03:56.232046', '7ada09581d355a6cb087970d2ac867574e9572a91e9946f7c1e4de8e587c526f', 'validated', '{"audio_key":"6f79472e98165be7b35c7adb5186a2fd42fc8a8c2d369ec8858d1d328fb4a49f","entity_key":"d_compressed_synthesis_02:3","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"7ada09581d355a6cb087970d2ac867574e9572a91e9946f7c1e4de8e587c526f","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/6f79472e98165be7b35c7adb5186a2fd42fc8a8c2d369ec8858d1d328fb4a49f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidential_calibration_03:1 -> audio/generated/de-DE/dialogues/6f8dd4acb20102a6e24b343df0301fabd4b185a3b82eeab565c46b5b5a6f0857.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('99ceb237-d92a-505f-90d5-dd044995fa4a', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidential_calibration_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e3e6b0a61bf05d5644d18a8c5e8e0fd76ecb606c76dcc07d7d5928a7c0d3e4d4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7b85829a-f03d-5cd8-985d-eb90b5d55795', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('99ceb237-d92a-505f-90d5-dd044995fa4a', 1), 'e3e6b0a61bf05d5644d18a8c5e8e0fd76ecb606c76dcc07d7d5928a7c0d3e4d4',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6f8dd4acb20102a6e24b343df0301fabd4b185a3b82eeab565c46b5b5a6f0857.mp3', 3056, '2026-09-13 14:03:56.714300', 'de38ded2902756d452020861e9cb743ff8e23a77aec214fe08d1bb89db72e637', 'validated', '{"audio_key":"6f8dd4acb20102a6e24b343df0301fabd4b185a3b82eeab565c46b5b5a6f0857","entity_key":"d_evidential_calibration_03:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"de38ded2902756d452020861e9cb743ff8e23a77aec214fe08d1bb89db72e637","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/6f8dd4acb20102a6e24b343df0301fabd4b185a3b82eeab565c46b5b5a6f0857.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_mediation_across_frameworks_01:1 -> audio/generated/de-DE/dialogues/7064e25040341955693ca409d5e5093136a06e6a476b993eff88560fa1734801.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('40fe697a-b73c-5a2c-b0b5-8cf49a40a9fe', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_mediation_across_frameworks_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '80ae63db5b006503335bfb3fad408c1c9003e4ab929960e47e9df78ddf17b972'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f6f36664-69cc-5a86-955a-4c757425d0e0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('40fe697a-b73c-5a2c-b0b5-8cf49a40a9fe', 1), '80ae63db5b006503335bfb3fad408c1c9003e4ab929960e47e9df78ddf17b972',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7064e25040341955693ca409d5e5093136a06e6a476b993eff88560fa1734801.mp3', 4022, '2026-09-13 14:03:57.523525', '1af130588f0d07b116674fadda6fa61ef825f43e6215c8ac714c6bb8814b6f73', 'validated', '{"audio_key":"7064e25040341955693ca409d5e5093136a06e6a476b993eff88560fa1734801","entity_key":"d_mediation_across_frameworks_01:1","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"1af130588f0d07b116674fadda6fa61ef825f43e6215c8ac714c6bb8814b6f73","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/7064e25040341955693ca409d5e5093136a06e6a476b993eff88560fa1734801.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_live_reformulation_02:3 -> audio/generated/de-DE/dialogues/7102c8466120eb4e518e37ee3d37b480582c9a6222330022eac5616132de70ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('35492d3f-e47c-5f1f-b8b0-53d6fef4e597', 1)
  AND voice_key = 'character:mara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_live_reformulation_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9da7b690a6521dd6facd21fd430b4f61e4e512961804c3bfbfbc877f9aff0043'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('805c880b-226e-5dbb-a3aa-9925ff5dfeda', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('35492d3f-e47c-5f1f-b8b0-53d6fef4e597', 1), '9da7b690a6521dd6facd21fd430b4f61e4e512961804c3bfbfbc877f9aff0043',
  'character:mara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7102c8466120eb4e518e37ee3d37b480582c9a6222330022eac5616132de70ef.mp3', 4440, '2026-09-13 14:03:58.152999', '7aac970d921489b8838ed97b636162e6d9fa8164f8c91db739831738ec73438d', 'validated', '{"audio_key":"7102c8466120eb4e518e37ee3d37b480582c9a6222330022eac5616132de70ef","entity_key":"d_live_reformulation_02:3","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7aac970d921489b8838ed97b636162e6d9fa8164f8c91db739831738ec73438d","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/7102c8466120eb4e518e37ee3d37b480582c9a6222330022eac5616132de70ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_and_implicature_02:4 -> audio/generated/de-DE/dialogues/71a056cd1baa3b9240f7e3d7970cbe15688844f797e2956b4cf1b21fc745523e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7d83ea31-cc20-5198-ad3a-ac48db379a4a', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_and_implicature_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4ffb8e999c2c87ffc9c7c602adacea346cad13596f607b4883260f76c0a0d778'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ceab3bb7-312c-5034-bbf1-d9fec16f563c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7d83ea31-cc20-5198-ad3a-ac48db379a4a', 1), '4ffb8e999c2c87ffc9c7c602adacea346cad13596f607b4883260f76c0a0d778',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/71a056cd1baa3b9240f7e3d7970cbe15688844f797e2956b4cf1b21fc745523e.mp3', 4362, '2026-09-13 14:03:58.863501', 'fa3b57e7eec3e430bb83bcee15275ed07589cb932c086790906cea285b1eb094', 'validated', '{"audio_key":"71a056cd1baa3b9240f7e3d7970cbe15688844f797e2956b4cf1b21fc745523e","entity_key":"d_register_and_implicature_02:4","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"fa3b57e7eec3e430bb83bcee15275ed07589cb932c086790906cea285b1eb094","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/71a056cd1baa3b9240f7e3d7970cbe15688844f797e2956b4cf1b21fc745523e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_legal_administrative_nuance_03:2 -> audio/generated/de-DE/dialogues/71e48f58bd3d468a50b34d00eb0a6980c0d218a7af30359e4d95b54166697898.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a457bd48-40e5-5421-9708-e6a8bbeb8400', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_legal_administrative_nuance_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1224ae2c7d0e405fd81ab90780fcc48efa88fd92dd9f140469f956d1ad854e46'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1a17c628-1d3a-589b-858a-a3e7bda4021b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a457bd48-40e5-5421-9708-e6a8bbeb8400', 1), '1224ae2c7d0e405fd81ab90780fcc48efa88fd92dd9f140469f956d1ad854e46',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/71e48f58bd3d468a50b34d00eb0a6980c0d218a7af30359e4d95b54166697898.mp3', 2951, '2026-09-13 14:03:59.578446', 'f8f94f895742197aecaa0411ebdd67efd7c8353a15cb815a70c1a20745bee14e', 'validated', '{"audio_key":"71e48f58bd3d468a50b34d00eb0a6980c0d218a7af30359e4d95b54166697898","entity_key":"d_legal_administrative_nuance_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f8f94f895742197aecaa0411ebdd67efd7c8353a15cb815a70c1a20745bee14e","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/71e48f58bd3d468a50b34d00eb0a6980c0d218a7af30359e4d95b54166697898.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_definitional_disputes_01:2 -> audio/generated/de-DE/dialogues/72cbcba04d78cabb803930369f3ccacf5fde0ca1c993644ef99c33922089f285.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1a15a9d8-5a45-5b60-b01e-42f0e3089c4e', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_definitional_disputes_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '144ed2f5803b79111b698c59112e59dfe172c90b13c32f215b20370969110a67'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('414b593e-5cac-5313-beca-ca54d8fa8842', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1a15a9d8-5a45-5b60-b01e-42f0e3089c4e', 1), '144ed2f5803b79111b698c59112e59dfe172c90b13c32f215b20370969110a67',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/72cbcba04d78cabb803930369f3ccacf5fde0ca1c993644ef99c33922089f285.mp3', 5015, '2026-09-13 14:04:00.328844', '577cea5b6bfef6393e9e56300837c7c90807062347caa2a36fd169a88f2e13c0', 'validated', '{"audio_key":"72cbcba04d78cabb803930369f3ccacf5fde0ca1c993644ef99c33922089f285","entity_key":"d_definitional_disputes_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"577cea5b6bfef6393e9e56300837c7c90807062347caa2a36fd169a88f2e13c0","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/72cbcba04d78cabb803930369f3ccacf5fde0ca1c993644ef99c33922089f285.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_counterfactual_reasoning_02:2 -> audio/generated/de-DE/dialogues/773b1a28d3f23f9c777c0d19b43c42f067c10171ace03db40115b2adddc22480.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c83f0151-68ea-5ba6-ae9e-833516cb39a4', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_counterfactual_reasoning_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '33cc990041d7350bfd8050631bf6e85f8a991e642bf75dbc76763e6b342c3500'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c019167f-7b51-5fa9-8b2c-2064768273fc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c83f0151-68ea-5ba6-ae9e-833516cb39a4', 1), '33cc990041d7350bfd8050631bf6e85f8a991e642bf75dbc76763e6b342c3500',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/773b1a28d3f23f9c777c0d19b43c42f067c10171ace03db40115b2adddc22480.mp3', 2873, '2026-09-13 14:04:00.759806', '51db6702259e94e08744a25da9df8434f68125a766a07cd94657384d279c4f0a', 'validated', '{"audio_key":"773b1a28d3f23f9c777c0d19b43c42f067c10171ace03db40115b2adddc22480","entity_key":"d_counterfactual_reasoning_02:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"51db6702259e94e08744a25da9df8434f68125a766a07cd94657384d279c4f0a","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/773b1a28d3f23f9c777c0d19b43c42f067c10171ace03db40115b2adddc22480.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_humor_irony_repair_01:1 -> audio/generated/de-DE/dialogues/7892dfd99f48a2eec53ad049cd40293141f171ef6d93b577d1bf306026d5a5df.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('80c0ffe7-0210-591a-b026-09e645611619', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_humor_irony_repair_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e41ee5859c15ac16f38690ca5ba2e5c7445c48d50bd4fe5fd8adf3113d3d046c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7b37f639-2263-5c01-aec5-598a0e3dc7b9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('80c0ffe7-0210-591a-b026-09e645611619', 1), 'e41ee5859c15ac16f38690ca5ba2e5c7445c48d50bd4fe5fd8adf3113d3d046c',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7892dfd99f48a2eec53ad049cd40293141f171ef6d93b577d1bf306026d5a5df.mp3', 3160, '2026-09-13 14:04:01.578673', '335c2e7850c8bb664679b70d947dec4710b52d0154d00e6a269137c4de5fe411', 'validated', '{"audio_key":"7892dfd99f48a2eec53ad049cd40293141f171ef6d93b577d1bf306026d5a5df","entity_key":"d_humor_irony_repair_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"335c2e7850c8bb664679b70d947dec4710b52d0154d00e6a269137c4de5fe411","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/7892dfd99f48a2eec53ad049cd40293141f171ef6d93b577d1bf306026d5a5df.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_expert_briefing_capstone_01:1 -> audio/generated/de-DE/dialogues/7bbaaaa228e0a897dc9a0623e48005a5d2d899828d52b677c4b4e330197c0cda.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5516b1de-3155-5228-bec8-f088c45f4fa1', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_expert_briefing_capstone_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7134ec418e540370bb01edc85446041af32a4e08861677508489183467744cb7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ef888748-511a-57af-8bf6-32e4728e67dc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5516b1de-3155-5228-bec8-f088c45f4fa1', 1), '7134ec418e540370bb01edc85446041af32a4e08861677508489183467744cb7',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7bbaaaa228e0a897dc9a0623e48005a5d2d899828d52b677c4b4e330197c0cda.mp3', 5041, '2026-09-13 14:04:02.244230', 'c546e96e394e5be1ad66078b5ff0f38464f2f0135cecf7c1773d9fb25fc4bebf', 'validated', '{"audio_key":"7bbaaaa228e0a897dc9a0623e48005a5d2d899828d52b677c4b4e330197c0cda","entity_key":"d_expert_briefing_capstone_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"c546e96e394e5be1ad66078b5ff0f38464f2f0135cecf7c1773d9fb25fc4bebf","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/7bbaaaa228e0a897dc9a0623e48005a5d2d899828d52b677c4b4e330197c0cda.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_definitional_disputes_02:4 -> audio/generated/de-DE/dialogues/7bf9f503944f9798614f312d050f2d576fb62f9d0c40b08595adbb377246b709.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c96ed637-9c53-59ff-9f7a-dd083f02fc61', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_definitional_disputes_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '57c59eb3f78faf2663efff85e6fe647d84461ea61d9bbc80b4d8e7e59ea92a36'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('69763b51-7e84-5d47-920a-b674b974a06c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c96ed637-9c53-59ff-9f7a-dd083f02fc61', 1), '57c59eb3f78faf2663efff85e6fe647d84461ea61d9bbc80b4d8e7e59ea92a36',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7bf9f503944f9798614f312d050f2d576fb62f9d0c40b08595adbb377246b709.mp3', 4179, '2026-09-13 14:04:02.922579', '305c8a153bcdfcc21d511d02a4aa38bc3203011df4e66d40e1f50f9e5346b968', 'validated', '{"audio_key":"7bf9f503944f9798614f312d050f2d576fb62f9d0c40b08595adbb377246b709","entity_key":"d_definitional_disputes_02:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"305c8a153bcdfcc21d511d02a4aa38bc3203011df4e66d40e1f50f9e5346b968","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/7bf9f503944f9798614f312d050f2d576fb62f9d0c40b08595adbb377246b709.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_legal_administrative_nuance_01:2 -> audio/generated/de-DE/dialogues/7cf2d430b3617a0821a0c44e346daea5a412f030957df092720fa8f761c8045a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4596d7ae-3158-5bfc-ae15-7346bc98bc96', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_legal_administrative_nuance_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3c20dc228f3459c78ef74da3553bcfabf0f86dcc1850cb49ffa464238ead7ea6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6803cb93-03d5-56ae-af92-284c00beba46', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4596d7ae-3158-5bfc-ae15-7346bc98bc96', 1), '3c20dc228f3459c78ef74da3553bcfabf0f86dcc1850cb49ffa464238ead7ea6',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7cf2d430b3617a0821a0c44e346daea5a412f030957df092720fa8f761c8045a.mp3', 5511, '2026-09-13 14:04:03.746871', '8c1536ed8af7260eb4dea63d1b5e3a1ee489f316b3f4ca2adb10068c32809ad3', 'validated', '{"audio_key":"7cf2d430b3617a0821a0c44e346daea5a412f030957df092720fa8f761c8045a","entity_key":"d_legal_administrative_nuance_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"8c1536ed8af7260eb4dea63d1b5e3a1ee489f316b3f4ca2adb10068c32809ad3","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/7cf2d430b3617a0821a0c44e346daea5a412f030957df092720fa8f761c8045a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_legal_administrative_nuance_01:4 -> audio/generated/de-DE/dialogues/7d106ce4ee40a3085cf95f633adc02f03128c2f0cd798e9a144f0a83f735745e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b97f3e87-4671-564e-882d-2ddfa862ca89', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_legal_administrative_nuance_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '972625072fb8700f933d88281ff69635529eb886f849b42a83a836c491ed0acd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('523381df-b7ff-55cf-ab77-5cf4da48f03e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b97f3e87-4671-564e-882d-2ddfa862ca89', 1), '972625072fb8700f933d88281ff69635529eb886f849b42a83a836c491ed0acd',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7d106ce4ee40a3085cf95f633adc02f03128c2f0cd798e9a144f0a83f735745e.mp3', 4623, '2026-09-13 14:04:04.324552', 'd69a3f3c3be23e3495118dfb12c924a0d99e2e68376b403524eddfd7ca1b304d', 'validated', '{"audio_key":"7d106ce4ee40a3085cf95f633adc02f03128c2f0cd798e9a144f0a83f735745e","entity_key":"d_legal_administrative_nuance_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d69a3f3c3be23e3495118dfb12c924a0d99e2e68376b403524eddfd7ca1b304d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/7d106ce4ee40a3085cf95f633adc02f03128c2f0cd798e9a144f0a83f735745e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_counterfactual_reasoning_01:2 -> audio/generated/de-DE/dialogues/7dbfddd02fbcc6f42cd65edb9169c9cb5f03cbee854dd182a34eac6603433cbb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('18e78548-aeb5-58cc-a590-d410090d21aa', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_counterfactual_reasoning_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b8aa028307372c559a5919be5ab8abc49c792560f2c4cd73adde0aaf9f8e7cb4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1234b1f7-db02-57e7-a211-5bc2721328f2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('18e78548-aeb5-58cc-a590-d410090d21aa', 1), 'b8aa028307372c559a5919be5ab8abc49c792560f2c4cd73adde0aaf9f8e7cb4',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7dbfddd02fbcc6f42cd65edb9169c9cb5f03cbee854dd182a34eac6603433cbb.mp3', 3369, '2026-09-13 14:04:05.010471', 'caf2d5caf0c4fa952920010e318dedf872fd9364ab0132d2c7423a5d98128bfe', 'validated', '{"audio_key":"7dbfddd02fbcc6f42cd65edb9169c9cb5f03cbee854dd182a34eac6603433cbb","entity_key":"d_counterfactual_reasoning_01:2","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"caf2d5caf0c4fa952920010e318dedf872fd9364ab0132d2c7423a5d98128bfe","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/7dbfddd02fbcc6f42cd65edb9169c9cb5f03cbee854dd182a34eac6603433cbb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_mediation_across_frameworks_01:4 -> audio/generated/de-DE/dialogues/7f34df8c44eb7bd490d004db8cc73c583465d16c40a1d0f3712e22fde030837f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1a47095a-2d25-542b-a53d-1b4be533d39b', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_mediation_across_frameworks_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '117cdb78bce7cc31f40664cbaaf5afb8f80c155d9b7331fb207198a3d46ca65a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('72489daa-150a-5a0b-ac3c-3c98d87ab159', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1a47095a-2d25-542b-a53d-1b4be533d39b', 1), '117cdb78bce7cc31f40664cbaaf5afb8f80c155d9b7331fb207198a3d46ca65a',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7f34df8c44eb7bd490d004db8cc73c583465d16c40a1d0f3712e22fde030837f.mp3', 4597, '2026-09-13 14:04:05.853833', '0e3372b9b1fe28ca3144a40b9afdd71fcc1adb51c14eef2cbb143e7aa09d4391', 'validated', '{"audio_key":"7f34df8c44eb7bd490d004db8cc73c583465d16c40a1d0f3712e22fde030837f","entity_key":"d_mediation_across_frameworks_01:4","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"0e3372b9b1fe28ca3144a40b9afdd71fcc1adb51c14eef2cbb143e7aa09d4391","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/7f34df8c44eb7bd490d004db8cc73c583465d16c40a1d0f3712e22fde030837f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_counterfactual_reasoning_01:3 -> audio/generated/de-DE/dialogues/83715ccc3edcd12cf5e7c1464f52503817ce80613c4afba545b3ea7af00655af.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1c39f80b-a5f4-5467-a127-adfa642d33c5', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_counterfactual_reasoning_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7ae7644374e2e91357f58940c273d62f68828bff76339e33275ecaedb2856724'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e4d7479e-4856-55d7-99a7-631ad86287c0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1c39f80b-a5f4-5467-a127-adfa642d33c5', 1), '7ae7644374e2e91357f58940c273d62f68828bff76339e33275ecaedb2856724',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/83715ccc3edcd12cf5e7c1464f52503817ce80613c4afba545b3ea7af00655af.mp3', 4414, '2026-09-13 14:04:06.425447', '07463d1aa57aa27d05f8903bad3fe6cc5f0afaf1aa0336e0b36bd20085a02888', 'validated', '{"audio_key":"83715ccc3edcd12cf5e7c1464f52503817ce80613c4afba545b3ea7af00655af","entity_key":"d_counterfactual_reasoning_01:3","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"07463d1aa57aa27d05f8903bad3fe6cc5f0afaf1aa0336e0b36bd20085a02888","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/83715ccc3edcd12cf5e7c1464f52503817ce80613c4afba545b3ea7af00655af.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_expert_briefing_capstone_02:4 -> audio/generated/de-DE/dialogues/86d50bed4850a30572633b84c942327e22239c657f1a3481fa8d9d4052411382.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('63c59f9c-55fa-58e1-844a-18d0e11c20a8', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_expert_briefing_capstone_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6cf1372e3bff52e72faa333e50910d61e5f76fdd12035a228fa3b6e74ae57440'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a554756b-37c2-584b-a768-b4c28e246091', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('63c59f9c-55fa-58e1-844a-18d0e11c20a8', 1), '6cf1372e3bff52e72faa333e50910d61e5f76fdd12035a228fa3b6e74ae57440',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/86d50bed4850a30572633b84c942327e22239c657f1a3481fa8d9d4052411382.mp3', 4075, '2026-09-13 14:04:07.266129', '8afa3e95124646048205056caed5ec65eab03823f4e89b2ff4a33f88d43d0d99', 'validated', '{"audio_key":"86d50bed4850a30572633b84c942327e22239c657f1a3481fa8d9d4052411382","entity_key":"d_expert_briefing_capstone_02:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"8afa3e95124646048205056caed5ec65eab03823f4e89b2ff4a33f88d43d0d99","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/86d50bed4850a30572633b84c942327e22239c657f1a3481fa8d9d4052411382.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_live_reformulation_03:2 -> audio/generated/de-DE/dialogues/8706b11e9b40e54b03fe0d7c2d1462204d20c2694f8a9086412bf58acb627d1a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9987ab3f-6150-5b41-b4b0-074ad8bb510f', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_live_reformulation_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a62f8bc74e80b3f8c12d9ee0725022606382c9d52b5e2d717b9c98147a15c76f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8105735a-5ccd-50be-97d0-fae5c733a490', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9987ab3f-6150-5b41-b4b0-074ad8bb510f', 1), 'a62f8bc74e80b3f8c12d9ee0725022606382c9d52b5e2d717b9c98147a15c76f',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8706b11e9b40e54b03fe0d7c2d1462204d20c2694f8a9086412bf58acb627d1a.mp3', 1985, '2026-09-13 14:04:07.520188', '3f274b218c26d7794d0936480e67c1c7093784f7d44d2c8872b765309ee29936', 'validated', '{"audio_key":"8706b11e9b40e54b03fe0d7c2d1462204d20c2694f8a9086412bf58acb627d1a","entity_key":"d_live_reformulation_03:2","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"3f274b218c26d7794d0936480e67c1c7093784f7d44d2c8872b765309ee29936","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/8706b11e9b40e54b03fe0d7c2d1462204d20c2694f8a9086412bf58acb627d1a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidential_calibration_01:3 -> audio/generated/de-DE/dialogues/873142d22ec4a8212e01275b5ed165cac71bf05847df945bdc41fcb55efa2f26.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('993aa825-8874-5ab7-b4cc-1648bf55b87b', 1)
  AND voice_key = 'character:mara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidential_calibration_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f817412d754d55f3461907b4b8dcfe1e8ee105f3c725f97f70f99c37634e27e9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('54897704-7499-55ea-a34b-91e221966895', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('993aa825-8874-5ab7-b4cc-1648bf55b87b', 1), 'f817412d754d55f3461907b4b8dcfe1e8ee105f3c725f97f70f99c37634e27e9',
  'character:mara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/873142d22ec4a8212e01275b5ed165cac71bf05847df945bdc41fcb55efa2f26.mp3', 3578, '2026-09-13 14:04:08.536833', 'c5d828d8d2fc448c36ea73cceaa364bcd7de0eade396cfb89ae0098f479621d7', 'validated', '{"audio_key":"873142d22ec4a8212e01275b5ed165cac71bf05847df945bdc41fcb55efa2f26","entity_key":"d_evidential_calibration_01:3","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c5d828d8d2fc448c36ea73cceaa364bcd7de0eade396cfb89ae0098f479621d7","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/873142d22ec4a8212e01275b5ed165cac71bf05847df945bdc41fcb55efa2f26.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_mediation_across_frameworks_02:3 -> audio/generated/de-DE/dialogues/896183977a719c39b27297404715357b16e3aa51d7e217995d4bbd763aa81c89.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('05c0b0ea-ce52-5355-afe8-7b2b308c668a', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_mediation_across_frameworks_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '009658f072f13c33e79af62afa4ac5c087bda424e26e18dcab484bdc366ae346'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b116924f-e737-5593-b4f6-b3911342a2c7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('05c0b0ea-ce52-5355-afe8-7b2b308c668a', 1), '009658f072f13c33e79af62afa4ac5c087bda424e26e18dcab484bdc366ae346',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/896183977a719c39b27297404715357b16e3aa51d7e217995d4bbd763aa81c89.mp3', 4205, '2026-09-13 14:04:08.884629', 'fd4ba69521a2666f67ecc531d07c36eb8a63ed0ed503760e79c4aa6576f57ab4', 'validated', '{"audio_key":"896183977a719c39b27297404715357b16e3aa51d7e217995d4bbd763aa81c89","entity_key":"d_mediation_across_frameworks_02:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"fd4ba69521a2666f67ecc531d07c36eb8a63ed0ed503760e79c4aa6576f57ab4","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/896183977a719c39b27297404715357b16e3aa51d7e217995d4bbd763aa81c89.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_mediation_across_frameworks_02:2 -> audio/generated/de-DE/dialogues/8b3f2ae5a33cf615f199292be38957733205dbf6caba6a7f5b6cb50c9d397597.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b7213c4a-5fd7-55c0-9e0b-592383a26b5b', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_mediation_across_frameworks_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2abe660812fc0f45015baa713ccf4029054db0a83dede4a9e9e1b85ab7c1ccda'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ad3ca040-20e7-560b-9471-5f5d6c03c359', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b7213c4a-5fd7-55c0-9e0b-592383a26b5b', 1), '2abe660812fc0f45015baa713ccf4029054db0a83dede4a9e9e1b85ab7c1ccda',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8b3f2ae5a33cf615f199292be38957733205dbf6caba6a7f5b6cb50c9d397597.mp3', 3004, '2026-09-13 14:04:09.852886', 'f63df3f5aaf09aaa3e689af7249332990ddcaa7aacb4b35a8c8ab311439117b0', 'validated', '{"audio_key":"8b3f2ae5a33cf615f199292be38957733205dbf6caba6a7f5b6cb50c9d397597","entity_key":"d_mediation_across_frameworks_02:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"f63df3f5aaf09aaa3e689af7249332990ddcaa7aacb4b35a8c8ab311439117b0","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/8b3f2ae5a33cf615f199292be38957733205dbf6caba6a7f5b6cb50c9d397597.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_mediation_across_frameworks_03:2 -> audio/generated/de-DE/dialogues/8ea8aea971c53a42b87126b3ce6b7fbd19bf85d186550149f295d26eb8f0cf3d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d9b17ffd-eec9-5e8b-bdd9-7b473fd7cf5c', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_mediation_across_frameworks_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '287cf231abd7f4f58fdc885337e5c6194e0e606be83429342bbd2ef420a57108'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0e66413c-2de5-57f5-a57f-571de2174906', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d9b17ffd-eec9-5e8b-bdd9-7b473fd7cf5c', 1), '287cf231abd7f4f58fdc885337e5c6194e0e606be83429342bbd2ef420a57108',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8ea8aea971c53a42b87126b3ce6b7fbd19bf85d186550149f295d26eb8f0cf3d.mp3', 4440, '2026-09-13 14:04:10.310581', 'a04e3026d1e767670d6bb986542beabbad8ce5498a5ec620d0156ac03a1f9191', 'validated', '{"audio_key":"8ea8aea971c53a42b87126b3ce6b7fbd19bf85d186550149f295d26eb8f0cf3d","entity_key":"d_mediation_across_frameworks_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"a04e3026d1e767670d6bb986542beabbad8ce5498a5ec620d0156ac03a1f9191","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/8ea8aea971c53a42b87126b3ce6b7fbd19bf85d186550149f295d26eb8f0cf3d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_live_reformulation_03:4 -> audio/generated/de-DE/dialogues/8f6c872051becea0f4bcc02a4739f16e8f6bf2f9e241fbd61064b3f1be565f7a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('214ab369-8e55-55a0-a0c9-a9ac6cba176b', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_live_reformulation_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b656af667e2b157aa476bbea12914bd3a441415757f9b4d854aa3ebfc6887d6a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5af9b42b-6ea9-53c0-b309-c81387ba6b87', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('214ab369-8e55-55a0-a0c9-a9ac6cba176b', 1), 'b656af667e2b157aa476bbea12914bd3a441415757f9b4d854aa3ebfc6887d6a',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8f6c872051becea0f4bcc02a4739f16e8f6bf2f9e241fbd61064b3f1be565f7a.mp3', 3526, '2026-09-13 14:04:11.208356', 'efb7f4873e14091d097e6907ad0c02bc52d98a8c282fa3a3e0cc448126d1229b', 'validated', '{"audio_key":"8f6c872051becea0f4bcc02a4739f16e8f6bf2f9e241fbd61064b3f1be565f7a","entity_key":"d_live_reformulation_03:4","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"efb7f4873e14091d097e6907ad0c02bc52d98a8c282fa3a3e0cc448126d1229b","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/8f6c872051becea0f4bcc02a4739f16e8f6bf2f9e241fbd61064b3f1be565f7a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_mediation_across_frameworks_03:4 -> audio/generated/de-DE/dialogues/9bef5f45adde4ce43e8e0042ed77cea2b58bf11ab9107c35272677b5dce3e0ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('798a7bbf-2adb-5a2e-848b-958d474a1da3', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_mediation_across_frameworks_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bcf37720869044197647fd39467c47bc056198c0ec2ffe94107646d8192a56cd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d6f3dd8e-b86e-53f8-9f74-8615c84e3462', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('798a7bbf-2adb-5a2e-848b-958d474a1da3', 1), 'bcf37720869044197647fd39467c47bc056198c0ec2ffe94107646d8192a56cd',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9bef5f45adde4ce43e8e0042ed77cea2b58bf11ab9107c35272677b5dce3e0ef.mp3', 4362, '2026-09-13 14:04:11.687082', 'ef2b4c1ad27629e7ba6cebf879ae5e4439637dd0b90084277e32de1d58cf37e6', 'validated', '{"audio_key":"9bef5f45adde4ce43e8e0042ed77cea2b58bf11ab9107c35272677b5dce3e0ef","entity_key":"d_mediation_across_frameworks_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ef2b4c1ad27629e7ba6cebf879ae5e4439637dd0b90084277e32de1d58cf37e6","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/9bef5f45adde4ce43e8e0042ed77cea2b58bf11ab9107c35272677b5dce3e0ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_mediation_across_frameworks_01:2 -> audio/generated/de-DE/dialogues/9c734b180056b1bc58c681a5dd64494d9e1a63d48d6b248bdcf70d7bbca9df90.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('eee75fc9-a688-5d2b-ad29-e8c2418cdbd9', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_mediation_across_frameworks_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b0602a2631882bc6133cab9614092b76967175caaeb9968e73dc42555ae58723'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d31c7d12-c54f-5b73-bc36-6e13c2b9e6e0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('eee75fc9-a688-5d2b-ad29-e8c2418cdbd9', 1), 'b0602a2631882bc6133cab9614092b76967175caaeb9968e73dc42555ae58723',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9c734b180056b1bc58c681a5dd64494d9e1a63d48d6b248bdcf70d7bbca9df90.mp3', 4362, '2026-09-13 14:04:12.582958', '2ea46ef20681b8d9fd3590430a3d5ab19583aca609a35667438fba5efb07edb2', 'validated', '{"audio_key":"9c734b180056b1bc58c681a5dd64494d9e1a63d48d6b248bdcf70d7bbca9df90","entity_key":"d_mediation_across_frameworks_01:2","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"2ea46ef20681b8d9fd3590430a3d5ab19583aca609a35667438fba5efb07edb2","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/9c734b180056b1bc58c681a5dd64494d9e1a63d48d6b248bdcf70d7bbca9df90.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_legal_administrative_nuance_01:1 -> audio/generated/de-DE/dialogues/9c75016f77db661f1df69446e21d9f2b31a40b64e062e94d90cd9f69b095d518.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('12aedc13-6cff-5252-9727-b6316fc9f7c9', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_legal_administrative_nuance_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '204bb6fd87f00c6bcd4b50c58eb86f61beeda4bd54b3ada7c597747e4ad7cc15'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('21eb6680-c9ce-56dd-80c0-6474e5467247', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('12aedc13-6cff-5252-9727-b6316fc9f7c9', 1), '204bb6fd87f00c6bcd4b50c58eb86f61beeda4bd54b3ada7c597747e4ad7cc15',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9c75016f77db661f1df69446e21d9f2b31a40b64e062e94d90cd9f69b095d518.mp3', 3108, '2026-09-13 14:04:12.907305', '4f17ec1081277bc7fefb8db1dea0e398c37708813b4153625ecea60cc757d687', 'validated', '{"audio_key":"9c75016f77db661f1df69446e21d9f2b31a40b64e062e94d90cd9f69b095d518","entity_key":"d_legal_administrative_nuance_01:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"4f17ec1081277bc7fefb8db1dea0e398c37708813b4153625ecea60cc757d687","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/9c75016f77db661f1df69446e21d9f2b31a40b64e062e94d90cd9f69b095d518.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_expert_briefing_capstone_01:3 -> audio/generated/de-DE/dialogues/9f9099758735508d31f98f90e99a59cbb31f944632960e9793b2b18a5d96a477.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('19180816-f176-56df-9746-f37ce4e11f4a', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_expert_briefing_capstone_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b9fd293f387d7c40c710c2bd6eef6f33ecbaeb4fbac0143036c366489c25a3da'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6b82b206-224e-5f05-bc42-bc2b9fc0e049', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('19180816-f176-56df-9746-f37ce4e11f4a', 1), 'b9fd293f387d7c40c710c2bd6eef6f33ecbaeb4fbac0143036c366489c25a3da',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9f9099758735508d31f98f90e99a59cbb31f944632960e9793b2b18a5d96a477.mp3', 3996, '2026-09-13 14:04:13.993944', 'fd19601101c29f5f742b48d8d6521117a0b8524a21e66dd03adf30bb5b9f2156', 'validated', '{"audio_key":"9f9099758735508d31f98f90e99a59cbb31f944632960e9793b2b18a5d96a477","entity_key":"d_expert_briefing_capstone_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"fd19601101c29f5f742b48d8d6521117a0b8524a21e66dd03adf30bb5b9f2156","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/9f9099758735508d31f98f90e99a59cbb31f944632960e9793b2b18a5d96a477.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_expert_briefing_capstone_01:2 -> audio/generated/de-DE/dialogues/a1d958f279d2ed277e6b3fd1306ba7740e90def926364053687b297aec630a31.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ef2ff52f-2f98-5e78-b320-b2ee1e9d2e4d', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_expert_briefing_capstone_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe52076776a7d3587709ad9790ff8cb7161b620cda2329645894da0a41ac58b6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('54b41ba6-cdf1-531b-841e-55170cf3272c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ef2ff52f-2f98-5e78-b320-b2ee1e9d2e4d', 1), 'fe52076776a7d3587709ad9790ff8cb7161b620cda2329645894da0a41ac58b6',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a1d958f279d2ed277e6b3fd1306ba7740e90def926364053687b297aec630a31.mp3', 4440, '2026-09-13 14:04:14.246211', '39f480162b42e2693d0272fff7ef150d44ff96614475008b9a98bcab754d59e5', 'validated', '{"audio_key":"a1d958f279d2ed277e6b3fd1306ba7740e90def926364053687b297aec630a31","entity_key":"d_expert_briefing_capstone_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"39f480162b42e2693d0272fff7ef150d44ff96614475008b9a98bcab754d59e5","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/a1d958f279d2ed277e6b3fd1306ba7740e90def926364053687b297aec630a31.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidential_calibration_03:3 -> audio/generated/de-DE/dialogues/a2c3db9ceaa01c576a8f34d8db8a48458785cca4c6e1695ce17520fcb38a9dff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0300c979-a884-5c87-ad8b-4b22031bbf03', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidential_calibration_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '77a675501c44455205f75f50b4cdf09a3b4fad4ae7ddb114c87b0dd59dc23dc3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fc6e7fbd-e05a-58a7-8255-8b08d8ca2b7d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0300c979-a884-5c87-ad8b-4b22031bbf03', 1), '77a675501c44455205f75f50b4cdf09a3b4fad4ae7ddb114c87b0dd59dc23dc3',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a2c3db9ceaa01c576a8f34d8db8a48458785cca4c6e1695ce17520fcb38a9dff.mp3', 2690, '2026-09-13 14:04:15.191095', '01a87e70cb25f247752f19e37716c8d944503ca70a8ec4b1f5709890c3a73e3a', 'validated', '{"audio_key":"a2c3db9ceaa01c576a8f34d8db8a48458785cca4c6e1695ce17520fcb38a9dff","entity_key":"d_evidential_calibration_03:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"01a87e70cb25f247752f19e37716c8d944503ca70a8ec4b1f5709890c3a73e3a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/a2c3db9ceaa01c576a8f34d8db8a48458785cca4c6e1695ce17520fcb38a9dff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_definitional_disputes_01:1 -> audio/generated/de-DE/dialogues/a6f4dafbb43dcaaee22cb6cc802f01155cbebc1b842deff3ae16aaac53794e12.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c559c46a-e8c4-5ad7-b716-343463b9fcc7', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_definitional_disputes_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5c78a04014129307231087b768a9af1f5c3d16b1ccf032dbcc2623fc3d0659b5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('02de3a5a-f2b2-53b4-b163-a663d6ccef8a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c559c46a-e8c4-5ad7-b716-343463b9fcc7', 1), '5c78a04014129307231087b768a9af1f5c3d16b1ccf032dbcc2623fc3d0659b5',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a6f4dafbb43dcaaee22cb6cc802f01155cbebc1b842deff3ae16aaac53794e12.mp3', 2951, '2026-09-13 14:04:15.414768', '110f8c3028bbf8482d4cec6d90a38917dcdd883d3fefbdbd207fa241c2c7ceb9', 'validated', '{"audio_key":"a6f4dafbb43dcaaee22cb6cc802f01155cbebc1b842deff3ae16aaac53794e12","entity_key":"d_definitional_disputes_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"110f8c3028bbf8482d4cec6d90a38917dcdd883d3fefbdbd207fa241c2c7ceb9","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/a6f4dafbb43dcaaee22cb6cc802f01155cbebc1b842deff3ae16aaac53794e12.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_live_reformulation_03:1 -> audio/generated/de-DE/dialogues/a8fdde7878c87db078cacc4ce5214102ba5ebb540038a9d3d3fd7b6082d06212.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4708de9a-73fb-5b97-9734-53ead4c0dcb4', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_live_reformulation_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ffe957aadf21ef8d8442bf0c751f6aeff902c0d2b915e8f0e65e71178333573f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('60983423-e0d4-5d73-909e-8fc4b27bc635', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4708de9a-73fb-5b97-9734-53ead4c0dcb4', 1), 'ffe957aadf21ef8d8442bf0c751f6aeff902c0d2b915e8f0e65e71178333573f',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a8fdde7878c87db078cacc4ce5214102ba5ebb540038a9d3d3fd7b6082d06212.mp3', 5511, '2026-09-13 14:04:16.697441', 'a94d222cd12dd89fe791aa5f3584e7481c70d2a9b1b9c1aa033a0e4315442804', 'validated', '{"audio_key":"a8fdde7878c87db078cacc4ce5214102ba5ebb540038a9d3d3fd7b6082d06212","entity_key":"d_live_reformulation_03:1","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"a94d222cd12dd89fe791aa5f3584e7481c70d2a9b1b9c1aa033a0e4315442804","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/a8fdde7878c87db078cacc4ce5214102ba5ebb540038a9d3d3fd7b6082d06212.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_humor_irony_repair_03:1 -> audio/generated/de-DE/dialogues/a91d7981cd6800a98a2101e06b4c5535f502f0c3f3998de5efd83f81944d4590.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ccb81708-1ce5-5411-b764-7c900ef9567b', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_humor_irony_repair_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '54ee564fb130db64291bdf65a28f84f9ecd39accab63b1f6affc422c61718046'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('39c6e2e7-79f1-5113-8fd7-1402d31730f1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ccb81708-1ce5-5411-b764-7c900ef9567b', 1), '54ee564fb130db64291bdf65a28f84f9ecd39accab63b1f6affc422c61718046',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a91d7981cd6800a98a2101e06b4c5535f502f0c3f3998de5efd83f81944d4590.mp3', 4728, '2026-09-13 14:04:16.898568', '2efd1470ee810f31df6ad00cfcd1f40d80370e6da6a1ff590d520ecfb79d0c61', 'validated', '{"audio_key":"a91d7981cd6800a98a2101e06b4c5535f502f0c3f3998de5efd83f81944d4590","entity_key":"d_humor_irony_repair_03:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"2efd1470ee810f31df6ad00cfcd1f40d80370e6da6a1ff590d520ecfb79d0c61","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/a91d7981cd6800a98a2101e06b4c5535f502f0c3f3998de5efd83f81944d4590.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_definitional_disputes_02:1 -> audio/generated/de-DE/dialogues/aed7556c37a167555b91e4533afdee8f5b95afeff0c3c36dd17c6b3a7c916c4d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b59b4f3b-d454-5252-8de0-f70be8e4cf9d', 1)
  AND voice_key = 'character:mara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_definitional_disputes_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3b999a2f8614a42c7980bca16cd6c783293e1d789fba6ac5be1cc4151698ec97'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f2b8f602-b41e-56a8-9029-dcf7ce5fdda8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b59b4f3b-d454-5252-8de0-f70be8e4cf9d', 1), '3b999a2f8614a42c7980bca16cd6c783293e1d789fba6ac5be1cc4151698ec97',
  'character:mara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/aed7556c37a167555b91e4533afdee8f5b95afeff0c3c36dd17c6b3a7c916c4d.mp3', 3056, '2026-09-13 14:04:17.912773', '00605f490ba5c70f8ccafcd737c2c47380fd72c0bfff466912588c2b178296f3', 'validated', '{"audio_key":"aed7556c37a167555b91e4533afdee8f5b95afeff0c3c36dd17c6b3a7c916c4d","entity_key":"d_definitional_disputes_02:1","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"00605f490ba5c70f8ccafcd737c2c47380fd72c0bfff466912588c2b178296f3","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/aed7556c37a167555b91e4533afdee8f5b95afeff0c3c36dd17c6b3a7c916c4d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_definitional_disputes_03:4 -> audio/generated/de-DE/dialogues/afdb23c39c4b949bd538652dd64391583d45bbacf9bf631b3972bcee4074b7b2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('29913bcd-f9b6-52cc-8168-40ed578d10e6', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_definitional_disputes_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3e96c6c801dc8e8b1261807c00239e3cee932d503d8bd6a4a479e673ee9ee039'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7e015f12-c2c3-5853-a909-136a83c80e72', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('29913bcd-f9b6-52cc-8168-40ed578d10e6', 1), '3e96c6c801dc8e8b1261807c00239e3cee932d503d8bd6a4a479e673ee9ee039',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/afdb23c39c4b949bd538652dd64391583d45bbacf9bf631b3972bcee4074b7b2.mp3', 4414, '2026-09-13 14:04:18.265617', '89da24805f1696436ef4cee04dfa28a3fc16e92ec4ff166321dc43350dab9f11', 'validated', '{"audio_key":"afdb23c39c4b949bd538652dd64391583d45bbacf9bf631b3972bcee4074b7b2","entity_key":"d_definitional_disputes_03:4","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"89da24805f1696436ef4cee04dfa28a3fc16e92ec4ff166321dc43350dab9f11","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/afdb23c39c4b949bd538652dd64391583d45bbacf9bf631b3972bcee4074b7b2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidential_calibration_02:4 -> audio/generated/de-DE/dialogues/b1aa6d6ee771c84a22eb21bd06c9091dd75a0085472621b41ad4b4fbbedad7ea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a24ddbda-bb64-5fae-aa03-5115ab0d19bb', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidential_calibration_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7d7bfa42a378a7e4393bcce7756c85c31c46ff8603e14eec232d3933ef188a0b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2afa8dfc-063c-5081-a3aa-c5a800b7f2e5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a24ddbda-bb64-5fae-aa03-5115ab0d19bb', 1), '7d7bfa42a378a7e4393bcce7756c85c31c46ff8603e14eec232d3933ef188a0b',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b1aa6d6ee771c84a22eb21bd06c9091dd75a0085472621b41ad4b4fbbedad7ea.mp3', 2115, '2026-09-13 14:04:19.006498', '0c75990949615a8bbcac7018fb90fcf4d5f17f8651833fc674546e17b9e6b8ec', 'validated', '{"audio_key":"b1aa6d6ee771c84a22eb21bd06c9091dd75a0085472621b41ad4b4fbbedad7ea","entity_key":"d_evidential_calibration_02:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"0c75990949615a8bbcac7018fb90fcf4d5f17f8651833fc674546e17b9e6b8ec","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/b1aa6d6ee771c84a22eb21bd06c9091dd75a0085472621b41ad4b4fbbedad7ea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_and_implicature_01:3 -> audio/generated/de-DE/dialogues/b247670d9622800eeef6ec15de45fd30563263247550b7de7472eae65dad5e05.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('08854ec7-6610-5e58-8c88-b567f5d61c9a', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_and_implicature_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a0f2add1c9e557ad08ee065cc25bbbf869297089e948c1de2b0cdc2a7bcdf818'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0823742a-bc85-5436-b7ae-7242b0d61d01', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('08854ec7-6610-5e58-8c88-b567f5d61c9a', 1), 'a0f2add1c9e557ad08ee065cc25bbbf869297089e948c1de2b0cdc2a7bcdf818',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b247670d9622800eeef6ec15de45fd30563263247550b7de7472eae65dad5e05.mp3', 4075, '2026-09-13 14:04:19.577881', '429f1b221ee312abfdae58b0eb055be567a547d76f5017808da97c99f7d4d11d', 'validated', '{"audio_key":"b247670d9622800eeef6ec15de45fd30563263247550b7de7472eae65dad5e05","entity_key":"d_register_and_implicature_01:3","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"429f1b221ee312abfdae58b0eb055be567a547d76f5017808da97c99f7d4d11d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/b247670d9622800eeef6ec15de45fd30563263247550b7de7472eae65dad5e05.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_humor_irony_repair_02:1 -> audio/generated/de-DE/dialogues/b55502288a36e9b7f5785c22625a16452fe346e2d7f0d734871684d1fe68cd52.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('599a069b-e78a-5474-a041-94faf1a6a7e8', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_humor_irony_repair_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e650d66b42fadb0fbd885b92fe612d79083c6ee52dbf13d461e752b08856fbb6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('201d201a-3dd3-5f05-89c6-644a10a4e565', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('599a069b-e78a-5474-a041-94faf1a6a7e8', 1), 'e650d66b42fadb0fbd885b92fe612d79083c6ee52dbf13d461e752b08856fbb6',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b55502288a36e9b7f5785c22625a16452fe346e2d7f0d734871684d1fe68cd52.mp3', 2742, '2026-09-13 14:04:20.182029', '0c46ca4408ffaa9f73cbcb76550b8d5ae66f397a25b147a70f0ddc468f7cb170', 'validated', '{"audio_key":"b55502288a36e9b7f5785c22625a16452fe346e2d7f0d734871684d1fe68cd52","entity_key":"d_humor_irony_repair_02:1","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"0c46ca4408ffaa9f73cbcb76550b8d5ae66f397a25b147a70f0ddc468f7cb170","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/b55502288a36e9b7f5785c22625a16452fe346e2d7f0d734871684d1fe68cd52.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_expert_briefing_capstone_03:1 -> audio/generated/de-DE/dialogues/b7c2bd5fa72ab1abd7014d1cde5d3502f98e60a79bcabb188a2b85c5d79dc3c0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('52c97de8-14fa-51b6-b768-e65e331ddb1e', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_expert_briefing_capstone_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9f77b0943b82dc1f41d52ad7d637a19fdfc81a936ed8b830fd5cdc09fe95af49'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('73347b56-cdc7-5e13-8534-d6b552c0944f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('52c97de8-14fa-51b6-b768-e65e331ddb1e', 1), '9f77b0943b82dc1f41d52ad7d637a19fdfc81a936ed8b830fd5cdc09fe95af49',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b7c2bd5fa72ab1abd7014d1cde5d3502f98e60a79bcabb188a2b85c5d79dc3c0.mp3', 3160, '2026-09-13 14:04:20.839294', 'cb9d95ee33777581fd9b5f706b6d6ea7362bed5dab8bf6277ded024a30c905b7', 'validated', '{"audio_key":"b7c2bd5fa72ab1abd7014d1cde5d3502f98e60a79bcabb188a2b85c5d79dc3c0","entity_key":"d_expert_briefing_capstone_03:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"cb9d95ee33777581fd9b5f706b6d6ea7362bed5dab8bf6277ded024a30c905b7","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/b7c2bd5fa72ab1abd7014d1cde5d3502f98e60a79bcabb188a2b85c5d79dc3c0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidential_calibration_03:2 -> audio/generated/de-DE/dialogues/b8a18fa4e570530f254ea459142a0f9da247a2a14288f3980a78702b1295bf26.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e768da97-fc6b-5f26-ba10-ec07e1dff506', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidential_calibration_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aad7fde9ce7218ef2465c6b7a3dd3b5147665d2310ec970b2f611b721b868dc9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('457665c1-50cc-571f-af0d-003d5842312f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e768da97-fc6b-5f26-ba10-ec07e1dff506', 1), 'aad7fde9ce7218ef2465c6b7a3dd3b5147665d2310ec970b2f611b721b868dc9',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b8a18fa4e570530f254ea459142a0f9da247a2a14288f3980a78702b1295bf26.mp3', 3526, '2026-09-13 14:04:21.478478', '70cc37329629589a8a0493127f68d546912fd794716157e6643865d421e62a08', 'validated', '{"audio_key":"b8a18fa4e570530f254ea459142a0f9da247a2a14288f3980a78702b1295bf26","entity_key":"d_evidential_calibration_03:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"70cc37329629589a8a0493127f68d546912fd794716157e6643865d421e62a08","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/b8a18fa4e570530f254ea459142a0f9da247a2a14288f3980a78702b1295bf26.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_legal_administrative_nuance_02:3 -> audio/generated/de-DE/dialogues/b921962c86280f938398a8054bd2abbbf1eac1f12e5514bf74e1abbc5fad9fd3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1f229a4b-86f9-596b-9ad7-d44cc5e60ff6', 1)
  AND voice_key = 'character:mara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_legal_administrative_nuance_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd4dcb49e8f1c5cb2a1a82696069f9692ff78555de62b8bc4f2ea1f42d2d3dfdd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('79c23ee3-0b22-59de-b44d-54ad6690c0c7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1f229a4b-86f9-596b-9ad7-d44cc5e60ff6', 1), 'd4dcb49e8f1c5cb2a1a82696069f9692ff78555de62b8bc4f2ea1f42d2d3dfdd',
  'character:mara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b921962c86280f938398a8054bd2abbbf1eac1f12e5514bf74e1abbc5fad9fd3.mp3', 4414, '2026-09-13 14:04:22.225367', 'd624016480b243ff49ee664b1adcae76ef93e8904c4b864e544c32bf0bd98794', 'validated', '{"audio_key":"b921962c86280f938398a8054bd2abbbf1eac1f12e5514bf74e1abbc5fad9fd3","entity_key":"d_legal_administrative_nuance_02:3","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d624016480b243ff49ee664b1adcae76ef93e8904c4b864e544c32bf0bd98794","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/b921962c86280f938398a8054bd2abbbf1eac1f12e5514bf74e1abbc5fad9fd3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_live_reformulation_02:1 -> audio/generated/de-DE/dialogues/bb62aab2364e6d3a52b84f10cc34faed1fb00e9d1f9b6f5bc953691962a91e36.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('12ade91f-0207-5b39-bf6b-2cde48951dc0', 1)
  AND voice_key = 'character:mara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_live_reformulation_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '497bd6ca204b6eb17089c87879381163e0172652b2dc6236cc170c2ca019e08a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ac46524b-b347-5b86-9179-7cc6619a27e4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('12ade91f-0207-5b39-bf6b-2cde48951dc0', 1), '497bd6ca204b6eb17089c87879381163e0172652b2dc6236cc170c2ca019e08a',
  'character:mara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/bb62aab2364e6d3a52b84f10cc34faed1fb00e9d1f9b6f5bc953691962a91e36.mp3', 3108, '2026-09-13 14:04:22.693292', '62991f339bd15c0bab29e1421d848c9d254283aac8d81797d831534e0bb3ac94', 'validated', '{"audio_key":"bb62aab2364e6d3a52b84f10cc34faed1fb00e9d1f9b6f5bc953691962a91e36","entity_key":"d_live_reformulation_02:1","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"62991f339bd15c0bab29e1421d848c9d254283aac8d81797d831534e0bb3ac94","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/bb62aab2364e6d3a52b84f10cc34faed1fb00e9d1f9b6f5bc953691962a91e36.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_counterfactual_reasoning_01:1 -> audio/generated/de-DE/dialogues/bbf873a40e746d8a0443744877e5f606e087eebe2c5f9a3144f6c384991fae94.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dbcd698f-582f-572c-8648-5c391738b304', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_counterfactual_reasoning_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd2c02b15e45fb0a8ff4f8d609e25aa03765b77f4c2034130349e8a8130df94ae'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e587b2e7-4876-55c0-a03b-b8876c4e9b23', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dbcd698f-582f-572c-8648-5c391738b304', 1), 'd2c02b15e45fb0a8ff4f8d609e25aa03765b77f4c2034130349e8a8130df94ae',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/bbf873a40e746d8a0443744877e5f606e087eebe2c5f9a3144f6c384991fae94.mp3', 3343, '2026-09-13 14:04:23.476709', '22680799f5fc30c2f6eda76b0351eae8348e47e31b90ded62d9b74818697cecd', 'validated', '{"audio_key":"bbf873a40e746d8a0443744877e5f606e087eebe2c5f9a3144f6c384991fae94","entity_key":"d_counterfactual_reasoning_01:1","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"22680799f5fc30c2f6eda76b0351eae8348e47e31b90ded62d9b74818697cecd","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/bbf873a40e746d8a0443744877e5f606e087eebe2c5f9a3144f6c384991fae94.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_humor_irony_repair_03:3 -> audio/generated/de-DE/dialogues/bdd8d69ad03f81b8c530116222a688600cebb74381ea15dae5abc45459edac6f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6f71cfbd-254e-5501-8960-cf3c8ec16806', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_humor_irony_repair_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b4024d37774fd3674e319b6be5dc86d609b0463d3d908bcd51a4fbf019c5a642'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6534df95-5960-5014-a1f3-5d2cd82abfbe', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6f71cfbd-254e-5501-8960-cf3c8ec16806', 1), 'b4024d37774fd3674e319b6be5dc86d609b0463d3d908bcd51a4fbf019c5a642',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/bdd8d69ad03f81b8c530116222a688600cebb74381ea15dae5abc45459edac6f.mp3', 3056, '2026-09-13 14:04:23.915007', '150aa766761d01b7dbb821c0d42eb0de0bb70ca4a7ecd335f0846e6ca095ef4e', 'validated', '{"audio_key":"bdd8d69ad03f81b8c530116222a688600cebb74381ea15dae5abc45459edac6f","entity_key":"d_humor_irony_repair_03:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"150aa766761d01b7dbb821c0d42eb0de0bb70ca4a7ecd335f0846e6ca095ef4e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/bdd8d69ad03f81b8c530116222a688600cebb74381ea15dae5abc45459edac6f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_definitional_disputes_03:3 -> audio/generated/de-DE/dialogues/be053c488c33c19063c0b90041e3a99d3ac36c4fc876605ac9e8c22efcf4faa3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8d32fa7d-7b3e-5f1f-9c4a-7c073cea8c80', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_definitional_disputes_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd2e0a4e6fe84bf7efe9606e718324136988a69040dc6ab8f55495ca3a85721e8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('25caa32d-d4a2-5be3-9ad6-e993794ae532', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8d32fa7d-7b3e-5f1f-9c4a-7c073cea8c80', 1), 'd2e0a4e6fe84bf7efe9606e718324136988a69040dc6ab8f55495ca3a85721e8',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/be053c488c33c19063c0b90041e3a99d3ac36c4fc876605ac9e8c22efcf4faa3.mp3', 2951, '2026-09-13 14:04:24.744009', '1c54843abae9d1021a3fc92a5c16c8545d6738f8aa104fde304d4425dc9d68cc', 'validated', '{"audio_key":"be053c488c33c19063c0b90041e3a99d3ac36c4fc876605ac9e8c22efcf4faa3","entity_key":"d_definitional_disputes_03:3","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"1c54843abae9d1021a3fc92a5c16c8545d6738f8aa104fde304d4425dc9d68cc","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/be053c488c33c19063c0b90041e3a99d3ac36c4fc876605ac9e8c22efcf4faa3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_compressed_synthesis_03:3 -> audio/generated/de-DE/dialogues/c0a5542865859a1c6235ae6c63a6d0ccc0f1ae17bf32f643b735fbf5513a275f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7ea4cb9f-fe25-5e79-804c-41d684362ed0', 1)
  AND voice_key = 'character:mara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_compressed_synthesis_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8ee0fd2b5cdf042dfab73e0d838ee131b394b5ab55766efda0d1725b21166341'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('53d04107-b2d2-5433-91f0-e5e48028da02', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7ea4cb9f-fe25-5e79-804c-41d684362ed0', 1), '8ee0fd2b5cdf042dfab73e0d838ee131b394b5ab55766efda0d1725b21166341',
  'character:mara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c0a5542865859a1c6235ae6c63a6d0ccc0f1ae17bf32f643b735fbf5513a275f.mp3', 2951, '2026-09-13 14:04:25.121848', 'efa72a2347a8ef4c2000c3961ba95ea1a4d72d32406b77c2df86c3f74110a0b9', 'validated', '{"audio_key":"c0a5542865859a1c6235ae6c63a6d0ccc0f1ae17bf32f643b735fbf5513a275f","entity_key":"d_compressed_synthesis_03:3","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"efa72a2347a8ef4c2000c3961ba95ea1a4d72d32406b77c2df86c3f74110a0b9","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/c0a5542865859a1c6235ae6c63a6d0ccc0f1ae17bf32f643b735fbf5513a275f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_expert_briefing_capstone_03:4 -> audio/generated/de-DE/dialogues/c34a0ce0498fa1febbf06068ad36ce6dfa734fa4c344d66d6aad91b7c213e4e0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b999fe76-069f-5216-92a2-2e047d6f9e7d', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_expert_briefing_capstone_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ada14acd1146482cbd2daccedb7023e8681c233bb4b531b40998aa11adf136fa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7015c111-514e-56c2-a64f-12528c4bd0f7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b999fe76-069f-5216-92a2-2e047d6f9e7d', 1), 'ada14acd1146482cbd2daccedb7023e8681c233bb4b531b40998aa11adf136fa',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c34a0ce0498fa1febbf06068ad36ce6dfa734fa4c344d66d6aad91b7c213e4e0.mp3', 10344, '2026-09-13 14:04:26.846040', '6e85cab483dddcf3b21a2f889e4c0c9541271dafe9969292b6204bfb93675b8d', 'validated', '{"audio_key":"c34a0ce0498fa1febbf06068ad36ce6dfa734fa4c344d66d6aad91b7c213e4e0","entity_key":"d_expert_briefing_capstone_03:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"6e85cab483dddcf3b21a2f889e4c0c9541271dafe9969292b6204bfb93675b8d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/c34a0ce0498fa1febbf06068ad36ce6dfa734fa4c344d66d6aad91b7c213e4e0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_humor_irony_repair_02:4 -> audio/generated/de-DE/dialogues/c358d54794b15c8d64147d2e50e37c0f0e6d9b95459954abcb77a9f346c708ff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1ec57dc1-e5b3-578b-a7fa-6b5b67fb801e', 1)
  AND voice_key = 'character:mara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_humor_irony_repair_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ca910cd259a736a8d9f70706746812a946601a3dad1f84e1413c37a8ed9ad881'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f6d2bdf9-9461-57f4-9b88-b17582e61f6c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1ec57dc1-e5b3-578b-a7fa-6b5b67fb801e', 1), 'ca910cd259a736a8d9f70706746812a946601a3dad1f84e1413c37a8ed9ad881',
  'character:mara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c358d54794b15c8d64147d2e50e37c0f0e6d9b95459954abcb77a9f346c708ff.mp3', 4075, '2026-09-13 14:04:26.461918', '427d114bc349510094ce8cf9f6e7f879de0dc041d9b5ad2b5438c9ca44c8a1d0', 'validated', '{"audio_key":"c358d54794b15c8d64147d2e50e37c0f0e6d9b95459954abcb77a9f346c708ff","entity_key":"d_humor_irony_repair_02:4","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"427d114bc349510094ce8cf9f6e7f879de0dc041d9b5ad2b5438c9ca44c8a1d0","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/c358d54794b15c8d64147d2e50e37c0f0e6d9b95459954abcb77a9f346c708ff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_compressed_synthesis_03:2 -> audio/generated/de-DE/dialogues/c471e29c1410244cef7f0d899bde673e957daa9f14cd5f73607c8d7310bbf071.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4ff1ca8e-46e5-5b8c-95d9-054854b720de', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_compressed_synthesis_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b7b7cdebfd4d0c1b16e00859db2ef5b996c44115cdce7e6193d0c90c6227b7bd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0e21bcae-dbce-5024-9afd-d1343afae8c3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4ff1ca8e-46e5-5b8c-95d9-054854b720de', 1), 'b7b7cdebfd4d0c1b16e00859db2ef5b996c44115cdce7e6193d0c90c6227b7bd',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c471e29c1410244cef7f0d899bde673e957daa9f14cd5f73607c8d7310bbf071.mp3', 6504, '2026-09-13 14:04:28.080783', 'e8871d5e198f0265fd1ebafdbdc0a1c8f7666f73fb64dfc6e0e6a651d64b3383', 'validated', '{"audio_key":"c471e29c1410244cef7f0d899bde673e957daa9f14cd5f73607c8d7310bbf071","entity_key":"d_compressed_synthesis_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"e8871d5e198f0265fd1ebafdbdc0a1c8f7666f73fb64dfc6e0e6a651d64b3383","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/c471e29c1410244cef7f0d899bde673e957daa9f14cd5f73607c8d7310bbf071.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_and_implicature_03:4 -> audio/generated/de-DE/dialogues/c874fcb538ef2ac6ea959f838d259992deb1c1ad38820751c36d8fdcd775553c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cde1b693-7f52-5985-8fb7-20a602977e3f', 1)
  AND voice_key = 'character:mara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_and_implicature_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '540d18b950cc6958b651e3ee68e768f473e1c9efc779fbd1ee986c935ec31eae'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('078b96cb-d686-5ccc-bf9f-595099184dae', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cde1b693-7f52-5985-8fb7-20a602977e3f', 1), '540d18b950cc6958b651e3ee68e768f473e1c9efc779fbd1ee986c935ec31eae',
  'character:mara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c874fcb538ef2ac6ea959f838d259992deb1c1ad38820751c36d8fdcd775553c.mp3', 2951, '2026-09-13 14:04:28.046033', 'e96240c3bca83cab0a4c0efc828d2dd0e8ecd56010bd2b57e5cab806d6589665', 'validated', '{"audio_key":"c874fcb538ef2ac6ea959f838d259992deb1c1ad38820751c36d8fdcd775553c","entity_key":"d_register_and_implicature_03:4","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e96240c3bca83cab0a4c0efc828d2dd0e8ecd56010bd2b57e5cab806d6589665","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/c874fcb538ef2ac6ea959f838d259992deb1c1ad38820751c36d8fdcd775553c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_compressed_synthesis_01:3 -> audio/generated/de-DE/dialogues/cb0b7f539f396cb6fe6a274673c4364064479ace887ad1d21339b269568f1e6a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('116d3c59-75e1-53fb-a775-7c820f0bbc2b', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_compressed_synthesis_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1dd250f0b2c7912c329bf73cc8bb2c4e5e77d46ebf4347a062140bd66196f960'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('74952b01-db67-5440-98c9-89dd04e13822', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('116d3c59-75e1-53fb-a775-7c820f0bbc2b', 1), '1dd250f0b2c7912c329bf73cc8bb2c4e5e77d46ebf4347a062140bd66196f960',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/cb0b7f539f396cb6fe6a274673c4364064479ace887ad1d21339b269568f1e6a.mp3', 5276, '2026-09-13 14:04:29.538353', '18f30bd86514b6be14fc93f9cea0601ad42610dd312d381cf52548a8b8aacc25', 'validated', '{"audio_key":"cb0b7f539f396cb6fe6a274673c4364064479ace887ad1d21339b269568f1e6a","entity_key":"d_compressed_synthesis_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"18f30bd86514b6be14fc93f9cea0601ad42610dd312d381cf52548a8b8aacc25","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/cb0b7f539f396cb6fe6a274673c4364064479ace887ad1d21339b269568f1e6a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_definitional_disputes_02:3 -> audio/generated/de-DE/dialogues/cccae5bcb3a5f1220c355367e66fdd6a7868a2c623885feec9a412ebc8ef740d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2e7c5cdf-d808-5e9a-97dc-8097f4bdc964', 1)
  AND voice_key = 'character:mara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_definitional_disputes_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '87114965d12721f93c07080387b42fa68e6381c026fcf022e342507e3c75421f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8ab406b2-78b1-57d9-9b6f-4563f810522f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2e7c5cdf-d808-5e9a-97dc-8097f4bdc964', 1), '87114965d12721f93c07080387b42fa68e6381c026fcf022e342507e3c75421f',
  'character:mara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/cccae5bcb3a5f1220c355367e66fdd6a7868a2c623885feec9a412ebc8ef740d.mp3', 3422, '2026-09-13 14:04:29.442782', '6f8c624683e47aa20e0744ef6fd325374d887cfb4aece546c77d055c7daf2b28', 'validated', '{"audio_key":"cccae5bcb3a5f1220c355367e66fdd6a7868a2c623885feec9a412ebc8ef740d","entity_key":"d_definitional_disputes_02:3","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6f8c624683e47aa20e0744ef6fd325374d887cfb4aece546c77d055c7daf2b28","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/cccae5bcb3a5f1220c355367e66fdd6a7868a2c623885feec9a412ebc8ef740d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_and_implicature_02:2 -> audio/generated/de-DE/dialogues/cd3b10e2df2da33d4414ef4e3aeed781e93f652d94a9852a809f9847af6cf133.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f0997830-243b-5e5a-864b-56c452dd9a8a', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_and_implicature_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '87296579ea6d115b75529ca0ef3cd15dcfbb142df06e2d6aa4797b368995848e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b1c2a176-1120-5abb-ab64-a52e8eae4238', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f0997830-243b-5e5a-864b-56c452dd9a8a', 1), '87296579ea6d115b75529ca0ef3cd15dcfbb142df06e2d6aa4797b368995848e',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/cd3b10e2df2da33d4414ef4e3aeed781e93f652d94a9852a809f9847af6cf133.mp3', 4728, '2026-09-13 14:04:30.932122', '16c882fc7772251478c5c0eacc5b36d6fa0a6ba24b3b8fc12ed8f518a9ef5fdd', 'validated', '{"audio_key":"cd3b10e2df2da33d4414ef4e3aeed781e93f652d94a9852a809f9847af6cf133","entity_key":"d_register_and_implicature_02:2","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"16c882fc7772251478c5c0eacc5b36d6fa0a6ba24b3b8fc12ed8f518a9ef5fdd","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/cd3b10e2df2da33d4414ef4e3aeed781e93f652d94a9852a809f9847af6cf133.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidential_calibration_01:4 -> audio/generated/de-DE/dialogues/d1491bcb988f302183911d0ce98626ec183cb5e2ad0c5b85439fc821a26120bd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('070d5247-b7f3-53f8-8d2d-df891df042c1', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidential_calibration_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ebd42ea4e2a57cd9e95efe3978fb0e8863500dcee8e7a373163d2569c48412c6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4ab363f2-fa9d-58b5-b56b-176949398c6a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('070d5247-b7f3-53f8-8d2d-df891df042c1', 1), 'ebd42ea4e2a57cd9e95efe3978fb0e8863500dcee8e7a373163d2569c48412c6',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d1491bcb988f302183911d0ce98626ec183cb5e2ad0c5b85439fc821a26120bd.mp3', 6400, '2026-09-13 14:04:31.199845', '1bd1bcffc90b2d12daea17ea13fd9cf94afbdbf3b505ab665a46e4810d65a404', 'validated', '{"audio_key":"d1491bcb988f302183911d0ce98626ec183cb5e2ad0c5b85439fc821a26120bd","entity_key":"d_evidential_calibration_01:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"1bd1bcffc90b2d12daea17ea13fd9cf94afbdbf3b505ab665a46e4810d65a404","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/d1491bcb988f302183911d0ce98626ec183cb5e2ad0c5b85439fc821a26120bd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_mediation_across_frameworks_02:1 -> audio/generated/de-DE/dialogues/d16c9eee90ab42177f32d01d19068e055f889b0a5f50061715d600b27ecb61c4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('048faf86-d12c-531d-b99d-bd3ef271ad01', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_mediation_across_frameworks_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e632897d5c7947bca3562e4d9688c94ee2322d99c3f9918ae525f475163ef56f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('88bd4000-cbb4-5ff8-8324-08c689302afc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('048faf86-d12c-531d-b99d-bd3ef271ad01', 1), 'e632897d5c7947bca3562e4d9688c94ee2322d99c3f9918ae525f475163ef56f',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d16c9eee90ab42177f32d01d19068e055f889b0a5f50061715d600b27ecb61c4.mp3', 3787, '2026-09-13 14:04:32.243984', '45ba3c328a6f4545df1cc291a408f902eddb7cfcb653f106f524aea9f18f4f35', 'validated', '{"audio_key":"d16c9eee90ab42177f32d01d19068e055f889b0a5f50061715d600b27ecb61c4","entity_key":"d_mediation_across_frameworks_02:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"45ba3c328a6f4545df1cc291a408f902eddb7cfcb653f106f524aea9f18f4f35","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/d16c9eee90ab42177f32d01d19068e055f889b0a5f50061715d600b27ecb61c4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_definitional_disputes_03:2 -> audio/generated/de-DE/dialogues/d2383c0318102171f35ef706f4dc465c99d29edc9b6c04c63e497fb106bf46d2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('630e773f-436d-5a6c-a141-96128e063c4f', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_definitional_disputes_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fb3782acf25737c851d92c9bf7abb0db3e61ce81b753776b38bcda452111ab37'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1dc80398-37db-532b-9813-a7f5e771856b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('630e773f-436d-5a6c-a141-96128e063c4f', 1), 'fb3782acf25737c851d92c9bf7abb0db3e61ce81b753776b38bcda452111ab37',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d2383c0318102171f35ef706f4dc465c99d29edc9b6c04c63e497fb106bf46d2.mp3', 3840, '2026-09-13 14:04:32.508913', '1c154833c10d091acbf4ee74ff5edd59f6d536cffd7bf535e7ca1a0023ef4046', 'validated', '{"audio_key":"d2383c0318102171f35ef706f4dc465c99d29edc9b6c04c63e497fb106bf46d2","entity_key":"d_definitional_disputes_03:2","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"1c154833c10d091acbf4ee74ff5edd59f6d536cffd7bf535e7ca1a0023ef4046","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/d2383c0318102171f35ef706f4dc465c99d29edc9b6c04c63e497fb106bf46d2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_expert_briefing_capstone_03:3 -> audio/generated/de-DE/dialogues/dab5909fc41545812ec90fc08ae829f6495df35f6d8b9bb5bc17861bf8aa7038.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4aa65231-2ee3-5360-ab3d-fc6381acd0d1', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_expert_briefing_capstone_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '051bd997393eee02e0ed99717dc58233fcbe080265d45239070fb8acfcc08195'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dbdc1751-1a15-5d5b-a8d9-d3941f9542c8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4aa65231-2ee3-5360-ab3d-fc6381acd0d1', 1), '051bd997393eee02e0ed99717dc58233fcbe080265d45239070fb8acfcc08195',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/dab5909fc41545812ec90fc08ae829f6495df35f6d8b9bb5bc17861bf8aa7038.mp3', 1515, '2026-09-13 14:04:33.304241', 'e3ad385f7036b5169c1f0164f9ca2bfd2b9dfc0ef2801e1950530c9948dd8582', 'validated', '{"audio_key":"dab5909fc41545812ec90fc08ae829f6495df35f6d8b9bb5bc17861bf8aa7038","entity_key":"d_expert_briefing_capstone_03:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"e3ad385f7036b5169c1f0164f9ca2bfd2b9dfc0ef2801e1950530c9948dd8582","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/dab5909fc41545812ec90fc08ae829f6495df35f6d8b9bb5bc17861bf8aa7038.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_humor_irony_repair_01:4 -> audio/generated/de-DE/dialogues/dc76c10b61043320c847a67533032c5d7a7effd248ac5617e60fd4685689c3e9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4234c58e-7677-5a1c-839b-82c536dd6533', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_humor_irony_repair_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e62b617673d24184d82374ae70357129e5b4a046bc4c513503500d618a586bc7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('58d8c550-3faa-5f81-bf69-a81ff2148e5f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4234c58e-7677-5a1c-839b-82c536dd6533', 1), 'e62b617673d24184d82374ae70357129e5b4a046bc4c513503500d618a586bc7',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/dc76c10b61043320c847a67533032c5d7a7effd248ac5617e60fd4685689c3e9.mp3', 4545, '2026-09-13 14:04:33.947816', 'edfb822b91241c1e1694e8b92d3e2f62f0a92a9b9566e3a9cb19378e4db8c9bd', 'validated', '{"audio_key":"dc76c10b61043320c847a67533032c5d7a7effd248ac5617e60fd4685689c3e9","entity_key":"d_humor_irony_repair_01:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"edfb822b91241c1e1694e8b92d3e2f62f0a92a9b9566e3a9cb19378e4db8c9bd","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/dc76c10b61043320c847a67533032c5d7a7effd248ac5617e60fd4685689c3e9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_counterfactual_reasoning_01:4 -> audio/generated/de-DE/dialogues/dd3475ed906152236f88dcecb2e0967ed31b77c94c64d50d460cb5ece04b5580.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ad8b17e8-ab60-511c-b0e4-206f76367492', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_counterfactual_reasoning_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '36645d96dfcda68f0b937a16fde91a4d4c46d513a368f84c8c09849864c352ad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7af7aaa0-034a-5b74-9a57-8b68e680d618', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ad8b17e8-ab60-511c-b0e4-206f76367492', 1), '36645d96dfcda68f0b937a16fde91a4d4c46d513a368f84c8c09849864c352ad',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/dd3475ed906152236f88dcecb2e0967ed31b77c94c64d50d460cb5ece04b5580.mp3', 4362, '2026-09-13 14:04:34.653830', 'fc48bbe5dfa26cf521a4d575c864cdab67081d8e5f79832304d1f03fb30f9fe2', 'validated', '{"audio_key":"dd3475ed906152236f88dcecb2e0967ed31b77c94c64d50d460cb5ece04b5580","entity_key":"d_counterfactual_reasoning_01:4","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"fc48bbe5dfa26cf521a4d575c864cdab67081d8e5f79832304d1f03fb30f9fe2","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/dd3475ed906152236f88dcecb2e0967ed31b77c94c64d50d460cb5ece04b5580.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_compressed_synthesis_03:4 -> audio/generated/de-DE/dialogues/de9eb6b33615d9067e6243faeb972adfb0bff0e389681fc8ed30fda1cb7d05be.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('32539e56-77ef-5c03-92fe-3f42f75bd568', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_compressed_synthesis_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7ebcdd8049578f96a29d2712d5ae8ab830ad1f6a0fbe320e52534c94b566e708'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e20e131b-ae62-5c16-a381-9ecc4a7f6520', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('32539e56-77ef-5c03-92fe-3f42f75bd568', 1), '7ebcdd8049578f96a29d2712d5ae8ab830ad1f6a0fbe320e52534c94b566e708',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/de9eb6b33615d9067e6243faeb972adfb0bff0e389681fc8ed30fda1cb7d05be.mp3', 3108, '2026-09-13 14:04:35.205666', 'd250a93c9a5da5fe7b3cb02a3e20a808b04f4d8812b38e57d750bccf79fb11e1', 'validated', '{"audio_key":"de9eb6b33615d9067e6243faeb972adfb0bff0e389681fc8ed30fda1cb7d05be","entity_key":"d_compressed_synthesis_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d250a93c9a5da5fe7b3cb02a3e20a808b04f4d8812b38e57d750bccf79fb11e1","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/de9eb6b33615d9067e6243faeb972adfb0bff0e389681fc8ed30fda1cb7d05be.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_counterfactual_reasoning_02:3 -> audio/generated/de-DE/dialogues/dfb9ba5823f397a54df3fa50fa4cc23b12a57b0879168910952fd5c4faaa5621.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ec3da9ef-02cf-525c-a778-12693d29adb0', 1)
  AND voice_key = 'character:mara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_counterfactual_reasoning_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8ec9beb721e3320be44fc14dd3896cb74a83e4da647af9c9bd2d36ff62b14b2e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9684daa0-ff12-5186-ae56-530130211160', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ec3da9ef-02cf-525c-a778-12693d29adb0', 1), '8ec9beb721e3320be44fc14dd3896cb74a83e4da647af9c9bd2d36ff62b14b2e',
  'character:mara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/dfb9ba5823f397a54df3fa50fa4cc23b12a57b0879168910952fd5c4faaa5621.mp3', 3996, '2026-09-13 14:04:36.000157', '400f1ad84807fd657e2d7c7ddda946075099cfd88ef974b198c04ded08377bda', 'validated', '{"audio_key":"dfb9ba5823f397a54df3fa50fa4cc23b12a57b0879168910952fd5c4faaa5621","entity_key":"d_counterfactual_reasoning_02:3","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"400f1ad84807fd657e2d7c7ddda946075099cfd88ef974b198c04ded08377bda","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/dfb9ba5823f397a54df3fa50fa4cc23b12a57b0879168910952fd5c4faaa5621.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_humor_irony_repair_03:4 -> audio/generated/de-DE/dialogues/e1e1b15fc3a7bef83848d44a3ebad3130a415f23b2a87a40dbea6d719cfda674.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('acbdf9b4-6a3b-5208-88da-0e7704714c82', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_humor_irony_repair_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ef4b95ca05a884a63865ef65011c713255cb24f9fdca9549d81e3579bb130e99'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b4e0279e-760d-52c4-909f-8928f84d3cb7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('acbdf9b4-6a3b-5208-88da-0e7704714c82', 1), 'ef4b95ca05a884a63865ef65011c713255cb24f9fdca9549d81e3579bb130e99',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e1e1b15fc3a7bef83848d44a3ebad3130a415f23b2a87a40dbea6d719cfda674.mp3', 3369, '2026-09-13 14:04:36.465913', '4c924e86e02f5524a88a1bbf31fe608f6dba72aab220c99f31590b7497fd7cb6', 'validated', '{"audio_key":"e1e1b15fc3a7bef83848d44a3ebad3130a415f23b2a87a40dbea6d719cfda674","entity_key":"d_humor_irony_repair_03:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"4c924e86e02f5524a88a1bbf31fe608f6dba72aab220c99f31590b7497fd7cb6","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/e1e1b15fc3a7bef83848d44a3ebad3130a415f23b2a87a40dbea6d719cfda674.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidential_calibration_02:1 -> audio/generated/de-DE/dialogues/e206c2073c916c2ac485deca468e80760db6dca5e1d1c8ee3bef7ece9af3d27b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2c742f01-0522-5e68-a09d-d58f56c04430', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidential_calibration_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bfa70056769549e117d29e5b032c64fa1860619b289b72213aa2283d7aec22f7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('91f51f55-537e-558e-a8fa-00741a09afa6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2c742f01-0522-5e68-a09d-d58f56c04430', 1), 'bfa70056769549e117d29e5b032c64fa1860619b289b72213aa2283d7aec22f7',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e206c2073c916c2ac485deca468e80760db6dca5e1d1c8ee3bef7ece9af3d27b.mp3', 3369, '2026-09-13 14:04:37.274934', 'af663eae1fd7be94bf46e717493a96f00578632e65fd0c19585c5f7d4f6c4383', 'validated', '{"audio_key":"e206c2073c916c2ac485deca468e80760db6dca5e1d1c8ee3bef7ece9af3d27b","entity_key":"d_evidential_calibration_02:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"af663eae1fd7be94bf46e717493a96f00578632e65fd0c19585c5f7d4f6c4383","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/e206c2073c916c2ac485deca468e80760db6dca5e1d1c8ee3bef7ece9af3d27b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_and_implicature_02:3 -> audio/generated/de-DE/dialogues/e2d37e368a2cde88f1a3868604b4a0e0e55d98243a3a8a3c407c0fcfb63eb7b1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fc7cfff5-5bba-5d95-add3-b69b379e0dd6', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_and_implicature_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9f172c178fdbaa2ba1b979adff4af6a1c154590921aaf6dbdd703cfda0da70df'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cbd70eff-a36d-573d-9d84-2e9d092b3452', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fc7cfff5-5bba-5d95-add3-b69b379e0dd6', 1), '9f172c178fdbaa2ba1b979adff4af6a1c154590921aaf6dbdd703cfda0da70df',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e2d37e368a2cde88f1a3868604b4a0e0e55d98243a3a8a3c407c0fcfb63eb7b1.mp3', 2403, '2026-09-13 14:04:37.583648', '1e7c39da77c1f62faaefb81e328f8edce0abf76f3ad1ce3e69b6461201331e08', 'validated', '{"audio_key":"e2d37e368a2cde88f1a3868604b4a0e0e55d98243a3a8a3c407c0fcfb63eb7b1","entity_key":"d_register_and_implicature_02:3","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"1e7c39da77c1f62faaefb81e328f8edce0abf76f3ad1ce3e69b6461201331e08","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/e2d37e368a2cde88f1a3868604b4a0e0e55d98243a3a8a3c407c0fcfb63eb7b1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_counterfactual_reasoning_02:4 -> audio/generated/de-DE/dialogues/e637a1753a17d7337e987e8f09a5a7f20b48ae250c68d82eda1a6124f2375ef3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('241dc602-f319-599d-8928-48d2df07bffc', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_counterfactual_reasoning_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b34bc1b404786082379378605ad255cd6ec45ee3fe07ff966ab9109c3aca1f6f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a2dc95b2-18e3-5662-b882-0a7216fe0bd3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('241dc602-f319-599d-8928-48d2df07bffc', 1), 'b34bc1b404786082379378605ad255cd6ec45ee3fe07ff966ab9109c3aca1f6f',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e637a1753a17d7337e987e8f09a5a7f20b48ae250c68d82eda1a6124f2375ef3.mp3', 2638, '2026-09-13 14:04:38.559297', 'b84ccd3a79b7c5f941aff56c7c164c7cd9489ffe3107793d6974ce854d5a5020', 'validated', '{"audio_key":"e637a1753a17d7337e987e8f09a5a7f20b48ae250c68d82eda1a6124f2375ef3","entity_key":"d_counterfactual_reasoning_02:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b84ccd3a79b7c5f941aff56c7c164c7cd9489ffe3107793d6974ce854d5a5020","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/e637a1753a17d7337e987e8f09a5a7f20b48ae250c68d82eda1a6124f2375ef3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_expert_briefing_capstone_02:3 -> audio/generated/de-DE/dialogues/e93801a968156771285fa8927915684e256a10680e5d76b7ff00e26fa36c16d1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('00475389-2eb0-5911-a95d-fdc673c5d0f9', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_expert_briefing_capstone_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e6b1dcd2ebd01e9dc35ae57835ee71900d30f80253b2ea3304a8778b75cfc7c4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dd03f085-f8a9-5384-b9b3-83eb9884c964', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('00475389-2eb0-5911-a95d-fdc673c5d0f9', 1), 'e6b1dcd2ebd01e9dc35ae57835ee71900d30f80253b2ea3304a8778b75cfc7c4',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e93801a968156771285fa8927915684e256a10680e5d76b7ff00e26fa36c16d1.mp3', 4597, '2026-09-13 14:04:38.992043', 'c2e59f966183f89aae6cd77dbbb28d9ef155e50316519f424de614657c929fc0', 'validated', '{"audio_key":"e93801a968156771285fa8927915684e256a10680e5d76b7ff00e26fa36c16d1","entity_key":"d_expert_briefing_capstone_02:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"c2e59f966183f89aae6cd77dbbb28d9ef155e50316519f424de614657c929fc0","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/e93801a968156771285fa8927915684e256a10680e5d76b7ff00e26fa36c16d1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_definitional_disputes_02:2 -> audio/generated/de-DE/dialogues/ee6dc67377dd1096b974df75b7121098b236c00acbea9a18953ae8f111d387ea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('79cfb4a8-dcaa-547c-820c-294e91228325', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_definitional_disputes_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ae0f9b977072098942efd4f9ed3a068d097863d1b694937e1700407bb10c9d3a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('41081992-0ec6-58a5-a176-c7e98a1d40bd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('79cfb4a8-dcaa-547c-820c-294e91228325', 1), 'ae0f9b977072098942efd4f9ed3a068d097863d1b694937e1700407bb10c9d3a',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ee6dc67377dd1096b974df75b7121098b236c00acbea9a18953ae8f111d387ea.mp3', 4858, '2026-09-13 14:04:40.016271', '141ebdd57aab9f8d3a4e05cfbba6a8093662a660b079f785ab814b8420fcd1a1', 'validated', '{"audio_key":"ee6dc67377dd1096b974df75b7121098b236c00acbea9a18953ae8f111d387ea","entity_key":"d_definitional_disputes_02:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"141ebdd57aab9f8d3a4e05cfbba6a8093662a660b079f785ab814b8420fcd1a1","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/ee6dc67377dd1096b974df75b7121098b236c00acbea9a18953ae8f111d387ea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_counterfactual_reasoning_03:2 -> audio/generated/de-DE/dialogues/f0ec25507d905458009cdbe6acdc3a5b74e878eb222562a2ba56d04bee8bf88e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8e6305f5-f086-5a2e-b433-8f00ff9775a2', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_counterfactual_reasoning_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f5e627eb9efd0fdef266c209006601826cdb96337dd3ea2140f661952bcff375'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d450978a-886a-5187-8cee-847a6089c738', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8e6305f5-f086-5a2e-b433-8f00ff9775a2', 1), 'f5e627eb9efd0fdef266c209006601826cdb96337dd3ea2140f661952bcff375',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f0ec25507d905458009cdbe6acdc3a5b74e878eb222562a2ba56d04bee8bf88e.mp3', 6269, '2026-09-13 14:04:40.600164', '1f174fe8e072cf6cc49026d3ef22e78a7f171f206851b2982002d3a7243a046c', 'validated', '{"audio_key":"f0ec25507d905458009cdbe6acdc3a5b74e878eb222562a2ba56d04bee8bf88e","entity_key":"d_counterfactual_reasoning_03:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"1f174fe8e072cf6cc49026d3ef22e78a7f171f206851b2982002d3a7243a046c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/f0ec25507d905458009cdbe6acdc3a5b74e878eb222562a2ba56d04bee8bf88e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_compressed_synthesis_03:1 -> audio/generated/de-DE/dialogues/f1c9140738cee51f3aceb09052230c5db9f195445f4318224562c189d0f55fa6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('77df33ad-7145-5564-b0a1-fa9817453a1b', 1)
  AND voice_key = 'character:mara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_compressed_synthesis_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'efe7bf5945a351114ae15602dcd159b19cf23f1e596531ca366a50176b979823'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('982f16d3-5383-528b-a919-27699dc22123', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('77df33ad-7145-5564-b0a1-fa9817453a1b', 1), 'efe7bf5945a351114ae15602dcd159b19cf23f1e596531ca366a50176b979823',
  'character:mara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f1c9140738cee51f3aceb09052230c5db9f195445f4318224562c189d0f55fa6.mp3', 3004, '2026-09-13 14:04:41.244952', '7b5c2aaab8ce1cac0fed31e478166588381dd7f5d864f2f7415f476d0849a3d7', 'validated', '{"audio_key":"f1c9140738cee51f3aceb09052230c5db9f195445f4318224562c189d0f55fa6","entity_key":"d_compressed_synthesis_03:1","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7b5c2aaab8ce1cac0fed31e478166588381dd7f5d864f2f7415f476d0849a3d7","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/f1c9140738cee51f3aceb09052230c5db9f195445f4318224562c189d0f55fa6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_live_reformulation_01:3 -> audio/generated/de-DE/dialogues/f40111dd3c65388b49c2b4b842d45ab6ab642969703c443ab4fdb30752ffee5d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ce3aaa3c-8c63-5ca3-b442-2828bd47e6ad', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_live_reformulation_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9f49ec603332cc4e68c78bed6b1169a1e404c0ab3af28811ba467ddcfd49b5d4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2a16a781-8a74-5936-80de-79889b504ad0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ce3aaa3c-8c63-5ca3-b442-2828bd47e6ad', 1), '9f49ec603332cc4e68c78bed6b1169a1e404c0ab3af28811ba467ddcfd49b5d4',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f40111dd3c65388b49c2b4b842d45ab6ab642969703c443ab4fdb30752ffee5d.mp3', 3369, '2026-09-13 14:04:41.870597', 'b81b059f3cc11db87237a1b4564331a33fa8994161a71709afc467b63154e63f', 'validated', '{"audio_key":"f40111dd3c65388b49c2b4b842d45ab6ab642969703c443ab4fdb30752ffee5d","entity_key":"d_live_reformulation_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b81b059f3cc11db87237a1b4564331a33fa8994161a71709afc467b63154e63f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/f40111dd3c65388b49c2b4b842d45ab6ab642969703c443ab4fdb30752ffee5d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_live_reformulation_01:4 -> audio/generated/de-DE/dialogues/f9926c6087c9b2b79d9783b951998a60f8446899617be356530cbc94d25c81fc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4ff1c8d7-78ed-54c3-9c4a-f5120558c271', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_live_reformulation_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '40e70a04fc69a84bbade38b1eec32055ad821beba1309274154cd8c3752bfdd6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6bab6193-17f3-5615-badb-30f9353e0670', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4ff1c8d7-78ed-54c3-9c4a-f5120558c271', 1), '40e70a04fc69a84bbade38b1eec32055ad821beba1309274154cd8c3752bfdd6',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f9926c6087c9b2b79d9783b951998a60f8446899617be356530cbc94d25c81fc.mp3', 3160, '2026-09-13 14:04:42.522020', '42dfa6a69be84a9f21cfa2c9c0203124ed30cd0872ab0f0c40b7b2b48c0c8976', 'validated', '{"audio_key":"f9926c6087c9b2b79d9783b951998a60f8446899617be356530cbc94d25c81fc","entity_key":"d_live_reformulation_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"42dfa6a69be84a9f21cfa2c9c0203124ed30cd0872ab0f0c40b7b2b48c0c8976","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/f9926c6087c9b2b79d9783b951998a60f8446899617be356530cbc94d25c81fc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidential_calibration_02:2 -> audio/generated/de-DE/dialogues/fc7ef36992cc823bc82c1f1a854d34c5b71a397368793a778cba377874aa1063.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('19535d1c-dd40-5e85-ab93-6159344d6abd', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidential_calibration_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '840ea14345fff3d9350aca24932d5385434ac7114dc4760032979a97be882f22'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('43eb2471-27db-5e5c-a20c-16c53b01e2fc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('19535d1c-dd40-5e85-ab93-6159344d6abd', 1), '840ea14345fff3d9350aca24932d5385434ac7114dc4760032979a97be882f22',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/fc7ef36992cc823bc82c1f1a854d34c5b71a397368793a778cba377874aa1063.mp3', 2690, '2026-09-13 14:04:43.038360', '0810380b80da73f6ee937d614788e706a758558fac831a8b418a1c188c2df5e0', 'validated', '{"audio_key":"fc7ef36992cc823bc82c1f1a854d34c5b71a397368793a778cba377874aa1063","entity_key":"d_evidential_calibration_02:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"0810380b80da73f6ee937d614788e706a758558fac831a8b418a1c188c2df5e0","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/fc7ef36992cc823bc82c1f1a854d34c5b71a397368793a778cba377874aa1063.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_and_implicature_01:1 -> audio/generated/de-DE/dialogues/fd3d4f69d98031e3215386b880c3ba913fd084eb1db731722022b893e7c7e443.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f351e4b7-ce36-5226-85fb-32298f620677', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_and_implicature_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '90f68b57f48056200b6b1589e47fd5d8866401a123a7a67258062ab3914ed608'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('163b26ef-e2fc-5609-9838-40991c27ee2d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f351e4b7-ce36-5226-85fb-32298f620677', 1), '90f68b57f48056200b6b1589e47fd5d8866401a123a7a67258062ab3914ed608',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/fd3d4f69d98031e3215386b880c3ba913fd084eb1db731722022b893e7c7e443.mp3', 4022, '2026-09-13 14:04:43.816238', 'a98cfbadfe7fcd6aa29874095a3542dad3fb90c8c20ef539216c948d50cb56fa', 'validated', '{"audio_key":"fd3d4f69d98031e3215386b880c3ba913fd084eb1db731722022b893e7c7e443","entity_key":"d_register_and_implicature_01:1","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"a98cfbadfe7fcd6aa29874095a3542dad3fb90c8c20ef539216c948d50cb56fa","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/fd3d4f69d98031e3215386b880c3ba913fd084eb1db731722022b893e7c7e443.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_humor_irony_repair_03:2 -> audio/generated/de-DE/dialogues/fe8d182a4c9ddb7c0a847c2964caa353f175f283104db1a36df3e8d32b883517.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('440cfac6-9e57-5346-bb97-9ce12b7f5e9e', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_humor_irony_repair_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dbdc05c36d1461575cb5827a52862a3a430ef7bab043dccebd4a46a9a01187a7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e7fdc988-2f54-59ca-85b4-13acfab80dfd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('440cfac6-9e57-5346-bb97-9ce12b7f5e9e', 1), 'dbdc05c36d1461575cb5827a52862a3a430ef7bab043dccebd4a46a9a01187a7',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/fe8d182a4c9ddb7c0a847c2964caa353f175f283104db1a36df3e8d32b883517.mp3', 4205, '2026-09-13 14:04:44.385113', 'a56c12b21334bb864e10359d3e7923c3677ca26984fbcf94edad878d2e7e47db', 'validated', '{"audio_key":"fe8d182a4c9ddb7c0a847c2964caa353f175f283104db1a36df3e8d32b883517","entity_key":"d_humor_irony_repair_03:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"a56c12b21334bb864e10359d3e7923c3677ca26984fbcf94edad878d2e7e47db","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/fe8d182a4c9ddb7c0a847c2964caa353f175f283104db1a36df3e8d32b883517.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_and_implicature_02 -> audio/generated/de-DE/lexical/02615351aa3407f35a38756e082e276f026c5d366846ffd56c8a4f728579edf0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('decfff23-1588-5040-a176-5976e79db41e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_and_implicature_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4bdfdfd8806e8f8c90e13d31808035a000b352c4ed419e90799e9f9afb126432'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eab070a5-ba72-5c8f-ab2b-53d2b289b2b0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('decfff23-1588-5040-a176-5976e79db41e', 1), '4bdfdfd8806e8f8c90e13d31808035a000b352c4ed419e90799e9f9afb126432',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/02615351aa3407f35a38756e082e276f026c5d366846ffd56c8a4f728579edf0.mp3', 1018, '2026-09-13 09:40:50.387703', '420e983fafeec50a69c96d19126d990afceaffa9fb84c4cbfe427e1a0a7464a1', 'validated', '{"audio_key":"02615351aa3407f35a38756e082e276f026c5d366846ffd56c8a4f728579edf0","entity_key":"lx_register_and_implicature_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"420e983fafeec50a69c96d19126d990afceaffa9fb84c4cbfe427e1a0a7464a1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/02615351aa3407f35a38756e082e276f026c5d366846ffd56c8a4f728579edf0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_and_implicature_02 -> audio/generated/de-DE/lexical/02615351aa3407f35a38756e082e276f026c5d366846ffd56c8a4f728579edf0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('59a8c604-693b-589b-be52-4dfc69b6f17c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_and_implicature_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4bdfdfd8806e8f8c90e13d31808035a000b352c4ed419e90799e9f9afb126432'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c4f5784d-8fa6-52fe-b27b-793effa8e3b5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('59a8c604-693b-589b-be52-4dfc69b6f17c', 1), '4bdfdfd8806e8f8c90e13d31808035a000b352c4ed419e90799e9f9afb126432',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/02615351aa3407f35a38756e082e276f026c5d366846ffd56c8a4f728579edf0.mp3', 1018, '2026-09-13 09:40:50.387703', '420e983fafeec50a69c96d19126d990afceaffa9fb84c4cbfe427e1a0a7464a1', 'validated', '{"audio_key":"02615351aa3407f35a38756e082e276f026c5d366846ffd56c8a4f728579edf0","entity_key":"wf_register_and_implicature_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"420e983fafeec50a69c96d19126d990afceaffa9fb84c4cbfe427e1a0a7464a1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/02615351aa3407f35a38756e082e276f026c5d366846ffd56c8a4f728579edf0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_legal_administrative_nuance_01 -> audio/generated/de-DE/lexical/02fb5b35dfbdad25ed6ef82827e59ae259a489746e10c3a81f643d65e2b22c34.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('bd4bc8ed-4343-505f-b2e1-7148f9ea0872', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_legal_administrative_nuance_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3f61dddc00ce0d09cddf9dd753cea34a55c3baecb58474c75bac2f32f64221fc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3e70de00-fada-5a26-b1dd-c5fd275758af', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('bd4bc8ed-4343-505f-b2e1-7148f9ea0872', 1), '3f61dddc00ce0d09cddf9dd753cea34a55c3baecb58474c75bac2f32f64221fc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/02fb5b35dfbdad25ed6ef82827e59ae259a489746e10c3a81f643d65e2b22c34.mp3', 966, '2026-09-13 14:04:44.805062', 'dec0e162b74703d3e1b952f95513db4593ed1f5cd58129c0c2e4211d90f43370', 'validated', '{"audio_key":"02fb5b35dfbdad25ed6ef82827e59ae259a489746e10c3a81f643d65e2b22c34","entity_key":"lx_legal_administrative_nuance_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dec0e162b74703d3e1b952f95513db4593ed1f5cd58129c0c2e4211d90f43370","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/02fb5b35dfbdad25ed6ef82827e59ae259a489746e10c3a81f643d65e2b22c34.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_legal_administrative_nuance_01 -> audio/generated/de-DE/lexical/02fb5b35dfbdad25ed6ef82827e59ae259a489746e10c3a81f643d65e2b22c34.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('473c71e4-5a41-51fd-8683-f5ec2b1541a3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_legal_administrative_nuance_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3f61dddc00ce0d09cddf9dd753cea34a55c3baecb58474c75bac2f32f64221fc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('57483a2d-b03b-5cc4-b5fb-4503f328e7d7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('473c71e4-5a41-51fd-8683-f5ec2b1541a3', 1), '3f61dddc00ce0d09cddf9dd753cea34a55c3baecb58474c75bac2f32f64221fc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/02fb5b35dfbdad25ed6ef82827e59ae259a489746e10c3a81f643d65e2b22c34.mp3', 966, '2026-09-13 14:04:44.805062', 'dec0e162b74703d3e1b952f95513db4593ed1f5cd58129c0c2e4211d90f43370', 'validated', '{"audio_key":"02fb5b35dfbdad25ed6ef82827e59ae259a489746e10c3a81f643d65e2b22c34","entity_key":"wf_legal_administrative_nuance_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dec0e162b74703d3e1b952f95513db4593ed1f5cd58129c0c2e4211d90f43370","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/02fb5b35dfbdad25ed6ef82827e59ae259a489746e10c3a81f643d65e2b22c34.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_evidential_calibration_06 -> audio/generated/de-DE/lexical/087ddb2e0c3ebfcc2dc95e16e4609c4e8e96de99e49775f2f135c56aca248f01.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9887872e-ea6f-50c0-84f7-db3b8064dffa', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_evidential_calibration_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c86019834d3b23022cd79dba2012cd10d5eab3c6ff966de7e25782aaccd4dfe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c5b1017d-1d06-5d9f-87df-da31fff57190', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9887872e-ea6f-50c0-84f7-db3b8064dffa', 1), '2c86019834d3b23022cd79dba2012cd10d5eab3c6ff966de7e25782aaccd4dfe',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/087ddb2e0c3ebfcc2dc95e16e4609c4e8e96de99e49775f2f135c56aca248f01.mp3', 1071, '2026-09-13 07:53:09.147558', '1c1e673e3f2f6dd691f27d9863dae5e134cd840021bb0be145f3cbfe5dcf9efd', 'validated', '{"audio_key":"087ddb2e0c3ebfcc2dc95e16e4609c4e8e96de99e49775f2f135c56aca248f01","entity_key":"lx_evidential_calibration_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1c1e673e3f2f6dd691f27d9863dae5e134cd840021bb0be145f3cbfe5dcf9efd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/087ddb2e0c3ebfcc2dc95e16e4609c4e8e96de99e49775f2f135c56aca248f01.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_evidential_calibration_06 -> audio/generated/de-DE/lexical/087ddb2e0c3ebfcc2dc95e16e4609c4e8e96de99e49775f2f135c56aca248f01.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('438abe04-2f4f-5abc-a531-815e2228ed21', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_evidential_calibration_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c86019834d3b23022cd79dba2012cd10d5eab3c6ff966de7e25782aaccd4dfe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('61f040a1-5008-5934-bd3b-a679d85bddfd', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('438abe04-2f4f-5abc-a531-815e2228ed21', 1), '2c86019834d3b23022cd79dba2012cd10d5eab3c6ff966de7e25782aaccd4dfe',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/087ddb2e0c3ebfcc2dc95e16e4609c4e8e96de99e49775f2f135c56aca248f01.mp3', 1071, '2026-09-13 07:53:09.147558', '1c1e673e3f2f6dd691f27d9863dae5e134cd840021bb0be145f3cbfe5dcf9efd', 'validated', '{"audio_key":"087ddb2e0c3ebfcc2dc95e16e4609c4e8e96de99e49775f2f135c56aca248f01","entity_key":"wf_evidential_calibration_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1c1e673e3f2f6dd691f27d9863dae5e134cd840021bb0be145f3cbfe5dcf9efd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/087ddb2e0c3ebfcc2dc95e16e4609c4e8e96de99e49775f2f135c56aca248f01.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_compressed_synthesis_05 -> audio/generated/de-DE/lexical/0985ea14cc2a7fb4cb5e933481062b13c2dbdc5f2afbd702295c684fad9a9aae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e80ac1e7-4fb4-5b08-8a82-b0a134bb1ef7', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_compressed_synthesis_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b45bd2314468e2b944c59430808c4e387a1e96509a8b624c564139c787a225fb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5d18fe7e-97e7-5814-9f6a-ac7368a61662', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e80ac1e7-4fb4-5b08-8a82-b0a134bb1ef7', 1), 'b45bd2314468e2b944c59430808c4e387a1e96509a8b624c564139c787a225fb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0985ea14cc2a7fb4cb5e933481062b13c2dbdc5f2afbd702295c684fad9a9aae.mp3', 1201, '2026-09-13 14:04:45.426402', 'e9f34a53a7c37a00ea80917ee74d180951743599432d16cfd1e57c21a8eed010', 'validated', '{"audio_key":"0985ea14cc2a7fb4cb5e933481062b13c2dbdc5f2afbd702295c684fad9a9aae","entity_key":"lx_compressed_synthesis_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e9f34a53a7c37a00ea80917ee74d180951743599432d16cfd1e57c21a8eed010","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0985ea14cc2a7fb4cb5e933481062b13c2dbdc5f2afbd702295c684fad9a9aae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_compressed_synthesis_05 -> audio/generated/de-DE/lexical/0985ea14cc2a7fb4cb5e933481062b13c2dbdc5f2afbd702295c684fad9a9aae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2eb90515-7120-5a09-a5ab-b8d172812f49', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_compressed_synthesis_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b45bd2314468e2b944c59430808c4e387a1e96509a8b624c564139c787a225fb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e7183e40-d464-5fc3-b84d-8597fb36bdd1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2eb90515-7120-5a09-a5ab-b8d172812f49', 1), 'b45bd2314468e2b944c59430808c4e387a1e96509a8b624c564139c787a225fb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0985ea14cc2a7fb4cb5e933481062b13c2dbdc5f2afbd702295c684fad9a9aae.mp3', 1201, '2026-09-13 14:04:45.426402', 'e9f34a53a7c37a00ea80917ee74d180951743599432d16cfd1e57c21a8eed010', 'validated', '{"audio_key":"0985ea14cc2a7fb4cb5e933481062b13c2dbdc5f2afbd702295c684fad9a9aae","entity_key":"wf_compressed_synthesis_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e9f34a53a7c37a00ea80917ee74d180951743599432d16cfd1e57c21a8eed010","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0985ea14cc2a7fb4cb5e933481062b13c2dbdc5f2afbd702295c684fad9a9aae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_live_reformulation_03 -> audio/generated/de-DE/lexical/0a93c28dbe72fa5d34d9a32e517870ea1859ed0fdfe55587fbf25d046f1efbe6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b8a3d842-9dc5-59ae-a6e3-b4801eba7664', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_live_reformulation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3dfd5f374da0372f636fef5059e056bb54b9eb21ae326b80370041a7b62c5448'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('919e57f3-9087-569a-8db9-c71eeb1662bd', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b8a3d842-9dc5-59ae-a6e3-b4801eba7664', 1), '3dfd5f374da0372f636fef5059e056bb54b9eb21ae326b80370041a7b62c5448',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0a93c28dbe72fa5d34d9a32e517870ea1859ed0fdfe55587fbf25d046f1efbe6.mp3', 1201, '2026-09-13 14:04:45.844412', 'e1c76d4bc659a36cfdcdac34dfcc9a7c381257e1fa55f7deef2189707f855285', 'validated', '{"audio_key":"0a93c28dbe72fa5d34d9a32e517870ea1859ed0fdfe55587fbf25d046f1efbe6","entity_key":"lx_live_reformulation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e1c76d4bc659a36cfdcdac34dfcc9a7c381257e1fa55f7deef2189707f855285","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0a93c28dbe72fa5d34d9a32e517870ea1859ed0fdfe55587fbf25d046f1efbe6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_live_reformulation_03 -> audio/generated/de-DE/lexical/0a93c28dbe72fa5d34d9a32e517870ea1859ed0fdfe55587fbf25d046f1efbe6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b7e6e256-9aa6-5b2b-be47-1fd13a042924', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_live_reformulation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3dfd5f374da0372f636fef5059e056bb54b9eb21ae326b80370041a7b62c5448'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('48f0baad-7fc9-53c4-a7dd-da891cd06177', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b7e6e256-9aa6-5b2b-be47-1fd13a042924', 1), '3dfd5f374da0372f636fef5059e056bb54b9eb21ae326b80370041a7b62c5448',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0a93c28dbe72fa5d34d9a32e517870ea1859ed0fdfe55587fbf25d046f1efbe6.mp3', 1201, '2026-09-13 14:04:45.844412', 'e1c76d4bc659a36cfdcdac34dfcc9a7c381257e1fa55f7deef2189707f855285', 'validated', '{"audio_key":"0a93c28dbe72fa5d34d9a32e517870ea1859ed0fdfe55587fbf25d046f1efbe6","entity_key":"wf_live_reformulation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e1c76d4bc659a36cfdcdac34dfcc9a7c381257e1fa55f7deef2189707f855285","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0a93c28dbe72fa5d34d9a32e517870ea1859ed0fdfe55587fbf25d046f1efbe6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_expert_briefing_capstone_06 -> audio/generated/de-DE/lexical/0ae08dadfb9d17a953177c11f19679a54e80d26327d2ee806583a6cd88c1ef1f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f6c1a18d-5509-58aa-84d6-4163c447de74', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_expert_briefing_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dd586f5831569e37b5620bf20784814c5d959bee961b17065e63bc8d245ca256'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c497c6e4-bc46-59d6-a607-da2f899bd7d7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f6c1a18d-5509-58aa-84d6-4163c447de74', 1), 'dd586f5831569e37b5620bf20784814c5d959bee961b17065e63bc8d245ca256',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0ae08dadfb9d17a953177c11f19679a54e80d26327d2ee806583a6cd88c1ef1f.mp3', 1332, '2026-09-13 11:32:46.759832', 'f6efaf767ace559c3fb41967a8c4abacca348420c5d0f11cbe6173a4bac14ddf', 'validated', '{"audio_key":"0ae08dadfb9d17a953177c11f19679a54e80d26327d2ee806583a6cd88c1ef1f","entity_key":"lx_expert_briefing_capstone_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f6efaf767ace559c3fb41967a8c4abacca348420c5d0f11cbe6173a4bac14ddf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0ae08dadfb9d17a953177c11f19679a54e80d26327d2ee806583a6cd88c1ef1f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_expert_briefing_capstone_06 -> audio/generated/de-DE/lexical/0ae08dadfb9d17a953177c11f19679a54e80d26327d2ee806583a6cd88c1ef1f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4701d837-66d2-5458-a0d9-84bc3cf326a0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_expert_briefing_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dd586f5831569e37b5620bf20784814c5d959bee961b17065e63bc8d245ca256'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('76c3ddbe-f2ca-50be-8792-78e6c585e34e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4701d837-66d2-5458-a0d9-84bc3cf326a0', 1), 'dd586f5831569e37b5620bf20784814c5d959bee961b17065e63bc8d245ca256',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0ae08dadfb9d17a953177c11f19679a54e80d26327d2ee806583a6cd88c1ef1f.mp3', 1332, '2026-09-13 11:32:46.759832', 'f6efaf767ace559c3fb41967a8c4abacca348420c5d0f11cbe6173a4bac14ddf', 'validated', '{"audio_key":"0ae08dadfb9d17a953177c11f19679a54e80d26327d2ee806583a6cd88c1ef1f","entity_key":"wf_expert_briefing_capstone_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f6efaf767ace559c3fb41967a8c4abacca348420c5d0f11cbe6173a4bac14ddf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0ae08dadfb9d17a953177c11f19679a54e80d26327d2ee806583a6cd88c1ef1f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_compressed_synthesis_01 -> audio/generated/de-DE/lexical/0f6b688c0aa035c35712d828e19cb34489f6b5cca6ee519e1734fd9d95b7d088.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('dc76f97b-4422-5fde-b27b-c0f9a89756dd', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_compressed_synthesis_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a0b7f294bad81e4f0e66c51694b6669c12ad3db3c8209662cc68d1e27a8a7dc3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6e434d45-fed3-595b-bb00-e41036abbe9b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('dc76f97b-4422-5fde-b27b-c0f9a89756dd', 1), 'a0b7f294bad81e4f0e66c51694b6669c12ad3db3c8209662cc68d1e27a8a7dc3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0f6b688c0aa035c35712d828e19cb34489f6b5cca6ee519e1734fd9d95b7d088.mp3', 1097, '2026-09-13 09:40:52.296564', 'f5281f3d1098d687e7e17c2306d9acb059e140c3f5f099db895d69e310b1f193', 'validated', '{"audio_key":"0f6b688c0aa035c35712d828e19cb34489f6b5cca6ee519e1734fd9d95b7d088","entity_key":"lx_compressed_synthesis_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f5281f3d1098d687e7e17c2306d9acb059e140c3f5f099db895d69e310b1f193","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0f6b688c0aa035c35712d828e19cb34489f6b5cca6ee519e1734fd9d95b7d088.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_compressed_synthesis_01 -> audio/generated/de-DE/lexical/0f6b688c0aa035c35712d828e19cb34489f6b5cca6ee519e1734fd9d95b7d088.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('de027cfb-efc9-55b4-bff0-04aad3e22ae7', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_compressed_synthesis_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a0b7f294bad81e4f0e66c51694b6669c12ad3db3c8209662cc68d1e27a8a7dc3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aff845f0-212c-558b-8237-65246edc4a30', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('de027cfb-efc9-55b4-bff0-04aad3e22ae7', 1), 'a0b7f294bad81e4f0e66c51694b6669c12ad3db3c8209662cc68d1e27a8a7dc3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0f6b688c0aa035c35712d828e19cb34489f6b5cca6ee519e1734fd9d95b7d088.mp3', 1097, '2026-09-13 09:40:52.296564', 'f5281f3d1098d687e7e17c2306d9acb059e140c3f5f099db895d69e310b1f193', 'validated', '{"audio_key":"0f6b688c0aa035c35712d828e19cb34489f6b5cca6ee519e1734fd9d95b7d088","entity_key":"wf_compressed_synthesis_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f5281f3d1098d687e7e17c2306d9acb059e140c3f5f099db895d69e310b1f193","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0f6b688c0aa035c35712d828e19cb34489f6b5cca6ee519e1734fd9d95b7d088.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_mediation_across_frameworks_06 -> audio/generated/de-DE/lexical/1620ab3973ea66297ddd651449a9d9f4a2fc7e10cb20180901247578b25ab4f4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a0b473e3-7949-5590-bfe0-1d69dcc99bf4', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_mediation_across_frameworks_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '85163114a9ddffc9defb0aea35ba5dc9887dfc3d9e85fe8e3a5c770344b2e93b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ef37c866-4de8-505a-a2cc-ee004c9cbcfd', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a0b473e3-7949-5590-bfe0-1d69dcc99bf4', 1), '85163114a9ddffc9defb0aea35ba5dc9887dfc3d9e85fe8e3a5c770344b2e93b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1620ab3973ea66297ddd651449a9d9f4a2fc7e10cb20180901247578b25ab4f4.mp3', 1149, '2026-09-13 11:46:57.891597', 'a5525683ef2d9f4d59981f46cf88a624d3d2016b31c247cf5186a7bc11d21890', 'validated', '{"audio_key":"1620ab3973ea66297ddd651449a9d9f4a2fc7e10cb20180901247578b25ab4f4","entity_key":"lx_mediation_across_frameworks_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a5525683ef2d9f4d59981f46cf88a624d3d2016b31c247cf5186a7bc11d21890","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1620ab3973ea66297ddd651449a9d9f4a2fc7e10cb20180901247578b25ab4f4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_mediation_across_frameworks_06 -> audio/generated/de-DE/lexical/1620ab3973ea66297ddd651449a9d9f4a2fc7e10cb20180901247578b25ab4f4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e5072172-1970-5f55-82ef-298771ee8c6b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_mediation_across_frameworks_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '85163114a9ddffc9defb0aea35ba5dc9887dfc3d9e85fe8e3a5c770344b2e93b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d6518514-0731-5b4d-9e42-e4bc68a595bf', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e5072172-1970-5f55-82ef-298771ee8c6b', 1), '85163114a9ddffc9defb0aea35ba5dc9887dfc3d9e85fe8e3a5c770344b2e93b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1620ab3973ea66297ddd651449a9d9f4a2fc7e10cb20180901247578b25ab4f4.mp3', 1149, '2026-09-13 11:46:57.891597', 'a5525683ef2d9f4d59981f46cf88a624d3d2016b31c247cf5186a7bc11d21890', 'validated', '{"audio_key":"1620ab3973ea66297ddd651449a9d9f4a2fc7e10cb20180901247578b25ab4f4","entity_key":"wf_mediation_across_frameworks_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a5525683ef2d9f4d59981f46cf88a624d3d2016b31c247cf5186a7bc11d21890","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1620ab3973ea66297ddd651449a9d9f4a2fc7e10cb20180901247578b25ab4f4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_mediation_across_frameworks_04 -> audio/generated/de-DE/lexical/26b0ab8528845d3f9ad17e21c056ed88709751418ee390faa1a377703c9601a3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('31a54650-3df8-5e63-ae03-f79b9de73562', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_mediation_across_frameworks_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fec572999e0c744d56c6818ff9894a3b67644f40dca2ad104c027593b9c74bf7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d4077e6e-de7c-5bf9-8ed0-e7da89542de5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('31a54650-3df8-5e63-ae03-f79b9de73562', 1), 'fec572999e0c744d56c6818ff9894a3b67644f40dca2ad104c027593b9c74bf7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/26b0ab8528845d3f9ad17e21c056ed88709751418ee390faa1a377703c9601a3.mp3', 1149, '2026-09-13 08:16:32.726321', '550cc747149a8da33567a2c01584f490cb29222fa09543ff6fe00265891ef597', 'validated', '{"audio_key":"26b0ab8528845d3f9ad17e21c056ed88709751418ee390faa1a377703c9601a3","entity_key":"lx_mediation_across_frameworks_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"550cc747149a8da33567a2c01584f490cb29222fa09543ff6fe00265891ef597","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/26b0ab8528845d3f9ad17e21c056ed88709751418ee390faa1a377703c9601a3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_mediation_across_frameworks_04 -> audio/generated/de-DE/lexical/26b0ab8528845d3f9ad17e21c056ed88709751418ee390faa1a377703c9601a3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9d5660ff-7ad0-5352-b62e-96a339117a39', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_mediation_across_frameworks_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fec572999e0c744d56c6818ff9894a3b67644f40dca2ad104c027593b9c74bf7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('008ca234-16cc-5568-a5d2-d25b4e047e1a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9d5660ff-7ad0-5352-b62e-96a339117a39', 1), 'fec572999e0c744d56c6818ff9894a3b67644f40dca2ad104c027593b9c74bf7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/26b0ab8528845d3f9ad17e21c056ed88709751418ee390faa1a377703c9601a3.mp3', 1149, '2026-09-13 08:16:32.726321', '550cc747149a8da33567a2c01584f490cb29222fa09543ff6fe00265891ef597', 'validated', '{"audio_key":"26b0ab8528845d3f9ad17e21c056ed88709751418ee390faa1a377703c9601a3","entity_key":"wf_mediation_across_frameworks_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"550cc747149a8da33567a2c01584f490cb29222fa09543ff6fe00265891ef597","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/26b0ab8528845d3f9ad17e21c056ed88709751418ee390faa1a377703c9601a3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_live_reformulation_05 -> audio/generated/de-DE/lexical/2a84cfdde05ab335f42728ceba171c99a8b435de782f1a2fd399d81f959ce64d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('50a61b71-abe3-5306-860e-550a5039a2f2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_live_reformulation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c03c9172c2a092d02534464ee7b43ec2d20edf162f2c0ea617b5813246d99d6b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eb858c6a-865e-5663-bffd-306379bd2a0d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('50a61b71-abe3-5306-860e-550a5039a2f2', 1), 'c03c9172c2a092d02534464ee7b43ec2d20edf162f2c0ea617b5813246d99d6b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2a84cfdde05ab335f42728ceba171c99a8b435de782f1a2fd399d81f959ce64d.mp3', 1280, '2026-09-13 09:40:53.321942', '5a150d181be13101b1792a3338324329043a87a60f6c94349b8f502244feb70a', 'validated', '{"audio_key":"2a84cfdde05ab335f42728ceba171c99a8b435de782f1a2fd399d81f959ce64d","entity_key":"lx_live_reformulation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5a150d181be13101b1792a3338324329043a87a60f6c94349b8f502244feb70a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2a84cfdde05ab335f42728ceba171c99a8b435de782f1a2fd399d81f959ce64d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_live_reformulation_05 -> audio/generated/de-DE/lexical/2a84cfdde05ab335f42728ceba171c99a8b435de782f1a2fd399d81f959ce64d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f825a7ab-35fd-5940-b369-d8ed153ce11f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_live_reformulation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c03c9172c2a092d02534464ee7b43ec2d20edf162f2c0ea617b5813246d99d6b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fbce304b-9ca9-57e9-9e84-0fa80a30a194', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f825a7ab-35fd-5940-b369-d8ed153ce11f', 1), 'c03c9172c2a092d02534464ee7b43ec2d20edf162f2c0ea617b5813246d99d6b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2a84cfdde05ab335f42728ceba171c99a8b435de782f1a2fd399d81f959ce64d.mp3', 1280, '2026-09-13 09:40:53.321942', '5a150d181be13101b1792a3338324329043a87a60f6c94349b8f502244feb70a', 'validated', '{"audio_key":"2a84cfdde05ab335f42728ceba171c99a8b435de782f1a2fd399d81f959ce64d","entity_key":"wf_live_reformulation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5a150d181be13101b1792a3338324329043a87a60f6c94349b8f502244feb70a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2a84cfdde05ab335f42728ceba171c99a8b435de782f1a2fd399d81f959ce64d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_compressed_synthesis_03 -> audio/generated/de-DE/lexical/2ce65f1ac9e854329aa0ffc78db30d0e5209fbd43103c96d68c6834fe018f496.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('99588e5a-a913-5186-8452-e1d0cc924e60', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_compressed_synthesis_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cd802ca85cacdf89c6199f05752e2ad9e8ea4c8c3c87622d0e79643d6e6f3bbb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a950dcca-4310-5412-b90f-ce38b29742b6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('99588e5a-a913-5186-8452-e1d0cc924e60', 1), 'cd802ca85cacdf89c6199f05752e2ad9e8ea4c8c3c87622d0e79643d6e6f3bbb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2ce65f1ac9e854329aa0ffc78db30d0e5209fbd43103c96d68c6834fe018f496.mp3', 1149, '2026-09-13 11:32:49.097818', '09e555981715a70f789515671fdf206d833ec639949d0125617128a65f2d298c', 'validated', '{"audio_key":"2ce65f1ac9e854329aa0ffc78db30d0e5209fbd43103c96d68c6834fe018f496","entity_key":"lx_compressed_synthesis_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"09e555981715a70f789515671fdf206d833ec639949d0125617128a65f2d298c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2ce65f1ac9e854329aa0ffc78db30d0e5209fbd43103c96d68c6834fe018f496.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_compressed_synthesis_03 -> audio/generated/de-DE/lexical/2ce65f1ac9e854329aa0ffc78db30d0e5209fbd43103c96d68c6834fe018f496.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('decc7b8d-2ad5-5235-a80a-c58fde08c9cd', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_compressed_synthesis_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cd802ca85cacdf89c6199f05752e2ad9e8ea4c8c3c87622d0e79643d6e6f3bbb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('976d7ebd-1cbb-5320-9931-1f7047b3203f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('decc7b8d-2ad5-5235-a80a-c58fde08c9cd', 1), 'cd802ca85cacdf89c6199f05752e2ad9e8ea4c8c3c87622d0e79643d6e6f3bbb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2ce65f1ac9e854329aa0ffc78db30d0e5209fbd43103c96d68c6834fe018f496.mp3', 1149, '2026-09-13 11:32:49.097818', '09e555981715a70f789515671fdf206d833ec639949d0125617128a65f2d298c', 'validated', '{"audio_key":"2ce65f1ac9e854329aa0ffc78db30d0e5209fbd43103c96d68c6834fe018f496","entity_key":"wf_compressed_synthesis_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"09e555981715a70f789515671fdf206d833ec639949d0125617128a65f2d298c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2ce65f1ac9e854329aa0ffc78db30d0e5209fbd43103c96d68c6834fe018f496.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_and_implicature_01 -> audio/generated/de-DE/lexical/3249ffa6510f5c3f41840ba6278383a5e0a0ea3baa7e40ce58e224af60be73bc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3c25e62e-9347-54e6-b693-71e9fabb4e6c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_and_implicature_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fbb6b296b1657e9758a9a67c90b79ea46976545a236f2e696bcf0a6f0f38c97c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c7108323-91dc-55b6-bdf5-3da17967a489', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3c25e62e-9347-54e6-b693-71e9fabb4e6c', 1), 'fbb6b296b1657e9758a9a67c90b79ea46976545a236f2e696bcf0a6f0f38c97c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3249ffa6510f5c3f41840ba6278383a5e0a0ea3baa7e40ce58e224af60be73bc.mp3', 1071, '2026-09-13 09:40:54.631439', '1c9aa927284763a45617b0c82ff77485763dbf27483e94d505ce85f9766ebb3c', 'validated', '{"audio_key":"3249ffa6510f5c3f41840ba6278383a5e0a0ea3baa7e40ce58e224af60be73bc","entity_key":"lx_register_and_implicature_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1c9aa927284763a45617b0c82ff77485763dbf27483e94d505ce85f9766ebb3c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3249ffa6510f5c3f41840ba6278383a5e0a0ea3baa7e40ce58e224af60be73bc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_and_implicature_01 -> audio/generated/de-DE/lexical/3249ffa6510f5c3f41840ba6278383a5e0a0ea3baa7e40ce58e224af60be73bc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7441f8df-263f-5349-9487-39eeb5f4097a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_and_implicature_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fbb6b296b1657e9758a9a67c90b79ea46976545a236f2e696bcf0a6f0f38c97c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f5e05336-f413-5ea4-93a7-ca828fc69c8c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7441f8df-263f-5349-9487-39eeb5f4097a', 1), 'fbb6b296b1657e9758a9a67c90b79ea46976545a236f2e696bcf0a6f0f38c97c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3249ffa6510f5c3f41840ba6278383a5e0a0ea3baa7e40ce58e224af60be73bc.mp3', 1071, '2026-09-13 09:40:54.631439', '1c9aa927284763a45617b0c82ff77485763dbf27483e94d505ce85f9766ebb3c', 'validated', '{"audio_key":"3249ffa6510f5c3f41840ba6278383a5e0a0ea3baa7e40ce58e224af60be73bc","entity_key":"wf_register_and_implicature_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1c9aa927284763a45617b0c82ff77485763dbf27483e94d505ce85f9766ebb3c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3249ffa6510f5c3f41840ba6278383a5e0a0ea3baa7e40ce58e224af60be73bc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_counterfactual_reasoning_06 -> audio/generated/de-DE/lexical/34b64c7f3e4bc5e0d678fc8463d58f4cc0ddf88ce4542f3746b1d89ce0746a55.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2428eac9-8ad6-5aaf-9b27-a8863c7af4ab', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_counterfactual_reasoning_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3c5862af46e3ff9569f3ae66820deee7e1e0dff4fdacf7e9c538550af6144da7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('68d3ecc0-a40a-5d39-b5b3-2951d6622fc7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2428eac9-8ad6-5aaf-9b27-a8863c7af4ab', 1), '3c5862af46e3ff9569f3ae66820deee7e1e0dff4fdacf7e9c538550af6144da7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/34b64c7f3e4bc5e0d678fc8463d58f4cc0ddf88ce4542f3746b1d89ce0746a55.mp3', 1332, '2026-09-13 14:04:46.504989', '0db7ace7f10cb9c12db36f7ed8fcf4d2675cd6fe780669e7178a2345c6adaef6', 'validated', '{"audio_key":"34b64c7f3e4bc5e0d678fc8463d58f4cc0ddf88ce4542f3746b1d89ce0746a55","entity_key":"lx_counterfactual_reasoning_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0db7ace7f10cb9c12db36f7ed8fcf4d2675cd6fe780669e7178a2345c6adaef6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/34b64c7f3e4bc5e0d678fc8463d58f4cc0ddf88ce4542f3746b1d89ce0746a55.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_counterfactual_reasoning_06 -> audio/generated/de-DE/lexical/34b64c7f3e4bc5e0d678fc8463d58f4cc0ddf88ce4542f3746b1d89ce0746a55.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('da1ce3f6-f216-5764-bca3-f9ca883a2fe2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_counterfactual_reasoning_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3c5862af46e3ff9569f3ae66820deee7e1e0dff4fdacf7e9c538550af6144da7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a7fdd93a-a26a-58b8-a4fe-487a7e655332', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('da1ce3f6-f216-5764-bca3-f9ca883a2fe2', 1), '3c5862af46e3ff9569f3ae66820deee7e1e0dff4fdacf7e9c538550af6144da7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/34b64c7f3e4bc5e0d678fc8463d58f4cc0ddf88ce4542f3746b1d89ce0746a55.mp3', 1332, '2026-09-13 14:04:46.504989', '0db7ace7f10cb9c12db36f7ed8fcf4d2675cd6fe780669e7178a2345c6adaef6', 'validated', '{"audio_key":"34b64c7f3e4bc5e0d678fc8463d58f4cc0ddf88ce4542f3746b1d89ce0746a55","entity_key":"wf_counterfactual_reasoning_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0db7ace7f10cb9c12db36f7ed8fcf4d2675cd6fe780669e7178a2345c6adaef6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/34b64c7f3e4bc5e0d678fc8463d58f4cc0ddf88ce4542f3746b1d89ce0746a55.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_mediation_across_frameworks_03 -> audio/generated/de-DE/lexical/358d99af72d3a37252264dd5138ea920dedc03d2be709830889e3f58bdc9e4f1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('87969937-e8a9-5993-bb47-fb71eb1be0ed', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_mediation_across_frameworks_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0c83bbec594decd3735c71da7c5a6e017a37b137ed643c584e7483867b77800d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4fff84f9-f990-55c9-885a-7bd978f294fa', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('87969937-e8a9-5993-bb47-fb71eb1be0ed', 1), '0c83bbec594decd3735c71da7c5a6e017a37b137ed643c584e7483867b77800d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/358d99af72d3a37252264dd5138ea920dedc03d2be709830889e3f58bdc9e4f1.mp3', 1253, '2026-09-13 14:04:46.853643', '067cfa92fc391ed7144a466332710889d05fc8bbc86b452bd7eaaf0a85f3ef6c', 'validated', '{"audio_key":"358d99af72d3a37252264dd5138ea920dedc03d2be709830889e3f58bdc9e4f1","entity_key":"lx_mediation_across_frameworks_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"067cfa92fc391ed7144a466332710889d05fc8bbc86b452bd7eaaf0a85f3ef6c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/358d99af72d3a37252264dd5138ea920dedc03d2be709830889e3f58bdc9e4f1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_mediation_across_frameworks_03 -> audio/generated/de-DE/lexical/358d99af72d3a37252264dd5138ea920dedc03d2be709830889e3f58bdc9e4f1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('696a7409-0363-59c6-810e-1a0691069d36', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_mediation_across_frameworks_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0c83bbec594decd3735c71da7c5a6e017a37b137ed643c584e7483867b77800d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e0226654-5ac5-5a2e-b98a-316dc413585b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('696a7409-0363-59c6-810e-1a0691069d36', 1), '0c83bbec594decd3735c71da7c5a6e017a37b137ed643c584e7483867b77800d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/358d99af72d3a37252264dd5138ea920dedc03d2be709830889e3f58bdc9e4f1.mp3', 1253, '2026-09-13 14:04:46.853643', '067cfa92fc391ed7144a466332710889d05fc8bbc86b452bd7eaaf0a85f3ef6c', 'validated', '{"audio_key":"358d99af72d3a37252264dd5138ea920dedc03d2be709830889e3f58bdc9e4f1","entity_key":"wf_mediation_across_frameworks_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"067cfa92fc391ed7144a466332710889d05fc8bbc86b452bd7eaaf0a85f3ef6c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/358d99af72d3a37252264dd5138ea920dedc03d2be709830889e3f58bdc9e4f1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_expert_briefing_capstone_05 -> audio/generated/de-DE/lexical/35f582b5aedd89dfe262ca1487d97f612f3f7e3b05b8600d57d2909baed5707a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('17bdf3e0-a7ef-5384-b77b-cbdc6798a55a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_expert_briefing_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4ee0e814f3fe1a63553176fdee9b53295cf121fd2531a6d371532676fb50499b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2bae0edf-47e0-53a6-bbe1-d7955fe70dfe', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('17bdf3e0-a7ef-5384-b77b-cbdc6798a55a', 1), '4ee0e814f3fe1a63553176fdee9b53295cf121fd2531a6d371532676fb50499b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/35f582b5aedd89dfe262ca1487d97f612f3f7e3b05b8600d57d2909baed5707a.mp3', 1384, '2026-09-13 08:16:32.762418', '7aebb55fda86097349340d8109d40feee4e6020d68592f633abad7488d6b324b', 'validated', '{"audio_key":"35f582b5aedd89dfe262ca1487d97f612f3f7e3b05b8600d57d2909baed5707a","entity_key":"lx_expert_briefing_capstone_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7aebb55fda86097349340d8109d40feee4e6020d68592f633abad7488d6b324b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/35f582b5aedd89dfe262ca1487d97f612f3f7e3b05b8600d57d2909baed5707a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_expert_briefing_capstone_05 -> audio/generated/de-DE/lexical/35f582b5aedd89dfe262ca1487d97f612f3f7e3b05b8600d57d2909baed5707a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ac912d5c-6c11-5bba-a145-4c13d0546b07', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_expert_briefing_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4ee0e814f3fe1a63553176fdee9b53295cf121fd2531a6d371532676fb50499b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('96d346c2-cbfc-500d-a4c6-c13ddae5cf91', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ac912d5c-6c11-5bba-a145-4c13d0546b07', 1), '4ee0e814f3fe1a63553176fdee9b53295cf121fd2531a6d371532676fb50499b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/35f582b5aedd89dfe262ca1487d97f612f3f7e3b05b8600d57d2909baed5707a.mp3', 1384, '2026-09-13 08:16:32.762418', '7aebb55fda86097349340d8109d40feee4e6020d68592f633abad7488d6b324b', 'validated', '{"audio_key":"35f582b5aedd89dfe262ca1487d97f612f3f7e3b05b8600d57d2909baed5707a","entity_key":"wf_expert_briefing_capstone_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7aebb55fda86097349340d8109d40feee4e6020d68592f633abad7488d6b324b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/35f582b5aedd89dfe262ca1487d97f612f3f7e3b05b8600d57d2909baed5707a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_definitional_disputes_03 -> audio/generated/de-DE/lexical/4284a22d184e71be096ad9caba5f00c2bd34b3065f49a09cc1d7815c446b3748.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6e61cce8-d52c-5b0c-84a9-ef76450856e5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_definitional_disputes_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '80883f1646fcde5f502310f31dc57e09558dd8dda7277d6763b34b5fc2c2e120'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('59a7a312-f3ea-5e62-8b68-cf6b2c2499a4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6e61cce8-d52c-5b0c-84a9-ef76450856e5', 1), '80883f1646fcde5f502310f31dc57e09558dd8dda7277d6763b34b5fc2c2e120',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4284a22d184e71be096ad9caba5f00c2bd34b3065f49a09cc1d7815c446b3748.mp3', 1201, '2026-09-13 11:32:50.683550', '11b2d39a04115b387db191373360ffe90f63ec33bdd98de74587ec1e8fbf165d', 'validated', '{"audio_key":"4284a22d184e71be096ad9caba5f00c2bd34b3065f49a09cc1d7815c446b3748","entity_key":"lx_definitional_disputes_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"11b2d39a04115b387db191373360ffe90f63ec33bdd98de74587ec1e8fbf165d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4284a22d184e71be096ad9caba5f00c2bd34b3065f49a09cc1d7815c446b3748.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_definitional_disputes_03 -> audio/generated/de-DE/lexical/4284a22d184e71be096ad9caba5f00c2bd34b3065f49a09cc1d7815c446b3748.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('26dad463-58e4-5506-8c84-b36ac7d0e95c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_definitional_disputes_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '80883f1646fcde5f502310f31dc57e09558dd8dda7277d6763b34b5fc2c2e120'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('178f602e-36ff-51a3-a434-d64044b0a85c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('26dad463-58e4-5506-8c84-b36ac7d0e95c', 1), '80883f1646fcde5f502310f31dc57e09558dd8dda7277d6763b34b5fc2c2e120',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4284a22d184e71be096ad9caba5f00c2bd34b3065f49a09cc1d7815c446b3748.mp3', 1201, '2026-09-13 11:32:50.683550', '11b2d39a04115b387db191373360ffe90f63ec33bdd98de74587ec1e8fbf165d', 'validated', '{"audio_key":"4284a22d184e71be096ad9caba5f00c2bd34b3065f49a09cc1d7815c446b3748","entity_key":"wf_definitional_disputes_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"11b2d39a04115b387db191373360ffe90f63ec33bdd98de74587ec1e8fbf165d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4284a22d184e71be096ad9caba5f00c2bd34b3065f49a09cc1d7815c446b3748.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_evidential_calibration_01 -> audio/generated/de-DE/lexical/45b574a92931a371d4f09e8deb1d339f9547f47b198ed13a9a8e8e8c670ac7d6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9c5fe423-68b0-51b8-9ed7-4c28a0c83b24', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_evidential_calibration_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ee9abec680ae3ad5b4788f389d9c623588cf0c41518302d70d2593592c20ff30'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('985f73ea-a44a-54e4-b5b3-2a45029da013', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9c5fe423-68b0-51b8-9ed7-4c28a0c83b24', 1), 'ee9abec680ae3ad5b4788f389d9c623588cf0c41518302d70d2593592c20ff30',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/45b574a92931a371d4f09e8deb1d339f9547f47b198ed13a9a8e8e8c670ac7d6.mp3', 1332, '2026-09-13 14:04:47.535462', '2e99293b29f5aa29f21a933b75e19735798dad0a454244fe5a27f5b61dbc6f70', 'validated', '{"audio_key":"45b574a92931a371d4f09e8deb1d339f9547f47b198ed13a9a8e8e8c670ac7d6","entity_key":"lx_evidential_calibration_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2e99293b29f5aa29f21a933b75e19735798dad0a454244fe5a27f5b61dbc6f70","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/45b574a92931a371d4f09e8deb1d339f9547f47b198ed13a9a8e8e8c670ac7d6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_evidential_calibration_01 -> audio/generated/de-DE/lexical/45b574a92931a371d4f09e8deb1d339f9547f47b198ed13a9a8e8e8c670ac7d6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7cbee186-de0e-51ec-a2dc-ef9f5e2ea4e3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_evidential_calibration_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ee9abec680ae3ad5b4788f389d9c623588cf0c41518302d70d2593592c20ff30'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a5ec18cf-311d-5435-9940-1ecc62cd8912', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7cbee186-de0e-51ec-a2dc-ef9f5e2ea4e3', 1), 'ee9abec680ae3ad5b4788f389d9c623588cf0c41518302d70d2593592c20ff30',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/45b574a92931a371d4f09e8deb1d339f9547f47b198ed13a9a8e8e8c670ac7d6.mp3', 1332, '2026-09-13 14:04:47.535462', '2e99293b29f5aa29f21a933b75e19735798dad0a454244fe5a27f5b61dbc6f70', 'validated', '{"audio_key":"45b574a92931a371d4f09e8deb1d339f9547f47b198ed13a9a8e8e8c670ac7d6","entity_key":"wf_evidential_calibration_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2e99293b29f5aa29f21a933b75e19735798dad0a454244fe5a27f5b61dbc6f70","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/45b574a92931a371d4f09e8deb1d339f9547f47b198ed13a9a8e8e8c670ac7d6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_humor_irony_repair_05 -> audio/generated/de-DE/lexical/492e67aa165dc83f51dc7b1e614918202e1b87e305ddde1ccd1a44cf2d26ed74.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3f7816a8-b07c-5cd0-b371-08d68869ddcf', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_humor_irony_repair_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '80545e3daac1002d451acb07b1df0b8a864f3ede2042422e198c16a607f20062'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('abd6278c-179f-5749-a073-4ab3e4c610aa', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3f7816a8-b07c-5cd0-b371-08d68869ddcf', 1), '80545e3daac1002d451acb07b1df0b8a864f3ede2042422e198c16a607f20062',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/492e67aa165dc83f51dc7b1e614918202e1b87e305ddde1ccd1a44cf2d26ed74.mp3', 1149, '2026-09-13 14:04:47.864536', '61e6aaa7b6ff51cefd9f5f69d8236d3cd67a5803e28106a87522c7508acc0400', 'validated', '{"audio_key":"492e67aa165dc83f51dc7b1e614918202e1b87e305ddde1ccd1a44cf2d26ed74","entity_key":"lx_humor_irony_repair_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"61e6aaa7b6ff51cefd9f5f69d8236d3cd67a5803e28106a87522c7508acc0400","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/492e67aa165dc83f51dc7b1e614918202e1b87e305ddde1ccd1a44cf2d26ed74.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_humor_irony_repair_05 -> audio/generated/de-DE/lexical/492e67aa165dc83f51dc7b1e614918202e1b87e305ddde1ccd1a44cf2d26ed74.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('800ecff1-86bb-57ad-90c3-597ba39c2b4f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_humor_irony_repair_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '80545e3daac1002d451acb07b1df0b8a864f3ede2042422e198c16a607f20062'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('84fb97aa-6e23-52ac-96df-bdf7f6e55118', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('800ecff1-86bb-57ad-90c3-597ba39c2b4f', 1), '80545e3daac1002d451acb07b1df0b8a864f3ede2042422e198c16a607f20062',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/492e67aa165dc83f51dc7b1e614918202e1b87e305ddde1ccd1a44cf2d26ed74.mp3', 1149, '2026-09-13 14:04:47.864536', '61e6aaa7b6ff51cefd9f5f69d8236d3cd67a5803e28106a87522c7508acc0400', 'validated', '{"audio_key":"492e67aa165dc83f51dc7b1e614918202e1b87e305ddde1ccd1a44cf2d26ed74","entity_key":"wf_humor_irony_repair_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"61e6aaa7b6ff51cefd9f5f69d8236d3cd67a5803e28106a87522c7508acc0400","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/492e67aa165dc83f51dc7b1e614918202e1b87e305ddde1ccd1a44cf2d26ed74.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_and_implicature_04 -> audio/generated/de-DE/lexical/4afa924b0860798537c7940629015181581159fa02de13c46cc7b5688a1b2fd4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('effe2d76-ed57-5f36-b881-211349a956c6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_and_implicature_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f250d4ad40e39712377a38c94db2f2ae53810c27739daedd0fc7737c31805423'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a891f51d-c317-55cc-9282-365bf4018f12', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('effe2d76-ed57-5f36-b881-211349a956c6', 1), 'f250d4ad40e39712377a38c94db2f2ae53810c27739daedd0fc7737c31805423',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4afa924b0860798537c7940629015181581159fa02de13c46cc7b5688a1b2fd4.mp3', 1253, '2026-09-13 11:47:03.169076', '21296931ebe3d5dfe461a01193e2fac361011cd14b7c9e6b03c0ccd859c8b36a', 'validated', '{"audio_key":"4afa924b0860798537c7940629015181581159fa02de13c46cc7b5688a1b2fd4","entity_key":"lx_register_and_implicature_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"21296931ebe3d5dfe461a01193e2fac361011cd14b7c9e6b03c0ccd859c8b36a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4afa924b0860798537c7940629015181581159fa02de13c46cc7b5688a1b2fd4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_and_implicature_04 -> audio/generated/de-DE/lexical/4afa924b0860798537c7940629015181581159fa02de13c46cc7b5688a1b2fd4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3d0fdcc7-2eec-5e85-a115-feb04f2a0a65', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_and_implicature_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f250d4ad40e39712377a38c94db2f2ae53810c27739daedd0fc7737c31805423'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d4137510-be09-57ef-a507-62e05214a203', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3d0fdcc7-2eec-5e85-a115-feb04f2a0a65', 1), 'f250d4ad40e39712377a38c94db2f2ae53810c27739daedd0fc7737c31805423',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4afa924b0860798537c7940629015181581159fa02de13c46cc7b5688a1b2fd4.mp3', 1253, '2026-09-13 11:47:03.169076', '21296931ebe3d5dfe461a01193e2fac361011cd14b7c9e6b03c0ccd859c8b36a', 'validated', '{"audio_key":"4afa924b0860798537c7940629015181581159fa02de13c46cc7b5688a1b2fd4","entity_key":"wf_register_and_implicature_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"21296931ebe3d5dfe461a01193e2fac361011cd14b7c9e6b03c0ccd859c8b36a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4afa924b0860798537c7940629015181581159fa02de13c46cc7b5688a1b2fd4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_legal_administrative_nuance_05 -> audio/generated/de-DE/lexical/4dccc1a25ef0c0a5d851931ac4016ef88d39aa3726dd7178e21541a7b470382a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7df72b90-f530-50b2-9d5b-ef4040a11702', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_legal_administrative_nuance_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eebeba9d81ed96b00ca6b74a7932e3c0b2119a1bae32fcf36aae0f83faa20a8f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8b723217-2d2a-5fad-b445-776d488f5bf1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7df72b90-f530-50b2-9d5b-ef4040a11702', 1), 'eebeba9d81ed96b00ca6b74a7932e3c0b2119a1bae32fcf36aae0f83faa20a8f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4dccc1a25ef0c0a5d851931ac4016ef88d39aa3726dd7178e21541a7b470382a.mp3', 1149, '2026-09-13 07:53:15.637496', '481afc1d5b9eab76f1e3f4cf0f96a8237394b6bc26110fa92b81d5207d94f0b4', 'validated', '{"audio_key":"4dccc1a25ef0c0a5d851931ac4016ef88d39aa3726dd7178e21541a7b470382a","entity_key":"lx_legal_administrative_nuance_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"481afc1d5b9eab76f1e3f4cf0f96a8237394b6bc26110fa92b81d5207d94f0b4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4dccc1a25ef0c0a5d851931ac4016ef88d39aa3726dd7178e21541a7b470382a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_legal_administrative_nuance_05 -> audio/generated/de-DE/lexical/4dccc1a25ef0c0a5d851931ac4016ef88d39aa3726dd7178e21541a7b470382a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('41d770d2-f550-5368-b616-6622bf773814', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_legal_administrative_nuance_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eebeba9d81ed96b00ca6b74a7932e3c0b2119a1bae32fcf36aae0f83faa20a8f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('00b04135-762c-52f9-8d7a-5a3c9b484435', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('41d770d2-f550-5368-b616-6622bf773814', 1), 'eebeba9d81ed96b00ca6b74a7932e3c0b2119a1bae32fcf36aae0f83faa20a8f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4dccc1a25ef0c0a5d851931ac4016ef88d39aa3726dd7178e21541a7b470382a.mp3', 1149, '2026-09-13 07:53:15.637496', '481afc1d5b9eab76f1e3f4cf0f96a8237394b6bc26110fa92b81d5207d94f0b4', 'validated', '{"audio_key":"4dccc1a25ef0c0a5d851931ac4016ef88d39aa3726dd7178e21541a7b470382a","entity_key":"wf_legal_administrative_nuance_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"481afc1d5b9eab76f1e3f4cf0f96a8237394b6bc26110fa92b81d5207d94f0b4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4dccc1a25ef0c0a5d851931ac4016ef88d39aa3726dd7178e21541a7b470382a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_legal_administrative_nuance_04 -> audio/generated/de-DE/lexical/51e86883ec446577bc13c92fcea7c0416aac7afbe785a26a47280705a5dac894.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0ad7fa53-c42d-5e70-973a-8397ede8e5f6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_legal_administrative_nuance_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '28d303176de710f72430be630a7f72b85fcd9c3c865a33a301969dd4d9b3adc7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('67969434-03bd-5aff-ad37-d8e4fdeaf8c6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0ad7fa53-c42d-5e70-973a-8397ede8e5f6', 1), '28d303176de710f72430be630a7f72b85fcd9c3c865a33a301969dd4d9b3adc7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/51e86883ec446577bc13c92fcea7c0416aac7afbe785a26a47280705a5dac894.mp3', 1097, '2026-09-13 11:47:04.657039', '10ea15cab5c57c4ccd912e39915c4d9e78f8d1533570eaf52a245fc271b680d7', 'validated', '{"audio_key":"51e86883ec446577bc13c92fcea7c0416aac7afbe785a26a47280705a5dac894","entity_key":"lx_legal_administrative_nuance_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"10ea15cab5c57c4ccd912e39915c4d9e78f8d1533570eaf52a245fc271b680d7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/51e86883ec446577bc13c92fcea7c0416aac7afbe785a26a47280705a5dac894.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_legal_administrative_nuance_04 -> audio/generated/de-DE/lexical/51e86883ec446577bc13c92fcea7c0416aac7afbe785a26a47280705a5dac894.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d2c2cc43-3db6-5c29-ab18-2219c30408e7', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_legal_administrative_nuance_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '28d303176de710f72430be630a7f72b85fcd9c3c865a33a301969dd4d9b3adc7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ff73ea6a-97ca-5066-8dd2-08959b5873ec', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d2c2cc43-3db6-5c29-ab18-2219c30408e7', 1), '28d303176de710f72430be630a7f72b85fcd9c3c865a33a301969dd4d9b3adc7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/51e86883ec446577bc13c92fcea7c0416aac7afbe785a26a47280705a5dac894.mp3', 1097, '2026-09-13 11:47:04.657039', '10ea15cab5c57c4ccd912e39915c4d9e78f8d1533570eaf52a245fc271b680d7', 'validated', '{"audio_key":"51e86883ec446577bc13c92fcea7c0416aac7afbe785a26a47280705a5dac894","entity_key":"wf_legal_administrative_nuance_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"10ea15cab5c57c4ccd912e39915c4d9e78f8d1533570eaf52a245fc271b680d7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/51e86883ec446577bc13c92fcea7c0416aac7afbe785a26a47280705a5dac894.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_evidential_calibration_05 -> audio/generated/de-DE/lexical/635420de2eedd421c23f193fd511c532519b335e013e8d9765df0f4d6d20378e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c82c4bf7-a999-5eab-9d50-35e3fd1cc09c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_evidential_calibration_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd2755e786024291cdc54e9b1fb1fd78f3310409b90dd6640b1c69178bf71cc5a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c3d19313-153b-5e10-81cf-b223af4d479b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c82c4bf7-a999-5eab-9d50-35e3fd1cc09c', 1), 'd2755e786024291cdc54e9b1fb1fd78f3310409b90dd6640b1c69178bf71cc5a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/635420de2eedd421c23f193fd511c532519b335e013e8d9765df0f4d6d20378e.mp3', 1149, '2026-09-13 14:04:48.536535', '78cf0317dfffe3a52552c6f91e52ae3678865f6da2583b105e49743e179a878e', 'validated', '{"audio_key":"635420de2eedd421c23f193fd511c532519b335e013e8d9765df0f4d6d20378e","entity_key":"lx_evidential_calibration_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"78cf0317dfffe3a52552c6f91e52ae3678865f6da2583b105e49743e179a878e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/635420de2eedd421c23f193fd511c532519b335e013e8d9765df0f4d6d20378e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_evidential_calibration_05 -> audio/generated/de-DE/lexical/635420de2eedd421c23f193fd511c532519b335e013e8d9765df0f4d6d20378e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c364ba66-e3c8-5283-b17b-e47eaeb174d9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_evidential_calibration_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd2755e786024291cdc54e9b1fb1fd78f3310409b90dd6640b1c69178bf71cc5a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('986b05f1-f508-550e-b545-7e9a1e979761', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c364ba66-e3c8-5283-b17b-e47eaeb174d9', 1), 'd2755e786024291cdc54e9b1fb1fd78f3310409b90dd6640b1c69178bf71cc5a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/635420de2eedd421c23f193fd511c532519b335e013e8d9765df0f4d6d20378e.mp3', 1149, '2026-09-13 14:04:48.536535', '78cf0317dfffe3a52552c6f91e52ae3678865f6da2583b105e49743e179a878e', 'validated', '{"audio_key":"635420de2eedd421c23f193fd511c532519b335e013e8d9765df0f4d6d20378e","entity_key":"wf_evidential_calibration_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"78cf0317dfffe3a52552c6f91e52ae3678865f6da2583b105e49743e179a878e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/635420de2eedd421c23f193fd511c532519b335e013e8d9765df0f4d6d20378e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_and_implicature_05 -> audio/generated/de-DE/lexical/6b5faa022d78f12394e71cb36519df9013d0e89d57ecccdc000e8fe7d2442fc8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2eb8f56a-7c93-5333-8480-1340fc53f0e5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_and_implicature_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a6b7e9a45e2aad33481cb4d7aabd3046506e77a0928f8789ca2d6e61101724e9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4083ed34-4d10-5105-b953-3573fcfad45c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2eb8f56a-7c93-5333-8480-1340fc53f0e5', 1), 'a6b7e9a45e2aad33481cb4d7aabd3046506e77a0928f8789ca2d6e61101724e9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6b5faa022d78f12394e71cb36519df9013d0e89d57ecccdc000e8fe7d2442fc8.mp3', 966, '2026-09-13 14:04:48.858563', '833a21385d7bfc8645313a6fbe8d04300e650c30dde5ee3a89629773f0ef4dde', 'validated', '{"audio_key":"6b5faa022d78f12394e71cb36519df9013d0e89d57ecccdc000e8fe7d2442fc8","entity_key":"lx_register_and_implicature_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"833a21385d7bfc8645313a6fbe8d04300e650c30dde5ee3a89629773f0ef4dde","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6b5faa022d78f12394e71cb36519df9013d0e89d57ecccdc000e8fe7d2442fc8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_and_implicature_05 -> audio/generated/de-DE/lexical/6b5faa022d78f12394e71cb36519df9013d0e89d57ecccdc000e8fe7d2442fc8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ec16363f-d397-5861-a605-044bae54b9f1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_and_implicature_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a6b7e9a45e2aad33481cb4d7aabd3046506e77a0928f8789ca2d6e61101724e9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e1d7cd17-92c1-5f82-8c4d-dc30e6f5e96e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ec16363f-d397-5861-a605-044bae54b9f1', 1), 'a6b7e9a45e2aad33481cb4d7aabd3046506e77a0928f8789ca2d6e61101724e9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6b5faa022d78f12394e71cb36519df9013d0e89d57ecccdc000e8fe7d2442fc8.mp3', 966, '2026-09-13 14:04:48.858563', '833a21385d7bfc8645313a6fbe8d04300e650c30dde5ee3a89629773f0ef4dde', 'validated', '{"audio_key":"6b5faa022d78f12394e71cb36519df9013d0e89d57ecccdc000e8fe7d2442fc8","entity_key":"wf_register_and_implicature_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"833a21385d7bfc8645313a6fbe8d04300e650c30dde5ee3a89629773f0ef4dde","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6b5faa022d78f12394e71cb36519df9013d0e89d57ecccdc000e8fe7d2442fc8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_mediation_across_frameworks_05 -> audio/generated/de-DE/lexical/6c90d95707c44c07422bd3c96f930f1989b10d4d80aa55258a4eedbd8129264d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6923157a-85a9-5e47-90b6-d87dfdbb19d2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_mediation_across_frameworks_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe4400d22d176050bd5d813e7080bbf4a05c4bff946e6f8d0037d4dd0124e0af'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5aff4bb1-be43-5c9e-8fc9-aa79c6e4f7ff', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6923157a-85a9-5e47-90b6-d87dfdbb19d2', 1), 'fe4400d22d176050bd5d813e7080bbf4a05c4bff946e6f8d0037d4dd0124e0af',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6c90d95707c44c07422bd3c96f930f1989b10d4d80aa55258a4eedbd8129264d.mp3', 1071, '2026-09-13 08:32:29.944572', 'a4ab40b93067b8c413996bfb71ac36ba7864a134a5ca1f179046f0decf469dc3', 'validated', '{"audio_key":"6c90d95707c44c07422bd3c96f930f1989b10d4d80aa55258a4eedbd8129264d","entity_key":"lx_mediation_across_frameworks_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a4ab40b93067b8c413996bfb71ac36ba7864a134a5ca1f179046f0decf469dc3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6c90d95707c44c07422bd3c96f930f1989b10d4d80aa55258a4eedbd8129264d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_mediation_across_frameworks_05 -> audio/generated/de-DE/lexical/6c90d95707c44c07422bd3c96f930f1989b10d4d80aa55258a4eedbd8129264d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a6a5495d-0349-5150-a87a-4ec8527f5b57', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_mediation_across_frameworks_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe4400d22d176050bd5d813e7080bbf4a05c4bff946e6f8d0037d4dd0124e0af'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2f6e3ea2-d06f-5129-9ad0-49f92561ba03', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a6a5495d-0349-5150-a87a-4ec8527f5b57', 1), 'fe4400d22d176050bd5d813e7080bbf4a05c4bff946e6f8d0037d4dd0124e0af',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6c90d95707c44c07422bd3c96f930f1989b10d4d80aa55258a4eedbd8129264d.mp3', 1071, '2026-09-13 08:32:29.944572', 'a4ab40b93067b8c413996bfb71ac36ba7864a134a5ca1f179046f0decf469dc3', 'validated', '{"audio_key":"6c90d95707c44c07422bd3c96f930f1989b10d4d80aa55258a4eedbd8129264d","entity_key":"wf_mediation_across_frameworks_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a4ab40b93067b8c413996bfb71ac36ba7864a134a5ca1f179046f0decf469dc3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6c90d95707c44c07422bd3c96f930f1989b10d4d80aa55258a4eedbd8129264d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_live_reformulation_01 -> audio/generated/de-DE/lexical/750a9e7f3b3c2a185bb8c9af5fae187d07efe66595905d868fa0bdabe0f37510.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d6c98f86-4ce4-5a6b-8291-840f1dd1f4a4', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_live_reformulation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ef9a48caa98d54ddd53f28596d5e85d44884976673be7373a2eef640276c6de1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('05a265e8-d0ce-5ec7-9eae-4c93116c6bfb', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d6c98f86-4ce4-5a6b-8291-840f1dd1f4a4', 1), 'ef9a48caa98d54ddd53f28596d5e85d44884976673be7373a2eef640276c6de1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/750a9e7f3b3c2a185bb8c9af5fae187d07efe66595905d868fa0bdabe0f37510.mp3', 1280, '2026-09-13 14:04:49.535045', '2bd115db43f48a2bad9fb2b5d1f1cd803fc15ac00e9041bb974ca26f992cc734', 'validated', '{"audio_key":"750a9e7f3b3c2a185bb8c9af5fae187d07efe66595905d868fa0bdabe0f37510","entity_key":"lx_live_reformulation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2bd115db43f48a2bad9fb2b5d1f1cd803fc15ac00e9041bb974ca26f992cc734","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/750a9e7f3b3c2a185bb8c9af5fae187d07efe66595905d868fa0bdabe0f37510.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_live_reformulation_01 -> audio/generated/de-DE/lexical/750a9e7f3b3c2a185bb8c9af5fae187d07efe66595905d868fa0bdabe0f37510.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b5feec82-34e8-5c10-92e4-ebf4b8e2cf50', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_live_reformulation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ef9a48caa98d54ddd53f28596d5e85d44884976673be7373a2eef640276c6de1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1757b55f-64f1-5cce-8a04-d8fcb63d0e69', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b5feec82-34e8-5c10-92e4-ebf4b8e2cf50', 1), 'ef9a48caa98d54ddd53f28596d5e85d44884976673be7373a2eef640276c6de1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/750a9e7f3b3c2a185bb8c9af5fae187d07efe66595905d868fa0bdabe0f37510.mp3', 1280, '2026-09-13 14:04:49.535045', '2bd115db43f48a2bad9fb2b5d1f1cd803fc15ac00e9041bb974ca26f992cc734', 'validated', '{"audio_key":"750a9e7f3b3c2a185bb8c9af5fae187d07efe66595905d868fa0bdabe0f37510","entity_key":"wf_live_reformulation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2bd115db43f48a2bad9fb2b5d1f1cd803fc15ac00e9041bb974ca26f992cc734","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/750a9e7f3b3c2a185bb8c9af5fae187d07efe66595905d868fa0bdabe0f37510.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_counterfactual_reasoning_04 -> audio/generated/de-DE/lexical/765d531fbfc2dd9aab191e86abb4a6864db37994d93cf12d6dd8521b8132df29.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7d38522f-7f91-5a41-bf23-50263f3dc172', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_counterfactual_reasoning_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd5927c703275afc1c2565d5a5946e9aa98e2a9969cb573772dba4490d72859b9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('85fd0408-5f33-5711-9199-a55f7377dd96', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7d38522f-7f91-5a41-bf23-50263f3dc172', 1), 'd5927c703275afc1c2565d5a5946e9aa98e2a9969cb573772dba4490d72859b9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/765d531fbfc2dd9aab191e86abb4a6864db37994d93cf12d6dd8521b8132df29.mp3', 1253, '2026-09-13 14:04:49.882357', '5b9a066b716c005f0ae7c5fa10d78dd721c2baf92a710fa4f4be6c1f5893fa13', 'validated', '{"audio_key":"765d531fbfc2dd9aab191e86abb4a6864db37994d93cf12d6dd8521b8132df29","entity_key":"lx_counterfactual_reasoning_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5b9a066b716c005f0ae7c5fa10d78dd721c2baf92a710fa4f4be6c1f5893fa13","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/765d531fbfc2dd9aab191e86abb4a6864db37994d93cf12d6dd8521b8132df29.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_counterfactual_reasoning_04 -> audio/generated/de-DE/lexical/765d531fbfc2dd9aab191e86abb4a6864db37994d93cf12d6dd8521b8132df29.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('69691d61-baea-5dbc-9242-4a33b901cd07', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_counterfactual_reasoning_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd5927c703275afc1c2565d5a5946e9aa98e2a9969cb573772dba4490d72859b9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0106cf03-51bb-5950-b9b3-f01e1dd6dade', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('69691d61-baea-5dbc-9242-4a33b901cd07', 1), 'd5927c703275afc1c2565d5a5946e9aa98e2a9969cb573772dba4490d72859b9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/765d531fbfc2dd9aab191e86abb4a6864db37994d93cf12d6dd8521b8132df29.mp3', 1253, '2026-09-13 14:04:49.882357', '5b9a066b716c005f0ae7c5fa10d78dd721c2baf92a710fa4f4be6c1f5893fa13', 'validated', '{"audio_key":"765d531fbfc2dd9aab191e86abb4a6864db37994d93cf12d6dd8521b8132df29","entity_key":"wf_counterfactual_reasoning_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5b9a066b716c005f0ae7c5fa10d78dd721c2baf92a710fa4f4be6c1f5893fa13","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/765d531fbfc2dd9aab191e86abb4a6864db37994d93cf12d6dd8521b8132df29.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_compressed_synthesis_04 -> audio/generated/de-DE/lexical/78a105a853512351d7d9eeda06ef2f241f35340caeec29f4f018e9215f03e832.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('326605d6-d9e2-5942-a38f-aaf84623b6f0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_compressed_synthesis_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '05924754eb67574f3b27f6b125e0e80d27d85adf6b9976b26efaf0bb2d074f82'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c09f9ed7-9e7a-53d3-a8e5-78107fe0b7f3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('326605d6-d9e2-5942-a38f-aaf84623b6f0', 1), '05924754eb67574f3b27f6b125e0e80d27d85adf6b9976b26efaf0bb2d074f82',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/78a105a853512351d7d9eeda06ef2f241f35340caeec29f4f018e9215f03e832.mp3', 966, '2026-09-13 11:32:52.965122', '9bbab49280e2cf97dfb23a4d9a5067ddd82d95c76ffa8fc028c15e0b701b4792', 'validated', '{"audio_key":"78a105a853512351d7d9eeda06ef2f241f35340caeec29f4f018e9215f03e832","entity_key":"lx_compressed_synthesis_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9bbab49280e2cf97dfb23a4d9a5067ddd82d95c76ffa8fc028c15e0b701b4792","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/78a105a853512351d7d9eeda06ef2f241f35340caeec29f4f018e9215f03e832.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_compressed_synthesis_04 -> audio/generated/de-DE/lexical/78a105a853512351d7d9eeda06ef2f241f35340caeec29f4f018e9215f03e832.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('cd3fd745-7240-5ee0-895e-dc118071e322', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_compressed_synthesis_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '05924754eb67574f3b27f6b125e0e80d27d85adf6b9976b26efaf0bb2d074f82'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9c191b33-29df-589f-9d8a-6e1c3f41156b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('cd3fd745-7240-5ee0-895e-dc118071e322', 1), '05924754eb67574f3b27f6b125e0e80d27d85adf6b9976b26efaf0bb2d074f82',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/78a105a853512351d7d9eeda06ef2f241f35340caeec29f4f018e9215f03e832.mp3', 966, '2026-09-13 11:32:52.965122', '9bbab49280e2cf97dfb23a4d9a5067ddd82d95c76ffa8fc028c15e0b701b4792', 'validated', '{"audio_key":"78a105a853512351d7d9eeda06ef2f241f35340caeec29f4f018e9215f03e832","entity_key":"wf_compressed_synthesis_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9bbab49280e2cf97dfb23a4d9a5067ddd82d95c76ffa8fc028c15e0b701b4792","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/78a105a853512351d7d9eeda06ef2f241f35340caeec29f4f018e9215f03e832.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_compressed_synthesis_06 -> audio/generated/de-DE/lexical/7a036e9f55501216a5f36bc4c26fd2e3ca23d8d07eeee7436368b9add15a8ffa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a76daa2c-ed1f-5a3f-8736-4f4ec0981c55', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_compressed_synthesis_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c10c9a5017d4230fd321912b82e48316cf2886305f2139c4cb22e1a2c66d1b0f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('076e87b4-e8a8-5f0e-bc68-094a2af5aea2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a76daa2c-ed1f-5a3f-8736-4f4ec0981c55', 1), 'c10c9a5017d4230fd321912b82e48316cf2886305f2139c4cb22e1a2c66d1b0f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7a036e9f55501216a5f36bc4c26fd2e3ca23d8d07eeee7436368b9add15a8ffa.mp3', 1332, '2026-09-13 09:18:15.699715', '50443ab3065106d50444a7764512f21bfac1fed4073e7c5d4b2205973b56ecce', 'validated', '{"audio_key":"7a036e9f55501216a5f36bc4c26fd2e3ca23d8d07eeee7436368b9add15a8ffa","entity_key":"lx_compressed_synthesis_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"50443ab3065106d50444a7764512f21bfac1fed4073e7c5d4b2205973b56ecce","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7a036e9f55501216a5f36bc4c26fd2e3ca23d8d07eeee7436368b9add15a8ffa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_compressed_synthesis_06 -> audio/generated/de-DE/lexical/7a036e9f55501216a5f36bc4c26fd2e3ca23d8d07eeee7436368b9add15a8ffa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('cfb892e4-d3d5-5016-809a-7aa6169f7d9e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_compressed_synthesis_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c10c9a5017d4230fd321912b82e48316cf2886305f2139c4cb22e1a2c66d1b0f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3001408b-0952-5167-83bf-cc073bbffee2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('cfb892e4-d3d5-5016-809a-7aa6169f7d9e', 1), 'c10c9a5017d4230fd321912b82e48316cf2886305f2139c4cb22e1a2c66d1b0f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7a036e9f55501216a5f36bc4c26fd2e3ca23d8d07eeee7436368b9add15a8ffa.mp3', 1332, '2026-09-13 09:18:15.699715', '50443ab3065106d50444a7764512f21bfac1fed4073e7c5d4b2205973b56ecce', 'validated', '{"audio_key":"7a036e9f55501216a5f36bc4c26fd2e3ca23d8d07eeee7436368b9add15a8ffa","entity_key":"wf_compressed_synthesis_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"50443ab3065106d50444a7764512f21bfac1fed4073e7c5d4b2205973b56ecce","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7a036e9f55501216a5f36bc4c26fd2e3ca23d8d07eeee7436368b9add15a8ffa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_humor_irony_repair_04 -> audio/generated/de-DE/lexical/7dbd5a8c036bf95a9dd7de43b345b1fda4fff532251a0e2c5daa175f24b36cfb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('79d686bc-5f6c-52e4-9815-0634b3eb1099', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_humor_irony_repair_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b3096d6d1cb94839f5d765728f27dc799553077c6b9d4760b4c32bb43c049321'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('64339517-d86f-5732-b1f8-1a417024ccf9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('79d686bc-5f6c-52e4-9815-0634b3eb1099', 1), 'b3096d6d1cb94839f5d765728f27dc799553077c6b9d4760b4c32bb43c049321',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7dbd5a8c036bf95a9dd7de43b345b1fda4fff532251a0e2c5daa175f24b36cfb.mp3', 1253, '2026-09-13 14:04:50.549639', '9a8e2ccaaada9e962508ec648d0a2572267aabbae9d39182f8b646d977362c29', 'validated', '{"audio_key":"7dbd5a8c036bf95a9dd7de43b345b1fda4fff532251a0e2c5daa175f24b36cfb","entity_key":"lx_humor_irony_repair_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9a8e2ccaaada9e962508ec648d0a2572267aabbae9d39182f8b646d977362c29","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7dbd5a8c036bf95a9dd7de43b345b1fda4fff532251a0e2c5daa175f24b36cfb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_humor_irony_repair_04 -> audio/generated/de-DE/lexical/7dbd5a8c036bf95a9dd7de43b345b1fda4fff532251a0e2c5daa175f24b36cfb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9f09185a-5919-5b68-b332-37cf3fbecbe3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_humor_irony_repair_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b3096d6d1cb94839f5d765728f27dc799553077c6b9d4760b4c32bb43c049321'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b6a6c6de-2fb1-5e25-b5f3-a1738d727f3d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9f09185a-5919-5b68-b332-37cf3fbecbe3', 1), 'b3096d6d1cb94839f5d765728f27dc799553077c6b9d4760b4c32bb43c049321',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7dbd5a8c036bf95a9dd7de43b345b1fda4fff532251a0e2c5daa175f24b36cfb.mp3', 1253, '2026-09-13 14:04:50.549639', '9a8e2ccaaada9e962508ec648d0a2572267aabbae9d39182f8b646d977362c29', 'validated', '{"audio_key":"7dbd5a8c036bf95a9dd7de43b345b1fda4fff532251a0e2c5daa175f24b36cfb","entity_key":"wf_humor_irony_repair_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9a8e2ccaaada9e962508ec648d0a2572267aabbae9d39182f8b646d977362c29","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7dbd5a8c036bf95a9dd7de43b345b1fda4fff532251a0e2c5daa175f24b36cfb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_and_implicature_06 -> audio/generated/de-DE/lexical/802e9d518c98e379ef40cfe545e19af1980f270cfac6a4a5bb1ed60c836c64be.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('23107994-d132-5fe1-a54f-8252458e3476', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_and_implicature_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f76fc20033daa13a87f708845265fc89588cb5e84529b9ef89fc4563ee70cf49'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('245dfbcf-bcc2-5544-b664-20b08cde6617', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('23107994-d132-5fe1-a54f-8252458e3476', 1), 'f76fc20033daa13a87f708845265fc89588cb5e84529b9ef89fc4563ee70cf49',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/802e9d518c98e379ef40cfe545e19af1980f270cfac6a4a5bb1ed60c836c64be.mp3', 1515, '2026-09-13 09:40:59.129780', '59e0c131a022dcb14f059b86bff59250015304c41db562cc449d76c56b7d6d7f', 'validated', '{"audio_key":"802e9d518c98e379ef40cfe545e19af1980f270cfac6a4a5bb1ed60c836c64be","entity_key":"lx_register_and_implicature_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"59e0c131a022dcb14f059b86bff59250015304c41db562cc449d76c56b7d6d7f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/802e9d518c98e379ef40cfe545e19af1980f270cfac6a4a5bb1ed60c836c64be.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_and_implicature_06 -> audio/generated/de-DE/lexical/802e9d518c98e379ef40cfe545e19af1980f270cfac6a4a5bb1ed60c836c64be.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('afa846db-2b03-5fe2-82e2-3871f8b609da', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_and_implicature_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f76fc20033daa13a87f708845265fc89588cb5e84529b9ef89fc4563ee70cf49'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('acb61408-d09b-5553-9a1c-580f0b25d55f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('afa846db-2b03-5fe2-82e2-3871f8b609da', 1), 'f76fc20033daa13a87f708845265fc89588cb5e84529b9ef89fc4563ee70cf49',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/802e9d518c98e379ef40cfe545e19af1980f270cfac6a4a5bb1ed60c836c64be.mp3', 1515, '2026-09-13 09:40:59.129780', '59e0c131a022dcb14f059b86bff59250015304c41db562cc449d76c56b7d6d7f', 'validated', '{"audio_key":"802e9d518c98e379ef40cfe545e19af1980f270cfac6a4a5bb1ed60c836c64be","entity_key":"wf_register_and_implicature_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"59e0c131a022dcb14f059b86bff59250015304c41db562cc449d76c56b7d6d7f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/802e9d518c98e379ef40cfe545e19af1980f270cfac6a4a5bb1ed60c836c64be.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_legal_administrative_nuance_06 -> audio/generated/de-DE/lexical/84473e2fbc129f03206af0b9783649c2d884527d9dbc4265e14b469512309862.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5a28e739-da8d-57db-9aed-757e04bfda5f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_legal_administrative_nuance_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b9e3c05e84a244ddcccc74224c0858844642ef5985863b242219690713520e3f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dd01b695-c881-55f0-a563-60ab4fd17244', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5a28e739-da8d-57db-9aed-757e04bfda5f', 1), 'b9e3c05e84a244ddcccc74224c0858844642ef5985863b242219690713520e3f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/84473e2fbc129f03206af0b9783649c2d884527d9dbc4265e14b469512309862.mp3', 1097, '2026-09-13 14:04:50.946646', 'a35222c3d0becaf112bc7a5a61680009a2ddba1a3f15533476fdaefe3889ef15', 'validated', '{"audio_key":"84473e2fbc129f03206af0b9783649c2d884527d9dbc4265e14b469512309862","entity_key":"lx_legal_administrative_nuance_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a35222c3d0becaf112bc7a5a61680009a2ddba1a3f15533476fdaefe3889ef15","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/84473e2fbc129f03206af0b9783649c2d884527d9dbc4265e14b469512309862.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_legal_administrative_nuance_06 -> audio/generated/de-DE/lexical/84473e2fbc129f03206af0b9783649c2d884527d9dbc4265e14b469512309862.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('bf86cb33-8420-58b2-895b-05d9e5ccc309', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_legal_administrative_nuance_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b9e3c05e84a244ddcccc74224c0858844642ef5985863b242219690713520e3f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cb5c5a02-e1d4-51e0-af16-1c34c03c8b8f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('bf86cb33-8420-58b2-895b-05d9e5ccc309', 1), 'b9e3c05e84a244ddcccc74224c0858844642ef5985863b242219690713520e3f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/84473e2fbc129f03206af0b9783649c2d884527d9dbc4265e14b469512309862.mp3', 1097, '2026-09-13 14:04:50.946646', 'a35222c3d0becaf112bc7a5a61680009a2ddba1a3f15533476fdaefe3889ef15', 'validated', '{"audio_key":"84473e2fbc129f03206af0b9783649c2d884527d9dbc4265e14b469512309862","entity_key":"wf_legal_administrative_nuance_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a35222c3d0becaf112bc7a5a61680009a2ddba1a3f15533476fdaefe3889ef15","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/84473e2fbc129f03206af0b9783649c2d884527d9dbc4265e14b469512309862.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_expert_briefing_capstone_01 -> audio/generated/de-DE/lexical/8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5af071bf-840c-5a33-9699-c0cc0f8390f6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_expert_briefing_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8740d5d37f564796bffd624f43744a7098cbfa6ca1ad7f64c5aafce0e3272f22'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bdf3c5b5-da10-5ad4-8e77-79e964d5b3a8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5af071bf-840c-5a33-9699-c0cc0f8390f6', 1), '8740d5d37f564796bffd624f43744a7098cbfa6ca1ad7f64c5aafce0e3272f22',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313.mp3', 1071, '2026-09-13 08:16:38.902185', 'c7e085e9a23fad8636cb1f8fa4b42d44d22deee90041e72c0ed98952ff258af9', 'validated', '{"audio_key":"8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313","entity_key":"lx_expert_briefing_capstone_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c7e085e9a23fad8636cb1f8fa4b42d44d22deee90041e72c0ed98952ff258af9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_expert_briefing_capstone_01 -> audio/generated/de-DE/lexical/8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('aa11af21-0552-50b0-aa53-23e296931330', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_expert_briefing_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8740d5d37f564796bffd624f43744a7098cbfa6ca1ad7f64c5aafce0e3272f22'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('45c629e2-d68f-53d2-bbf2-e71a45234a28', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('aa11af21-0552-50b0-aa53-23e296931330', 1), '8740d5d37f564796bffd624f43744a7098cbfa6ca1ad7f64c5aafce0e3272f22',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313.mp3', 1071, '2026-09-13 08:16:38.902185', 'c7e085e9a23fad8636cb1f8fa4b42d44d22deee90041e72c0ed98952ff258af9', 'validated', '{"audio_key":"8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313","entity_key":"wf_expert_briefing_capstone_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c7e085e9a23fad8636cb1f8fa4b42d44d22deee90041e72c0ed98952ff258af9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8577bb8b222a96180a43eb567f7cc8cd236e3512e3ece4634b0761f447fee313.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_evidential_calibration_04 -> audio/generated/de-DE/lexical/87d45ca45306990537667fa7ab630df7ea1a1e03a089393d15f5fc6e55222547.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5a6c87ef-73ee-5d89-84fd-b57e17519ec2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_evidential_calibration_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3f1690aa48d609fc2d13075b7524511b7000efb95823d252ff489d1dfe146917'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c3e03223-490c-565c-9740-8953948571f3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5a6c87ef-73ee-5d89-84fd-b57e17519ec2', 1), '3f1690aa48d609fc2d13075b7524511b7000efb95823d252ff489d1dfe146917',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/87d45ca45306990537667fa7ab630df7ea1a1e03a089393d15f5fc6e55222547.mp3', 1149, '2026-09-13 11:32:55.535554', '9b35b100318f54a1940f47883872cc54ed7f8782c8daf775141ab82ae95f923f', 'validated', '{"audio_key":"87d45ca45306990537667fa7ab630df7ea1a1e03a089393d15f5fc6e55222547","entity_key":"lx_evidential_calibration_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9b35b100318f54a1940f47883872cc54ed7f8782c8daf775141ab82ae95f923f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/87d45ca45306990537667fa7ab630df7ea1a1e03a089393d15f5fc6e55222547.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_evidential_calibration_04 -> audio/generated/de-DE/lexical/87d45ca45306990537667fa7ab630df7ea1a1e03a089393d15f5fc6e55222547.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b9a71d37-0e04-547d-98fb-80cc07f998fd', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_evidential_calibration_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3f1690aa48d609fc2d13075b7524511b7000efb95823d252ff489d1dfe146917'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d0ee24cb-2895-577a-bf45-01e88bd81fb1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b9a71d37-0e04-547d-98fb-80cc07f998fd', 1), '3f1690aa48d609fc2d13075b7524511b7000efb95823d252ff489d1dfe146917',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/87d45ca45306990537667fa7ab630df7ea1a1e03a089393d15f5fc6e55222547.mp3', 1149, '2026-09-13 11:32:55.535554', '9b35b100318f54a1940f47883872cc54ed7f8782c8daf775141ab82ae95f923f', 'validated', '{"audio_key":"87d45ca45306990537667fa7ab630df7ea1a1e03a089393d15f5fc6e55222547","entity_key":"wf_evidential_calibration_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9b35b100318f54a1940f47883872cc54ed7f8782c8daf775141ab82ae95f923f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/87d45ca45306990537667fa7ab630df7ea1a1e03a089393d15f5fc6e55222547.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_live_reformulation_02 -> audio/generated/de-DE/lexical/881a234dd16568599783f2fc7709ac790f3f870aff987a5c6db6bbd3f4894625.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a9b30900-5c08-5d48-b01d-d337434f92bc', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_live_reformulation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd96f9ddeeba0d8a886476c6fcc2cbbfb6fa77b8e6b45a1ed8454cb80554781c2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7f6dbadc-ff49-5dfc-abf9-b3ce34b93c22', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a9b30900-5c08-5d48-b01d-d337434f92bc', 1), 'd96f9ddeeba0d8a886476c6fcc2cbbfb6fa77b8e6b45a1ed8454cb80554781c2',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/881a234dd16568599783f2fc7709ac790f3f870aff987a5c6db6bbd3f4894625.mp3', 1253, '2026-09-13 14:04:51.563397', 'e296bd9a9e9b490920608c10368118476c0fa21ed9b9f444e7304932b1577154', 'validated', '{"audio_key":"881a234dd16568599783f2fc7709ac790f3f870aff987a5c6db6bbd3f4894625","entity_key":"lx_live_reformulation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e296bd9a9e9b490920608c10368118476c0fa21ed9b9f444e7304932b1577154","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/881a234dd16568599783f2fc7709ac790f3f870aff987a5c6db6bbd3f4894625.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_live_reformulation_02 -> audio/generated/de-DE/lexical/881a234dd16568599783f2fc7709ac790f3f870aff987a5c6db6bbd3f4894625.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('09489b1a-9cd5-5f83-9db6-3d945343b86a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_live_reformulation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd96f9ddeeba0d8a886476c6fcc2cbbfb6fa77b8e6b45a1ed8454cb80554781c2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c0c014f4-a82b-5492-bb38-c0a7a6943dcd', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('09489b1a-9cd5-5f83-9db6-3d945343b86a', 1), 'd96f9ddeeba0d8a886476c6fcc2cbbfb6fa77b8e6b45a1ed8454cb80554781c2',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/881a234dd16568599783f2fc7709ac790f3f870aff987a5c6db6bbd3f4894625.mp3', 1253, '2026-09-13 14:04:51.563397', 'e296bd9a9e9b490920608c10368118476c0fa21ed9b9f444e7304932b1577154', 'validated', '{"audio_key":"881a234dd16568599783f2fc7709ac790f3f870aff987a5c6db6bbd3f4894625","entity_key":"wf_live_reformulation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e296bd9a9e9b490920608c10368118476c0fa21ed9b9f444e7304932b1577154","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/881a234dd16568599783f2fc7709ac790f3f870aff987a5c6db6bbd3f4894625.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_humor_irony_repair_02 -> audio/generated/de-DE/lexical/8eef2e59569e2614ca36ca7da643006a32780738b80e44090b333f7e87b97e00.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1090617a-f4f9-5e8d-b450-db5a81df2fc8', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_humor_irony_repair_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd6d519322a6a7fd92a90ee89de918403940edb48282815c834790bac6ee5d15c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a5732273-a298-5703-b473-3c577c642553', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1090617a-f4f9-5e8d-b450-db5a81df2fc8', 1), 'd6d519322a6a7fd92a90ee89de918403940edb48282815c834790bac6ee5d15c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8eef2e59569e2614ca36ca7da643006a32780738b80e44090b333f7e87b97e00.mp3', 966, '2026-09-13 11:18:46.797551', 'ff87bb5c12b4733ccfcce03655f8c5bc00c93101dc5a9b82f30c0cc70f897639', 'validated', '{"audio_key":"8eef2e59569e2614ca36ca7da643006a32780738b80e44090b333f7e87b97e00","entity_key":"lx_humor_irony_repair_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ff87bb5c12b4733ccfcce03655f8c5bc00c93101dc5a9b82f30c0cc70f897639","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8eef2e59569e2614ca36ca7da643006a32780738b80e44090b333f7e87b97e00.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_humor_irony_repair_02 -> audio/generated/de-DE/lexical/8eef2e59569e2614ca36ca7da643006a32780738b80e44090b333f7e87b97e00.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3501854d-6a86-58e7-ab71-df66a982f890', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_humor_irony_repair_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd6d519322a6a7fd92a90ee89de918403940edb48282815c834790bac6ee5d15c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('11ddf49b-ebdb-5cca-af07-0198803d64b4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3501854d-6a86-58e7-ab71-df66a982f890', 1), 'd6d519322a6a7fd92a90ee89de918403940edb48282815c834790bac6ee5d15c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8eef2e59569e2614ca36ca7da643006a32780738b80e44090b333f7e87b97e00.mp3', 966, '2026-09-13 11:18:46.797551', 'ff87bb5c12b4733ccfcce03655f8c5bc00c93101dc5a9b82f30c0cc70f897639', 'validated', '{"audio_key":"8eef2e59569e2614ca36ca7da643006a32780738b80e44090b333f7e87b97e00","entity_key":"wf_humor_irony_repair_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ff87bb5c12b4733ccfcce03655f8c5bc00c93101dc5a9b82f30c0cc70f897639","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8eef2e59569e2614ca36ca7da643006a32780738b80e44090b333f7e87b97e00.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_mediation_across_frameworks_02 -> audio/generated/de-DE/lexical/8ff57f4ea0a24d17a94be2cf76c96f074cf3934f5738a6b0cd06308ad01c1a6d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d96b62a1-d70d-52e5-bed5-b25ee4f6e09f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_mediation_across_frameworks_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5284a8e23f588b8149bd78bca4a03e802a42a04139fdf0c7a18f74f1b12340ac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('80d6f0b6-4bf9-575a-a28a-6acb4d61b181', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d96b62a1-d70d-52e5-bed5-b25ee4f6e09f', 1), '5284a8e23f588b8149bd78bca4a03e802a42a04139fdf0c7a18f74f1b12340ac',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8ff57f4ea0a24d17a94be2cf76c96f074cf3934f5738a6b0cd06308ad01c1a6d.mp3', 1384, '2026-09-13 14:04:52.004808', 'f8e9775d46ed82d9e7c53b911741df4738fee214cad08aa6889a081a2c6bdb11', 'validated', '{"audio_key":"8ff57f4ea0a24d17a94be2cf76c96f074cf3934f5738a6b0cd06308ad01c1a6d","entity_key":"lx_mediation_across_frameworks_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f8e9775d46ed82d9e7c53b911741df4738fee214cad08aa6889a081a2c6bdb11","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8ff57f4ea0a24d17a94be2cf76c96f074cf3934f5738a6b0cd06308ad01c1a6d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_mediation_across_frameworks_02 -> audio/generated/de-DE/lexical/8ff57f4ea0a24d17a94be2cf76c96f074cf3934f5738a6b0cd06308ad01c1a6d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('170217b3-f9a5-57a6-842a-bd631abc5fe3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_mediation_across_frameworks_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5284a8e23f588b8149bd78bca4a03e802a42a04139fdf0c7a18f74f1b12340ac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cc752dca-96d7-5ad1-8292-3ea933eda8e3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('170217b3-f9a5-57a6-842a-bd631abc5fe3', 1), '5284a8e23f588b8149bd78bca4a03e802a42a04139fdf0c7a18f74f1b12340ac',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8ff57f4ea0a24d17a94be2cf76c96f074cf3934f5738a6b0cd06308ad01c1a6d.mp3', 1384, '2026-09-13 14:04:52.004808', 'f8e9775d46ed82d9e7c53b911741df4738fee214cad08aa6889a081a2c6bdb11', 'validated', '{"audio_key":"8ff57f4ea0a24d17a94be2cf76c96f074cf3934f5738a6b0cd06308ad01c1a6d","entity_key":"wf_mediation_across_frameworks_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f8e9775d46ed82d9e7c53b911741df4738fee214cad08aa6889a081a2c6bdb11","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8ff57f4ea0a24d17a94be2cf76c96f074cf3934f5738a6b0cd06308ad01c1a6d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_definitional_disputes_02 -> audio/generated/de-DE/lexical/969c7de4973cdd6ce615a48193949d81b03accf9c6fc7e36f2f3091a642fe043.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d53510e7-a9ad-5526-ba0b-f00a195337cf', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_definitional_disputes_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3ab23c1c7b8dcd75b4c952fe06005f8644fba8819b4e0520dd027707225b8142'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ea5fbcc6-8241-5cf5-b4f6-1c9205ae8ac0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d53510e7-a9ad-5526-ba0b-f00a195337cf', 1), '3ab23c1c7b8dcd75b4c952fe06005f8644fba8819b4e0520dd027707225b8142',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/969c7de4973cdd6ce615a48193949d81b03accf9c6fc7e36f2f3091a642fe043.mp3', 1436, '2026-09-13 11:32:58.659757', 'de070cd6b211bceb78eafc3815ceefcfefaf1ca306746464dbe71e44d6c0b13c', 'validated', '{"audio_key":"969c7de4973cdd6ce615a48193949d81b03accf9c6fc7e36f2f3091a642fe043","entity_key":"lx_definitional_disputes_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"de070cd6b211bceb78eafc3815ceefcfefaf1ca306746464dbe71e44d6c0b13c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/969c7de4973cdd6ce615a48193949d81b03accf9c6fc7e36f2f3091a642fe043.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_definitional_disputes_02 -> audio/generated/de-DE/lexical/969c7de4973cdd6ce615a48193949d81b03accf9c6fc7e36f2f3091a642fe043.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('754ad9fd-22e6-5d8c-b686-8591a8f66ccf', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_definitional_disputes_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3ab23c1c7b8dcd75b4c952fe06005f8644fba8819b4e0520dd027707225b8142'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f3f8d858-7979-516a-8a61-384f16d70ea4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('754ad9fd-22e6-5d8c-b686-8591a8f66ccf', 1), '3ab23c1c7b8dcd75b4c952fe06005f8644fba8819b4e0520dd027707225b8142',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/969c7de4973cdd6ce615a48193949d81b03accf9c6fc7e36f2f3091a642fe043.mp3', 1436, '2026-09-13 11:32:58.659757', 'de070cd6b211bceb78eafc3815ceefcfefaf1ca306746464dbe71e44d6c0b13c', 'validated', '{"audio_key":"969c7de4973cdd6ce615a48193949d81b03accf9c6fc7e36f2f3091a642fe043","entity_key":"wf_definitional_disputes_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"de070cd6b211bceb78eafc3815ceefcfefaf1ca306746464dbe71e44d6c0b13c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/969c7de4973cdd6ce615a48193949d81b03accf9c6fc7e36f2f3091a642fe043.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_definitional_disputes_05 -> audio/generated/de-DE/lexical/989311fc83e40df68642d8f1c80ca3e07a340f1f0fb9b4047ffc40bfc46791aa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('73248053-a9ab-523d-abeb-2aaa319329e1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_definitional_disputes_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '91331a0e231f49df9be322526e5662c4b9402772450944211dfd0126ef2d22d8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c1af5726-d56a-57c3-acbc-5e4f690ae799', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('73248053-a9ab-523d-abeb-2aaa319329e1', 1), '91331a0e231f49df9be322526e5662c4b9402772450944211dfd0126ef2d22d8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/989311fc83e40df68642d8f1c80ca3e07a340f1f0fb9b4047ffc40bfc46791aa.mp3', 1097, '2026-09-13 14:04:52.608699', 'd5e1059ce4957cae27634c1d37eaf63d13cf85183cb3a1c965753890c69d0d06', 'validated', '{"audio_key":"989311fc83e40df68642d8f1c80ca3e07a340f1f0fb9b4047ffc40bfc46791aa","entity_key":"lx_definitional_disputes_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d5e1059ce4957cae27634c1d37eaf63d13cf85183cb3a1c965753890c69d0d06","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/989311fc83e40df68642d8f1c80ca3e07a340f1f0fb9b4047ffc40bfc46791aa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_definitional_disputes_05 -> audio/generated/de-DE/lexical/989311fc83e40df68642d8f1c80ca3e07a340f1f0fb9b4047ffc40bfc46791aa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d75c6e0a-95e1-53f3-9da5-9b98281ab5c4', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_definitional_disputes_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '91331a0e231f49df9be322526e5662c4b9402772450944211dfd0126ef2d22d8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a0ecdaf1-c53b-5bd0-837b-83c20f476d5e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d75c6e0a-95e1-53f3-9da5-9b98281ab5c4', 1), '91331a0e231f49df9be322526e5662c4b9402772450944211dfd0126ef2d22d8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/989311fc83e40df68642d8f1c80ca3e07a340f1f0fb9b4047ffc40bfc46791aa.mp3', 1097, '2026-09-13 14:04:52.608699', 'd5e1059ce4957cae27634c1d37eaf63d13cf85183cb3a1c965753890c69d0d06', 'validated', '{"audio_key":"989311fc83e40df68642d8f1c80ca3e07a340f1f0fb9b4047ffc40bfc46791aa","entity_key":"wf_definitional_disputes_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d5e1059ce4957cae27634c1d37eaf63d13cf85183cb3a1c965753890c69d0d06","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/989311fc83e40df68642d8f1c80ca3e07a340f1f0fb9b4047ffc40bfc46791aa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_and_implicature_03 -> audio/generated/de-DE/lexical/9b0c5335c93062fd57043fa919ec24e645ff0931fe5c46766711dd6f6d242c27.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d9f0f7cc-4e7f-55e4-ae4c-2cab8d8ba915', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_and_implicature_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8caddf469ba27a00ab18e7966d053a56dc67fb8c8782602523fab0d4420d82d8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1f1bc4f7-ba6e-575c-91e1-10c2514d8fe0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d9f0f7cc-4e7f-55e4-ae4c-2cab8d8ba915', 1), '8caddf469ba27a00ab18e7966d053a56dc67fb8c8782602523fab0d4420d82d8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9b0c5335c93062fd57043fa919ec24e645ff0931fe5c46766711dd6f6d242c27.mp3', 1201, '2026-09-13 09:41:01.368571', '7881b9b786f775a5d3646fa29f2f930ae8da292fec02692247c007449640ce05', 'validated', '{"audio_key":"9b0c5335c93062fd57043fa919ec24e645ff0931fe5c46766711dd6f6d242c27","entity_key":"lx_register_and_implicature_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7881b9b786f775a5d3646fa29f2f930ae8da292fec02692247c007449640ce05","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9b0c5335c93062fd57043fa919ec24e645ff0931fe5c46766711dd6f6d242c27.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_and_implicature_03 -> audio/generated/de-DE/lexical/9b0c5335c93062fd57043fa919ec24e645ff0931fe5c46766711dd6f6d242c27.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9c702f0f-babe-5223-b3db-0e340102902a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_and_implicature_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8caddf469ba27a00ab18e7966d053a56dc67fb8c8782602523fab0d4420d82d8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('869d4715-0b49-5d84-b335-03433ab474d8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9c702f0f-babe-5223-b3db-0e340102902a', 1), '8caddf469ba27a00ab18e7966d053a56dc67fb8c8782602523fab0d4420d82d8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9b0c5335c93062fd57043fa919ec24e645ff0931fe5c46766711dd6f6d242c27.mp3', 1201, '2026-09-13 09:41:01.368571', '7881b9b786f775a5d3646fa29f2f930ae8da292fec02692247c007449640ce05', 'validated', '{"audio_key":"9b0c5335c93062fd57043fa919ec24e645ff0931fe5c46766711dd6f6d242c27","entity_key":"wf_register_and_implicature_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7881b9b786f775a5d3646fa29f2f930ae8da292fec02692247c007449640ce05","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9b0c5335c93062fd57043fa919ec24e645ff0931fe5c46766711dd6f6d242c27.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_legal_administrative_nuance_03 -> audio/generated/de-DE/lexical/9d670a963b582648e2cb37b3ecb15e7bdd1077018ae96a7a8e629a2ade58bbb3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a32bf5d4-c8ce-5a07-b5e0-94b24b772ff3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_legal_administrative_nuance_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c2978dadf02da20cd636523e5fce728a6fe1a3cbcd3d493936a08b128438ec4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('854dfdfb-4ce8-5a46-977c-71b23b40f953', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a32bf5d4-c8ce-5a07-b5e0-94b24b772ff3', 1), '2c2978dadf02da20cd636523e5fce728a6fe1a3cbcd3d493936a08b128438ec4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9d670a963b582648e2cb37b3ecb15e7bdd1077018ae96a7a8e629a2ade58bbb3.mp3', 1097, '2026-09-13 10:21:26.233780', 'd1a80feac1b54487f6a1979fc5c21f2a49c4c258ba3f61c7f3069f0bb7cb7bae', 'validated', '{"audio_key":"9d670a963b582648e2cb37b3ecb15e7bdd1077018ae96a7a8e629a2ade58bbb3","entity_key":"lx_legal_administrative_nuance_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d1a80feac1b54487f6a1979fc5c21f2a49c4c258ba3f61c7f3069f0bb7cb7bae","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9d670a963b582648e2cb37b3ecb15e7bdd1077018ae96a7a8e629a2ade58bbb3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_legal_administrative_nuance_03 -> audio/generated/de-DE/lexical/9d670a963b582648e2cb37b3ecb15e7bdd1077018ae96a7a8e629a2ade58bbb3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8d25c52c-a0a4-5da2-9186-20995e9968a0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_legal_administrative_nuance_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c2978dadf02da20cd636523e5fce728a6fe1a3cbcd3d493936a08b128438ec4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7a80ffe2-d651-5e77-8ea0-96e4e6f03e3a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8d25c52c-a0a4-5da2-9186-20995e9968a0', 1), '2c2978dadf02da20cd636523e5fce728a6fe1a3cbcd3d493936a08b128438ec4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9d670a963b582648e2cb37b3ecb15e7bdd1077018ae96a7a8e629a2ade58bbb3.mp3', 1097, '2026-09-13 10:21:26.233780', 'd1a80feac1b54487f6a1979fc5c21f2a49c4c258ba3f61c7f3069f0bb7cb7bae', 'validated', '{"audio_key":"9d670a963b582648e2cb37b3ecb15e7bdd1077018ae96a7a8e629a2ade58bbb3","entity_key":"wf_legal_administrative_nuance_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d1a80feac1b54487f6a1979fc5c21f2a49c4c258ba3f61c7f3069f0bb7cb7bae","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9d670a963b582648e2cb37b3ecb15e7bdd1077018ae96a7a8e629a2ade58bbb3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_live_reformulation_06 -> audio/generated/de-DE/lexical/9e66f9633a98dfb755412d8814a87d30d34c14a853e11e73f4e748c4f06ee116.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6ff63d9b-a715-5be2-87fb-25cb6d786151', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_live_reformulation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ed298a7bc26a4f936475bbf5439d632981170608f6f81ab4e303290adf8a6e16'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('686c9070-a994-52f5-9bcb-831ede997bbb', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6ff63d9b-a715-5be2-87fb-25cb6d786151', 1), 'ed298a7bc26a4f936475bbf5439d632981170608f6f81ab4e303290adf8a6e16',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9e66f9633a98dfb755412d8814a87d30d34c14a853e11e73f4e748c4f06ee116.mp3', 1384, '2026-09-13 11:32:59.618130', '924528a4cff3756c17b8841729f12e2eace5fdc8709f0ce1d3ea1d3fa3b431ee', 'validated', '{"audio_key":"9e66f9633a98dfb755412d8814a87d30d34c14a853e11e73f4e748c4f06ee116","entity_key":"lx_live_reformulation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"924528a4cff3756c17b8841729f12e2eace5fdc8709f0ce1d3ea1d3fa3b431ee","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9e66f9633a98dfb755412d8814a87d30d34c14a853e11e73f4e748c4f06ee116.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_live_reformulation_06 -> audio/generated/de-DE/lexical/9e66f9633a98dfb755412d8814a87d30d34c14a853e11e73f4e748c4f06ee116.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('06b6b25b-e19b-56d4-af76-c35c5d023d5f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_live_reformulation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ed298a7bc26a4f936475bbf5439d632981170608f6f81ab4e303290adf8a6e16'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('43bfc27e-7700-5344-80bc-9e13b31ee02a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('06b6b25b-e19b-56d4-af76-c35c5d023d5f', 1), 'ed298a7bc26a4f936475bbf5439d632981170608f6f81ab4e303290adf8a6e16',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9e66f9633a98dfb755412d8814a87d30d34c14a853e11e73f4e748c4f06ee116.mp3', 1384, '2026-09-13 11:32:59.618130', '924528a4cff3756c17b8841729f12e2eace5fdc8709f0ce1d3ea1d3fa3b431ee', 'validated', '{"audio_key":"9e66f9633a98dfb755412d8814a87d30d34c14a853e11e73f4e748c4f06ee116","entity_key":"wf_live_reformulation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"924528a4cff3756c17b8841729f12e2eace5fdc8709f0ce1d3ea1d3fa3b431ee","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9e66f9633a98dfb755412d8814a87d30d34c14a853e11e73f4e748c4f06ee116.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_evidential_calibration_03 -> audio/generated/de-DE/lexical/a1453200f8c859f81b2a1653887e5459e25eb2186a3f838a7fcf939beba3fdf4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e3211aee-9da5-5625-b29c-42a14d0eb415', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_evidential_calibration_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '868fe9d309b89d23f6199c543256a6258f64a44cc743d89a68f5bba83ff7eac9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6dd57e61-4248-5f3e-a7a6-664978239ff0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e3211aee-9da5-5625-b29c-42a14d0eb415', 1), '868fe9d309b89d23f6199c543256a6258f64a44cc743d89a68f5bba83ff7eac9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a1453200f8c859f81b2a1653887e5459e25eb2186a3f838a7fcf939beba3fdf4.mp3', 1097, '2026-09-13 14:04:53.023554', '7dd8aff5d0a31b18ef2a32166a86ff9359f256a3f0823c6788cf095d8e5059c4', 'validated', '{"audio_key":"a1453200f8c859f81b2a1653887e5459e25eb2186a3f838a7fcf939beba3fdf4","entity_key":"lx_evidential_calibration_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7dd8aff5d0a31b18ef2a32166a86ff9359f256a3f0823c6788cf095d8e5059c4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a1453200f8c859f81b2a1653887e5459e25eb2186a3f838a7fcf939beba3fdf4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_evidential_calibration_03 -> audio/generated/de-DE/lexical/a1453200f8c859f81b2a1653887e5459e25eb2186a3f838a7fcf939beba3fdf4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ea67483e-ad9b-5ae0-93dc-65899b4bdebc', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_evidential_calibration_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '868fe9d309b89d23f6199c543256a6258f64a44cc743d89a68f5bba83ff7eac9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ae7483d7-7417-58d1-a9cf-df1e4e1bdf96', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ea67483e-ad9b-5ae0-93dc-65899b4bdebc', 1), '868fe9d309b89d23f6199c543256a6258f64a44cc743d89a68f5bba83ff7eac9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a1453200f8c859f81b2a1653887e5459e25eb2186a3f838a7fcf939beba3fdf4.mp3', 1097, '2026-09-13 14:04:53.023554', '7dd8aff5d0a31b18ef2a32166a86ff9359f256a3f0823c6788cf095d8e5059c4', 'validated', '{"audio_key":"a1453200f8c859f81b2a1653887e5459e25eb2186a3f838a7fcf939beba3fdf4","entity_key":"wf_evidential_calibration_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7dd8aff5d0a31b18ef2a32166a86ff9359f256a3f0823c6788cf095d8e5059c4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a1453200f8c859f81b2a1653887e5459e25eb2186a3f838a7fcf939beba3fdf4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_expert_briefing_capstone_02 -> audio/generated/de-DE/lexical/a21b581f0ca6f4811e2d7d9670fd406f6bcc8525e39fa16c7fac0b1ef0512b2e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c7e159c7-052a-59c9-adcd-d6d5c887a584', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_expert_briefing_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd4d48b1cd7825a11216a23b5f0be8c990a4e3d31c506a3f9b8b25e31ddc70d64'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3416bb46-218f-5f01-b8fd-0eee1b0bcd6b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c7e159c7-052a-59c9-adcd-d6d5c887a584', 1), 'd4d48b1cd7825a11216a23b5f0be8c990a4e3d31c506a3f9b8b25e31ddc70d64',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a21b581f0ca6f4811e2d7d9670fd406f6bcc8525e39fa16c7fac0b1ef0512b2e.mp3', 1201, '2026-09-13 09:41:03.252719', 'ae407a06df6fa39b9f33a274d34ef41b218c3fa436c8024419fcacd13d9d4c53', 'validated', '{"audio_key":"a21b581f0ca6f4811e2d7d9670fd406f6bcc8525e39fa16c7fac0b1ef0512b2e","entity_key":"lx_expert_briefing_capstone_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ae407a06df6fa39b9f33a274d34ef41b218c3fa436c8024419fcacd13d9d4c53","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a21b581f0ca6f4811e2d7d9670fd406f6bcc8525e39fa16c7fac0b1ef0512b2e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_expert_briefing_capstone_02 -> audio/generated/de-DE/lexical/a21b581f0ca6f4811e2d7d9670fd406f6bcc8525e39fa16c7fac0b1ef0512b2e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d6f8d701-cee4-5ca7-9185-355a289a0d76', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_expert_briefing_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd4d48b1cd7825a11216a23b5f0be8c990a4e3d31c506a3f9b8b25e31ddc70d64'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3737038e-0afe-5223-a1bb-e2674cb1250b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d6f8d701-cee4-5ca7-9185-355a289a0d76', 1), 'd4d48b1cd7825a11216a23b5f0be8c990a4e3d31c506a3f9b8b25e31ddc70d64',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a21b581f0ca6f4811e2d7d9670fd406f6bcc8525e39fa16c7fac0b1ef0512b2e.mp3', 1201, '2026-09-13 09:41:03.252719', 'ae407a06df6fa39b9f33a274d34ef41b218c3fa436c8024419fcacd13d9d4c53', 'validated', '{"audio_key":"a21b581f0ca6f4811e2d7d9670fd406f6bcc8525e39fa16c7fac0b1ef0512b2e","entity_key":"wf_expert_briefing_capstone_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ae407a06df6fa39b9f33a274d34ef41b218c3fa436c8024419fcacd13d9d4c53","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a21b581f0ca6f4811e2d7d9670fd406f6bcc8525e39fa16c7fac0b1ef0512b2e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_humor_irony_repair_06 -> audio/generated/de-DE/lexical/a285184a51a6d63030801444fe73b49bb6b648ba5a760e656e07d0d6cac74ce7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('13419c17-07b7-583a-b2f1-6c90713c8584', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_humor_irony_repair_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '38999327734a44a7584f9647e4ae5b05342d0d2d0081eaa88eae66c0eda69f8a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4a1b792c-52a5-55de-932a-59afaf1c6c41', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('13419c17-07b7-583a-b2f1-6c90713c8584', 1), '38999327734a44a7584f9647e4ae5b05342d0d2d0081eaa88eae66c0eda69f8a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a285184a51a6d63030801444fe73b49bb6b648ba5a760e656e07d0d6cac74ce7.mp3', 1253, '2026-09-13 14:04:53.618602', '1c6ae920bdc22c521dd98021ff531914d975134b3befacd97611e962bd8a7ad4', 'validated', '{"audio_key":"a285184a51a6d63030801444fe73b49bb6b648ba5a760e656e07d0d6cac74ce7","entity_key":"lx_humor_irony_repair_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1c6ae920bdc22c521dd98021ff531914d975134b3befacd97611e962bd8a7ad4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a285184a51a6d63030801444fe73b49bb6b648ba5a760e656e07d0d6cac74ce7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_humor_irony_repair_06 -> audio/generated/de-DE/lexical/a285184a51a6d63030801444fe73b49bb6b648ba5a760e656e07d0d6cac74ce7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('18e6128e-01f6-5175-9e3c-b12a7b280dc9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_humor_irony_repair_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '38999327734a44a7584f9647e4ae5b05342d0d2d0081eaa88eae66c0eda69f8a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('993e8be8-7320-5a05-a0e2-74116661a98c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('18e6128e-01f6-5175-9e3c-b12a7b280dc9', 1), '38999327734a44a7584f9647e4ae5b05342d0d2d0081eaa88eae66c0eda69f8a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a285184a51a6d63030801444fe73b49bb6b648ba5a760e656e07d0d6cac74ce7.mp3', 1253, '2026-09-13 14:04:53.618602', '1c6ae920bdc22c521dd98021ff531914d975134b3befacd97611e962bd8a7ad4', 'validated', '{"audio_key":"a285184a51a6d63030801444fe73b49bb6b648ba5a760e656e07d0d6cac74ce7","entity_key":"wf_humor_irony_repair_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1c6ae920bdc22c521dd98021ff531914d975134b3befacd97611e962bd8a7ad4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a285184a51a6d63030801444fe73b49bb6b648ba5a760e656e07d0d6cac74ce7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_mediation_across_frameworks_01 -> audio/generated/de-DE/lexical/aeb80b4d7aae15207e23a06d0c1b4d9093a5492c0edbea6edfcb3dedcbff98b0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9e08a407-b597-5bfa-9228-f90ffbe4998f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_mediation_across_frameworks_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0de9bf76b12098e823d83e3e90bc71ccb9223fb44fddb30612d9f8a1739d4c87'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('733df7e0-168b-564e-a2b5-1b93aed8eabd', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9e08a407-b597-5bfa-9228-f90ffbe4998f', 1), '0de9bf76b12098e823d83e3e90bc71ccb9223fb44fddb30612d9f8a1739d4c87',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/aeb80b4d7aae15207e23a06d0c1b4d9093a5492c0edbea6edfcb3dedcbff98b0.mp3', 1280, '2026-09-13 14:04:54.094336', '4df7f1f2e5ccce4c175f497dfac51062f9450ba22091be86f04a4864735ac2b2', 'validated', '{"audio_key":"aeb80b4d7aae15207e23a06d0c1b4d9093a5492c0edbea6edfcb3dedcbff98b0","entity_key":"lx_mediation_across_frameworks_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4df7f1f2e5ccce4c175f497dfac51062f9450ba22091be86f04a4864735ac2b2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/aeb80b4d7aae15207e23a06d0c1b4d9093a5492c0edbea6edfcb3dedcbff98b0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_mediation_across_frameworks_01 -> audio/generated/de-DE/lexical/aeb80b4d7aae15207e23a06d0c1b4d9093a5492c0edbea6edfcb3dedcbff98b0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fce5cb8d-3789-5c54-b23a-ba4f205c3482', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_mediation_across_frameworks_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0de9bf76b12098e823d83e3e90bc71ccb9223fb44fddb30612d9f8a1739d4c87'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1b16c9b8-7db3-5756-9fee-61fa01005617', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fce5cb8d-3789-5c54-b23a-ba4f205c3482', 1), '0de9bf76b12098e823d83e3e90bc71ccb9223fb44fddb30612d9f8a1739d4c87',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/aeb80b4d7aae15207e23a06d0c1b4d9093a5492c0edbea6edfcb3dedcbff98b0.mp3', 1280, '2026-09-13 14:04:54.094336', '4df7f1f2e5ccce4c175f497dfac51062f9450ba22091be86f04a4864735ac2b2', 'validated', '{"audio_key":"aeb80b4d7aae15207e23a06d0c1b4d9093a5492c0edbea6edfcb3dedcbff98b0","entity_key":"wf_mediation_across_frameworks_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4df7f1f2e5ccce4c175f497dfac51062f9450ba22091be86f04a4864735ac2b2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/aeb80b4d7aae15207e23a06d0c1b4d9093a5492c0edbea6edfcb3dedcbff98b0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_legal_administrative_nuance_02 -> audio/generated/de-DE/lexical/b8c9b23f12307b1c663a27f03904398e9fd715332035899f5645b1a689fab860.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a85bf450-bb37-5263-b1c4-13ab6de4a8e5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_legal_administrative_nuance_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '963ce885a0574a7d66c67301f920684c82412132da379e733d4d650e7229b93a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2d9ef754-4a3f-5ffc-b1a9-a1701bd541d0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a85bf450-bb37-5263-b1c4-13ab6de4a8e5', 1), '963ce885a0574a7d66c67301f920684c82412132da379e733d4d650e7229b93a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b8c9b23f12307b1c663a27f03904398e9fd715332035899f5645b1a689fab860.mp3', 1280, '2026-09-13 10:01:12.191034', '3442164691c8ddab4e1285abc2356107c3a055827889db640b83fa4d583da527', 'validated', '{"audio_key":"b8c9b23f12307b1c663a27f03904398e9fd715332035899f5645b1a689fab860","entity_key":"lx_legal_administrative_nuance_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3442164691c8ddab4e1285abc2356107c3a055827889db640b83fa4d583da527","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b8c9b23f12307b1c663a27f03904398e9fd715332035899f5645b1a689fab860.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_legal_administrative_nuance_02 -> audio/generated/de-DE/lexical/b8c9b23f12307b1c663a27f03904398e9fd715332035899f5645b1a689fab860.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6e000494-5464-5760-b538-caee5901223e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_legal_administrative_nuance_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '963ce885a0574a7d66c67301f920684c82412132da379e733d4d650e7229b93a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b530634e-de71-555f-97ad-9298deac28f7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6e000494-5464-5760-b538-caee5901223e', 1), '963ce885a0574a7d66c67301f920684c82412132da379e733d4d650e7229b93a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b8c9b23f12307b1c663a27f03904398e9fd715332035899f5645b1a689fab860.mp3', 1280, '2026-09-13 10:01:12.191034', '3442164691c8ddab4e1285abc2356107c3a055827889db640b83fa4d583da527', 'validated', '{"audio_key":"b8c9b23f12307b1c663a27f03904398e9fd715332035899f5645b1a689fab860","entity_key":"wf_legal_administrative_nuance_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3442164691c8ddab4e1285abc2356107c3a055827889db640b83fa4d583da527","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b8c9b23f12307b1c663a27f03904398e9fd715332035899f5645b1a689fab860.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_live_reformulation_04 -> audio/generated/de-DE/lexical/b8e5139d350557f9eea104fc76561186f61cc689a9f40c8a37ca35e6d31efb40.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ca48f5a5-29a7-5bde-98e4-811b9d9a9ea5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_live_reformulation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '078204af0c97c8660e67a9020399b7577c8c286eb2797299009d21431803c3cf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f0881be3-97b0-5f46-9ddf-fa43db17e938', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ca48f5a5-29a7-5bde-98e4-811b9d9a9ea5', 1), '078204af0c97c8660e67a9020399b7577c8c286eb2797299009d21431803c3cf',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b8e5139d350557f9eea104fc76561186f61cc689a9f40c8a37ca35e6d31efb40.mp3', 1332, '2026-09-13 10:01:12.235579', 'e17bc87cb7d89ff0e82faf870d769d98c6559caa5556ffe31aedaec81a0a5262', 'validated', '{"audio_key":"b8e5139d350557f9eea104fc76561186f61cc689a9f40c8a37ca35e6d31efb40","entity_key":"lx_live_reformulation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e17bc87cb7d89ff0e82faf870d769d98c6559caa5556ffe31aedaec81a0a5262","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b8e5139d350557f9eea104fc76561186f61cc689a9f40c8a37ca35e6d31efb40.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_live_reformulation_04 -> audio/generated/de-DE/lexical/b8e5139d350557f9eea104fc76561186f61cc689a9f40c8a37ca35e6d31efb40.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d8d83dde-caa0-5eb4-b65d-616e7d143d2d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_live_reformulation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '078204af0c97c8660e67a9020399b7577c8c286eb2797299009d21431803c3cf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4259ecb3-ed5a-5af3-98e4-caee0bbb1973', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d8d83dde-caa0-5eb4-b65d-616e7d143d2d', 1), '078204af0c97c8660e67a9020399b7577c8c286eb2797299009d21431803c3cf',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b8e5139d350557f9eea104fc76561186f61cc689a9f40c8a37ca35e6d31efb40.mp3', 1332, '2026-09-13 10:01:12.235579', 'e17bc87cb7d89ff0e82faf870d769d98c6559caa5556ffe31aedaec81a0a5262', 'validated', '{"audio_key":"b8e5139d350557f9eea104fc76561186f61cc689a9f40c8a37ca35e6d31efb40","entity_key":"wf_live_reformulation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e17bc87cb7d89ff0e82faf870d769d98c6559caa5556ffe31aedaec81a0a5262","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b8e5139d350557f9eea104fc76561186f61cc689a9f40c8a37ca35e6d31efb40.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_counterfactual_reasoning_03 -> audio/generated/de-DE/lexical/bf1e1513b94090a5b5503ee3748ce42a02acb70844fbe1ba47b5320a263f43c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6971ebc3-1893-5ce0-8041-1216a1be67bf', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_counterfactual_reasoning_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7cb73e69770b09e5502443e64bb599b7204bfd3e97419e7cb51bacba6c367422'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9d2277ea-ac63-58f5-a1c3-c1b2e57200ec', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6971ebc3-1893-5ce0-8041-1216a1be67bf', 1), '7cb73e69770b09e5502443e64bb599b7204bfd3e97419e7cb51bacba6c367422',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/bf1e1513b94090a5b5503ee3748ce42a02acb70844fbe1ba47b5320a263f43c8.mp3', 1253, '2026-09-13 14:04:54.614589', '72c71038214c7ca5addfd5ddf4feb2c5e74e33ea7fd0d116837229a80544388d', 'validated', '{"audio_key":"bf1e1513b94090a5b5503ee3748ce42a02acb70844fbe1ba47b5320a263f43c8","entity_key":"lx_counterfactual_reasoning_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"72c71038214c7ca5addfd5ddf4feb2c5e74e33ea7fd0d116837229a80544388d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/bf1e1513b94090a5b5503ee3748ce42a02acb70844fbe1ba47b5320a263f43c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_counterfactual_reasoning_03 -> audio/generated/de-DE/lexical/bf1e1513b94090a5b5503ee3748ce42a02acb70844fbe1ba47b5320a263f43c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('df0059cd-3680-5511-a795-20890e26aa79', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_counterfactual_reasoning_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7cb73e69770b09e5502443e64bb599b7204bfd3e97419e7cb51bacba6c367422'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('745664f9-fdcd-5d05-aa0b-eea2a3078f9d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('df0059cd-3680-5511-a795-20890e26aa79', 1), '7cb73e69770b09e5502443e64bb599b7204bfd3e97419e7cb51bacba6c367422',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/bf1e1513b94090a5b5503ee3748ce42a02acb70844fbe1ba47b5320a263f43c8.mp3', 1253, '2026-09-13 14:04:54.614589', '72c71038214c7ca5addfd5ddf4feb2c5e74e33ea7fd0d116837229a80544388d', 'validated', '{"audio_key":"bf1e1513b94090a5b5503ee3748ce42a02acb70844fbe1ba47b5320a263f43c8","entity_key":"wf_counterfactual_reasoning_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"72c71038214c7ca5addfd5ddf4feb2c5e74e33ea7fd0d116837229a80544388d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/bf1e1513b94090a5b5503ee3748ce42a02acb70844fbe1ba47b5320a263f43c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_counterfactual_reasoning_01 -> audio/generated/de-DE/lexical/c83a0fcb802af40005ee71cdf8c2ee9327c1601a112f26397161fafc9df25b74.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7ceb8ecc-d2ad-5203-ab79-84bfe401ff9d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_counterfactual_reasoning_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0303ebf38b406135c5c0d40f98ef4bb11e51cf64666a31dc8846c6dd0908257e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c2a5aaa4-0a65-587d-8644-70587fcfc450', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7ceb8ecc-d2ad-5203-ab79-84bfe401ff9d', 1), '0303ebf38b406135c5c0d40f98ef4bb11e51cf64666a31dc8846c6dd0908257e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c83a0fcb802af40005ee71cdf8c2ee9327c1601a112f26397161fafc9df25b74.mp3', 1149, '2026-09-13 11:01:18.578578', 'e23f19b5f8cb51fa15baa9f2749a04abd0a628d482dc47c1196ec481974522e8', 'validated', '{"audio_key":"c83a0fcb802af40005ee71cdf8c2ee9327c1601a112f26397161fafc9df25b74","entity_key":"lx_counterfactual_reasoning_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e23f19b5f8cb51fa15baa9f2749a04abd0a628d482dc47c1196ec481974522e8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c83a0fcb802af40005ee71cdf8c2ee9327c1601a112f26397161fafc9df25b74.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_counterfactual_reasoning_01 -> audio/generated/de-DE/lexical/c83a0fcb802af40005ee71cdf8c2ee9327c1601a112f26397161fafc9df25b74.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('37801730-4efc-5d89-833f-371f3f4dc3fc', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_counterfactual_reasoning_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0303ebf38b406135c5c0d40f98ef4bb11e51cf64666a31dc8846c6dd0908257e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('41f902f9-3af2-5f4e-8879-236dedec0ba6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('37801730-4efc-5d89-833f-371f3f4dc3fc', 1), '0303ebf38b406135c5c0d40f98ef4bb11e51cf64666a31dc8846c6dd0908257e',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c83a0fcb802af40005ee71cdf8c2ee9327c1601a112f26397161fafc9df25b74.mp3', 1149, '2026-09-13 11:01:18.578578', 'e23f19b5f8cb51fa15baa9f2749a04abd0a628d482dc47c1196ec481974522e8', 'validated', '{"audio_key":"c83a0fcb802af40005ee71cdf8c2ee9327c1601a112f26397161fafc9df25b74","entity_key":"wf_counterfactual_reasoning_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e23f19b5f8cb51fa15baa9f2749a04abd0a628d482dc47c1196ec481974522e8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c83a0fcb802af40005ee71cdf8c2ee9327c1601a112f26397161fafc9df25b74.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_counterfactual_reasoning_05 -> audio/generated/de-DE/lexical/c9030c2074e6e287339454473170bb8fcd5a83abe8f07786994bae090220aeb6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2ca0bac1-1f44-5cac-83b0-ae4e28759a5d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_counterfactual_reasoning_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4b1c077fce4402e4fd8f6bdf06633b933d313cfa6aaf585f2d452fe158c30b3d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7b149fd7-38c0-5318-9ee0-4f19b7fbe20a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2ca0bac1-1f44-5cac-83b0-ae4e28759a5d', 1), '4b1c077fce4402e4fd8f6bdf06633b933d313cfa6aaf585f2d452fe158c30b3d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c9030c2074e6e287339454473170bb8fcd5a83abe8f07786994bae090220aeb6.mp3', 1071, '2026-09-13 11:47:13.044298', 'a4a0ff1dff3c452a444a9aa502010f919d878f4b7b049b7ba8b41e15c4517ecd', 'validated', '{"audio_key":"c9030c2074e6e287339454473170bb8fcd5a83abe8f07786994bae090220aeb6","entity_key":"lx_counterfactual_reasoning_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a4a0ff1dff3c452a444a9aa502010f919d878f4b7b049b7ba8b41e15c4517ecd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c9030c2074e6e287339454473170bb8fcd5a83abe8f07786994bae090220aeb6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_counterfactual_reasoning_05 -> audio/generated/de-DE/lexical/c9030c2074e6e287339454473170bb8fcd5a83abe8f07786994bae090220aeb6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8e968268-620e-5eb8-8056-20c7cc69530f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_counterfactual_reasoning_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4b1c077fce4402e4fd8f6bdf06633b933d313cfa6aaf585f2d452fe158c30b3d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2597234c-9bb2-5766-8766-e7b1ed97f3a7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8e968268-620e-5eb8-8056-20c7cc69530f', 1), '4b1c077fce4402e4fd8f6bdf06633b933d313cfa6aaf585f2d452fe158c30b3d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c9030c2074e6e287339454473170bb8fcd5a83abe8f07786994bae090220aeb6.mp3', 1071, '2026-09-13 11:47:13.044298', 'a4a0ff1dff3c452a444a9aa502010f919d878f4b7b049b7ba8b41e15c4517ecd', 'validated', '{"audio_key":"c9030c2074e6e287339454473170bb8fcd5a83abe8f07786994bae090220aeb6","entity_key":"wf_counterfactual_reasoning_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a4a0ff1dff3c452a444a9aa502010f919d878f4b7b049b7ba8b41e15c4517ecd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c9030c2074e6e287339454473170bb8fcd5a83abe8f07786994bae090220aeb6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_counterfactual_reasoning_02 -> audio/generated/de-DE/lexical/c9f07b03a2b4d6de9ba2fcfc5d1cf73735a06d0324213f265c864ba4a6fdff0a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c51c2eef-ad85-53c2-99e8-b353519ae566', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_counterfactual_reasoning_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2082d9d4d39ab99e8ee8ab4e48bc854f9a24fc75c46dd227f893ac26055974db'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('98fa78c1-b50b-54e1-949b-ab45234faedb', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c51c2eef-ad85-53c2-99e8-b353519ae566', 1), '2082d9d4d39ab99e8ee8ab4e48bc854f9a24fc75c46dd227f893ac26055974db',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c9f07b03a2b4d6de9ba2fcfc5d1cf73735a06d0324213f265c864ba4a6fdff0a.mp3', 1332, '2026-09-13 14:04:55.122658', '118f9cae646d8a80c9e6770c6d09e351bfd61d69c20f57776b2b9024c0a7b2a1', 'validated', '{"audio_key":"c9f07b03a2b4d6de9ba2fcfc5d1cf73735a06d0324213f265c864ba4a6fdff0a","entity_key":"lx_counterfactual_reasoning_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"118f9cae646d8a80c9e6770c6d09e351bfd61d69c20f57776b2b9024c0a7b2a1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c9f07b03a2b4d6de9ba2fcfc5d1cf73735a06d0324213f265c864ba4a6fdff0a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_counterfactual_reasoning_02 -> audio/generated/de-DE/lexical/c9f07b03a2b4d6de9ba2fcfc5d1cf73735a06d0324213f265c864ba4a6fdff0a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8e410064-3790-5cb2-97e1-f7acaefbeabf', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_counterfactual_reasoning_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2082d9d4d39ab99e8ee8ab4e48bc854f9a24fc75c46dd227f893ac26055974db'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3f2530e8-b9bf-5ecd-b65d-5e9b7c68b4b6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8e410064-3790-5cb2-97e1-f7acaefbeabf', 1), '2082d9d4d39ab99e8ee8ab4e48bc854f9a24fc75c46dd227f893ac26055974db',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c9f07b03a2b4d6de9ba2fcfc5d1cf73735a06d0324213f265c864ba4a6fdff0a.mp3', 1332, '2026-09-13 14:04:55.122658', '118f9cae646d8a80c9e6770c6d09e351bfd61d69c20f57776b2b9024c0a7b2a1', 'validated', '{"audio_key":"c9f07b03a2b4d6de9ba2fcfc5d1cf73735a06d0324213f265c864ba4a6fdff0a","entity_key":"wf_counterfactual_reasoning_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"118f9cae646d8a80c9e6770c6d09e351bfd61d69c20f57776b2b9024c0a7b2a1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c9f07b03a2b4d6de9ba2fcfc5d1cf73735a06d0324213f265c864ba4a6fdff0a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_expert_briefing_capstone_04 -> audio/generated/de-DE/lexical/cb94d483b8257f4e267f8f84f08a9acc79824707bd2af95b2cf852a3846c5150.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f38e229e-4c43-5ca8-bacd-56a078c9e915', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_expert_briefing_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '239b0ca1cbed7a6edf49ac79acefbdb77c1b0cfed1703f3a6396d414ca7db868'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f70cf655-7736-53b6-bef3-1deb3c1f1518', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f38e229e-4c43-5ca8-bacd-56a078c9e915', 1), '239b0ca1cbed7a6edf49ac79acefbdb77c1b0cfed1703f3a6396d414ca7db868',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/cb94d483b8257f4e267f8f84f08a9acc79824707bd2af95b2cf852a3846c5150.mp3', 1149, '2026-09-13 11:33:02.477397', '9624d41690e565d710aa1bb19eea6253ebab8eafc468b3bb316369415f913c80', 'validated', '{"audio_key":"cb94d483b8257f4e267f8f84f08a9acc79824707bd2af95b2cf852a3846c5150","entity_key":"lx_expert_briefing_capstone_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9624d41690e565d710aa1bb19eea6253ebab8eafc468b3bb316369415f913c80","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/cb94d483b8257f4e267f8f84f08a9acc79824707bd2af95b2cf852a3846c5150.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_expert_briefing_capstone_04 -> audio/generated/de-DE/lexical/cb94d483b8257f4e267f8f84f08a9acc79824707bd2af95b2cf852a3846c5150.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9c4e92e8-b3f6-50b9-9597-5de81cec77c9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_expert_briefing_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '239b0ca1cbed7a6edf49ac79acefbdb77c1b0cfed1703f3a6396d414ca7db868'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b4457f35-1ffd-5443-9476-cd6bdfcc2857', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9c4e92e8-b3f6-50b9-9597-5de81cec77c9', 1), '239b0ca1cbed7a6edf49ac79acefbdb77c1b0cfed1703f3a6396d414ca7db868',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/cb94d483b8257f4e267f8f84f08a9acc79824707bd2af95b2cf852a3846c5150.mp3', 1149, '2026-09-13 11:33:02.477397', '9624d41690e565d710aa1bb19eea6253ebab8eafc468b3bb316369415f913c80', 'validated', '{"audio_key":"cb94d483b8257f4e267f8f84f08a9acc79824707bd2af95b2cf852a3846c5150","entity_key":"wf_expert_briefing_capstone_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9624d41690e565d710aa1bb19eea6253ebab8eafc468b3bb316369415f913c80","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/cb94d483b8257f4e267f8f84f08a9acc79824707bd2af95b2cf852a3846c5150.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_definitional_disputes_01 -> audio/generated/de-DE/lexical/ccaea04946d1d2c50e21e736dd6885b6affe826c5d658337db601ab3dbf98803.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('52a00a87-2642-50b0-ad84-a74f66019900', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_definitional_disputes_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe9caefdb15629227e5cf1fac06468fce22200419066ef0b83ced3bee9acadc7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9a9a34b0-2cf3-525b-ae8f-7b4c79ec9e8c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('52a00a87-2642-50b0-ad84-a74f66019900', 1), 'fe9caefdb15629227e5cf1fac06468fce22200419066ef0b83ced3bee9acadc7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ccaea04946d1d2c50e21e736dd6885b6affe826c5d658337db601ab3dbf98803.mp3', 1436, '2026-09-13 11:33:03.024373', '28dcfb1af96a32809d8db575502c8402da97e99ae5fad81f2a71da4f35d1a6fd', 'validated', '{"audio_key":"ccaea04946d1d2c50e21e736dd6885b6affe826c5d658337db601ab3dbf98803","entity_key":"lx_definitional_disputes_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"28dcfb1af96a32809d8db575502c8402da97e99ae5fad81f2a71da4f35d1a6fd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ccaea04946d1d2c50e21e736dd6885b6affe826c5d658337db601ab3dbf98803.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_definitional_disputes_01 -> audio/generated/de-DE/lexical/ccaea04946d1d2c50e21e736dd6885b6affe826c5d658337db601ab3dbf98803.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('82da869b-7c65-5594-bfbe-db2c6258c382', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_definitional_disputes_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe9caefdb15629227e5cf1fac06468fce22200419066ef0b83ced3bee9acadc7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d217f8fc-a28a-56d4-a3fb-df221f6a9ff1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('82da869b-7c65-5594-bfbe-db2c6258c382', 1), 'fe9caefdb15629227e5cf1fac06468fce22200419066ef0b83ced3bee9acadc7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ccaea04946d1d2c50e21e736dd6885b6affe826c5d658337db601ab3dbf98803.mp3', 1436, '2026-09-13 11:33:03.024373', '28dcfb1af96a32809d8db575502c8402da97e99ae5fad81f2a71da4f35d1a6fd', 'validated', '{"audio_key":"ccaea04946d1d2c50e21e736dd6885b6affe826c5d658337db601ab3dbf98803","entity_key":"wf_definitional_disputes_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"28dcfb1af96a32809d8db575502c8402da97e99ae5fad81f2a71da4f35d1a6fd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ccaea04946d1d2c50e21e736dd6885b6affe826c5d658337db601ab3dbf98803.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_evidential_calibration_02 -> audio/generated/de-DE/lexical/cf7501e7e4edcb250eb58a3563f30f40385ced4d9552db26f782c8d7829462c0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('263a0ab0-3727-5035-964f-ccb02e77d3f6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_evidential_calibration_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a961215512d9c0eeb69703cfbf18f97a09a7de3ef32f24b615c2f1ed3f7e00be'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('34d927e0-c51d-5789-adfd-b578390dccbf', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('263a0ab0-3727-5035-964f-ccb02e77d3f6', 1), 'a961215512d9c0eeb69703cfbf18f97a09a7de3ef32f24b615c2f1ed3f7e00be',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/cf7501e7e4edcb250eb58a3563f30f40385ced4d9552db26f782c8d7829462c0.mp3', 966, '2026-09-13 14:04:55.597568', 'd50a3265a721026ae9d94b0c34541fa06ec30e92aad6cec2cd76405047caa10b', 'validated', '{"audio_key":"cf7501e7e4edcb250eb58a3563f30f40385ced4d9552db26f782c8d7829462c0","entity_key":"lx_evidential_calibration_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d50a3265a721026ae9d94b0c34541fa06ec30e92aad6cec2cd76405047caa10b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/cf7501e7e4edcb250eb58a3563f30f40385ced4d9552db26f782c8d7829462c0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_evidential_calibration_02 -> audio/generated/de-DE/lexical/cf7501e7e4edcb250eb58a3563f30f40385ced4d9552db26f782c8d7829462c0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ef31f632-17fd-512b-b8f5-91b656685071', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_evidential_calibration_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a961215512d9c0eeb69703cfbf18f97a09a7de3ef32f24b615c2f1ed3f7e00be'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('99af04e2-0bea-5fe7-9a8a-6eda6c733406', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ef31f632-17fd-512b-b8f5-91b656685071', 1), 'a961215512d9c0eeb69703cfbf18f97a09a7de3ef32f24b615c2f1ed3f7e00be',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/cf7501e7e4edcb250eb58a3563f30f40385ced4d9552db26f782c8d7829462c0.mp3', 966, '2026-09-13 14:04:55.597568', 'd50a3265a721026ae9d94b0c34541fa06ec30e92aad6cec2cd76405047caa10b', 'validated', '{"audio_key":"cf7501e7e4edcb250eb58a3563f30f40385ced4d9552db26f782c8d7829462c0","entity_key":"wf_evidential_calibration_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d50a3265a721026ae9d94b0c34541fa06ec30e92aad6cec2cd76405047caa10b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/cf7501e7e4edcb250eb58a3563f30f40385ced4d9552db26f782c8d7829462c0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_compressed_synthesis_02 -> audio/generated/de-DE/lexical/f2478056b7d10f6dbdb38ad381235faa25fd78a5380a5f2aa75e561056a9153e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('27348032-7ca0-5d14-9599-fe032e74fafc', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_compressed_synthesis_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ebf519e8c1f0728e6db816c4c0e9142ee7478285274ccaaf0e9250022f898699'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5e230610-0895-5e02-95f3-46645c5bd411', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('27348032-7ca0-5d14-9599-fe032e74fafc', 1), 'ebf519e8c1f0728e6db816c4c0e9142ee7478285274ccaaf0e9250022f898699',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f2478056b7d10f6dbdb38ad381235faa25fd78a5380a5f2aa75e561056a9153e.mp3', 1201, '2026-09-13 11:33:04.931771', 'f49213a3ed39f79899ea5abe80dd6bb73c98d8206e65c8f6be00922c920685a1', 'validated', '{"audio_key":"f2478056b7d10f6dbdb38ad381235faa25fd78a5380a5f2aa75e561056a9153e","entity_key":"lx_compressed_synthesis_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f49213a3ed39f79899ea5abe80dd6bb73c98d8206e65c8f6be00922c920685a1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f2478056b7d10f6dbdb38ad381235faa25fd78a5380a5f2aa75e561056a9153e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_compressed_synthesis_02 -> audio/generated/de-DE/lexical/f2478056b7d10f6dbdb38ad381235faa25fd78a5380a5f2aa75e561056a9153e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f2e35917-ee90-5db8-8491-8c87355b7e0f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_compressed_synthesis_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ebf519e8c1f0728e6db816c4c0e9142ee7478285274ccaaf0e9250022f898699'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ca3fb7ea-12e2-50ad-b6ce-3f08f047de3c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f2e35917-ee90-5db8-8491-8c87355b7e0f', 1), 'ebf519e8c1f0728e6db816c4c0e9142ee7478285274ccaaf0e9250022f898699',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f2478056b7d10f6dbdb38ad381235faa25fd78a5380a5f2aa75e561056a9153e.mp3', 1201, '2026-09-13 11:33:04.931771', 'f49213a3ed39f79899ea5abe80dd6bb73c98d8206e65c8f6be00922c920685a1', 'validated', '{"audio_key":"f2478056b7d10f6dbdb38ad381235faa25fd78a5380a5f2aa75e561056a9153e","entity_key":"wf_compressed_synthesis_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f49213a3ed39f79899ea5abe80dd6bb73c98d8206e65c8f6be00922c920685a1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f2478056b7d10f6dbdb38ad381235faa25fd78a5380a5f2aa75e561056a9153e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_definitional_disputes_04 -> audio/generated/de-DE/lexical/f9226b5864070501c1aa7e9dd7547391d79a5116c75ba5e25c0207b38706e346.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('df5672ef-9adc-52d8-a73f-7293c17c3c69', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_definitional_disputes_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7c6c30fb6fd96c3965c7ed57162b95e60d8470e4ae591d9cd1069945fbda00e1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5a7c376c-fcf7-5999-b848-40d920da8c0d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('df5672ef-9adc-52d8-a73f-7293c17c3c69', 1), '7c6c30fb6fd96c3965c7ed57162b95e60d8470e4ae591d9cd1069945fbda00e1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f9226b5864070501c1aa7e9dd7547391d79a5116c75ba5e25c0207b38706e346.mp3', 1097, '2026-09-13 14:04:56.140098', '02a7eac88a1374dbefa17eb92296196438cae1a63e7b15bd6d76fbef7e13f85a', 'validated', '{"audio_key":"f9226b5864070501c1aa7e9dd7547391d79a5116c75ba5e25c0207b38706e346","entity_key":"lx_definitional_disputes_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"02a7eac88a1374dbefa17eb92296196438cae1a63e7b15bd6d76fbef7e13f85a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f9226b5864070501c1aa7e9dd7547391d79a5116c75ba5e25c0207b38706e346.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_definitional_disputes_04 -> audio/generated/de-DE/lexical/f9226b5864070501c1aa7e9dd7547391d79a5116c75ba5e25c0207b38706e346.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7e05dcc1-353a-5b7e-a77c-9a545a155b2f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_definitional_disputes_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7c6c30fb6fd96c3965c7ed57162b95e60d8470e4ae591d9cd1069945fbda00e1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c34bced9-3c81-595b-b52c-df1ba792cf92', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7e05dcc1-353a-5b7e-a77c-9a545a155b2f', 1), '7c6c30fb6fd96c3965c7ed57162b95e60d8470e4ae591d9cd1069945fbda00e1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f9226b5864070501c1aa7e9dd7547391d79a5116c75ba5e25c0207b38706e346.mp3', 1097, '2026-09-13 14:04:56.140098', '02a7eac88a1374dbefa17eb92296196438cae1a63e7b15bd6d76fbef7e13f85a', 'validated', '{"audio_key":"f9226b5864070501c1aa7e9dd7547391d79a5116c75ba5e25c0207b38706e346","entity_key":"wf_definitional_disputes_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"02a7eac88a1374dbefa17eb92296196438cae1a63e7b15bd6d76fbef7e13f85a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f9226b5864070501c1aa7e9dd7547391d79a5116c75ba5e25c0207b38706e346.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_humor_irony_repair_03 -> audio/generated/de-DE/lexical/f9f92d32c81de4d8f58a6abae6bca0462ec5829df6c2f2528d5ef8e5e4e7c813.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('55ca057d-4fff-556a-85a7-5d1fd2f72ad3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_humor_irony_repair_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec3609f47300b6b510b59aea05b0643ba70938375035c2608c437669e2bae62a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f905ca58-4aa4-5cd7-8df0-fedbffa44b3d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('55ca057d-4fff-556a-85a7-5d1fd2f72ad3', 1), 'ec3609f47300b6b510b59aea05b0643ba70938375035c2608c437669e2bae62a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f9f92d32c81de4d8f58a6abae6bca0462ec5829df6c2f2528d5ef8e5e4e7c813.mp3', 1488, '2026-09-13 06:17:47.647624', '07237926f6b389608b038b24307f13b1f81e7c3a4008d9fe7b0b272b809e4010', 'validated', '{"audio_key":"f9f92d32c81de4d8f58a6abae6bca0462ec5829df6c2f2528d5ef8e5e4e7c813","entity_key":"lx_humor_irony_repair_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"07237926f6b389608b038b24307f13b1f81e7c3a4008d9fe7b0b272b809e4010","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f9f92d32c81de4d8f58a6abae6bca0462ec5829df6c2f2528d5ef8e5e4e7c813.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_humor_irony_repair_03 -> audio/generated/de-DE/lexical/f9f92d32c81de4d8f58a6abae6bca0462ec5829df6c2f2528d5ef8e5e4e7c813.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('69879c6e-a3a1-52b5-acdd-c76bbcfbdd07', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_humor_irony_repair_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec3609f47300b6b510b59aea05b0643ba70938375035c2608c437669e2bae62a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('09d2eea5-fe98-5cd6-8e56-63d1a0399558', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('69879c6e-a3a1-52b5-acdd-c76bbcfbdd07', 1), 'ec3609f47300b6b510b59aea05b0643ba70938375035c2608c437669e2bae62a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f9f92d32c81de4d8f58a6abae6bca0462ec5829df6c2f2528d5ef8e5e4e7c813.mp3', 1488, '2026-09-13 06:17:47.647624', '07237926f6b389608b038b24307f13b1f81e7c3a4008d9fe7b0b272b809e4010', 'validated', '{"audio_key":"f9f92d32c81de4d8f58a6abae6bca0462ec5829df6c2f2528d5ef8e5e4e7c813","entity_key":"wf_humor_irony_repair_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"07237926f6b389608b038b24307f13b1f81e7c3a4008d9fe7b0b272b809e4010","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f9f92d32c81de4d8f58a6abae6bca0462ec5829df6c2f2528d5ef8e5e4e7c813.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_humor_irony_repair_01 -> audio/generated/de-DE/lexical/fd85da2d1113bf6215dada8640d206dd2e4c36e5ead65bf8fbff71e2128bacb6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4a94dc04-c48f-56c1-8144-32d8f5d2fc97', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_humor_irony_repair_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3ab459eea2b3514567bfeaf001bba6f1aebedfee4cc3121abbd4df9a1315c8ce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('76f690f3-8ed2-57a5-9136-75171fb19c13', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4a94dc04-c48f-56c1-8144-32d8f5d2fc97', 1), '3ab459eea2b3514567bfeaf001bba6f1aebedfee4cc3121abbd4df9a1315c8ce',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fd85da2d1113bf6215dada8640d206dd2e4c36e5ead65bf8fbff71e2128bacb6.mp3', 1515, '2026-09-13 11:18:58.156972', '9a0a42bd2cc728b8d43738b392bb125507ee57e1211d8c6d55d36423c3e5dbb3', 'validated', '{"audio_key":"fd85da2d1113bf6215dada8640d206dd2e4c36e5ead65bf8fbff71e2128bacb6","entity_key":"lx_humor_irony_repair_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9a0a42bd2cc728b8d43738b392bb125507ee57e1211d8c6d55d36423c3e5dbb3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fd85da2d1113bf6215dada8640d206dd2e4c36e5ead65bf8fbff71e2128bacb6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_humor_irony_repair_01 -> audio/generated/de-DE/lexical/fd85da2d1113bf6215dada8640d206dd2e4c36e5ead65bf8fbff71e2128bacb6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('33ee3b30-d7ff-533c-92af-2d858f2408b2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_humor_irony_repair_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3ab459eea2b3514567bfeaf001bba6f1aebedfee4cc3121abbd4df9a1315c8ce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4c4fb7d8-ec12-5c05-b147-2ad10177140e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('33ee3b30-d7ff-533c-92af-2d858f2408b2', 1), '3ab459eea2b3514567bfeaf001bba6f1aebedfee4cc3121abbd4df9a1315c8ce',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fd85da2d1113bf6215dada8640d206dd2e4c36e5ead65bf8fbff71e2128bacb6.mp3', 1515, '2026-09-13 11:18:58.156972', '9a0a42bd2cc728b8d43738b392bb125507ee57e1211d8c6d55d36423c3e5dbb3', 'validated', '{"audio_key":"fd85da2d1113bf6215dada8640d206dd2e4c36e5ead65bf8fbff71e2128bacb6","entity_key":"wf_humor_irony_repair_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9a0a42bd2cc728b8d43738b392bb125507ee57e1211d8c6d55d36423c3e5dbb3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fd85da2d1113bf6215dada8640d206dd2e4c36e5ead65bf8fbff71e2128bacb6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_definitional_disputes_06 -> audio/generated/de-DE/lexical/fe5e8f2620758c8488886d37e2fdd588b35149c32e61dc43d13d1aa94b4d9506.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d5a9a9f9-e8ad-5af7-876a-920bd6389e01', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_definitional_disputes_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '369d41f0f0289a30a4aabc7b73767e27fa4520dc497d9ea1e8eea39d53fa41f3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3fa7ea77-f9ba-59a6-b2b5-e42fe6219376', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d5a9a9f9-e8ad-5af7-876a-920bd6389e01', 1), '369d41f0f0289a30a4aabc7b73767e27fa4520dc497d9ea1e8eea39d53fa41f3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fe5e8f2620758c8488886d37e2fdd588b35149c32e61dc43d13d1aa94b4d9506.mp3', 1802, '2026-09-13 14:04:56.868315', '442e06f3f3a3fd36bf7965c506cd325164a528bcf70ba0578876e72d04a2a1bc', 'validated', '{"audio_key":"fe5e8f2620758c8488886d37e2fdd588b35149c32e61dc43d13d1aa94b4d9506","entity_key":"lx_definitional_disputes_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"442e06f3f3a3fd36bf7965c506cd325164a528bcf70ba0578876e72d04a2a1bc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fe5e8f2620758c8488886d37e2fdd588b35149c32e61dc43d13d1aa94b4d9506.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_definitional_disputes_06 -> audio/generated/de-DE/lexical/fe5e8f2620758c8488886d37e2fdd588b35149c32e61dc43d13d1aa94b4d9506.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0af9f171-b29b-5a13-a5f7-03423aba4e43', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_definitional_disputes_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '369d41f0f0289a30a4aabc7b73767e27fa4520dc497d9ea1e8eea39d53fa41f3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('740cfd3c-a597-530e-8034-07357f261679', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0af9f171-b29b-5a13-a5f7-03423aba4e43', 1), '369d41f0f0289a30a4aabc7b73767e27fa4520dc497d9ea1e8eea39d53fa41f3',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fe5e8f2620758c8488886d37e2fdd588b35149c32e61dc43d13d1aa94b4d9506.mp3', 1802, '2026-09-13 14:04:56.868315', '442e06f3f3a3fd36bf7965c506cd325164a528bcf70ba0578876e72d04a2a1bc', 'validated', '{"audio_key":"fe5e8f2620758c8488886d37e2fdd588b35149c32e61dc43d13d1aa94b4d9506","entity_key":"wf_definitional_disputes_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"442e06f3f3a3fd36bf7965c506cd325164a528bcf70ba0578876e72d04a2a1bc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fe5e8f2620758c8488886d37e2fdd588b35149c32e61dc43d13d1aa94b4d9506.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_expert_briefing_capstone_03 -> audio/generated/de-DE/lexical/fffe008c9a1b5afe6456c81543c23cd215f5952f8c6ae9556d643c65bc407606.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('91235ea8-ac08-5a6b-941e-ba883c1d90c6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_expert_briefing_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '05bf956cc4078c26ce0c475c71d7eb9c5aeaba987026504b8ba796202435f59f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('999b4c91-ebe2-546b-8565-18080c14a4f6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('91235ea8-ac08-5a6b-941e-ba883c1d90c6', 1), '05bf956cc4078c26ce0c475c71d7eb9c5aeaba987026504b8ba796202435f59f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fffe008c9a1b5afe6456c81543c23cd215f5952f8c6ae9556d643c65bc407606.mp3', 1071, '2026-09-13 09:41:11.277574', '107161d001d0bcdbb688e5bb7d90b066c0c485c6aa6be8c9255f7a5685b2122e', 'validated', '{"audio_key":"fffe008c9a1b5afe6456c81543c23cd215f5952f8c6ae9556d643c65bc407606","entity_key":"lx_expert_briefing_capstone_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"107161d001d0bcdbb688e5bb7d90b066c0c485c6aa6be8c9255f7a5685b2122e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fffe008c9a1b5afe6456c81543c23cd215f5952f8c6ae9556d643c65bc407606.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_expert_briefing_capstone_03 -> audio/generated/de-DE/lexical/fffe008c9a1b5afe6456c81543c23cd215f5952f8c6ae9556d643c65bc407606.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6ade2623-e31d-54e0-ae83-d94ffd7ab6a5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_expert_briefing_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '05bf956cc4078c26ce0c475c71d7eb9c5aeaba987026504b8ba796202435f59f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('64d0d426-9100-5d78-b1de-8864732b2fc3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6ade2623-e31d-54e0-ae83-d94ffd7ab6a5', 1), '05bf956cc4078c26ce0c475c71d7eb9c5aeaba987026504b8ba796202435f59f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fffe008c9a1b5afe6456c81543c23cd215f5952f8c6ae9556d643c65bc407606.mp3', 1071, '2026-09-13 09:41:11.277574', '107161d001d0bcdbb688e5bb7d90b066c0c485c6aa6be8c9255f7a5685b2122e', 'validated', '{"audio_key":"fffe008c9a1b5afe6456c81543c23cd215f5952f8c6ae9556d643c65bc407606","entity_key":"wf_expert_briefing_capstone_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"107161d001d0bcdbb688e5bb7d90b066c0c485c6aa6be8c9255f7a5685b2122e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fffe008c9a1b5afe6456c81543c23cd215f5952f8c6ae9556d643c65bc407606.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_mediation_across_frameworks_01 -> audio/generated/de-DE/utterances/045c4df55df3f59988ee4e6572a4487a4e795011b890e50e696c2ea8b30309ad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('03b66d0d-aab8-50ea-8f69-80a5a8d3a661', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_mediation_across_frameworks_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '833a04b3a415f42a22b43a2dff4683488926271d0e47a35d427956b2666a34b8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('46a92ada-ead6-5f43-b522-60d0a9ae0681', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('03b66d0d-aab8-50ea-8f69-80a5a8d3a661', 1), '833a04b3a415f42a22b43a2dff4683488926271d0e47a35d427956b2666a34b8',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/045c4df55df3f59988ee4e6572a4487a4e795011b890e50e696c2ea8b30309ad.mp3', 5381, '2026-09-13 14:04:57.771152', '823e32174e346ffdf4cc46723381e6518a24b087e6106266e0efe6cf1cf0b0d7', 'validated', '{"audio_key":"045c4df55df3f59988ee4e6572a4487a4e795011b890e50e696c2ea8b30309ad","entity_key":"u_mediation_across_frameworks_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"823e32174e346ffdf4cc46723381e6518a24b087e6106266e0efe6cf1cf0b0d7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/045c4df55df3f59988ee4e6572a4487a4e795011b890e50e696c2ea8b30309ad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_mediation_across_frameworks_01_listen -> audio/generated/de-DE/utterances/045c4df55df3f59988ee4e6572a4487a4e795011b890e50e696c2ea8b30309ad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('60407b50-320c-5dd9-b0a5-a12aebccb2a9', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_mediation_across_frameworks_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '833a04b3a415f42a22b43a2dff4683488926271d0e47a35d427956b2666a34b8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('46641562-810a-5b98-bb93-86ba5758c86c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('60407b50-320c-5dd9-b0a5-a12aebccb2a9', 1), '833a04b3a415f42a22b43a2dff4683488926271d0e47a35d427956b2666a34b8',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/045c4df55df3f59988ee4e6572a4487a4e795011b890e50e696c2ea8b30309ad.mp3', 5381, '2026-09-13 14:04:57.771152', '823e32174e346ffdf4cc46723381e6518a24b087e6106266e0efe6cf1cf0b0d7', 'validated', '{"audio_key":"045c4df55df3f59988ee4e6572a4487a4e795011b890e50e696c2ea8b30309ad","entity_key":"ex_mediation_across_frameworks_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"823e32174e346ffdf4cc46723381e6518a24b087e6106266e0efe6cf1cf0b0d7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/045c4df55df3f59988ee4e6572a4487a4e795011b890e50e696c2ea8b30309ad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_register_and_implicature_06 -> audio/generated/de-DE/utterances/0e81836a432b683a0739fef3118ef5767b2af486c4ec9c512bc9b619ea03336a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('904f7726-a4a0-5505-8293-40c09038e76a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_register_and_implicature_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1af2cecd4a77426672734f78c6ae0f531b531bba3b29d3125190761c7bdc5142'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c0b34140-8196-5a9d-8643-cd40520d8116', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('904f7726-a4a0-5505-8293-40c09038e76a', 1), '1af2cecd4a77426672734f78c6ae0f531b531bba3b29d3125190761c7bdc5142',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0e81836a432b683a0739fef3118ef5767b2af486c4ec9c512bc9b619ea03336a.mp3', 6582, '2026-09-13 14:04:58.571003', '90ae8c0fde98aade59b16368680be32d47298776f5b0f49888d0285a294df01f', 'validated', '{"audio_key":"0e81836a432b683a0739fef3118ef5767b2af486c4ec9c512bc9b619ea03336a","entity_key":"u_register_and_implicature_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"90ae8c0fde98aade59b16368680be32d47298776f5b0f49888d0285a294df01f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0e81836a432b683a0739fef3118ef5767b2af486c4ec9c512bc9b619ea03336a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_humor_irony_repair_03 -> audio/generated/de-DE/utterances/1173b296b14cda862c94deaeacd20103ff20e94e3ef66469d52c6402d5866b2b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('fcd76b67-0215-548f-b536-813fcac67fdf', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_humor_irony_repair_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '16f3017ea697e6c958091f43c3b8d3d8c227f8573ebec2d3db2595808803a87f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0c555859-8132-5b69-b5a1-0e018ef5cd33', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('fcd76b67-0215-548f-b536-813fcac67fdf', 1), '16f3017ea697e6c958091f43c3b8d3d8c227f8573ebec2d3db2595808803a87f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1173b296b14cda862c94deaeacd20103ff20e94e3ef66469d52c6402d5866b2b.mp3', 4597, '2026-09-13 14:04:59.237338', '18b0f956a54c8293109b1746dfafbd31e3baa3b394ba270d15e06ba809cec345', 'validated', '{"audio_key":"1173b296b14cda862c94deaeacd20103ff20e94e3ef66469d52c6402d5866b2b","entity_key":"u_humor_irony_repair_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"18b0f956a54c8293109b1746dfafbd31e3baa3b394ba270d15e06ba809cec345","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1173b296b14cda862c94deaeacd20103ff20e94e3ef66469d52c6402d5866b2b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_humor_irony_repair_02_listen -> audio/generated/de-DE/utterances/1173b296b14cda862c94deaeacd20103ff20e94e3ef66469d52c6402d5866b2b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('3aca69d0-eab8-5a7a-a49f-e925b99f0a41', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_humor_irony_repair_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '16f3017ea697e6c958091f43c3b8d3d8c227f8573ebec2d3db2595808803a87f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('52593637-1d7a-5728-83aa-393c5ca0db45', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('3aca69d0-eab8-5a7a-a49f-e925b99f0a41', 1), '16f3017ea697e6c958091f43c3b8d3d8c227f8573ebec2d3db2595808803a87f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1173b296b14cda862c94deaeacd20103ff20e94e3ef66469d52c6402d5866b2b.mp3', 4597, '2026-09-13 14:04:59.237338', '18b0f956a54c8293109b1746dfafbd31e3baa3b394ba270d15e06ba809cec345', 'validated', '{"audio_key":"1173b296b14cda862c94deaeacd20103ff20e94e3ef66469d52c6402d5866b2b","entity_key":"ex_humor_irony_repair_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"18b0f956a54c8293109b1746dfafbd31e3baa3b394ba270d15e06ba809cec345","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1173b296b14cda862c94deaeacd20103ff20e94e3ef66469d52c6402d5866b2b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_live_reformulation_05 -> audio/generated/de-DE/utterances/11c20dd344d0282aba358781434a91e2bbc17ab850dc5de6c948c35f4c254c83.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('98e2ec0f-191b-5a63-94d5-532e087c5f6a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_live_reformulation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9d62db87d16461240120367b3db22f4969ba8e70af55b7a561eab1058b40ac2e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('57aac783-31e2-54af-a2f4-3d89454a126d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('98e2ec0f-191b-5a63-94d5-532e087c5f6a', 1), '9d62db87d16461240120367b3db22f4969ba8e70af55b7a561eab1058b40ac2e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/11c20dd344d0282aba358781434a91e2bbc17ab850dc5de6c948c35f4c254c83.mp3', 7000, '2026-09-13 14:05:00.295905', 'd44fb785db7ff1801e3b9d3688c0fc9f91b22908b12c77745c169475bf4b9c02', 'validated', '{"audio_key":"11c20dd344d0282aba358781434a91e2bbc17ab850dc5de6c948c35f4c254c83","entity_key":"u_live_reformulation_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d44fb785db7ff1801e3b9d3688c0fc9f91b22908b12c77745c169475bf4b9c02","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/11c20dd344d0282aba358781434a91e2bbc17ab850dc5de6c948c35f4c254c83.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_live_reformulation_03_listen -> audio/generated/de-DE/utterances/11c20dd344d0282aba358781434a91e2bbc17ab850dc5de6c948c35f4c254c83.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('b1a77892-782b-529c-834a-13e1beb246b6', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_live_reformulation_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9d62db87d16461240120367b3db22f4969ba8e70af55b7a561eab1058b40ac2e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a7a5b6d8-4957-58a7-ae4b-f86125dc5193', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('b1a77892-782b-529c-834a-13e1beb246b6', 1), '9d62db87d16461240120367b3db22f4969ba8e70af55b7a561eab1058b40ac2e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/11c20dd344d0282aba358781434a91e2bbc17ab850dc5de6c948c35f4c254c83.mp3', 7000, '2026-09-13 14:05:00.295905', 'd44fb785db7ff1801e3b9d3688c0fc9f91b22908b12c77745c169475bf4b9c02', 'validated', '{"audio_key":"11c20dd344d0282aba358781434a91e2bbc17ab850dc5de6c948c35f4c254c83","entity_key":"ex_live_reformulation_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d44fb785db7ff1801e3b9d3688c0fc9f91b22908b12c77745c169475bf4b9c02","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/11c20dd344d0282aba358781434a91e2bbc17ab850dc5de6c948c35f4c254c83.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_definitional_disputes_02 -> audio/generated/de-DE/utterances/126d8ff669f9b0d3ff9bc18dfa60ce28a3240181e890fb8ef92013fcf9b65f68.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c5a103b7-2cdb-5a97-8a11-91230d23b81b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_definitional_disputes_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '81431120fa72da8810b352100584da0b8d5c028f7eed86cb53d9fb9d73eea593'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dc7025e9-04a9-51da-86cc-1c32a2925379', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c5a103b7-2cdb-5a97-8a11-91230d23b81b', 1), '81431120fa72da8810b352100584da0b8d5c028f7eed86cb53d9fb9d73eea593',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/126d8ff669f9b0d3ff9bc18dfa60ce28a3240181e890fb8ef92013fcf9b65f68.mp3', 5328, '2026-09-13 14:05:00.984960', 'a937ce4dea31f8ba1f46b59e2688bc992600473262cb2eb693cf6047ccf925bf', 'validated', '{"audio_key":"126d8ff669f9b0d3ff9bc18dfa60ce28a3240181e890fb8ef92013fcf9b65f68","entity_key":"u_definitional_disputes_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a937ce4dea31f8ba1f46b59e2688bc992600473262cb2eb693cf6047ccf925bf","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/126d8ff669f9b0d3ff9bc18dfa60ce28a3240181e890fb8ef92013fcf9b65f68.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_expert_briefing_capstone_06 -> audio/generated/de-DE/utterances/13b76de856cdd0cd2f2135fa8af82d53ba4c9942cfb3f9c07e32229b535dc788.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('21f608e6-fbde-5b60-a213-d650fdb07e20', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_expert_briefing_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6b778fa1d0437d147068d633fa00402701f3d47b5b4af57f9a7eac3c6a3eda02'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('06c01154-af04-5b20-afad-4000f8de9c40', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('21f608e6-fbde-5b60-a213-d650fdb07e20', 1), '6b778fa1d0437d147068d633fa00402701f3d47b5b4af57f9a7eac3c6a3eda02',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/13b76de856cdd0cd2f2135fa8af82d53ba4c9942cfb3f9c07e32229b535dc788.mp3', 8385, '2026-09-13 14:05:02.160810', '571251d2d7b4d935620afee4f762357905ee9990ed8851a3406ac3fc42ad0fb1', 'validated', '{"audio_key":"13b76de856cdd0cd2f2135fa8af82d53ba4c9942cfb3f9c07e32229b535dc788","entity_key":"u_expert_briefing_capstone_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"571251d2d7b4d935620afee4f762357905ee9990ed8851a3406ac3fc42ad0fb1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/13b76de856cdd0cd2f2135fa8af82d53ba4c9942cfb3f9c07e32229b535dc788.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_counterfactual_reasoning_03 -> audio/generated/de-DE/utterances/144baaa30a99f21b04c41bbf784d2a27daf6c9ad4bdf9c497bf10cdd27168659.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('01a839c0-ac0a-5fb5-b291-bb9486a43e76', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_counterfactual_reasoning_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f03f5c28e42b6daceab9cafe4dc21116b5f670f3be8d69c715b0c070e680793e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('071c171b-bae2-5a70-b5e5-f1c4f6e6f9f5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('01a839c0-ac0a-5fb5-b291-bb9486a43e76', 1), 'f03f5c28e42b6daceab9cafe4dc21116b5f670f3be8d69c715b0c070e680793e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/144baaa30a99f21b04c41bbf784d2a27daf6c9ad4bdf9c497bf10cdd27168659.mp3', 4362, '2026-09-13 14:05:02.316770', '16b3b7573a3cc0c979915f6aa418e49c2371f2dece8db70c1942d83627588026', 'validated', '{"audio_key":"144baaa30a99f21b04c41bbf784d2a27daf6c9ad4bdf9c497bf10cdd27168659","entity_key":"u_counterfactual_reasoning_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"16b3b7573a3cc0c979915f6aa418e49c2371f2dece8db70c1942d83627588026","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/144baaa30a99f21b04c41bbf784d2a27daf6c9ad4bdf9c497bf10cdd27168659.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_counterfactual_reasoning_02_listen -> audio/generated/de-DE/utterances/144baaa30a99f21b04c41bbf784d2a27daf6c9ad4bdf9c497bf10cdd27168659.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ca0f0a23-17bd-5a74-b3f9-82192dc9393c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_counterfactual_reasoning_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f03f5c28e42b6daceab9cafe4dc21116b5f670f3be8d69c715b0c070e680793e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('41a8d361-2108-5899-921b-2174d6856c33', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ca0f0a23-17bd-5a74-b3f9-82192dc9393c', 1), 'f03f5c28e42b6daceab9cafe4dc21116b5f670f3be8d69c715b0c070e680793e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/144baaa30a99f21b04c41bbf784d2a27daf6c9ad4bdf9c497bf10cdd27168659.mp3', 4362, '2026-09-13 14:05:02.316770', '16b3b7573a3cc0c979915f6aa418e49c2371f2dece8db70c1942d83627588026', 'validated', '{"audio_key":"144baaa30a99f21b04c41bbf784d2a27daf6c9ad4bdf9c497bf10cdd27168659","entity_key":"ex_counterfactual_reasoning_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"16b3b7573a3cc0c979915f6aa418e49c2371f2dece8db70c1942d83627588026","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/144baaa30a99f21b04c41bbf784d2a27daf6c9ad4bdf9c497bf10cdd27168659.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_live_reformulation_04 -> audio/generated/de-DE/utterances/1a47ad8d97356768d5788775053597593644e5627852fec2a30c332ccc9cbd5b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('16c0fba3-0a7b-5f84-bb1d-cf633f20ce51', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_live_reformulation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0f75f899b75e5bd04993eb7a5f9019a5dcb25bb3a0d8abc2aa8f51f823b16398'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f05bb119-b418-5b76-9298-d4dc92b143a2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('16c0fba3-0a7b-5f84-bb1d-cf633f20ce51', 1), '0f75f899b75e5bd04993eb7a5f9019a5dcb25bb3a0d8abc2aa8f51f823b16398',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1a47ad8d97356768d5788775053597593644e5627852fec2a30c332ccc9cbd5b.mp3', 4963, '2026-09-13 14:05:03.657864', 'eb6dff36082a3889491f80d051a180f6a519301cf1870432ccaf8afa763a7f20', 'validated', '{"audio_key":"1a47ad8d97356768d5788775053597593644e5627852fec2a30c332ccc9cbd5b","entity_key":"u_live_reformulation_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"eb6dff36082a3889491f80d051a180f6a519301cf1870432ccaf8afa763a7f20","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1a47ad8d97356768d5788775053597593644e5627852fec2a30c332ccc9cbd5b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_mediation_across_frameworks_03 -> audio/generated/de-DE/utterances/1d998bb8b441004f0b197ee13e216408b44aefd02662fb36c7043e1d8c1b3cc5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9b0be8a3-a212-5746-a4bb-0515f46a6bfa', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_mediation_across_frameworks_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b2bbb7a59658b053c0e256eb6becbddff07b4826b000d958b5688c48f3dcbdad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dc1aae73-139a-5556-90e5-3a783208d014', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9b0be8a3-a212-5746-a4bb-0515f46a6bfa', 1), 'b2bbb7a59658b053c0e256eb6becbddff07b4826b000d958b5688c48f3dcbdad',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1d998bb8b441004f0b197ee13e216408b44aefd02662fb36c7043e1d8c1b3cc5.mp3', 5799, '2026-09-13 14:05:03.858697', '2209722e1c809b3d64458e2bd1ae751b873b65a62d7a21e423a5fd3fe49e3a0d', 'validated', '{"audio_key":"1d998bb8b441004f0b197ee13e216408b44aefd02662fb36c7043e1d8c1b3cc5","entity_key":"u_mediation_across_frameworks_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2209722e1c809b3d64458e2bd1ae751b873b65a62d7a21e423a5fd3fe49e3a0d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1d998bb8b441004f0b197ee13e216408b44aefd02662fb36c7043e1d8c1b3cc5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_mediation_across_frameworks_02_listen -> audio/generated/de-DE/utterances/1d998bb8b441004f0b197ee13e216408b44aefd02662fb36c7043e1d8c1b3cc5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('2c7e6870-5640-5096-981b-4eea0e7ca441', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_mediation_across_frameworks_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b2bbb7a59658b053c0e256eb6becbddff07b4826b000d958b5688c48f3dcbdad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8893fa89-80f6-501c-97b8-5f9b6cdd3243', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('2c7e6870-5640-5096-981b-4eea0e7ca441', 1), 'b2bbb7a59658b053c0e256eb6becbddff07b4826b000d958b5688c48f3dcbdad',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1d998bb8b441004f0b197ee13e216408b44aefd02662fb36c7043e1d8c1b3cc5.mp3', 5799, '2026-09-13 14:05:03.858697', '2209722e1c809b3d64458e2bd1ae751b873b65a62d7a21e423a5fd3fe49e3a0d', 'validated', '{"audio_key":"1d998bb8b441004f0b197ee13e216408b44aefd02662fb36c7043e1d8c1b3cc5","entity_key":"ex_mediation_across_frameworks_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2209722e1c809b3d64458e2bd1ae751b873b65a62d7a21e423a5fd3fe49e3a0d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1d998bb8b441004f0b197ee13e216408b44aefd02662fb36c7043e1d8c1b3cc5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_legal_administrative_nuance_05 -> audio/generated/de-DE/utterances/1ee3cd8552829e3d1147c83575832a534225651f5816662aa6d65e6f3922947e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5d7ecd71-3c35-5322-9295-fd064cdb2f91', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_legal_administrative_nuance_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dae306c75c9e575e6e57a5a68f5153d1ddb487d1076d44c51b4adc0611098b23'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('630b2f7a-6ceb-574e-91c9-7b33d4668059', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5d7ecd71-3c35-5322-9295-fd064cdb2f91', 1), 'dae306c75c9e575e6e57a5a68f5153d1ddb487d1076d44c51b4adc0611098b23',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1ee3cd8552829e3d1147c83575832a534225651f5816662aa6d65e6f3922947e.mp3', 5799, '2026-09-13 14:05:05.211638', 'ee45e44fe8d84d2e64ef91bde584a64f058548c71146ac05295a71621131399e', 'validated', '{"audio_key":"1ee3cd8552829e3d1147c83575832a534225651f5816662aa6d65e6f3922947e","entity_key":"u_legal_administrative_nuance_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ee45e44fe8d84d2e64ef91bde584a64f058548c71146ac05295a71621131399e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1ee3cd8552829e3d1147c83575832a534225651f5816662aa6d65e6f3922947e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_legal_administrative_nuance_03_listen -> audio/generated/de-DE/utterances/1ee3cd8552829e3d1147c83575832a534225651f5816662aa6d65e6f3922947e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('460f1bd3-5519-5e2c-8540-8c4d94ec9cea', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_legal_administrative_nuance_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dae306c75c9e575e6e57a5a68f5153d1ddb487d1076d44c51b4adc0611098b23'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9da9edb7-90e0-5de1-b4b0-2f3c83bef987', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('460f1bd3-5519-5e2c-8540-8c4d94ec9cea', 1), 'dae306c75c9e575e6e57a5a68f5153d1ddb487d1076d44c51b4adc0611098b23',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1ee3cd8552829e3d1147c83575832a534225651f5816662aa6d65e6f3922947e.mp3', 5799, '2026-09-13 14:05:05.211638', 'ee45e44fe8d84d2e64ef91bde584a64f058548c71146ac05295a71621131399e', 'validated', '{"audio_key":"1ee3cd8552829e3d1147c83575832a534225651f5816662aa6d65e6f3922947e","entity_key":"ex_legal_administrative_nuance_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ee45e44fe8d84d2e64ef91bde584a64f058548c71146ac05295a71621131399e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1ee3cd8552829e3d1147c83575832a534225651f5816662aa6d65e6f3922947e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_register_and_implicature_05 -> audio/generated/de-DE/utterances/1f296232261acd5dbe2d8c921086c12ed2c9b08792143c03b9b099d798183921.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('73b9a216-926b-5580-b4c7-af554cbb22f1', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_register_and_implicature_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '43a7ce770571376443f71cb0cce185d1b327341463a6e77669f9f5a99f114ff7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dbc34c7c-8afc-57ee-9ba7-047e82a1bbdd', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('73b9a216-926b-5580-b4c7-af554cbb22f1', 1), '43a7ce770571376443f71cb0cce185d1b327341463a6e77669f9f5a99f114ff7',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1f296232261acd5dbe2d8c921086c12ed2c9b08792143c03b9b099d798183921.mp3', 5746, '2026-09-13 14:05:05.414819', 'ec68a2e851ad4f690b65568e8144c031f77bc89b87e76a8b694ddf4c25695521', 'validated', '{"audio_key":"1f296232261acd5dbe2d8c921086c12ed2c9b08792143c03b9b099d798183921","entity_key":"u_register_and_implicature_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ec68a2e851ad4f690b65568e8144c031f77bc89b87e76a8b694ddf4c25695521","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1f296232261acd5dbe2d8c921086c12ed2c9b08792143c03b9b099d798183921.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_register_and_implicature_03_listen -> audio/generated/de-DE/utterances/1f296232261acd5dbe2d8c921086c12ed2c9b08792143c03b9b099d798183921.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('21e17550-e80b-5d28-aac0-39eaf848a883', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_register_and_implicature_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '43a7ce770571376443f71cb0cce185d1b327341463a6e77669f9f5a99f114ff7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5d41a5d4-0630-5fd9-8ad0-7c0da2b65e7a', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('21e17550-e80b-5d28-aac0-39eaf848a883', 1), '43a7ce770571376443f71cb0cce185d1b327341463a6e77669f9f5a99f114ff7',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1f296232261acd5dbe2d8c921086c12ed2c9b08792143c03b9b099d798183921.mp3', 5746, '2026-09-13 14:05:05.414819', 'ec68a2e851ad4f690b65568e8144c031f77bc89b87e76a8b694ddf4c25695521', 'validated', '{"audio_key":"1f296232261acd5dbe2d8c921086c12ed2c9b08792143c03b9b099d798183921","entity_key":"ex_register_and_implicature_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ec68a2e851ad4f690b65568e8144c031f77bc89b87e76a8b694ddf4c25695521","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1f296232261acd5dbe2d8c921086c12ed2c9b08792143c03b9b099d798183921.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_expert_briefing_capstone_01 -> audio/generated/de-DE/utterances/2175a33bd3816978c3bd5c1f09fe2858d8856c555e84a8251c1c15d456ca775b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c2d59b07-3bda-514f-986d-0700cba84dd0', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_expert_briefing_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ed601184ec31f24ebd86277455c046956c6f7c48a4753c0236a2d7ef6585c880'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('231eb97e-fa8b-5868-b860-609df84db402', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c2d59b07-3bda-514f-986d-0700cba84dd0', 1), 'ed601184ec31f24ebd86277455c046956c6f7c48a4753c0236a2d7ef6585c880',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2175a33bd3816978c3bd5c1f09fe2858d8856c555e84a8251c1c15d456ca775b.mp3', 5616, '2026-09-13 14:05:06.810758', '3489937d7e82e6fdfdbfcd20cd08face8d1f8a0ca1c22529594c9626cbf9e502', 'validated', '{"audio_key":"2175a33bd3816978c3bd5c1f09fe2858d8856c555e84a8251c1c15d456ca775b","entity_key":"u_expert_briefing_capstone_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3489937d7e82e6fdfdbfcd20cd08face8d1f8a0ca1c22529594c9626cbf9e502","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2175a33bd3816978c3bd5c1f09fe2858d8856c555e84a8251c1c15d456ca775b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_expert_briefing_capstone_01_listen -> audio/generated/de-DE/utterances/2175a33bd3816978c3bd5c1f09fe2858d8856c555e84a8251c1c15d456ca775b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e8268325-b538-5272-b3c0-c81693226cd4', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_expert_briefing_capstone_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ed601184ec31f24ebd86277455c046956c6f7c48a4753c0236a2d7ef6585c880'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('96bdd0d8-2f4d-53df-8294-4f91e3acf641', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e8268325-b538-5272-b3c0-c81693226cd4', 1), 'ed601184ec31f24ebd86277455c046956c6f7c48a4753c0236a2d7ef6585c880',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2175a33bd3816978c3bd5c1f09fe2858d8856c555e84a8251c1c15d456ca775b.mp3', 5616, '2026-09-13 14:05:06.810758', '3489937d7e82e6fdfdbfcd20cd08face8d1f8a0ca1c22529594c9626cbf9e502', 'validated', '{"audio_key":"2175a33bd3816978c3bd5c1f09fe2858d8856c555e84a8251c1c15d456ca775b","entity_key":"ex_expert_briefing_capstone_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3489937d7e82e6fdfdbfcd20cd08face8d1f8a0ca1c22529594c9626cbf9e502","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2175a33bd3816978c3bd5c1f09fe2858d8856c555e84a8251c1c15d456ca775b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_live_reformulation_06 -> audio/generated/de-DE/utterances/22edc5d7bd645b4804b4b20241498a1d75d09fea743416c2971efe00bb8acb78.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c15ce927-e1d1-5acf-9822-a5308f16375c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_live_reformulation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cc9ba56e515a898d309d5f26abae63df7bb336429c5ed1672c4402901cfa6a13'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8868ecae-6418-5287-8fa3-d8f1796120c6', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c15ce927-e1d1-5acf-9822-a5308f16375c', 1), 'cc9ba56e515a898d309d5f26abae63df7bb336429c5ed1672c4402901cfa6a13',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/22edc5d7bd645b4804b4b20241498a1d75d09fea743416c2971efe00bb8acb78.mp3', 6164, '2026-09-13 14:05:06.994870', '6e9691f2bd0b375fe9764053945b91c65a6d9c987cc16a76cd5ebf96991f005a', 'validated', '{"audio_key":"22edc5d7bd645b4804b4b20241498a1d75d09fea743416c2971efe00bb8acb78","entity_key":"u_live_reformulation_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6e9691f2bd0b375fe9764053945b91c65a6d9c987cc16a76cd5ebf96991f005a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/22edc5d7bd645b4804b4b20241498a1d75d09fea743416c2971efe00bb8acb78.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_compressed_synthesis_05 -> audio/generated/de-DE/utterances/236d97d0d511d748f3a1f944e08e733f0407497e578bcb5d87a88aeeee38217e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('db23929b-5f81-5d66-9c95-ba9598450360', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_compressed_synthesis_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9946cd494bc1e21386ca6053dcf9f3faeff694a75497813792df5e3db4380339'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ef7d5aad-6676-5ed1-bd86-03919842d8d4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('db23929b-5f81-5d66-9c95-ba9598450360', 1), '9946cd494bc1e21386ca6053dcf9f3faeff694a75497813792df5e3db4380339',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/236d97d0d511d748f3a1f944e08e733f0407497e578bcb5d87a88aeeee38217e.mp3', 5929, '2026-09-13 14:05:08.506285', '681bdf946eaa2c67b3f17576e2ed20810f0ce82170ad3e152cdfc076a4c76914', 'validated', '{"audio_key":"236d97d0d511d748f3a1f944e08e733f0407497e578bcb5d87a88aeeee38217e","entity_key":"u_compressed_synthesis_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"681bdf946eaa2c67b3f17576e2ed20810f0ce82170ad3e152cdfc076a4c76914","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/236d97d0d511d748f3a1f944e08e733f0407497e578bcb5d87a88aeeee38217e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_compressed_synthesis_03_listen -> audio/generated/de-DE/utterances/236d97d0d511d748f3a1f944e08e733f0407497e578bcb5d87a88aeeee38217e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('25494f53-ee3f-51fe-8acb-f15a56fd247e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_compressed_synthesis_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9946cd494bc1e21386ca6053dcf9f3faeff694a75497813792df5e3db4380339'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cca0af66-7532-5a74-bc3d-d899895e0e16', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('25494f53-ee3f-51fe-8acb-f15a56fd247e', 1), '9946cd494bc1e21386ca6053dcf9f3faeff694a75497813792df5e3db4380339',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/236d97d0d511d748f3a1f944e08e733f0407497e578bcb5d87a88aeeee38217e.mp3', 5929, '2026-09-13 14:05:08.506285', '681bdf946eaa2c67b3f17576e2ed20810f0ce82170ad3e152cdfc076a4c76914', 'validated', '{"audio_key":"236d97d0d511d748f3a1f944e08e733f0407497e578bcb5d87a88aeeee38217e","entity_key":"ex_compressed_synthesis_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"681bdf946eaa2c67b3f17576e2ed20810f0ce82170ad3e152cdfc076a4c76914","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/236d97d0d511d748f3a1f944e08e733f0407497e578bcb5d87a88aeeee38217e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_legal_administrative_nuance_03 -> audio/generated/de-DE/utterances/23ad8ab22383fb0aa144e5729de2b1f134ea9bb689979d3641b7f8a92ad785b5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f085f3bf-f557-549e-b7db-4ad2c070d1e3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_legal_administrative_nuance_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dd0c52cb1eba619ea478d80e0199921e7d7cb15de1f21b2da9cdd02a392c07c9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9e8f6791-0f48-52f8-b6bc-cfa6f6c77c91', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f085f3bf-f557-549e-b7db-4ad2c070d1e3', 1), 'dd0c52cb1eba619ea478d80e0199921e7d7cb15de1f21b2da9cdd02a392c07c9',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/23ad8ab22383fb0aa144e5729de2b1f134ea9bb689979d3641b7f8a92ad785b5.mp3', 4205, '2026-09-13 14:05:08.388270', '7b5deb483297ceef3f9d4b9af7eb7e49a285efca81507f0d3809f40ef3750cf4', 'validated', '{"audio_key":"23ad8ab22383fb0aa144e5729de2b1f134ea9bb689979d3641b7f8a92ad785b5","entity_key":"u_legal_administrative_nuance_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7b5deb483297ceef3f9d4b9af7eb7e49a285efca81507f0d3809f40ef3750cf4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/23ad8ab22383fb0aa144e5729de2b1f134ea9bb689979d3641b7f8a92ad785b5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_legal_administrative_nuance_02_listen -> audio/generated/de-DE/utterances/23ad8ab22383fb0aa144e5729de2b1f134ea9bb689979d3641b7f8a92ad785b5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('d8c36d24-45eb-5e5d-8386-8f110c85877c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_legal_administrative_nuance_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dd0c52cb1eba619ea478d80e0199921e7d7cb15de1f21b2da9cdd02a392c07c9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b7ac77a6-14eb-5562-b743-3f25fc01b2b5', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('d8c36d24-45eb-5e5d-8386-8f110c85877c', 1), 'dd0c52cb1eba619ea478d80e0199921e7d7cb15de1f21b2da9cdd02a392c07c9',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/23ad8ab22383fb0aa144e5729de2b1f134ea9bb689979d3641b7f8a92ad785b5.mp3', 4205, '2026-09-13 14:05:08.388270', '7b5deb483297ceef3f9d4b9af7eb7e49a285efca81507f0d3809f40ef3750cf4', 'validated', '{"audio_key":"23ad8ab22383fb0aa144e5729de2b1f134ea9bb689979d3641b7f8a92ad785b5","entity_key":"ex_legal_administrative_nuance_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7b5deb483297ceef3f9d4b9af7eb7e49a285efca81507f0d3809f40ef3750cf4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/23ad8ab22383fb0aa144e5729de2b1f134ea9bb689979d3641b7f8a92ad785b5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_legal_administrative_nuance_02 -> audio/generated/de-DE/utterances/26d6a54554be5b0e6f3ab2489ee8b00ae234ea0d322b9d741dced4e7757ccb47.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('de7c9629-4e3a-5ea4-8a56-41387249b9f4', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_legal_administrative_nuance_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'afef7d7660767453c4eb44bc44d3939eaca2da5722e8272ffdbbc88ca575b9ba'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ce519ecf-83f3-5a52-a406-33557d53f2e0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('de7c9629-4e3a-5ea4-8a56-41387249b9f4', 1), 'afef7d7660767453c4eb44bc44d3939eaca2da5722e8272ffdbbc88ca575b9ba',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/26d6a54554be5b0e6f3ab2489ee8b00ae234ea0d322b9d741dced4e7757ccb47.mp3', 5328, '2026-09-13 14:05:09.861090', 'd4dcb5433c6e2de0fef91ef0f9a30f5725524ad5fa0b65c2b3d13ac549fade17', 'validated', '{"audio_key":"26d6a54554be5b0e6f3ab2489ee8b00ae234ea0d322b9d741dced4e7757ccb47","entity_key":"u_legal_administrative_nuance_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d4dcb5433c6e2de0fef91ef0f9a30f5725524ad5fa0b65c2b3d13ac549fade17","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/26d6a54554be5b0e6f3ab2489ee8b00ae234ea0d322b9d741dced4e7757ccb47.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_definitional_disputes_05 -> audio/generated/de-DE/utterances/2bef772bd57a93ac0ae81afc17aba811ab5f22b56cf127132a9f91df37d5bfe0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('fbaa07eb-90bf-55a6-93bd-8257078ac5c9', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_definitional_disputes_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd0004b2d802c524f64a05588543f6f9a4a632b3ea59bb54502c6668dd957d69f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dea4e8e5-cf42-5606-9887-ff3f48538871', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('fbaa07eb-90bf-55a6-93bd-8257078ac5c9', 1), 'd0004b2d802c524f64a05588543f6f9a4a632b3ea59bb54502c6668dd957d69f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2bef772bd57a93ac0ae81afc17aba811ab5f22b56cf127132a9f91df37d5bfe0.mp3', 5668, '2026-09-13 14:05:10.031793', 'c070e127dfa35055ce884fe8e48c349db23093f318025b1c64f658c1a0837c3b', 'validated', '{"audio_key":"2bef772bd57a93ac0ae81afc17aba811ab5f22b56cf127132a9f91df37d5bfe0","entity_key":"u_definitional_disputes_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c070e127dfa35055ce884fe8e48c349db23093f318025b1c64f658c1a0837c3b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2bef772bd57a93ac0ae81afc17aba811ab5f22b56cf127132a9f91df37d5bfe0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_definitional_disputes_03_listen -> audio/generated/de-DE/utterances/2bef772bd57a93ac0ae81afc17aba811ab5f22b56cf127132a9f91df37d5bfe0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ca9d2ea9-ab44-5ad5-bb52-ce21fba603b1', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_definitional_disputes_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd0004b2d802c524f64a05588543f6f9a4a632b3ea59bb54502c6668dd957d69f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('55cfc5bd-931e-5290-aa34-2f56aa0e7553', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ca9d2ea9-ab44-5ad5-bb52-ce21fba603b1', 1), 'd0004b2d802c524f64a05588543f6f9a4a632b3ea59bb54502c6668dd957d69f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2bef772bd57a93ac0ae81afc17aba811ab5f22b56cf127132a9f91df37d5bfe0.mp3', 5668, '2026-09-13 14:05:10.031793', 'c070e127dfa35055ce884fe8e48c349db23093f318025b1c64f658c1a0837c3b', 'validated', '{"audio_key":"2bef772bd57a93ac0ae81afc17aba811ab5f22b56cf127132a9f91df37d5bfe0","entity_key":"ex_definitional_disputes_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c070e127dfa35055ce884fe8e48c349db23093f318025b1c64f658c1a0837c3b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2bef772bd57a93ac0ae81afc17aba811ab5f22b56cf127132a9f91df37d5bfe0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_mediation_across_frameworks_06 -> audio/generated/de-DE/utterances/3432f81f53ab075f6ba4e95f7ef3ca7b94739204fe35e9441b3647b7274aab1d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0615fdf5-4ac8-5574-b224-1d0202e871dc', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_mediation_across_frameworks_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '07b2ee9103662c1d0aa5c433916b3cf6a975183663bcf136baed302e76f528b0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9555575b-f501-512b-8212-e6fe49fab1a5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0615fdf5-4ac8-5574-b224-1d0202e871dc', 1), '07b2ee9103662c1d0aa5c433916b3cf6a975183663bcf136baed302e76f528b0',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3432f81f53ab075f6ba4e95f7ef3ca7b94739204fe35e9441b3647b7274aab1d.mp3', 6713, '2026-09-13 14:05:11.555825', '6e07c7ca5274952064142f130579dd5f8c0c8b268fa68c4205034cef0f510e54', 'validated', '{"audio_key":"3432f81f53ab075f6ba4e95f7ef3ca7b94739204fe35e9441b3647b7274aab1d","entity_key":"u_mediation_across_frameworks_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6e07c7ca5274952064142f130579dd5f8c0c8b268fa68c4205034cef0f510e54","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3432f81f53ab075f6ba4e95f7ef3ca7b94739204fe35e9441b3647b7274aab1d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_mediation_across_frameworks_02 -> audio/generated/de-DE/utterances/3731b52f22f153da89f3a835af5567cbd55a2d1554ead510323a1cfe69090211.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('683fd355-853f-52bb-bf75-be1aadab496b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_mediation_across_frameworks_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '32674dbb23ccf536c52d99c24e0a8ebf92ae11dc7b9634bca505dadd6d656778'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4bd682ae-1831-5b28-a51c-d877a319652d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('683fd355-853f-52bb-bf75-be1aadab496b', 1), '32674dbb23ccf536c52d99c24e0a8ebf92ae11dc7b9634bca505dadd6d656778',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3731b52f22f153da89f3a835af5567cbd55a2d1554ead510323a1cfe69090211.mp3', 6086, '2026-09-13 14:05:11.657522', '90300cab0e33407e975a0fa18f931f484e73e56753b25923e1ad9b3803305d42', 'validated', '{"audio_key":"3731b52f22f153da89f3a835af5567cbd55a2d1554ead510323a1cfe69090211","entity_key":"u_mediation_across_frameworks_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"90300cab0e33407e975a0fa18f931f484e73e56753b25923e1ad9b3803305d42","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3731b52f22f153da89f3a835af5567cbd55a2d1554ead510323a1cfe69090211.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_evidential_calibration_06 -> audio/generated/de-DE/utterances/3834eb974d3ddaabeaff49e2cad0e8a2ce74e40d30bd49d7768bb15e50f86985.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c29f75fb-c6c7-5f38-8a16-8b3b4ac04a55', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_evidential_calibration_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6a72c8a2c718422f093d24d70d11a0fe57d3e9e415a1860773603a55ff7a8303'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d66e04ee-d122-5449-a53d-34a3e05187a1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c29f75fb-c6c7-5f38-8a16-8b3b4ac04a55', 1), '6a72c8a2c718422f093d24d70d11a0fe57d3e9e415a1860773603a55ff7a8303',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3834eb974d3ddaabeaff49e2cad0e8a2ce74e40d30bd49d7768bb15e50f86985.mp3', 5694, '2026-09-13 14:05:13.123080', '75dcb55644ed4fbdbe8e52205d1916f11b039fdfe48cc6430a592028314d89e9', 'validated', '{"audio_key":"3834eb974d3ddaabeaff49e2cad0e8a2ce74e40d30bd49d7768bb15e50f86985","entity_key":"u_evidential_calibration_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"75dcb55644ed4fbdbe8e52205d1916f11b039fdfe48cc6430a592028314d89e9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3834eb974d3ddaabeaff49e2cad0e8a2ce74e40d30bd49d7768bb15e50f86985.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_live_reformulation_01 -> audio/generated/de-DE/utterances/390820a46984343f69430366cf7c460f60a5aaaf479c326d029828f63cd5db64.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e76c59f2-2f92-5133-8796-f99d2aad0341', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_live_reformulation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8854e5d9bf4f74f38848e42f79a190702b88f6eb69d87c19064fe338d74e001a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('635bc6d1-00db-5e11-af00-be49e16a5d44', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e76c59f2-2f92-5133-8796-f99d2aad0341', 1), '8854e5d9bf4f74f38848e42f79a190702b88f6eb69d87c19064fe338d74e001a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/390820a46984343f69430366cf7c460f60a5aaaf479c326d029828f63cd5db64.mp3', 5668, '2026-09-13 14:05:13.201874', 'c7006cec19bd098b2a6ce60a5c16c91a8ec51cbb3b2102cf96d42d3c1d8e0160', 'validated', '{"audio_key":"390820a46984343f69430366cf7c460f60a5aaaf479c326d029828f63cd5db64","entity_key":"u_live_reformulation_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c7006cec19bd098b2a6ce60a5c16c91a8ec51cbb3b2102cf96d42d3c1d8e0160","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/390820a46984343f69430366cf7c460f60a5aaaf479c326d029828f63cd5db64.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_live_reformulation_01_listen -> audio/generated/de-DE/utterances/390820a46984343f69430366cf7c460f60a5aaaf479c326d029828f63cd5db64.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ed08e61f-4974-5647-848a-1ab9772059d3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_live_reformulation_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8854e5d9bf4f74f38848e42f79a190702b88f6eb69d87c19064fe338d74e001a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2dc87ec4-c2b8-5762-80cc-6c6e8f36c1e7', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ed08e61f-4974-5647-848a-1ab9772059d3', 1), '8854e5d9bf4f74f38848e42f79a190702b88f6eb69d87c19064fe338d74e001a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/390820a46984343f69430366cf7c460f60a5aaaf479c326d029828f63cd5db64.mp3', 5668, '2026-09-13 14:05:13.201874', 'c7006cec19bd098b2a6ce60a5c16c91a8ec51cbb3b2102cf96d42d3c1d8e0160', 'validated', '{"audio_key":"390820a46984343f69430366cf7c460f60a5aaaf479c326d029828f63cd5db64","entity_key":"ex_live_reformulation_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c7006cec19bd098b2a6ce60a5c16c91a8ec51cbb3b2102cf96d42d3c1d8e0160","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/390820a46984343f69430366cf7c460f60a5aaaf479c326d029828f63cd5db64.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_definitional_disputes_04 -> audio/generated/de-DE/utterances/40384140c180904c10d30de8e3e5edae8ddf96607d23768453114a752fd301b6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('51c1469d-82fb-55aa-9c66-5d36457cf2db', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_definitional_disputes_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a1a69ce325eee42fdd44d564ec57ff698c511a07c19778607d6d106bd9d5355e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b2904b7e-7609-562a-bb49-8b95f5801040', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('51c1469d-82fb-55aa-9c66-5d36457cf2db', 1), 'a1a69ce325eee42fdd44d564ec57ff698c511a07c19778607d6d106bd9d5355e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/40384140c180904c10d30de8e3e5edae8ddf96607d23768453114a752fd301b6.mp3', 5146, '2026-09-13 14:05:14.671040', '31c4b3a024169082689743c89590573a8d876ddc9beaecdff3195fcb269d6231', 'validated', '{"audio_key":"40384140c180904c10d30de8e3e5edae8ddf96607d23768453114a752fd301b6","entity_key":"u_definitional_disputes_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"31c4b3a024169082689743c89590573a8d876ddc9beaecdff3195fcb269d6231","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/40384140c180904c10d30de8e3e5edae8ddf96607d23768453114a752fd301b6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_expert_briefing_capstone_02 -> audio/generated/de-DE/utterances/43fd9d0690c93141c1ad014c23924e361c6bf133ae3a35c6a27cb3baed5fd2b0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('42e44f00-b8d8-5b86-aa86-73c92a02cc1a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_expert_briefing_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '692bf3deda8fbbb66fbe75d0e9694bc554b5606ca1fed0cbf53afaa2142bc13c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('26f10c8a-daa9-5bf8-9da1-69819305c3e9', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('42e44f00-b8d8-5b86-aa86-73c92a02cc1a', 1), '692bf3deda8fbbb66fbe75d0e9694bc554b5606ca1fed0cbf53afaa2142bc13c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/43fd9d0690c93141c1ad014c23924e361c6bf133ae3a35c6a27cb3baed5fd2b0.mp3', 4963, '2026-09-13 14:05:14.634112', '26deb1e18dc6a7f7436eb673c34d453b5ce9c7398902f6fa88594efc2c940c7a', 'validated', '{"audio_key":"43fd9d0690c93141c1ad014c23924e361c6bf133ae3a35c6a27cb3baed5fd2b0","entity_key":"u_expert_briefing_capstone_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"26deb1e18dc6a7f7436eb673c34d453b5ce9c7398902f6fa88594efc2c940c7a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/43fd9d0690c93141c1ad014c23924e361c6bf133ae3a35c6a27cb3baed5fd2b0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_compressed_synthesis_01 -> audio/generated/de-DE/utterances/441bf9915c0e55332a0d4d85ca5eab34a8f64ab1a60b7eb128def2cbb0d76f05.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f5388b2c-25fa-5d26-a27e-29b90a6b6bae', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_compressed_synthesis_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bde0fcb7e9062dc8d1c17327026edf452b30667777883431da8a6df963dc6e50'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d01c8444-5f2a-543f-9547-29f1ac9d31c4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f5388b2c-25fa-5d26-a27e-29b90a6b6bae', 1), 'bde0fcb7e9062dc8d1c17327026edf452b30667777883431da8a6df963dc6e50',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/441bf9915c0e55332a0d4d85ca5eab34a8f64ab1a60b7eb128def2cbb0d76f05.mp3', 4362, '2026-09-13 14:05:16.325386', '2fa6f3604df71efc1977d57e749a9675a78ebb08153523e9beb035ec979ae78f', 'validated', '{"audio_key":"441bf9915c0e55332a0d4d85ca5eab34a8f64ab1a60b7eb128def2cbb0d76f05","entity_key":"u_compressed_synthesis_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2fa6f3604df71efc1977d57e749a9675a78ebb08153523e9beb035ec979ae78f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/441bf9915c0e55332a0d4d85ca5eab34a8f64ab1a60b7eb128def2cbb0d76f05.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_compressed_synthesis_01_listen -> audio/generated/de-DE/utterances/441bf9915c0e55332a0d4d85ca5eab34a8f64ab1a60b7eb128def2cbb0d76f05.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('a1abab0c-3ce1-5857-a0db-e9432b1a7beb', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_compressed_synthesis_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bde0fcb7e9062dc8d1c17327026edf452b30667777883431da8a6df963dc6e50'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6534d42a-3b12-5bdf-ab2b-88dd6ea5f486', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('a1abab0c-3ce1-5857-a0db-e9432b1a7beb', 1), 'bde0fcb7e9062dc8d1c17327026edf452b30667777883431da8a6df963dc6e50',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/441bf9915c0e55332a0d4d85ca5eab34a8f64ab1a60b7eb128def2cbb0d76f05.mp3', 4362, '2026-09-13 14:05:16.325386', '2fa6f3604df71efc1977d57e749a9675a78ebb08153523e9beb035ec979ae78f', 'validated', '{"audio_key":"441bf9915c0e55332a0d4d85ca5eab34a8f64ab1a60b7eb128def2cbb0d76f05","entity_key":"ex_compressed_synthesis_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2fa6f3604df71efc1977d57e749a9675a78ebb08153523e9beb035ec979ae78f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/441bf9915c0e55332a0d4d85ca5eab34a8f64ab1a60b7eb128def2cbb0d76f05.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_definitional_disputes_01 -> audio/generated/de-DE/utterances/476194df260b263a44c6a5fd9bfa253035283db269525083339b74a0ad8fe2f1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6ffce5cd-4040-547a-aaab-41b1cedcf822', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_definitional_disputes_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '05e448146a31a2ca940e3a7bf320655e721ea756110770c8ff954ac15bc02cd7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3fd562c2-23fb-51ef-850e-524dfed9fa12', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6ffce5cd-4040-547a-aaab-41b1cedcf822', 1), '05e448146a31a2ca940e3a7bf320655e721ea756110770c8ff954ac15bc02cd7',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/476194df260b263a44c6a5fd9bfa253035283db269525083339b74a0ad8fe2f1.mp3', 5328, '2026-09-13 14:05:16.225158', '815c978024dd1362604bd03c8399e1f45cfb6730176f3781ea1e410655c2613a', 'validated', '{"audio_key":"476194df260b263a44c6a5fd9bfa253035283db269525083339b74a0ad8fe2f1","entity_key":"u_definitional_disputes_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"815c978024dd1362604bd03c8399e1f45cfb6730176f3781ea1e410655c2613a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/476194df260b263a44c6a5fd9bfa253035283db269525083339b74a0ad8fe2f1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_definitional_disputes_01_listen -> audio/generated/de-DE/utterances/476194df260b263a44c6a5fd9bfa253035283db269525083339b74a0ad8fe2f1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('6c0c43ba-8685-5294-8201-649bfd14e1af', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_definitional_disputes_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '05e448146a31a2ca940e3a7bf320655e721ea756110770c8ff954ac15bc02cd7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7b6122e9-461f-592d-ac43-540e014fff71', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('6c0c43ba-8685-5294-8201-649bfd14e1af', 1), '05e448146a31a2ca940e3a7bf320655e721ea756110770c8ff954ac15bc02cd7',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/476194df260b263a44c6a5fd9bfa253035283db269525083339b74a0ad8fe2f1.mp3', 5328, '2026-09-13 14:05:16.225158', '815c978024dd1362604bd03c8399e1f45cfb6730176f3781ea1e410655c2613a', 'validated', '{"audio_key":"476194df260b263a44c6a5fd9bfa253035283db269525083339b74a0ad8fe2f1","entity_key":"ex_definitional_disputes_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"815c978024dd1362604bd03c8399e1f45cfb6730176f3781ea1e410655c2613a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/476194df260b263a44c6a5fd9bfa253035283db269525083339b74a0ad8fe2f1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_compressed_synthesis_06 -> audio/generated/de-DE/utterances/490905591ddd74ad9e05abf7628bedce0fe39f04f0a77adc8ef10d7789a6ef35.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('19556b1a-be35-510a-92bc-6e812fa95c08', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_compressed_synthesis_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '80e678e9573dafb92c7ac5a016dfb1638c7b9ca80e1730f07bf4140711c73d15'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('48883a3f-99d6-5338-8e4f-83df20311eb6', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('19556b1a-be35-510a-92bc-6e812fa95c08', 1), '80e678e9573dafb92c7ac5a016dfb1638c7b9ca80e1730f07bf4140711c73d15',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/490905591ddd74ad9e05abf7628bedce0fe39f04f0a77adc8ef10d7789a6ef35.mp3', 5564, '2026-09-13 14:05:17.742988', '5715b3df119c9e797106e8bf7a67b203628cc9864a141d4c2658b49009ec671b', 'validated', '{"audio_key":"490905591ddd74ad9e05abf7628bedce0fe39f04f0a77adc8ef10d7789a6ef35","entity_key":"u_compressed_synthesis_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5715b3df119c9e797106e8bf7a67b203628cc9864a141d4c2658b49009ec671b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/490905591ddd74ad9e05abf7628bedce0fe39f04f0a77adc8ef10d7789a6ef35.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_legal_administrative_nuance_06 -> audio/generated/de-DE/utterances/4a8631f9589a41f223dfa0d4ae8c2994a391fe1b781939767f1a0a0eeebf2216.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('404ec5d7-4f13-5441-b234-6d541178e9b7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_legal_administrative_nuance_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '313355d4ab0902734a63d8c7db6fdfa621d6b02674f2079977ac1b3cf51e6bfa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('40369ef9-2c45-5aa6-98f2-0213bb895918', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('404ec5d7-4f13-5441-b234-6d541178e9b7', 1), '313355d4ab0902734a63d8c7db6fdfa621d6b02674f2079977ac1b3cf51e6bfa',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4a8631f9589a41f223dfa0d4ae8c2994a391fe1b781939767f1a0a0eeebf2216.mp3', 6713, '2026-09-13 14:05:18.065987', '806faf8e6108b08fa17531e64f72d946aa3bdde95849fdaee43aa9de90d4e2ea', 'validated', '{"audio_key":"4a8631f9589a41f223dfa0d4ae8c2994a391fe1b781939767f1a0a0eeebf2216","entity_key":"u_legal_administrative_nuance_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"806faf8e6108b08fa17531e64f72d946aa3bdde95849fdaee43aa9de90d4e2ea","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4a8631f9589a41f223dfa0d4ae8c2994a391fe1b781939767f1a0a0eeebf2216.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_legal_administrative_nuance_01 -> audio/generated/de-DE/utterances/4e9290f16063b9e36d5ba254ae136e814c84e643e96d37ab8bfb9b47f424baf0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4a958e4d-b811-5020-b8b1-a6c568b390fd', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_legal_administrative_nuance_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '653e3713c05048364bd9d7e3a770b7231db8b832d98ce300efd496392b12653e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e6c12d40-3f29-5daf-b5e1-22d92befebb4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4a958e4d-b811-5020-b8b1-a6c568b390fd', 1), '653e3713c05048364bd9d7e3a770b7231db8b832d98ce300efd496392b12653e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4e9290f16063b9e36d5ba254ae136e814c84e643e96d37ab8bfb9b47f424baf0.mp3', 5041, '2026-09-13 14:05:19.217116', '4eafb1edda9a58a034061bc80d5b2f2dd5e5eebef3819b232ddd713a79a80efc', 'validated', '{"audio_key":"4e9290f16063b9e36d5ba254ae136e814c84e643e96d37ab8bfb9b47f424baf0","entity_key":"u_legal_administrative_nuance_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4eafb1edda9a58a034061bc80d5b2f2dd5e5eebef3819b232ddd713a79a80efc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4e9290f16063b9e36d5ba254ae136e814c84e643e96d37ab8bfb9b47f424baf0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_legal_administrative_nuance_01_listen -> audio/generated/de-DE/utterances/4e9290f16063b9e36d5ba254ae136e814c84e643e96d37ab8bfb9b47f424baf0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c9fe81af-5148-55c9-8783-64cbee61e07e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_legal_administrative_nuance_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '653e3713c05048364bd9d7e3a770b7231db8b832d98ce300efd496392b12653e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('750fabf3-c5e2-56e9-837f-d388021ae7a2', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c9fe81af-5148-55c9-8783-64cbee61e07e', 1), '653e3713c05048364bd9d7e3a770b7231db8b832d98ce300efd496392b12653e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4e9290f16063b9e36d5ba254ae136e814c84e643e96d37ab8bfb9b47f424baf0.mp3', 5041, '2026-09-13 14:05:19.217116', '4eafb1edda9a58a034061bc80d5b2f2dd5e5eebef3819b232ddd713a79a80efc', 'validated', '{"audio_key":"4e9290f16063b9e36d5ba254ae136e814c84e643e96d37ab8bfb9b47f424baf0","entity_key":"ex_legal_administrative_nuance_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4eafb1edda9a58a034061bc80d5b2f2dd5e5eebef3819b232ddd713a79a80efc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4e9290f16063b9e36d5ba254ae136e814c84e643e96d37ab8bfb9b47f424baf0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_evidential_calibration_02 -> audio/generated/de-DE/utterances/50ed9e6bd2e380972669b9b9a4bc8f5c9f4b961258c3480467cf2937fe699c1b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('46fde716-9d08-5915-8d3c-7a60618873cb', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_evidential_calibration_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ce056d5feb218d761e4d4bec36599373480b047e5430e62fad43a0406de89401'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e7857a11-8cbe-5d9d-8a15-b62752edab8e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('46fde716-9d08-5915-8d3c-7a60618873cb', 1), 'ce056d5feb218d761e4d4bec36599373480b047e5430e62fad43a0406de89401',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/50ed9e6bd2e380972669b9b9a4bc8f5c9f4b961258c3480467cf2937fe699c1b.mp3', 4780, '2026-09-13 14:05:19.570733', '059c3ecfb533310d6d378af3288897fe7ee6b6462530ba9536b483abc60f0111', 'validated', '{"audio_key":"50ed9e6bd2e380972669b9b9a4bc8f5c9f4b961258c3480467cf2937fe699c1b","entity_key":"u_evidential_calibration_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"059c3ecfb533310d6d378af3288897fe7ee6b6462530ba9536b483abc60f0111","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/50ed9e6bd2e380972669b9b9a4bc8f5c9f4b961258c3480467cf2937fe699c1b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_compressed_synthesis_03 -> audio/generated/de-DE/utterances/548bc5acb81c6bff321559c6f9817139235288df6b91da9bf8f4b5c778d129e5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c8f02527-ac6e-5568-9ec7-41921d866431', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_compressed_synthesis_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '59830c3c50fe9f4aef1fe8c18f4f640f80d8cc3df1c68e1958e6b251dada2c07'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0db80931-ddb1-57b0-a7fd-8705a0f5db49', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c8f02527-ac6e-5568-9ec7-41921d866431', 1), '59830c3c50fe9f4aef1fe8c18f4f640f80d8cc3df1c68e1958e6b251dada2c07',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/548bc5acb81c6bff321559c6f9817139235288df6b91da9bf8f4b5c778d129e5.mp3', 4911, '2026-09-13 14:05:20.684622', '603a1669be37feb0f6adebd4d749c4c472116ad49fbaad327a0556a2a978eb0f', 'validated', '{"audio_key":"548bc5acb81c6bff321559c6f9817139235288df6b91da9bf8f4b5c778d129e5","entity_key":"u_compressed_synthesis_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"603a1669be37feb0f6adebd4d749c4c472116ad49fbaad327a0556a2a978eb0f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/548bc5acb81c6bff321559c6f9817139235288df6b91da9bf8f4b5c778d129e5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_compressed_synthesis_02_listen -> audio/generated/de-DE/utterances/548bc5acb81c6bff321559c6f9817139235288df6b91da9bf8f4b5c778d129e5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ece79a58-dc00-50b4-b94e-6686f55c1e3c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_compressed_synthesis_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '59830c3c50fe9f4aef1fe8c18f4f640f80d8cc3df1c68e1958e6b251dada2c07'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cb42c613-aa68-5bfa-83ee-edb951529e06', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ece79a58-dc00-50b4-b94e-6686f55c1e3c', 1), '59830c3c50fe9f4aef1fe8c18f4f640f80d8cc3df1c68e1958e6b251dada2c07',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/548bc5acb81c6bff321559c6f9817139235288df6b91da9bf8f4b5c778d129e5.mp3', 4911, '2026-09-13 14:05:20.684622', '603a1669be37feb0f6adebd4d749c4c472116ad49fbaad327a0556a2a978eb0f', 'validated', '{"audio_key":"548bc5acb81c6bff321559c6f9817139235288df6b91da9bf8f4b5c778d129e5","entity_key":"ex_compressed_synthesis_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"603a1669be37feb0f6adebd4d749c4c472116ad49fbaad327a0556a2a978eb0f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/548bc5acb81c6bff321559c6f9817139235288df6b91da9bf8f4b5c778d129e5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_counterfactual_reasoning_06 -> audio/generated/de-DE/utterances/6251fc7bb466b46f543d174009febfa82475f293ba1966bc631b37da65360359.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1cda7b24-0eb5-580d-9531-47ac055c84e3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_counterfactual_reasoning_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '81e3db69c3d298590fab42974d60d5d3747887afae7c7a6f828fc548f8bd5a7d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('797de581-183a-5746-93de-13a851222854', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1cda7b24-0eb5-580d-9531-47ac055c84e3', 1), '81e3db69c3d298590fab42974d60d5d3747887afae7c7a6f828fc548f8bd5a7d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/6251fc7bb466b46f543d174009febfa82475f293ba1966bc631b37da65360359.mp3', 6034, '2026-09-13 14:05:21.289809', '9fd83d9b43f0acaaae84c8d942b1929efb2fab65da2015e2ca2ee8cd82f7231d', 'validated', '{"audio_key":"6251fc7bb466b46f543d174009febfa82475f293ba1966bc631b37da65360359","entity_key":"u_counterfactual_reasoning_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9fd83d9b43f0acaaae84c8d942b1929efb2fab65da2015e2ca2ee8cd82f7231d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/6251fc7bb466b46f543d174009febfa82475f293ba1966bc631b37da65360359.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_humor_irony_repair_06 -> audio/generated/de-DE/utterances/686cba6c6deb2c86a80ee245e1e0f13127f525ab7fd7dcbed18dd74b7cac8d3d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f2bc1377-003c-5c0a-857e-1b4b012ac6fc', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_humor_irony_repair_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '19c3b539dfc99b2ec0a7b778b7371755a66d032f33a226c8e72dc6995444d815'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2f75f533-78b1-599b-b8e0-7e3486536c59', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f2bc1377-003c-5c0a-857e-1b4b012ac6fc', 1), '19c3b539dfc99b2ec0a7b778b7371755a66d032f33a226c8e72dc6995444d815',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/686cba6c6deb2c86a80ee245e1e0f13127f525ab7fd7dcbed18dd74b7cac8d3d.mp3', 6817, '2026-09-13 14:05:22.352413', '7c59848126cd9a5f45a2edd78a19e3360019bfbe1122d2be5a466c3bdd51811e', 'validated', '{"audio_key":"686cba6c6deb2c86a80ee245e1e0f13127f525ab7fd7dcbed18dd74b7cac8d3d","entity_key":"u_humor_irony_repair_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7c59848126cd9a5f45a2edd78a19e3360019bfbe1122d2be5a466c3bdd51811e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/686cba6c6deb2c86a80ee245e1e0f13127f525ab7fd7dcbed18dd74b7cac8d3d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_live_reformulation_03 -> audio/generated/de-DE/utterances/737857b0ab616f570bf6349b900f7b9c73be35f57b0bef6c95a57f364b61b4b8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('372ed6e4-04f7-5f84-a2d2-92dc2e0d194b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_live_reformulation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '55190902cd119d3ee2fba6d009e573b54478c6dcd43eed93be42959a10215c3f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('18f6cb09-3b37-558a-9843-4d82c6ead8bc', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('372ed6e4-04f7-5f84-a2d2-92dc2e0d194b', 1), '55190902cd119d3ee2fba6d009e573b54478c6dcd43eed93be42959a10215c3f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/737857b0ab616f570bf6349b900f7b9c73be35f57b0bef6c95a57f364b61b4b8.mp3', 5041, '2026-09-13 14:05:22.759754', '63d71ad19ae67e19ccdea934d0a7f85d6fdb7b3881b7a2c74291cdf00776499f', 'validated', '{"audio_key":"737857b0ab616f570bf6349b900f7b9c73be35f57b0bef6c95a57f364b61b4b8","entity_key":"u_live_reformulation_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"63d71ad19ae67e19ccdea934d0a7f85d6fdb7b3881b7a2c74291cdf00776499f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/737857b0ab616f570bf6349b900f7b9c73be35f57b0bef6c95a57f364b61b4b8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_live_reformulation_02_listen -> audio/generated/de-DE/utterances/737857b0ab616f570bf6349b900f7b9c73be35f57b0bef6c95a57f364b61b4b8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e6842ff2-927e-5b68-bd34-e545ca5e2f61', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_live_reformulation_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '55190902cd119d3ee2fba6d009e573b54478c6dcd43eed93be42959a10215c3f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2626d514-2196-5ef2-94e3-12e739d25512', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e6842ff2-927e-5b68-bd34-e545ca5e2f61', 1), '55190902cd119d3ee2fba6d009e573b54478c6dcd43eed93be42959a10215c3f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/737857b0ab616f570bf6349b900f7b9c73be35f57b0bef6c95a57f364b61b4b8.mp3', 5041, '2026-09-13 14:05:22.759754', '63d71ad19ae67e19ccdea934d0a7f85d6fdb7b3881b7a2c74291cdf00776499f', 'validated', '{"audio_key":"737857b0ab616f570bf6349b900f7b9c73be35f57b0bef6c95a57f364b61b4b8","entity_key":"ex_live_reformulation_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"63d71ad19ae67e19ccdea934d0a7f85d6fdb7b3881b7a2c74291cdf00776499f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/737857b0ab616f570bf6349b900f7b9c73be35f57b0bef6c95a57f364b61b4b8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_register_and_implicature_01 -> audio/generated/de-DE/utterances/76564c054d643b3ac89496809e83f2ddae55ee75be36aa32649886e4f6f0ee7e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('81389e3c-5228-55a6-8649-e0142a96cb70', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_register_and_implicature_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e6d5c846a9b49a8db1b855246a5d68bb21583c763ad728e3021882dcc25c3f08'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('00cd780c-bb8b-54ea-9143-1dd33aa6961a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('81389e3c-5228-55a6-8649-e0142a96cb70', 1), 'e6d5c846a9b49a8db1b855246a5d68bb21583c763ad728e3021882dcc25c3f08',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/76564c054d643b3ac89496809e83f2ddae55ee75be36aa32649886e4f6f0ee7e.mp3', 5250, '2026-09-13 14:05:23.866262', 'fc1ba1447e8437fbaa0beccfed18ab8bb98c32d84a9f20fea93d3146be8344a2', 'validated', '{"audio_key":"76564c054d643b3ac89496809e83f2ddae55ee75be36aa32649886e4f6f0ee7e","entity_key":"u_register_and_implicature_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fc1ba1447e8437fbaa0beccfed18ab8bb98c32d84a9f20fea93d3146be8344a2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/76564c054d643b3ac89496809e83f2ddae55ee75be36aa32649886e4f6f0ee7e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_register_and_implicature_01_listen -> audio/generated/de-DE/utterances/76564c054d643b3ac89496809e83f2ddae55ee75be36aa32649886e4f6f0ee7e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('a95bc966-093c-5dca-be82-f9353d6c66fe', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_register_and_implicature_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e6d5c846a9b49a8db1b855246a5d68bb21583c763ad728e3021882dcc25c3f08'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9750ef35-91c5-5add-b8ce-1898cb99df71', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('a95bc966-093c-5dca-be82-f9353d6c66fe', 1), 'e6d5c846a9b49a8db1b855246a5d68bb21583c763ad728e3021882dcc25c3f08',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/76564c054d643b3ac89496809e83f2ddae55ee75be36aa32649886e4f6f0ee7e.mp3', 5250, '2026-09-13 14:05:23.866262', 'fc1ba1447e8437fbaa0beccfed18ab8bb98c32d84a9f20fea93d3146be8344a2', 'validated', '{"audio_key":"76564c054d643b3ac89496809e83f2ddae55ee75be36aa32649886e4f6f0ee7e","entity_key":"ex_register_and_implicature_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fc1ba1447e8437fbaa0beccfed18ab8bb98c32d84a9f20fea93d3146be8344a2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/76564c054d643b3ac89496809e83f2ddae55ee75be36aa32649886e4f6f0ee7e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_counterfactual_reasoning_01 -> audio/generated/de-DE/utterances/7aecb0406cd5a57dca55300a3cb5f564e78dbaa6a6144b5dcc859fcfe4405164.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8d484c64-32ed-58b8-a60c-7ede83ef05b3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_counterfactual_reasoning_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6aeea3845c8e6d3830d1b560067419dcf612a49611311b6615d99c98786a3f72'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4c789e11-3662-5912-9595-ca3fd715f1dc', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8d484c64-32ed-58b8-a60c-7ede83ef05b3', 1), '6aeea3845c8e6d3830d1b560067419dcf612a49611311b6615d99c98786a3f72',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/7aecb0406cd5a57dca55300a3cb5f564e78dbaa6a6144b5dcc859fcfe4405164.mp3', 4310, '2026-09-13 14:05:24.090169', 'c953b58e0133b83b81616faec2948baf0f2b01e23cfd05314af6d35246e0748c', 'validated', '{"audio_key":"7aecb0406cd5a57dca55300a3cb5f564e78dbaa6a6144b5dcc859fcfe4405164","entity_key":"u_counterfactual_reasoning_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c953b58e0133b83b81616faec2948baf0f2b01e23cfd05314af6d35246e0748c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/7aecb0406cd5a57dca55300a3cb5f564e78dbaa6a6144b5dcc859fcfe4405164.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_counterfactual_reasoning_01_listen -> audio/generated/de-DE/utterances/7aecb0406cd5a57dca55300a3cb5f564e78dbaa6a6144b5dcc859fcfe4405164.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('b327670b-58a4-5d5b-9392-6f28cf94df4f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_counterfactual_reasoning_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6aeea3845c8e6d3830d1b560067419dcf612a49611311b6615d99c98786a3f72'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('858f9476-6d5a-5163-9e37-35b2251999df', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('b327670b-58a4-5d5b-9392-6f28cf94df4f', 1), '6aeea3845c8e6d3830d1b560067419dcf612a49611311b6615d99c98786a3f72',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/7aecb0406cd5a57dca55300a3cb5f564e78dbaa6a6144b5dcc859fcfe4405164.mp3', 4310, '2026-09-13 14:05:24.090169', 'c953b58e0133b83b81616faec2948baf0f2b01e23cfd05314af6d35246e0748c', 'validated', '{"audio_key":"7aecb0406cd5a57dca55300a3cb5f564e78dbaa6a6144b5dcc859fcfe4405164","entity_key":"ex_counterfactual_reasoning_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c953b58e0133b83b81616faec2948baf0f2b01e23cfd05314af6d35246e0748c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/7aecb0406cd5a57dca55300a3cb5f564e78dbaa6a6144b5dcc859fcfe4405164.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_mediation_across_frameworks_05 -> audio/generated/de-DE/utterances/7b012e28bc271650bbce72d95faeb88e5a7aad69bdb662c4cdded381235be742.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d034ee66-e0eb-57e8-bcad-ee3b4059081d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_mediation_across_frameworks_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cb7691e1e755ad5c91edb6ade86e1a5f1b763a8a7d8304c7fa7d64941673777e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('25788c92-54c1-5f83-b346-ed62663dfe12', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d034ee66-e0eb-57e8-bcad-ee3b4059081d', 1), 'cb7691e1e755ad5c91edb6ade86e1a5f1b763a8a7d8304c7fa7d64941673777e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/7b012e28bc271650bbce72d95faeb88e5a7aad69bdb662c4cdded381235be742.mp3', 7235, '2026-09-13 14:05:25.773213', '0beb78f825f4b48fdc654d9e56751dd0a74fac2c0633ed18b2e470c585302036', 'validated', '{"audio_key":"7b012e28bc271650bbce72d95faeb88e5a7aad69bdb662c4cdded381235be742","entity_key":"u_mediation_across_frameworks_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0beb78f825f4b48fdc654d9e56751dd0a74fac2c0633ed18b2e470c585302036","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/7b012e28bc271650bbce72d95faeb88e5a7aad69bdb662c4cdded381235be742.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_mediation_across_frameworks_03_listen -> audio/generated/de-DE/utterances/7b012e28bc271650bbce72d95faeb88e5a7aad69bdb662c4cdded381235be742.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('3358ea73-18bf-529e-884a-c45a508e25eb', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_mediation_across_frameworks_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cb7691e1e755ad5c91edb6ade86e1a5f1b763a8a7d8304c7fa7d64941673777e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6716734b-d974-5d38-b2e8-fb4031204047', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('3358ea73-18bf-529e-884a-c45a508e25eb', 1), 'cb7691e1e755ad5c91edb6ade86e1a5f1b763a8a7d8304c7fa7d64941673777e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/7b012e28bc271650bbce72d95faeb88e5a7aad69bdb662c4cdded381235be742.mp3', 7235, '2026-09-13 14:05:25.773213', '0beb78f825f4b48fdc654d9e56751dd0a74fac2c0633ed18b2e470c585302036', 'validated', '{"audio_key":"7b012e28bc271650bbce72d95faeb88e5a7aad69bdb662c4cdded381235be742","entity_key":"ex_mediation_across_frameworks_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0beb78f825f4b48fdc654d9e56751dd0a74fac2c0633ed18b2e470c585302036","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/7b012e28bc271650bbce72d95faeb88e5a7aad69bdb662c4cdded381235be742.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_expert_briefing_capstone_04 -> audio/generated/de-DE/utterances/7e899c670338975743ba4811c6641c126d43fadbd6cbe3eb2cce6f5074c710cd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2cf81598-4a0c-531f-b42a-76e4cdbae118', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_expert_briefing_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '39992ff97e55eab4cdeb09da2df60677955c6ff9b7415ee77e70f6d1a3f1624e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('36fcdcd2-0031-5d6b-9d0f-86a6c2f752b2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2cf81598-4a0c-531f-b42a-76e4cdbae118', 1), '39992ff97e55eab4cdeb09da2df60677955c6ff9b7415ee77e70f6d1a3f1624e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/7e899c670338975743ba4811c6641c126d43fadbd6cbe3eb2cce6f5074c710cd.mp3', 5982, '2026-09-13 14:05:25.797180', '414970bf1cdc6d8e17b6321c34626acf2e932159aaebe9f1dd52638a833e1337', 'validated', '{"audio_key":"7e899c670338975743ba4811c6641c126d43fadbd6cbe3eb2cce6f5074c710cd","entity_key":"u_expert_briefing_capstone_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"414970bf1cdc6d8e17b6321c34626acf2e932159aaebe9f1dd52638a833e1337","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/7e899c670338975743ba4811c6641c126d43fadbd6cbe3eb2cce6f5074c710cd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_legal_administrative_nuance_04 -> audio/generated/de-DE/utterances/7f53e32b3d3e20f8210adeabd24c302edb6893dc4e92925fde63455c42387718.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6f6bfabc-62da-515a-b8ff-74f321a45a2c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_legal_administrative_nuance_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9d932aa5bc8adc1df80f179f6d9390d0995a5677fd03662977b4e844ce659183'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('73b7ba78-c627-58fd-beea-1ef7fe01028d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6f6bfabc-62da-515a-b8ff-74f321a45a2c', 1), '9d932aa5bc8adc1df80f179f6d9390d0995a5677fd03662977b4e844ce659183',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/7f53e32b3d3e20f8210adeabd24c302edb6893dc4e92925fde63455c42387718.mp3', 4179, '2026-09-13 14:05:27.224155', '54d79cb23186fd485d5d9ff8ab2dd4046da8507c80fad056cba1f9378edd77cb', 'validated', '{"audio_key":"7f53e32b3d3e20f8210adeabd24c302edb6893dc4e92925fde63455c42387718","entity_key":"u_legal_administrative_nuance_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"54d79cb23186fd485d5d9ff8ab2dd4046da8507c80fad056cba1f9378edd77cb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/7f53e32b3d3e20f8210adeabd24c302edb6893dc4e92925fde63455c42387718.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_mediation_across_frameworks_04 -> audio/generated/de-DE/utterances/81db69f70466584ff8cc91d3fce3cc09124e90210b85d605414d0f250471c156.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bebde1a8-e7b5-57ad-9cf3-23b1d1ba01d1', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_mediation_across_frameworks_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ad654faa2cb03299d1881550352cfc5025eb8a13df509728deabe4d72d58f92a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fab00b05-9b1d-582e-a3f7-5df789c39319', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bebde1a8-e7b5-57ad-9cf3-23b1d1ba01d1', 1), 'ad654faa2cb03299d1881550352cfc5025eb8a13df509728deabe4d72d58f92a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/81db69f70466584ff8cc91d3fce3cc09124e90210b85d605414d0f250471c156.mp3', 5146, '2026-09-13 14:05:27.348637', '37812cac87e7afc7f0ca4030f9ced7b92e4d2f3246a2e439223f4425f9402866', 'validated', '{"audio_key":"81db69f70466584ff8cc91d3fce3cc09124e90210b85d605414d0f250471c156","entity_key":"u_mediation_across_frameworks_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"37812cac87e7afc7f0ca4030f9ced7b92e4d2f3246a2e439223f4425f9402866","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/81db69f70466584ff8cc91d3fce3cc09124e90210b85d605414d0f250471c156.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_evidential_calibration_04 -> audio/generated/de-DE/utterances/832ebaabae8fc1964ffa9556f85c26a2f2d5fce363647a306c45817895600385.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('157a98b5-e68c-502f-b115-d748a89723ee', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_evidential_calibration_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '10855b964bfa9c57188cb9fe8cc6bf40aba15a60530218cedd579b6f9f8f7e84'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3b5aca5f-51c8-505a-8f47-47ab67ca7f63', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('157a98b5-e68c-502f-b115-d748a89723ee', 1), '10855b964bfa9c57188cb9fe8cc6bf40aba15a60530218cedd579b6f9f8f7e84',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/832ebaabae8fc1964ffa9556f85c26a2f2d5fce363647a306c45817895600385.mp3', 4545, '2026-09-13 14:05:28.754598', '86d41db19d0df88ceecd6771644163afc6ebc2fa33d9fd1b4219d88de9a9abd3', 'validated', '{"audio_key":"832ebaabae8fc1964ffa9556f85c26a2f2d5fce363647a306c45817895600385","entity_key":"u_evidential_calibration_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"86d41db19d0df88ceecd6771644163afc6ebc2fa33d9fd1b4219d88de9a9abd3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/832ebaabae8fc1964ffa9556f85c26a2f2d5fce363647a306c45817895600385.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_expert_briefing_capstone_05 -> audio/generated/de-DE/utterances/8d3b6f71edd2ce20dd49ea5b68020dcbbc644a47014d992c0c432ae3b5c71a65.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('cb80a5b0-8dcf-58a3-a10c-c7f73c944a15', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_expert_briefing_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b438c0349e4bc40be54fdd43faec457e12f8d280854953a3d0c25bed57711839'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('09ca57aa-4ba3-5fd2-856a-48f5e03270b5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('cb80a5b0-8dcf-58a3-a10c-c7f73c944a15', 1), 'b438c0349e4bc40be54fdd43faec457e12f8d280854953a3d0c25bed57711839',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8d3b6f71edd2ce20dd49ea5b68020dcbbc644a47014d992c0c432ae3b5c71a65.mp3', 5929, '2026-09-13 14:05:28.912124', 'cf0608b595b3ad4944ee539481c67bbda4516154f94a885aabe5649cd2f3bf73', 'validated', '{"audio_key":"8d3b6f71edd2ce20dd49ea5b68020dcbbc644a47014d992c0c432ae3b5c71a65","entity_key":"u_expert_briefing_capstone_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cf0608b595b3ad4944ee539481c67bbda4516154f94a885aabe5649cd2f3bf73","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8d3b6f71edd2ce20dd49ea5b68020dcbbc644a47014d992c0c432ae3b5c71a65.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_expert_briefing_capstone_03_listen -> audio/generated/de-DE/utterances/8d3b6f71edd2ce20dd49ea5b68020dcbbc644a47014d992c0c432ae3b5c71a65.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('b3dea274-aa88-5908-b28d-2be4f33cdd34', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_expert_briefing_capstone_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b438c0349e4bc40be54fdd43faec457e12f8d280854953a3d0c25bed57711839'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dfc70970-b78e-55d6-a8b6-8c7b15dc1795', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('b3dea274-aa88-5908-b28d-2be4f33cdd34', 1), 'b438c0349e4bc40be54fdd43faec457e12f8d280854953a3d0c25bed57711839',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8d3b6f71edd2ce20dd49ea5b68020dcbbc644a47014d992c0c432ae3b5c71a65.mp3', 5929, '2026-09-13 14:05:28.912124', 'cf0608b595b3ad4944ee539481c67bbda4516154f94a885aabe5649cd2f3bf73', 'validated', '{"audio_key":"8d3b6f71edd2ce20dd49ea5b68020dcbbc644a47014d992c0c432ae3b5c71a65","entity_key":"ex_expert_briefing_capstone_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cf0608b595b3ad4944ee539481c67bbda4516154f94a885aabe5649cd2f3bf73","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8d3b6f71edd2ce20dd49ea5b68020dcbbc644a47014d992c0c432ae3b5c71a65.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_counterfactual_reasoning_02 -> audio/generated/de-DE/utterances/a6d2d05954dce2d4199e56e2096f558f0382a65c2ceeb581109831ee00fb7456.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('41dbb048-5c35-52cb-a474-39828431bf25', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_counterfactual_reasoning_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ee36af802c50701877a557b588f27890d4a4cd60e74ade486bd608d1acc62c1e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e19b3531-e4ce-564f-8938-75a4ad9a8d5f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('41dbb048-5c35-52cb-a474-39828431bf25', 1), 'ee36af802c50701877a557b588f27890d4a4cd60e74ade486bd608d1acc62c1e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a6d2d05954dce2d4199e56e2096f558f0382a65c2ceeb581109831ee00fb7456.mp3', 5276, '2026-09-13 14:05:30.257945', 'e7c601c885bab39e5a6059b8437d008889737b64a5e9eedc90d554079462859a', 'validated', '{"audio_key":"a6d2d05954dce2d4199e56e2096f558f0382a65c2ceeb581109831ee00fb7456","entity_key":"u_counterfactual_reasoning_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e7c601c885bab39e5a6059b8437d008889737b64a5e9eedc90d554079462859a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a6d2d05954dce2d4199e56e2096f558f0382a65c2ceeb581109831ee00fb7456.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_definitional_disputes_06 -> audio/generated/de-DE/utterances/afdf503028a53eb0b520a53ad75af11f69097dfea911aba8fd9285eb2b48c339.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5ec6032f-1308-5901-a1fc-059d9a603162', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_definitional_disputes_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fbf53d9ad8a97cadb59186c653ecf802c2952af2d473bae10356ef4124c7734a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5bce781e-c386-5f76-86e2-496131f0af34', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5ec6032f-1308-5901-a1fc-059d9a603162', 1), 'fbf53d9ad8a97cadb59186c653ecf802c2952af2d473bae10356ef4124c7734a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/afdf503028a53eb0b520a53ad75af11f69097dfea911aba8fd9285eb2b48c339.mp3', 5929, '2026-09-13 14:05:30.505828', '33a7b6d509587092195460882b73b5864f9d91974e174a8220349c2fdc99c673', 'validated', '{"audio_key":"afdf503028a53eb0b520a53ad75af11f69097dfea911aba8fd9285eb2b48c339","entity_key":"u_definitional_disputes_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"33a7b6d509587092195460882b73b5864f9d91974e174a8220349c2fdc99c673","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/afdf503028a53eb0b520a53ad75af11f69097dfea911aba8fd9285eb2b48c339.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_evidential_calibration_01 -> audio/generated/de-DE/utterances/b1497e327364247ff70393caa84a33b21b9c1427de5d28a0f79ea791955e5af8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3dfaa8c1-19d8-5e55-948c-7b2f9abaf84f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_evidential_calibration_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '38a7c3400a0451a5c297863f968d28b8112d7d9dad14a83a0c1f46787e96aa6a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b9e1700a-2017-5d70-a222-ac9cd44718bd', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3dfaa8c1-19d8-5e55-948c-7b2f9abaf84f', 1), '38a7c3400a0451a5c297863f968d28b8112d7d9dad14a83a0c1f46787e96aa6a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b1497e327364247ff70393caa84a33b21b9c1427de5d28a0f79ea791955e5af8.mp3', 5015, '2026-09-13 14:05:31.731600', '5bd80ae35642c71437ee37b3820f447b874e7a601e334b39178551ca6f3c285a', 'validated', '{"audio_key":"b1497e327364247ff70393caa84a33b21b9c1427de5d28a0f79ea791955e5af8","entity_key":"u_evidential_calibration_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5bd80ae35642c71437ee37b3820f447b874e7a601e334b39178551ca6f3c285a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b1497e327364247ff70393caa84a33b21b9c1427de5d28a0f79ea791955e5af8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_evidential_calibration_01_listen -> audio/generated/de-DE/utterances/b1497e327364247ff70393caa84a33b21b9c1427de5d28a0f79ea791955e5af8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('8f78f190-70ff-5a3e-a135-58c3677b91a7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_evidential_calibration_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '38a7c3400a0451a5c297863f968d28b8112d7d9dad14a83a0c1f46787e96aa6a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eb193a13-a221-5ef8-8dfe-d3b0382f1700', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('8f78f190-70ff-5a3e-a135-58c3677b91a7', 1), '38a7c3400a0451a5c297863f968d28b8112d7d9dad14a83a0c1f46787e96aa6a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b1497e327364247ff70393caa84a33b21b9c1427de5d28a0f79ea791955e5af8.mp3', 5015, '2026-09-13 14:05:31.731600', '5bd80ae35642c71437ee37b3820f447b874e7a601e334b39178551ca6f3c285a', 'validated', '{"audio_key":"b1497e327364247ff70393caa84a33b21b9c1427de5d28a0f79ea791955e5af8","entity_key":"ex_evidential_calibration_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5bd80ae35642c71437ee37b3820f447b874e7a601e334b39178551ca6f3c285a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b1497e327364247ff70393caa84a33b21b9c1427de5d28a0f79ea791955e5af8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_compressed_synthesis_04 -> audio/generated/de-DE/utterances/b83bacecfd45f67432399e5f86df1d78a0c8ff1bc1d62f15beba4454119a4aeb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1ec0cae0-53f4-586b-90e2-7ab6e3ee14f9', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_compressed_synthesis_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7509e5cb34f1b597ee7e906a2e684c7e94503bbf79ad32fca573e7c2f97d8061'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c0bacf6f-044d-5c66-b46e-87b0c131c68b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1ec0cae0-53f4-586b-90e2-7ab6e3ee14f9', 1), '7509e5cb34f1b597ee7e906a2e684c7e94503bbf79ad32fca573e7c2f97d8061',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b83bacecfd45f67432399e5f86df1d78a0c8ff1bc1d62f15beba4454119a4aeb.mp3', 4911, '2026-09-13 14:05:32.077488', 'dc881bf6b772af430ab62ae4824cd1f670288294085be7363f51dbe6f75316f7', 'validated', '{"audio_key":"b83bacecfd45f67432399e5f86df1d78a0c8ff1bc1d62f15beba4454119a4aeb","entity_key":"u_compressed_synthesis_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dc881bf6b772af430ab62ae4824cd1f670288294085be7363f51dbe6f75316f7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b83bacecfd45f67432399e5f86df1d78a0c8ff1bc1d62f15beba4454119a4aeb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_compressed_synthesis_02 -> audio/generated/de-DE/utterances/bc1498d7cd406bb9ead71bcff64a554bd874b89ec8d1f7ddfc10d9b518a996d2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b2742894-e07f-5807-9df0-103d2d5166b6', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_compressed_synthesis_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '64766246457eadb3176bbcb67fd8a75330a6770f5244dc777a3d888c31e8df87'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b245c94b-8bbb-5b79-af58-45dd9e4294d4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b2742894-e07f-5807-9df0-103d2d5166b6', 1), '64766246457eadb3176bbcb67fd8a75330a6770f5244dc777a3d888c31e8df87',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/bc1498d7cd406bb9ead71bcff64a554bd874b89ec8d1f7ddfc10d9b518a996d2.mp3', 5198, '2026-09-13 14:05:33.669254', 'deca0084b3075e3f7a1e8723c9dd35b128814c9a2ce47566501289d59edc73b9', 'validated', '{"audio_key":"bc1498d7cd406bb9ead71bcff64a554bd874b89ec8d1f7ddfc10d9b518a996d2","entity_key":"u_compressed_synthesis_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"deca0084b3075e3f7a1e8723c9dd35b128814c9a2ce47566501289d59edc73b9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/bc1498d7cd406bb9ead71bcff64a554bd874b89ec8d1f7ddfc10d9b518a996d2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_evidential_calibration_03 -> audio/generated/de-DE/utterances/bd386c4a70abd4d88c1f3d26cb2a927d22162067587b152eb4a42933da796640.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('67831954-dcb8-51ca-b7a3-094621f39c31', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_evidential_calibration_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ed3b1db0827e2dd21cd87678ec1d96a78b27b903e658d0ca040a53a5756af6f0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b519f2ab-0959-530f-a0dd-c74afe3b8ed3', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('67831954-dcb8-51ca-b7a3-094621f39c31', 1), 'ed3b1db0827e2dd21cd87678ec1d96a78b27b903e658d0ca040a53a5756af6f0',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/bd386c4a70abd4d88c1f3d26cb2a927d22162067587b152eb4a42933da796640.mp3', 5198, '2026-09-13 14:05:33.602705', '1e7985f6b109e18bfe7139e50e8f87dee34f17cccbc16475c0d2443e914b59d4', 'validated', '{"audio_key":"bd386c4a70abd4d88c1f3d26cb2a927d22162067587b152eb4a42933da796640","entity_key":"u_evidential_calibration_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1e7985f6b109e18bfe7139e50e8f87dee34f17cccbc16475c0d2443e914b59d4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/bd386c4a70abd4d88c1f3d26cb2a927d22162067587b152eb4a42933da796640.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_evidential_calibration_02_listen -> audio/generated/de-DE/utterances/bd386c4a70abd4d88c1f3d26cb2a927d22162067587b152eb4a42933da796640.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('6ff60221-2b00-53c6-9d0f-97e9db0eb172', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_evidential_calibration_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ed3b1db0827e2dd21cd87678ec1d96a78b27b903e658d0ca040a53a5756af6f0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5eb3a6c5-56de-59cc-8d64-8b837587c112', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('6ff60221-2b00-53c6-9d0f-97e9db0eb172', 1), 'ed3b1db0827e2dd21cd87678ec1d96a78b27b903e658d0ca040a53a5756af6f0',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/bd386c4a70abd4d88c1f3d26cb2a927d22162067587b152eb4a42933da796640.mp3', 5198, '2026-09-13 14:05:33.602705', '1e7985f6b109e18bfe7139e50e8f87dee34f17cccbc16475c0d2443e914b59d4', 'validated', '{"audio_key":"bd386c4a70abd4d88c1f3d26cb2a927d22162067587b152eb4a42933da796640","entity_key":"ex_evidential_calibration_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1e7985f6b109e18bfe7139e50e8f87dee34f17cccbc16475c0d2443e914b59d4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/bd386c4a70abd4d88c1f3d26cb2a927d22162067587b152eb4a42933da796640.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_register_and_implicature_03 -> audio/generated/de-DE/utterances/bf5b3ab266f57784373686d4a1e007bc17ff972004927fe3479cc79168a83287.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('db21bd59-0a7f-551c-b571-43972d910e11', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_register_and_implicature_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a185650f3b86c0b7187a03ec8572e0e9c4ca3d686db8cb892e870cc0c231bef0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('63f1638a-6480-5c65-9815-f09a1aec8e12', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('db21bd59-0a7f-551c-b571-43972d910e11', 1), 'a185650f3b86c0b7187a03ec8572e0e9c4ca3d686db8cb892e870cc0c231bef0',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/bf5b3ab266f57784373686d4a1e007bc17ff972004927fe3479cc79168a83287.mp3', 4440, '2026-09-13 14:05:34.983465', '5ed402e038ac159805ea1cc7d9b360a3af9bd3b0536d2dd477e2602c44e152ba', 'validated', '{"audio_key":"bf5b3ab266f57784373686d4a1e007bc17ff972004927fe3479cc79168a83287","entity_key":"u_register_and_implicature_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5ed402e038ac159805ea1cc7d9b360a3af9bd3b0536d2dd477e2602c44e152ba","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/bf5b3ab266f57784373686d4a1e007bc17ff972004927fe3479cc79168a83287.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_register_and_implicature_02_listen -> audio/generated/de-DE/utterances/bf5b3ab266f57784373686d4a1e007bc17ff972004927fe3479cc79168a83287.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('f5c8a1ec-178d-5b14-b9da-7353b8512604', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_register_and_implicature_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a185650f3b86c0b7187a03ec8572e0e9c4ca3d686db8cb892e870cc0c231bef0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('650a73cf-d47f-5c5e-abaa-532275eca96b', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('f5c8a1ec-178d-5b14-b9da-7353b8512604', 1), 'a185650f3b86c0b7187a03ec8572e0e9c4ca3d686db8cb892e870cc0c231bef0',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/bf5b3ab266f57784373686d4a1e007bc17ff972004927fe3479cc79168a83287.mp3', 4440, '2026-09-13 14:05:34.983465', '5ed402e038ac159805ea1cc7d9b360a3af9bd3b0536d2dd477e2602c44e152ba', 'validated', '{"audio_key":"bf5b3ab266f57784373686d4a1e007bc17ff972004927fe3479cc79168a83287","entity_key":"ex_register_and_implicature_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5ed402e038ac159805ea1cc7d9b360a3af9bd3b0536d2dd477e2602c44e152ba","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/bf5b3ab266f57784373686d4a1e007bc17ff972004927fe3479cc79168a83287.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_humor_irony_repair_04 -> audio/generated/de-DE/utterances/c31248869d19a36c101db0ac3637865deb75f23deb36b0e790bd2b4ac19cabce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1928367a-633a-54e4-a784-70e5f9569521', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_humor_irony_repair_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c08751a30ae28023400031404b29f623b0fe4813c71aac438aef8e06335ac0c4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('62b5a437-5353-5423-8fa2-b8b6b1f49853', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1928367a-633a-54e4-a784-70e5f9569521', 1), 'c08751a30ae28023400031404b29f623b0fe4813c71aac438aef8e06335ac0c4',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c31248869d19a36c101db0ac3637865deb75f23deb36b0e790bd2b4ac19cabce.mp3', 5616, '2026-09-13 14:05:35.235977', '8005d90b6502ecb207c2b0f64ae2fa24ff07ac6d759a3368f165e937951572f3', 'validated', '{"audio_key":"c31248869d19a36c101db0ac3637865deb75f23deb36b0e790bd2b4ac19cabce","entity_key":"u_humor_irony_repair_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8005d90b6502ecb207c2b0f64ae2fa24ff07ac6d759a3368f165e937951572f3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c31248869d19a36c101db0ac3637865deb75f23deb36b0e790bd2b4ac19cabce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_live_reformulation_02 -> audio/generated/de-DE/utterances/cbf9dfc997835b170ba1117a18baf3479623aee92eb2c317417566e91184ee45.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c4aa9b98-1060-5182-bde8-0f99bb7a6a38', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_live_reformulation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '25d541c704a3a741ce020021ca9ea281aadb92486dc38c459ea01048738d90f1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f0f9cbe3-f7fa-5dbd-9e37-91d2118e32b1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c4aa9b98-1060-5182-bde8-0f99bb7a6a38', 1), '25d541c704a3a741ce020021ca9ea281aadb92486dc38c459ea01048738d90f1',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/cbf9dfc997835b170ba1117a18baf3479623aee92eb2c317417566e91184ee45.mp3', 4362, '2026-09-13 14:05:36.339561', '62702e1dd2a58482710e6c0be60e0d97bcdd0deba95d211ad734cece835f84ce', 'validated', '{"audio_key":"cbf9dfc997835b170ba1117a18baf3479623aee92eb2c317417566e91184ee45","entity_key":"u_live_reformulation_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"62702e1dd2a58482710e6c0be60e0d97bcdd0deba95d211ad734cece835f84ce","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/cbf9dfc997835b170ba1117a18baf3479623aee92eb2c317417566e91184ee45.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_expert_briefing_capstone_03 -> audio/generated/de-DE/utterances/cfc0a57e5720bda6fa8dc9062a9ee28417aa969ad3b8c4a27ba360894207974e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7471e779-60c8-53b1-b309-f3fc27070a68', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_expert_briefing_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c6b1f4390c543b5f26d15552678d918b1bbd84a2294a9513b3066ebd7b0938a0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9d4ce808-bd7e-58d4-a6c6-fed4a7f5eea4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7471e779-60c8-53b1-b309-f3fc27070a68', 1), 'c6b1f4390c543b5f26d15552678d918b1bbd84a2294a9513b3066ebd7b0938a0',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/cfc0a57e5720bda6fa8dc9062a9ee28417aa969ad3b8c4a27ba360894207974e.mp3', 5851, '2026-09-13 14:05:36.784397', 'e9f89241d123b20d7e215a75a19da62067e6dcabdab2f4cf2d3d832583928804', 'validated', '{"audio_key":"cfc0a57e5720bda6fa8dc9062a9ee28417aa969ad3b8c4a27ba360894207974e","entity_key":"u_expert_briefing_capstone_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e9f89241d123b20d7e215a75a19da62067e6dcabdab2f4cf2d3d832583928804","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/cfc0a57e5720bda6fa8dc9062a9ee28417aa969ad3b8c4a27ba360894207974e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_expert_briefing_capstone_02_listen -> audio/generated/de-DE/utterances/cfc0a57e5720bda6fa8dc9062a9ee28417aa969ad3b8c4a27ba360894207974e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('08cc8339-8c55-584a-8dd9-10324b6cfa45', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_expert_briefing_capstone_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c6b1f4390c543b5f26d15552678d918b1bbd84a2294a9513b3066ebd7b0938a0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('131f1048-0806-58e4-9650-ba99ecfac827', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('08cc8339-8c55-584a-8dd9-10324b6cfa45', 1), 'c6b1f4390c543b5f26d15552678d918b1bbd84a2294a9513b3066ebd7b0938a0',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/cfc0a57e5720bda6fa8dc9062a9ee28417aa969ad3b8c4a27ba360894207974e.mp3', 5851, '2026-09-13 14:05:36.784397', 'e9f89241d123b20d7e215a75a19da62067e6dcabdab2f4cf2d3d832583928804', 'validated', '{"audio_key":"cfc0a57e5720bda6fa8dc9062a9ee28417aa969ad3b8c4a27ba360894207974e","entity_key":"ex_expert_briefing_capstone_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e9f89241d123b20d7e215a75a19da62067e6dcabdab2f4cf2d3d832583928804","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/cfc0a57e5720bda6fa8dc9062a9ee28417aa969ad3b8c4a27ba360894207974e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_humor_irony_repair_05 -> audio/generated/de-DE/utterances/d6a2e2e66fbd82a12a38c74181972eaf81428ea3403d60506e073054da6b1d10.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e9b7243b-ec1c-5f68-8677-c6fcdb695331', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_humor_irony_repair_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e1ada89955bd1a38502152c884695bb02d9f101cb2516f7d4d9fbc6b693fbe88'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c87d6be1-0206-5c26-afe7-a37164b2fee4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e9b7243b-ec1c-5f68-8677-c6fcdb695331', 1), 'e1ada89955bd1a38502152c884695bb02d9f101cb2516f7d4d9fbc6b693fbe88',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d6a2e2e66fbd82a12a38c74181972eaf81428ea3403d60506e073054da6b1d10.mp3', 5694, '2026-09-13 14:05:37.952787', 'f2a750fade8e6baf4b3e5e67b2fa75a0d5666fa07a86de94eee0cb01b61141e0', 'validated', '{"audio_key":"d6a2e2e66fbd82a12a38c74181972eaf81428ea3403d60506e073054da6b1d10","entity_key":"u_humor_irony_repair_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f2a750fade8e6baf4b3e5e67b2fa75a0d5666fa07a86de94eee0cb01b61141e0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d6a2e2e66fbd82a12a38c74181972eaf81428ea3403d60506e073054da6b1d10.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_humor_irony_repair_03_listen -> audio/generated/de-DE/utterances/d6a2e2e66fbd82a12a38c74181972eaf81428ea3403d60506e073054da6b1d10.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ed7f40b3-076d-585d-b406-f11bf57415fb', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_humor_irony_repair_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e1ada89955bd1a38502152c884695bb02d9f101cb2516f7d4d9fbc6b693fbe88'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a0a0a104-154e-5fbd-98f0-53dd5985bc65', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ed7f40b3-076d-585d-b406-f11bf57415fb', 1), 'e1ada89955bd1a38502152c884695bb02d9f101cb2516f7d4d9fbc6b693fbe88',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d6a2e2e66fbd82a12a38c74181972eaf81428ea3403d60506e073054da6b1d10.mp3', 5694, '2026-09-13 14:05:37.952787', 'f2a750fade8e6baf4b3e5e67b2fa75a0d5666fa07a86de94eee0cb01b61141e0', 'validated', '{"audio_key":"d6a2e2e66fbd82a12a38c74181972eaf81428ea3403d60506e073054da6b1d10","entity_key":"ex_humor_irony_repair_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f2a750fade8e6baf4b3e5e67b2fa75a0d5666fa07a86de94eee0cb01b61141e0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d6a2e2e66fbd82a12a38c74181972eaf81428ea3403d60506e073054da6b1d10.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_humor_irony_repair_01 -> audio/generated/de-DE/utterances/d7fde061d838eca2b6a7ac3a9cbd6fa2af91c48337ae764c8c7ca632071205d2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('23b073be-423c-589a-89bf-47e5ee7b5559', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_humor_irony_repair_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3770b1775e3bc46c1574de566dae1e1d05a4f2b796ac4e3e7e47de1a8774c80e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bdc5cecf-ac0f-5ca9-9242-792f74401a68', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('23b073be-423c-589a-89bf-47e5ee7b5559', 1), '3770b1775e3bc46c1574de566dae1e1d05a4f2b796ac4e3e7e47de1a8774c80e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d7fde061d838eca2b6a7ac3a9cbd6fa2af91c48337ae764c8c7ca632071205d2.mp3', 4963, '2026-09-13 14:05:38.259402', 'feb59c869adbb9fff851281a9e720b3c6535b2eb5b5dd62624dc872a737de2c1', 'validated', '{"audio_key":"d7fde061d838eca2b6a7ac3a9cbd6fa2af91c48337ae764c8c7ca632071205d2","entity_key":"u_humor_irony_repair_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"feb59c869adbb9fff851281a9e720b3c6535b2eb5b5dd62624dc872a737de2c1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d7fde061d838eca2b6a7ac3a9cbd6fa2af91c48337ae764c8c7ca632071205d2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_humor_irony_repair_01_listen -> audio/generated/de-DE/utterances/d7fde061d838eca2b6a7ac3a9cbd6fa2af91c48337ae764c8c7ca632071205d2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('56af0c8b-7ab2-5e40-a8b8-7af27a52c66e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_humor_irony_repair_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3770b1775e3bc46c1574de566dae1e1d05a4f2b796ac4e3e7e47de1a8774c80e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fa4b350e-3f51-5eb3-9b4a-a274b87fa226', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('56af0c8b-7ab2-5e40-a8b8-7af27a52c66e', 1), '3770b1775e3bc46c1574de566dae1e1d05a4f2b796ac4e3e7e47de1a8774c80e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d7fde061d838eca2b6a7ac3a9cbd6fa2af91c48337ae764c8c7ca632071205d2.mp3', 4963, '2026-09-13 14:05:38.259402', 'feb59c869adbb9fff851281a9e720b3c6535b2eb5b5dd62624dc872a737de2c1', 'validated', '{"audio_key":"d7fde061d838eca2b6a7ac3a9cbd6fa2af91c48337ae764c8c7ca632071205d2","entity_key":"ex_humor_irony_repair_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"feb59c869adbb9fff851281a9e720b3c6535b2eb5b5dd62624dc872a737de2c1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d7fde061d838eca2b6a7ac3a9cbd6fa2af91c48337ae764c8c7ca632071205d2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_register_and_implicature_02 -> audio/generated/de-DE/utterances/e280647fb84c089588fdc4c20e85ded288c4b792d976b9a7a30bf12f8d062be1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9f6caf9d-8f88-556d-9566-a6296395d65e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_register_and_implicature_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b6543c3362ef1e7e0d6346d49e9d82bcb746d8b77bc69c87bead58bf3e74afad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dc4b6379-3541-54f7-9691-7d3cb1b7a9e3', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9f6caf9d-8f88-556d-9566-a6296395d65e', 1), 'b6543c3362ef1e7e0d6346d49e9d82bcb746d8b77bc69c87bead58bf3e74afad',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e280647fb84c089588fdc4c20e85ded288c4b792d976b9a7a30bf12f8d062be1.mp3', 4545, '2026-09-13 14:05:39.386338', '8bc81aba043a62817e75e0eb0e4c161df52ac5ea2ebec4061e5a8902867cb799', 'validated', '{"audio_key":"e280647fb84c089588fdc4c20e85ded288c4b792d976b9a7a30bf12f8d062be1","entity_key":"u_register_and_implicature_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8bc81aba043a62817e75e0eb0e4c161df52ac5ea2ebec4061e5a8902867cb799","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e280647fb84c089588fdc4c20e85ded288c4b792d976b9a7a30bf12f8d062be1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_humor_irony_repair_02 -> audio/generated/de-DE/utterances/e5184977b0fb6f27c02553facb0f1d68202a9f373fe7260f5e391f1aa00f87f0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e396089b-aef5-5ccb-9508-e7c96fbd9c88', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_humor_irony_repair_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '326732fdae54c335f12679386643426659e9f27e4db5bad09996444e9e2f9ae8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('46139cbe-aa53-5031-b13f-aa7f6031724a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e396089b-aef5-5ccb-9508-e7c96fbd9c88', 1), '326732fdae54c335f12679386643426659e9f27e4db5bad09996444e9e2f9ae8',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e5184977b0fb6f27c02553facb0f1d68202a9f373fe7260f5e391f1aa00f87f0.mp3', 6452, '2026-09-13 14:05:39.939855', '131c7f68786cfe58e42efc320e7641d6750d3ea0fc0670f155945d3f4432eb7e', 'validated', '{"audio_key":"e5184977b0fb6f27c02553facb0f1d68202a9f373fe7260f5e391f1aa00f87f0","entity_key":"u_humor_irony_repair_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"131c7f68786cfe58e42efc320e7641d6750d3ea0fc0670f155945d3f4432eb7e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e5184977b0fb6f27c02553facb0f1d68202a9f373fe7260f5e391f1aa00f87f0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_register_and_implicature_04 -> audio/generated/de-DE/utterances/ea5c74fce2dd77f47de9e95f0442b3b878a0f0305beba2c8f571cdf3d7e5d42a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('362b1664-4df3-57ad-b55c-73c04dd477d5', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_register_and_implicature_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5b858c7b5cf65d738c75ed78b4c0cb0db67b32b1970e7de99104230f25806565'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7e821358-a712-5142-804e-c32346306a1e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('362b1664-4df3-57ad-b55c-73c04dd477d5', 1), '5b858c7b5cf65d738c75ed78b4c0cb0db67b32b1970e7de99104230f25806565',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ea5c74fce2dd77f47de9e95f0442b3b878a0f0305beba2c8f571cdf3d7e5d42a.mp3', 6269, '2026-09-13 14:05:41.233479', 'd1d475240c6257c93e5d8187caeaa65bcc4d989c3423c73c6764f353733ae77c', 'validated', '{"audio_key":"ea5c74fce2dd77f47de9e95f0442b3b878a0f0305beba2c8f571cdf3d7e5d42a","entity_key":"u_register_and_implicature_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d1d475240c6257c93e5d8187caeaa65bcc4d989c3423c73c6764f353733ae77c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ea5c74fce2dd77f47de9e95f0442b3b878a0f0305beba2c8f571cdf3d7e5d42a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_counterfactual_reasoning_05 -> audio/generated/de-DE/utterances/ed21ad4f71cccb3629de4e493a054f98ece6470797d5d7c27ab8cb37779ad1ff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4cca920f-9e04-53e4-ab7a-413ff44f8232', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_counterfactual_reasoning_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4d72f957e40392ccdfb24edf58c43a1d8ddf0d5724e10e325a6ca2988ec6cf14'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('272f6559-bef3-59fb-a1cb-bd942f594078', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4cca920f-9e04-53e4-ab7a-413ff44f8232', 1), '4d72f957e40392ccdfb24edf58c43a1d8ddf0d5724e10e325a6ca2988ec6cf14',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ed21ad4f71cccb3629de4e493a054f98ece6470797d5d7c27ab8cb37779ad1ff.mp3', 5746, '2026-09-13 14:05:41.486536', '0312d823c61e7d00c646d4e65fe98ce4469dda720037f9c32ba90ad9a3e08bdb', 'validated', '{"audio_key":"ed21ad4f71cccb3629de4e493a054f98ece6470797d5d7c27ab8cb37779ad1ff","entity_key":"u_counterfactual_reasoning_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0312d823c61e7d00c646d4e65fe98ce4469dda720037f9c32ba90ad9a3e08bdb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ed21ad4f71cccb3629de4e493a054f98ece6470797d5d7c27ab8cb37779ad1ff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_counterfactual_reasoning_03_listen -> audio/generated/de-DE/utterances/ed21ad4f71cccb3629de4e493a054f98ece6470797d5d7c27ab8cb37779ad1ff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('df09e5bc-e1c8-5db7-be91-281ac750c711', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_counterfactual_reasoning_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4d72f957e40392ccdfb24edf58c43a1d8ddf0d5724e10e325a6ca2988ec6cf14'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1ca63bac-3255-5c38-90cf-6b246a87d9e9', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('df09e5bc-e1c8-5db7-be91-281ac750c711', 1), '4d72f957e40392ccdfb24edf58c43a1d8ddf0d5724e10e325a6ca2988ec6cf14',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ed21ad4f71cccb3629de4e493a054f98ece6470797d5d7c27ab8cb37779ad1ff.mp3', 5746, '2026-09-13 14:05:41.486536', '0312d823c61e7d00c646d4e65fe98ce4469dda720037f9c32ba90ad9a3e08bdb', 'validated', '{"audio_key":"ed21ad4f71cccb3629de4e493a054f98ece6470797d5d7c27ab8cb37779ad1ff","entity_key":"ex_counterfactual_reasoning_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0312d823c61e7d00c646d4e65fe98ce4469dda720037f9c32ba90ad9a3e08bdb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ed21ad4f71cccb3629de4e493a054f98ece6470797d5d7c27ab8cb37779ad1ff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_counterfactual_reasoning_04 -> audio/generated/de-DE/utterances/ed41d3e236ef98ac401a081541ab18d6aab16469685f15d5cfa353341b5f79f7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0f764a96-8f8f-5b8b-9b7b-4b0fd25d7667', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_counterfactual_reasoning_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '422b0e2f167b7d8a13b3a486545778789466f6f3fe910404e6b1a382adfdeb20'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e42db370-9a98-5bdd-8591-2f7aa5f0d5e4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0f764a96-8f8f-5b8b-9b7b-4b0fd25d7667', 1), '422b0e2f167b7d8a13b3a486545778789466f6f3fe910404e6b1a382adfdeb20',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/ed41d3e236ef98ac401a081541ab18d6aab16469685f15d5cfa353341b5f79f7.mp3', 4858, '2026-09-13 14:05:42.676852', '2f0cf84b91e01dc8602914dcb56bc80d9806b1377728b8d9e769cb5cc239ec95', 'validated', '{"audio_key":"ed41d3e236ef98ac401a081541ab18d6aab16469685f15d5cfa353341b5f79f7","entity_key":"u_counterfactual_reasoning_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2f0cf84b91e01dc8602914dcb56bc80d9806b1377728b8d9e769cb5cc239ec95","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/ed41d3e236ef98ac401a081541ab18d6aab16469685f15d5cfa353341b5f79f7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_evidential_calibration_05 -> audio/generated/de-DE/utterances/f2cc4552b09e17de824ee8ddcb9b7ebf5d74c93df9043377928e95007563d6d1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5e2bc9da-700d-50c2-920c-559246682598', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_evidential_calibration_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1d168763374a911f2bd33dc2acd8af2c5bda1efe8128ca8c11aa3dc4e27a2357'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('12ea0b81-8934-5fb4-8387-634ef82a5b20', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5e2bc9da-700d-50c2-920c-559246682598', 1), '1d168763374a911f2bd33dc2acd8af2c5bda1efe8128ca8c11aa3dc4e27a2357',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f2cc4552b09e17de824ee8ddcb9b7ebf5d74c93df9043377928e95007563d6d1.mp3', 5799, '2026-09-13 14:05:43.037730', '9169e54e319633c2f406caa04ca39976eddca86b738411aaa075091c6589b83d', 'validated', '{"audio_key":"f2cc4552b09e17de824ee8ddcb9b7ebf5d74c93df9043377928e95007563d6d1","entity_key":"u_evidential_calibration_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9169e54e319633c2f406caa04ca39976eddca86b738411aaa075091c6589b83d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f2cc4552b09e17de824ee8ddcb9b7ebf5d74c93df9043377928e95007563d6d1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_evidential_calibration_03_listen -> audio/generated/de-DE/utterances/f2cc4552b09e17de824ee8ddcb9b7ebf5d74c93df9043377928e95007563d6d1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('fdb5d30f-56f6-5a84-852d-3ca1d0f803ca', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_evidential_calibration_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1d168763374a911f2bd33dc2acd8af2c5bda1efe8128ca8c11aa3dc4e27a2357'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c427e5e0-9e96-5191-a690-235c5a74d776', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('fdb5d30f-56f6-5a84-852d-3ca1d0f803ca', 1), '1d168763374a911f2bd33dc2acd8af2c5bda1efe8128ca8c11aa3dc4e27a2357',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f2cc4552b09e17de824ee8ddcb9b7ebf5d74c93df9043377928e95007563d6d1.mp3', 5799, '2026-09-13 14:05:43.037730', '9169e54e319633c2f406caa04ca39976eddca86b738411aaa075091c6589b83d', 'validated', '{"audio_key":"f2cc4552b09e17de824ee8ddcb9b7ebf5d74c93df9043377928e95007563d6d1","entity_key":"ex_evidential_calibration_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9169e54e319633c2f406caa04ca39976eddca86b738411aaa075091c6589b83d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f2cc4552b09e17de824ee8ddcb9b7ebf5d74c93df9043377928e95007563d6d1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_definitional_disputes_03 -> audio/generated/de-DE/utterances/fe53fc341e080255eaa2390b7a661db22051da413a8233bb7d2670ee79b37333.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('48c5a687-8e26-55ae-9122-56c9c309876b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_definitional_disputes_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7e1db6305633c0f23e621aef4767b6c04e2d72d7cd391abb55ee693ca3e8e27a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('07f725e8-7207-5fa7-843e-5d33db8a8d31', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('48c5a687-8e26-55ae-9122-56c9c309876b', 1), '7e1db6305633c0f23e621aef4767b6c04e2d72d7cd391abb55ee693ca3e8e27a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/fe53fc341e080255eaa2390b7a661db22051da413a8233bb7d2670ee79b37333.mp3', 3657, '2026-09-13 14:05:43.962118', '9555335461775f9d7b151bf89d655427a7563f8c0f2e907e5fa0b1337a76358e', 'validated', '{"audio_key":"fe53fc341e080255eaa2390b7a661db22051da413a8233bb7d2670ee79b37333","entity_key":"u_definitional_disputes_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9555335461775f9d7b151bf89d655427a7563f8c0f2e907e5fa0b1337a76358e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/fe53fc341e080255eaa2390b7a661db22051da413a8233bb7d2670ee79b37333.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_definitional_disputes_02_listen -> audio/generated/de-DE/utterances/fe53fc341e080255eaa2390b7a661db22051da413a8233bb7d2670ee79b37333.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('788b264f-88bb-5f8e-b722-f837c00854ad', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_definitional_disputes_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7e1db6305633c0f23e621aef4767b6c04e2d72d7cd391abb55ee693ca3e8e27a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3f148966-f0b7-59c8-ab7a-43c55444ca9f', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('788b264f-88bb-5f8e-b722-f837c00854ad', 1), '7e1db6305633c0f23e621aef4767b6c04e2d72d7cd391abb55ee693ca3e8e27a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/fe53fc341e080255eaa2390b7a661db22051da413a8233bb7d2670ee79b37333.mp3', 3657, '2026-09-13 14:05:43.962118', '9555335461775f9d7b151bf89d655427a7563f8c0f2e907e5fa0b1337a76358e', 'validated', '{"audio_key":"fe53fc341e080255eaa2390b7a661db22051da413a8233bb7d2670ee79b37333","entity_key":"ex_definitional_disputes_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9555335461775f9d7b151bf89d655427a7563f8c0f2e907e5fa0b1337a76358e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/fe53fc341e080255eaa2390b7a661db22051da413a8233bb7d2670ee79b37333.mp3"}'
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

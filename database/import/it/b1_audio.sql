-- Generated audio link import for it-IT B1
-- Source manifest: audio/manifests/it/B1.json
-- Generated rows: 260
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'it' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'it-IT' LIMIT 1);
START TRANSACTION;

-- d_b1_city_project_capstone_02:3 -> audio/generated/it-IT/dialogues/00355a565467bca23f8141c7c4360c9f7fd9d46b90f2b7107cb308ce2e230788.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('88b8b735-edee-5fa6-adbd-e896e7164041', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b1_city_project_capstone_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '97339727eaa17302574babe63fe6f35a539ff11e56d8e0548dc5f357ce7e27e6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9af63aec-628a-54a9-a43d-9b972ff57b57', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('88b8b735-edee-5fa6-adbd-e896e7164041', 1), '97339727eaa17302574babe63fe6f35a539ff11e56d8e0548dc5f357ce7e27e6',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/00355a565467bca23f8141c7c4360c9f7fd9d46b90f2b7107cb308ce2e230788.mp3', 2324, '2026-09-14 04:00:28.404536', 'ddb0a52c30801f8f81cfa300175bfe362e5899a3598716b3990328483c4623b7', 'validated', '{"audio_key":"00355a565467bca23f8141c7c4360c9f7fd9d46b90f2b7107cb308ce2e230788","entity_key":"d_b1_city_project_capstone_02:3","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"ddb0a52c30801f8f81cfa300175bfe362e5899a3598716b3990328483c4623b7","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/00355a565467bca23f8141c7c4360c9f7fd9d46b90f2b7107cb308ce2e230788.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_real_conditions_01:1 -> audio/generated/it-IT/dialogues/0476203ac2ec5ad1e271b7a29066936fbeaa04493843cf462f5196602f8c3ac6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0c68550d-cd91-5115-bff7-c65b6e4cdac4', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_real_conditions_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '33080f64a33f90a8faaf87384905d30591ad7dea8903f128cda153cea397fd54'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c0688211-8663-54d8-b9d2-51952cb80dac', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0c68550d-cd91-5115-bff7-c65b6e4cdac4', 1), '33080f64a33f90a8faaf87384905d30591ad7dea8903f128cda153cea397fd54',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/0476203ac2ec5ad1e271b7a29066936fbeaa04493843cf462f5196602f8c3ac6.mp3', 1750, '2026-09-14 04:00:28.280741', 'ca0c3e01f2e40cafc840275cdfb6e4d194d8627022afdac35b763c076fe7b21f', 'validated', '{"audio_key":"0476203ac2ec5ad1e271b7a29066936fbeaa04493843cf462f5196602f8c3ac6","entity_key":"d_real_conditions_01:1","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"ca0c3e01f2e40cafc840275cdfb6e4d194d8627022afdac35b763c076fe7b21f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/0476203ac2ec5ad1e271b7a29066936fbeaa04493843cf462f5196602f8c3ac6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_changes_over_time_01:2 -> audio/generated/it-IT/dialogues/074256d67c371e51c17204c52dc2f30aa83cc64c79847f7d9ce522e46e6ac10c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f743f043-abf4-593f-bca5-3dbd1e20980f', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_changes_over_time_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd3b2236454659aac577497b379de7ac5c1547d2e21b3129e0f95bb6ab18c80a0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7aa91262-2867-5410-86da-bcdd0e094547', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f743f043-abf4-593f-bca5-3dbd1e20980f', 1), 'd3b2236454659aac577497b379de7ac5c1547d2e21b3129e0f95bb6ab18c80a0',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/074256d67c371e51c17204c52dc2f30aa83cc64c79847f7d9ce522e46e6ac10c.mp3', 4545, '2026-09-14 04:00:29.766985', '2256386069e32a1d287de69aa0b6b4b0adcbf4f12fb09e87cc532f987875641c', 'validated', '{"audio_key":"074256d67c371e51c17204c52dc2f30aa83cc64c79847f7d9ce522e46e6ac10c","entity_key":"d_changes_over_time_01:2","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2256386069e32a1d287de69aa0b6b4b0adcbf4f12fb09e87cc532f987875641c","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/074256d67c371e51c17204c52dc2f30aa83cc64c79847f7d9ce522e46e6ac10c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_stories_and_background_02:3 -> audio/generated/it-IT/dialogues/09def437ac0334b6848008d8557a1d168f2ceadc2c582cf866540eab565c7be2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7bca0119-a09f-5638-9ecf-80e28e69fc33', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_stories_and_background_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a3f312d2c76dfb05446300c223ee604dc8b66da7f7e8c2010a7ee07a4bfd5fb4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('52ff8ff6-a6b9-51f2-91fb-3efb12bc2768', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7bca0119-a09f-5638-9ecf-80e28e69fc33', 1), 'a3f312d2c76dfb05446300c223ee604dc8b66da7f7e8c2010a7ee07a4bfd5fb4',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/09def437ac0334b6848008d8557a1d168f2ceadc2c582cf866540eab565c7be2.mp3', 1671, '2026-09-14 04:00:29.542626', '22bc8d237d95207e7198e5cd2d6f38bf925284f7ce9d7a5fe93d1a98f4b87f02', 'validated', '{"audio_key":"09def437ac0334b6848008d8557a1d168f2ceadc2c582cf866540eab565c7be2","entity_key":"d_stories_and_background_02:3","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"22bc8d237d95207e7198e5cd2d6f38bf925284f7ce9d7a5fe93d1a98f4b87f02","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/09def437ac0334b6848008d8557a1d168f2ceadc2c582cf866540eab565c7be2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_real_conditions_02:4 -> audio/generated/it-IT/dialogues/0a45422fa23f9976c6f60b150f6eb1217253daf637297140ad95d8f65ae84c1d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('137ac707-197a-5705-a794-efd8ae2422b7', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_real_conditions_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c14987c0aa518b27ae2d4be0ceea48bbf27f5bbbdf90d92ed84e7fc4cc25cf53'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('866db08c-1214-5e78-8d8f-73d1ea9745ca', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('137ac707-197a-5705-a794-efd8ae2422b7', 1), 'c14987c0aa518b27ae2d4be0ceea48bbf27f5bbbdf90d92ed84e7fc4cc25cf53',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/0a45422fa23f9976c6f60b150f6eb1217253daf637297140ad95d8f65ae84c1d.mp3', 1697, '2026-09-14 04:00:30.648988', '4927ecc23254d4194451d35e6db13bdd77ad33a9ee9df7400b05b889febaadb6', 'validated', '{"audio_key":"0a45422fa23f9976c6f60b150f6eb1217253daf637297140ad95d8f65ae84c1d","entity_key":"d_real_conditions_02:4","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4927ecc23254d4194451d35e6db13bdd77ad33a9ee9df7400b05b889febaadb6","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/0a45422fa23f9976c6f60b150f6eb1217253daf637297140ad95d8f65ae84c1d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_real_conditions_02:3 -> audio/generated/it-IT/dialogues/0a58d57097271e67a66148a0812a220761df70452703277b6dedb9f49d0ae91e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('64f94b03-5a63-543f-84a0-a7b2b0966d95', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_real_conditions_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '700f3dfa9bf0ca8a26ae4f4fa32db3252ac4a14336dde09a5082df00d825d2a3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cc699967-a7b7-5f5f-82dd-c51438d224c5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('64f94b03-5a63-543f-84a0-a7b2b0966d95', 1), '700f3dfa9bf0ca8a26ae4f4fa32db3252ac4a14336dde09a5082df00d825d2a3',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/0a58d57097271e67a66148a0812a220761df70452703277b6dedb9f49d0ae91e.mp3', 3056, '2026-09-14 04:00:31.026547', '78991de3429422fecd616b052d983c9a710d8587c48385832474cff2b043cac3', 'validated', '{"audio_key":"0a58d57097271e67a66148a0812a220761df70452703277b6dedb9f49d0ae91e","entity_key":"d_real_conditions_02:3","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"78991de3429422fecd616b052d983c9a710d8587c48385832474cff2b043cac3","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/0a58d57097271e67a66148a0812a220761df70452703277b6dedb9f49d0ae91e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_stories_and_background_01:2 -> audio/generated/it-IT/dialogues/116a9c4ac9e35be3cd27af44fb64ad9fc48a8c48ca09e74b1f77ba85d7592489.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7aabde4d-4450-58cc-8cd1-f56637ca6ee8', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_stories_and_background_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9bad8daf4f174558b3f34b151f66dc2c454c65585cd7b4ba88ca0db0c09b5996'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('162db99e-7f13-5d33-9748-eea73a0c81b6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7aabde4d-4450-58cc-8cd1-f56637ca6ee8', 1), '9bad8daf4f174558b3f34b151f66dc2c454c65585cd7b4ba88ca0db0c09b5996',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/116a9c4ac9e35be3cd27af44fb64ad9fc48a8c48ca09e74b1f77ba85d7592489.mp3', 3944, '2026-09-14 04:00:32.015659', '527df21d25e49b0c6c8b1c0002bb0bfd0ec2b01ead9e20d8a0e4753419ef0798', 'validated', '{"audio_key":"116a9c4ac9e35be3cd27af44fb64ad9fc48a8c48ca09e74b1f77ba85d7592489","entity_key":"d_stories_and_background_01:2","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"527df21d25e49b0c6c8b1c0002bb0bfd0ec2b01ead9e20d8a0e4753419ef0798","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/116a9c4ac9e35be3cd27af44fb64ad9fc48a8c48ca09e74b1f77ba85d7592489.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_real_conditions_01:2 -> audio/generated/it-IT/dialogues/182ba04a50734f10211a79df74d0018924d192e84ffa65b17f5f79cf7871e513.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b73f4ca9-08d9-507d-9052-4feffc6ed382', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_real_conditions_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '46989b128ae906beaabe9a8db24ddac4cfa9608d810d4f3d649d265bddb12221'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b7ab5659-f8a5-5ca6-9a3c-5c7d856f9cc5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b73f4ca9-08d9-507d-9052-4feffc6ed382', 1), '46989b128ae906beaabe9a8db24ddac4cfa9608d810d4f3d649d265bddb12221',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/182ba04a50734f10211a79df74d0018924d192e84ffa65b17f5f79cf7871e513.mp3', 2324, '2026-09-14 04:00:32.246192', '1ff8faa43c925822a431f0102b880e08e758af84252181d193374cd8f9d1cec6', 'validated', '{"audio_key":"182ba04a50734f10211a79df74d0018924d192e84ffa65b17f5f79cf7871e513","entity_key":"d_real_conditions_01:2","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1ff8faa43c925822a431f0102b880e08e758af84252181d193374cd8f9d1cec6","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/182ba04a50734f10211a79df74d0018924d192e84ffa65b17f5f79cf7871e513.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b1_city_project_capstone_01:4 -> audio/generated/it-IT/dialogues/1e9f55a0db8cd0c801e145e397a7c79ff3a9be9906d54ace30bfba268cfbacad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('caa4e399-cb7a-5ca7-9514-2d1a201e1b5d', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b1_city_project_capstone_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '085136a1d08b3afb1423592bb02086f30371eda94fed7e826e56d2266cb4f76b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('25d177a4-9a78-56b8-a566-1d513ca98992', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('caa4e399-cb7a-5ca7-9514-2d1a201e1b5d', 1), '085136a1d08b3afb1423592bb02086f30371eda94fed7e826e56d2266cb4f76b',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/1e9f55a0db8cd0c801e145e397a7c79ff3a9be9906d54ace30bfba268cfbacad.mp3', 2951, '2026-09-14 04:00:33.266833', '607afd13e8e9af334923ea74ca6454a70f328a904ba512eb97e0b2835cf3d2e8', 'validated', '{"audio_key":"1e9f55a0db8cd0c801e145e397a7c79ff3a9be9906d54ace30bfba268cfbacad","entity_key":"d_b1_city_project_capstone_01:4","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"607afd13e8e9af334923ea74ca6454a70f328a904ba512eb97e0b2835cf3d2e8","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/1e9f55a0db8cd0c801e145e397a7c79ff3a9be9906d54ace30bfba268cfbacad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_problems_and_solutions_01:2 -> audio/generated/it-IT/dialogues/200e7895292634dd1434b946793d2ecaec9fc37517b5db29df1cefd4c420057e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5cb6463b-f22e-5cd0-b064-01478553e107', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_problems_and_solutions_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6f562c711ef512749209e435a0af81203e5ccf055f7be94956f5d33f6490c91c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('46d19bc7-4802-5705-a2fd-97dc94a419bf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5cb6463b-f22e-5cd0-b064-01478553e107', 1), '6f562c711ef512749209e435a0af81203e5ccf055f7be94956f5d33f6490c91c',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/200e7895292634dd1434b946793d2ecaec9fc37517b5db29df1cefd4c420057e.mp3', 2089, '2026-09-14 04:00:33.441264', '1a8b5fddbffe4fa920a292748aa5f81728876fa2d55c0943ce9f6887a44b0c52', 'validated', '{"audio_key":"200e7895292634dd1434b946793d2ecaec9fc37517b5db29df1cefd4c420057e","entity_key":"d_problems_and_solutions_01:2","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1a8b5fddbffe4fa920a292748aa5f81728876fa2d55c0943ce9f6887a44b0c52","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/200e7895292634dd1434b946793d2ecaec9fc37517b5db29df1cefd4c420057e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_problems_and_solutions_01:4 -> audio/generated/it-IT/dialogues/20608cb5aec3a9911754d26cb7c84feadf3b9e9d570d1387619bad9eeb03bbd9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e4ca7d36-7bed-53c7-bd2b-5f4d84e6a4ce', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_problems_and_solutions_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4a09027f720a8901c13069f661f8474210bfed7f8c9f9d9df9c3bc9c36fcd485'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('282024b3-23c5-5a6b-8d95-8f876f9365dd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e4ca7d36-7bed-53c7-bd2b-5f4d84e6a4ce', 1), '4a09027f720a8901c13069f661f8474210bfed7f8c9f9d9df9c3bc9c36fcd485',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/20608cb5aec3a9911754d26cb7c84feadf3b9e9d570d1387619bad9eeb03bbd9.mp3', 2951, '2026-09-14 04:00:34.422691', '0b11c36e4873c9f68bb154807891f54140692ba97345ea0e0f4f28c5f605c2fb', 'validated', '{"audio_key":"20608cb5aec3a9911754d26cb7c84feadf3b9e9d570d1387619bad9eeb03bbd9","entity_key":"d_problems_and_solutions_01:4","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0b11c36e4873c9f68bb154807891f54140692ba97345ea0e0f4f28c5f605c2fb","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/20608cb5aec3a9911754d26cb7c84feadf3b9e9d570d1387619bad9eeb03bbd9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_information_02:2 -> audio/generated/it-IT/dialogues/2c661122ac028ebb2e6e62d53c1ac0fdc3aa8eca400e79910c32cd75a89491b9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a61ce69a-8d48-585c-8d2b-3754fbc5d2dd', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_information_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b0500e727c2b6ad5e3a0f334f3a558f4cf5f9a0bd98ab63780a73c876d3af474'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('332a1e61-5236-503d-8991-e355b8c02dae', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a61ce69a-8d48-585c-8d2b-3754fbc5d2dd', 1), 'b0500e727c2b6ad5e3a0f334f3a558f4cf5f9a0bd98ab63780a73c876d3af474',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/2c661122ac028ebb2e6e62d53c1ac0fdc3aa8eca400e79910c32cd75a89491b9.mp3', 3160, '2026-09-14 04:00:34.656622', '050e4107a8817dca4c6a4f3580b278740cddb4968c7de3dbbb62863469ea84bc', 'validated', '{"audio_key":"2c661122ac028ebb2e6e62d53c1ac0fdc3aa8eca400e79910c32cd75a89491b9","entity_key":"d_reported_information_02:2","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"050e4107a8817dca4c6a4f3580b278740cddb4968c7de3dbbb62863469ea84bc","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/2c661122ac028ebb2e6e62d53c1ac0fdc3aa8eca400e79910c32cd75a89491b9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_problems_and_solutions_02:2 -> audio/generated/it-IT/dialogues/2d0ee94fba7d0a8411997a257a6b04b7aeff2d773b5260a6afc007f5161b7580.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b736582a-90b6-51e7-ac55-862f760a4956', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_problems_and_solutions_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8b0ee7ec90dd01800cb5bbde22c9b765f74bc0ee3216a3ce0ccbaea093e9132a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('155384a5-e5c6-5370-8dce-c6cd0800e510', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b736582a-90b6-51e7-ac55-862f760a4956', 1), '8b0ee7ec90dd01800cb5bbde22c9b765f74bc0ee3216a3ce0ccbaea093e9132a',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/2d0ee94fba7d0a8411997a257a6b04b7aeff2d773b5260a6afc007f5161b7580.mp3', 3239, '2026-09-14 04:00:35.734510', '6cb1aecd6630d9d81a4475cfa4fc04f685a08a182474eddf185aef15ee00f51e', 'validated', '{"audio_key":"2d0ee94fba7d0a8411997a257a6b04b7aeff2d773b5260a6afc007f5161b7580","entity_key":"d_problems_and_solutions_02:2","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6cb1aecd6630d9d81a4475cfa4fc04f685a08a182474eddf185aef15ee00f51e","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/2d0ee94fba7d0a8411997a257a6b04b7aeff2d773b5260a6afc007f5161b7580.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polite_nuance_02:1 -> audio/generated/it-IT/dialogues/2d46e5c6bd412c31f10036e784c26ef94d46a6b64e6375ed8662b3eb25af5d26.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('96eab9c6-104c-5d87-8667-4a9054cd5202', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_nuance_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c9436c667a739ce49b7acff966cb6137e0d13a5d9b3840bed4ab6338a5e355a5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('54a85381-3df9-54f2-afda-9487ed5904c0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('96eab9c6-104c-5d87-8667-4a9054cd5202', 1), 'c9436c667a739ce49b7acff966cb6137e0d13a5d9b3840bed4ab6338a5e355a5',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/2d46e5c6bd412c31f10036e784c26ef94d46a6b64e6375ed8662b3eb25af5d26.mp3', 1567, '2026-09-14 04:00:35.758020', '91804c2e8750ce1fd78ec026d10639da0d5e90dff0e879708f5ef695ab8c057d', 'validated', '{"audio_key":"2d46e5c6bd412c31f10036e784c26ef94d46a6b64e6375ed8662b3eb25af5d26","entity_key":"d_polite_nuance_02:1","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"91804c2e8750ce1fd78ec026d10639da0d5e90dff0e879708f5ef695ab8c057d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/2d46e5c6bd412c31f10036e784c26ef94d46a6b64e6375ed8662b3eb25af5d26.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_and_sources_01:4 -> audio/generated/it-IT/dialogues/2dad321f8995d2808d701b98d7a27ec9d0bfc850a17e3fcc7a15ba573b247029.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('deb5f8b4-cf6a-5084-a823-4a905490b22c', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_and_sources_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd46c1180bd6ca6f14e587176240c35f396039d323f3d257d535e16f7f8b1e8e6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ee6fdd20-a510-5e7d-9647-546cd53e411f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('deb5f8b4-cf6a-5084-a823-4a905490b22c', 1), 'd46c1180bd6ca6f14e587176240c35f396039d323f3d257d535e16f7f8b1e8e6',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/2dad321f8995d2808d701b98d7a27ec9d0bfc850a17e3fcc7a15ba573b247029.mp3', 1933, '2026-09-14 04:00:36.815223', '20b7629506daa1efaddb716be72fdd131f3fd61d020012e150857f5a554ffc04', 'validated', '{"audio_key":"2dad321f8995d2808d701b98d7a27ec9d0bfc850a17e3fcc7a15ba573b247029","entity_key":"d_media_and_sources_01:4","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"20b7629506daa1efaddb716be72fdd131f3fd61d020012e150857f5a554ffc04","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/2dad321f8995d2808d701b98d7a27ec9d0bfc850a17e3fcc7a15ba573b247029.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_information_01:3 -> audio/generated/it-IT/dialogues/2fcb5b173a360048edecac71a6b49cb7d09388216f957b9171c898fbbe19f2fa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bbdd5ac2-1bcf-5fdf-b6d2-4325246960dc', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_information_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f05e2149f6b7bd3e65dba221fffdd7a996f421f2b91d18d48d23a506b921b0f1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('94c67396-1e8e-58a1-bc93-11dfcdf4a2cc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bbdd5ac2-1bcf-5fdf-b6d2-4325246960dc', 1), 'f05e2149f6b7bd3e65dba221fffdd7a996f421f2b91d18d48d23a506b921b0f1',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/2fcb5b173a360048edecac71a6b49cb7d09388216f957b9171c898fbbe19f2fa.mp3', 1384, '2026-09-14 04:00:36.840206', 'b5766635da3c3a90b0b6a2f11ebf7bb5d6a68ecba91443ed9bf8c7f7362a3984', 'validated', '{"audio_key":"2fcb5b173a360048edecac71a6b49cb7d09388216f957b9171c898fbbe19f2fa","entity_key":"d_reported_information_01:3","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b5766635da3c3a90b0b6a2f11ebf7bb5d6a68ecba91443ed9bf8c7f7362a3984","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/2fcb5b173a360048edecac71a6b49cb7d09388216f957b9171c898fbbe19f2fa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_changes_over_time_01:1 -> audio/generated/it-IT/dialogues/308b422700f1f5a743739a7fc57ab82c8b4aeac83b43c73fed264c98bfe92bb4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ec8c5e17-ec85-5524-83a3-585cdeca938d', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_changes_over_time_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '52bac1f5fe92167ac097eda5320bbe876fdbd7651fe078075efad501d9c4f653'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('082e4751-c89d-5dcd-8a7b-2566da73ff2a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ec8c5e17-ec85-5524-83a3-585cdeca938d', 1), '52bac1f5fe92167ac097eda5320bbe876fdbd7651fe078075efad501d9c4f653',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/308b422700f1f5a743739a7fc57ab82c8b4aeac83b43c73fed264c98bfe92bb4.mp3', 2272, '2026-09-14 04:00:37.978955', '04cae557e917602705ee4dae012a44190dd7a50ab1fb9026180a9ae8b19a0102', 'validated', '{"audio_key":"308b422700f1f5a743739a7fc57ab82c8b4aeac83b43c73fed264c98bfe92bb4","entity_key":"d_changes_over_time_01:1","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"04cae557e917602705ee4dae012a44190dd7a50ab1fb9026180a9ae8b19a0102","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/308b422700f1f5a743739a7fc57ab82c8b4aeac83b43c73fed264c98bfe92bb4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_changes_over_time_01:4 -> audio/generated/it-IT/dialogues/32a80c9e162ad0b7d5525ad77d900814e68f600ceddc6575bb472ffa289ca39a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a62a78fd-9842-548a-8ffb-cedf3f50b409', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_changes_over_time_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6d23c581f66571af84e164ddb6c498aabbd6cd350134ce14b005d3093a5cafba'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('16421fae-4af8-5822-a746-4dbc4821a268', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a62a78fd-9842-548a-8ffb-cedf3f50b409', 1), '6d23c581f66571af84e164ddb6c498aabbd6cd350134ce14b005d3093a5cafba',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/32a80c9e162ad0b7d5525ad77d900814e68f600ceddc6575bb472ffa289ca39a.mp3', 3422, '2026-09-14 04:00:38.202765', '48563550e7e0cb470817cf0dd72a8f90908537cf041c52f6aec335d58bb64f5b', 'validated', '{"audio_key":"32a80c9e162ad0b7d5525ad77d900814e68f600ceddc6575bb472ffa289ca39a","entity_key":"d_changes_over_time_01:4","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"48563550e7e0cb470817cf0dd72a8f90908537cf041c52f6aec335d58bb64f5b","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/32a80c9e162ad0b7d5525ad77d900814e68f600ceddc6575bb472ffa289ca39a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b1_city_project_capstone_01:1 -> audio/generated/it-IT/dialogues/409d3f970bd008bf43748644d873cf5ba6192f55ae342a3c391023cdc8031146.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c100ccef-3240-5a00-be8a-18c1c4aab7f8', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b1_city_project_capstone_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2f048717beacb6a2eca5153d6af457b472a7085a07ed0ddd3d7192cc7948d312'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0d46ce00-55b8-59a4-bb54-84be00db6c6b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c100ccef-3240-5a00-be8a-18c1c4aab7f8', 1), '2f048717beacb6a2eca5153d6af457b472a7085a07ed0ddd3d7192cc7948d312',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/409d3f970bd008bf43748644d873cf5ba6192f55ae342a3c391023cdc8031146.mp3', 2455, '2026-09-14 04:00:39.084611', '166be39d6f3829193410814b39901f76ee9d9aa9c9dc758b9367769d8f4897e8', 'validated', '{"audio_key":"409d3f970bd008bf43748644d873cf5ba6192f55ae342a3c391023cdc8031146","entity_key":"d_b1_city_project_capstone_01:1","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"166be39d6f3829193410814b39901f76ee9d9aa9c9dc758b9367769d8f4897e8","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/409d3f970bd008bf43748644d873cf5ba6192f55ae342a3c391023cdc8031146.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_stories_and_background_02:2 -> audio/generated/it-IT/dialogues/45bd9382da24c8bbc69ed157517241232b24f0b0a980e5449c5fc26949249b7f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3918ceec-f01e-5a08-900c-628e81a927f8', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_stories_and_background_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f7b3799d79ea3f7dcfb8002e84fdb0d963b88b6dd9d8025bcf516fc6c011c5a1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1de88cde-3ac6-5b33-8072-fa8769fda125', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3918ceec-f01e-5a08-900c-628e81a927f8', 1), 'f7b3799d79ea3f7dcfb8002e84fdb0d963b88b6dd9d8025bcf516fc6c011c5a1',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/45bd9382da24c8bbc69ed157517241232b24f0b0a980e5449c5fc26949249b7f.mp3', 3291, '2026-09-14 04:00:39.452799', '0aa08dae80c7beccabed3b60813de0994150469f0c6fc5b002271c773e90c72e', 'validated', '{"audio_key":"45bd9382da24c8bbc69ed157517241232b24f0b0a980e5449c5fc26949249b7f","entity_key":"d_stories_and_background_02:2","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"0aa08dae80c7beccabed3b60813de0994150469f0c6fc5b002271c773e90c72e","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/45bd9382da24c8bbc69ed157517241232b24f0b0a980e5449c5fc26949249b7f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_real_conditions_02:1 -> audio/generated/it-IT/dialogues/4f47a08da012e512ede44066f67c702cd259dcb33db60322df74b9ee04bb82fc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('08720e68-daeb-5ae7-a423-00d45d4dc2c2', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_real_conditions_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a7676d120a95427181fb7cb5d0498d31842833f6fb6158a112d9c5658c8395e8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('712b7e38-9b7c-5dff-87cf-1ce448f7a43f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('08720e68-daeb-5ae7-a423-00d45d4dc2c2', 1), 'a7676d120a95427181fb7cb5d0498d31842833f6fb6158a112d9c5658c8395e8',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/4f47a08da012e512ede44066f67c702cd259dcb33db60322df74b9ee04bb82fc.mp3', 1933, '2026-09-14 04:00:40.177211', '30bfbda9f853739b8c5bb1e3337ad35856ec083f11686c12491e783baae10e9f', 'validated', '{"audio_key":"4f47a08da012e512ede44066f67c702cd259dcb33db60322df74b9ee04bb82fc","entity_key":"d_real_conditions_02:1","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"30bfbda9f853739b8c5bb1e3337ad35856ec083f11686c12491e783baae10e9f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/4f47a08da012e512ede44066f67c702cd259dcb33db60322df74b9ee04bb82fc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_information_01:1 -> audio/generated/it-IT/dialogues/50c090ff4b4e2f9335f57ddda4f22cb3f1e0fbc401a6602d569d7850bc54a4c9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ff6b1224-f31f-5f42-ba9c-3f9f0a53c3ef', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_information_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4d86b3b3808b36558e33044b2f0254e95cac352ec5528c4c6185d94f1b883683'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bd862c40-f6fc-56cf-9152-eb06d0010add', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ff6b1224-f31f-5f42-ba9c-3f9f0a53c3ef', 1), '4d86b3b3808b36558e33044b2f0254e95cac352ec5528c4c6185d94f1b883683',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/50c090ff4b4e2f9335f57ddda4f22cb3f1e0fbc401a6602d569d7850bc54a4c9.mp3', 1515, '2026-09-14 04:00:40.459156', '940dcff34cab43e4713ddc93ae2594ff8600010931a7c3860a9d8d2f712f8fed', 'validated', '{"audio_key":"50c090ff4b4e2f9335f57ddda4f22cb3f1e0fbc401a6602d569d7850bc54a4c9","entity_key":"d_reported_information_01:1","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"940dcff34cab43e4713ddc93ae2594ff8600010931a7c3860a9d8d2f712f8fed","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/50c090ff4b4e2f9335f57ddda4f22cb3f1e0fbc401a6602d569d7850bc54a4c9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polite_nuance_02:2 -> audio/generated/it-IT/dialogues/5701207eb4b83084177652927702cd5b353cfcb0d0b103fd4478fdd726ef5cee.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ac6b65a4-becf-5d6e-afe7-adcbfd93e4cf', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_nuance_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '72a01f7b88fa859d2cccb361b0ffd83e0295a6b9be48db387b63992da7302d37'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7e517bc8-042a-528c-963f-c19a223c4a02', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ac6b65a4-becf-5d6e-afe7-adcbfd93e4cf', 1), '72a01f7b88fa859d2cccb361b0ffd83e0295a6b9be48db387b63992da7302d37',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/5701207eb4b83084177652927702cd5b353cfcb0d0b103fd4478fdd726ef5cee.mp3', 2690, '2026-09-14 04:00:41.327053', '287a3462686976e4b6f4f853ff1d9effedc964e297fc0eeda9e77a5fd64195c4', 'validated', '{"audio_key":"5701207eb4b83084177652927702cd5b353cfcb0d0b103fd4478fdd726ef5cee","entity_key":"d_polite_nuance_02:2","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"287a3462686976e4b6f4f853ff1d9effedc964e297fc0eeda9e77a5fd64195c4","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/5701207eb4b83084177652927702cd5b353cfcb0d0b103fd4478fdd726ef5cee.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_problems_and_solutions_02:3 -> audio/generated/it-IT/dialogues/5e18ab8da1aef3958b931738a7c9d6e88cc210ce0726a7f7f3bffaee6a03c5d8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('df4ab676-3db1-57d1-b188-d5236a53235f', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_problems_and_solutions_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '80df03d8edcb2412bde30ece256ece347664a2b7c0919fc98604360d48f7f2a7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ff82d717-d715-51bb-977c-b525a1b6e899', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('df4ab676-3db1-57d1-b188-d5236a53235f', 1), '80df03d8edcb2412bde30ece256ece347664a2b7c0919fc98604360d48f7f2a7',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/5e18ab8da1aef3958b931738a7c9d6e88cc210ce0726a7f7f3bffaee6a03c5d8.mp3', 1515, '2026-09-14 04:00:41.472551', '82702ab2a6581e6457f11fff367bc98a03e369c6a7bc7803b08b9020eef0ad5a', 'validated', '{"audio_key":"5e18ab8da1aef3958b931738a7c9d6e88cc210ce0726a7f7f3bffaee6a03c5d8","entity_key":"d_problems_and_solutions_02:3","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"82702ab2a6581e6457f11fff367bc98a03e369c6a7bc7803b08b9020eef0ad5a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/5e18ab8da1aef3958b931738a7c9d6e88cc210ce0726a7f7f3bffaee6a03c5d8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_changes_over_time_02:4 -> audio/generated/it-IT/dialogues/601089933d1f2dc30bea469b55a54b1279992df8f621543275eb896a94570c4d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a743b514-e27c-5f0d-a146-44ee84981c03', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_changes_over_time_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd9a13a2b5d72466b2a07c4029120db4a436eb58a7c25abac04fdd68016195c07'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('599e93e8-4d48-51b1-9261-de0b912f14ef', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a743b514-e27c-5f0d-a146-44ee84981c03', 1), 'd9a13a2b5d72466b2a07c4029120db4a436eb58a7c25abac04fdd68016195c07',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/601089933d1f2dc30bea469b55a54b1279992df8f621543275eb896a94570c4d.mp3', 1854, '2026-09-14 04:00:42.425259', 'cd5991cee158f87fb48ff1ce12f990ffbaaf9abd2e79b2f4d60416c8aee49306', 'validated', '{"audio_key":"601089933d1f2dc30bea469b55a54b1279992df8f621543275eb896a94570c4d","entity_key":"d_changes_over_time_02:4","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cd5991cee158f87fb48ff1ce12f990ffbaaf9abd2e79b2f4d60416c8aee49306","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/601089933d1f2dc30bea469b55a54b1279992df8f621543275eb896a94570c4d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polite_nuance_02:4 -> audio/generated/it-IT/dialogues/631c36bfbcfd4c3a503c400707c4652d366484018cb85117ef23216a65e4c904.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1b0f1a2e-dff9-569e-9c38-f0d4acc8b2ea', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_nuance_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8c896f9fcaa59522cdbb3a439d7ecdab14975f571010f32a4d9e665a4ace0cda'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('858bd4bf-45a4-5241-b075-38316e342f94', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1b0f1a2e-dff9-569e-9c38-f0d4acc8b2ea', 1), '8c896f9fcaa59522cdbb3a439d7ecdab14975f571010f32a4d9e665a4ace0cda',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/631c36bfbcfd4c3a503c400707c4652d366484018cb85117ef23216a65e4c904.mp3', 2742, '2026-09-14 04:00:42.604940', 'd870ddbf45166f7c0312ffdd0d0f8b7f859235107a8593b98b192c6d6716548d', 'validated', '{"audio_key":"631c36bfbcfd4c3a503c400707c4652d366484018cb85117ef23216a65e4c904","entity_key":"d_polite_nuance_02:4","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d870ddbf45166f7c0312ffdd0d0f8b7f859235107a8593b98b192c6d6716548d","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/631c36bfbcfd4c3a503c400707c4652d366484018cb85117ef23216a65e4c904.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_goals_and_effort_01:4 -> audio/generated/it-IT/dialogues/660b0ea65f898ed7c71d8eabe7d8a0b3126ad1dc5cbe581c38536125aafab60a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('39eab56d-3232-5ed5-ad45-7748468c721f', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_goals_and_effort_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '583c354aaf04a4acfb776b24c963300f5b298dd832c02be16b0ecaa2d995ea6b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('32543324-b0ff-553f-8192-efe5bd0e9895', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('39eab56d-3232-5ed5-ad45-7748468c721f', 1), '583c354aaf04a4acfb776b24c963300f5b298dd832c02be16b0ecaa2d995ea6b',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/660b0ea65f898ed7c71d8eabe7d8a0b3126ad1dc5cbe581c38536125aafab60a.mp3', 2324, '2026-09-14 04:00:44.554942', '8025e2de5ff21b4afc932c1dd649b086a6289079b73daf67403615d71487f111', 'validated', '{"audio_key":"660b0ea65f898ed7c71d8eabe7d8a0b3126ad1dc5cbe581c38536125aafab60a","entity_key":"d_goals_and_effort_01:4","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"8025e2de5ff21b4afc932c1dd649b086a6289079b73daf67403615d71487f111","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/660b0ea65f898ed7c71d8eabe7d8a0b3126ad1dc5cbe581c38536125aafab60a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_and_sources_01:1 -> audio/generated/it-IT/dialogues/66ae6e0b7a04ea90243a627a03994b8292a7cfec9e1f6d1a1a376db553576d3c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d5c2564f-bb31-53be-9749-344dc2a5d77f', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_and_sources_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f9c232f72e49b852f12e0f3e4855e847ff0a66bb0f76d21692c57763021246b1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f005f0ee-e5fc-5e06-98d2-ead10906a1df', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d5c2564f-bb31-53be-9749-344dc2a5d77f', 1), 'f9c232f72e49b852f12e0f3e4855e847ff0a66bb0f76d21692c57763021246b1',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/66ae6e0b7a04ea90243a627a03994b8292a7cfec9e1f6d1a1a376db553576d3c.mp3', 1671, '2026-09-14 04:00:43.657580', '8167cab1cf1cff1d89a27c8677512a4fc76d587e0747224010b19124209ffd32', 'validated', '{"audio_key":"66ae6e0b7a04ea90243a627a03994b8292a7cfec9e1f6d1a1a376db553576d3c","entity_key":"d_media_and_sources_01:1","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8167cab1cf1cff1d89a27c8677512a4fc76d587e0747224010b19124209ffd32","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/66ae6e0b7a04ea90243a627a03994b8292a7cfec9e1f6d1a1a376db553576d3c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_and_sources_02:1 -> audio/generated/it-IT/dialogues/69e4bbfe202534eed2f6d964813830737ecd626455088b962b20d69e0a563d5b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('af0b73c4-84d8-5109-a049-1c7643ce1684', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_and_sources_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7734542ec35ba37d9c6f618b424d572aea92fd00b37ff988c1399571dc506f1a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('02d9d96d-8567-56c9-94ff-ed59e55d249b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('af0b73c4-84d8-5109-a049-1c7643ce1684', 1), '7734542ec35ba37d9c6f618b424d572aea92fd00b37ff988c1399571dc506f1a',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/69e4bbfe202534eed2f6d964813830737ecd626455088b962b20d69e0a563d5b.mp3', 2586, '2026-09-14 04:00:44.891761', '4f8c574ebb424e36a43d5718bb22bc00fc40807a9038006095aed36f308e6d11', 'validated', '{"audio_key":"69e4bbfe202534eed2f6d964813830737ecd626455088b962b20d69e0a563d5b","entity_key":"d_media_and_sources_02:1","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"4f8c574ebb424e36a43d5718bb22bc00fc40807a9038006095aed36f308e6d11","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/69e4bbfe202534eed2f6d964813830737ecd626455088b962b20d69e0a563d5b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_and_sources_01:3 -> audio/generated/it-IT/dialogues/6ad2339f845a09dc1ac187e3f9a3c6df4482623f677609f8a6a390b5fa5539a9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5a9b7d78-edbd-5433-8efc-9c34207a0d2c', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_and_sources_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2073832194cec4806ceb07e494d423dfc5f49f00a05cd89d8280d1e3e900973b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f695dd0f-bdec-59b5-b4c3-e24ef7dd452a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5a9b7d78-edbd-5433-8efc-9c34207a0d2c', 1), '2073832194cec4806ceb07e494d423dfc5f49f00a05cd89d8280d1e3e900973b',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/6ad2339f845a09dc1ac187e3f9a3c6df4482623f677609f8a6a390b5fa5539a9.mp3', 2089, '2026-09-14 04:00:45.802716', '71be6d85862ca951a5fa5eb3521e03662b5de4443a4bbe5ed9e0d557b20fdf0d', 'validated', '{"audio_key":"6ad2339f845a09dc1ac187e3f9a3c6df4482623f677609f8a6a390b5fa5539a9","entity_key":"d_media_and_sources_01:3","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"71be6d85862ca951a5fa5eb3521e03662b5de4443a4bbe5ed9e0d557b20fdf0d","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/6ad2339f845a09dc1ac187e3f9a3c6df4482623f677609f8a6a390b5fa5539a9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_stories_and_background_02:4 -> audio/generated/it-IT/dialogues/725627c833ed8697fbd2b576d8cca19033e98b0be95962c91d328f7377deddab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2a1b64da-9c0d-54de-87ba-59231bf348ed', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_stories_and_background_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '85013631adda204a3c9eda10af834dd515ebe0b27d83ccb977e6d8555a2971b1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('95bae120-e841-5bc1-9fd3-193c21b481ab', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2a1b64da-9c0d-54de-87ba-59231bf348ed', 1), '85013631adda204a3c9eda10af834dd515ebe0b27d83ccb977e6d8555a2971b1',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/725627c833ed8697fbd2b576d8cca19033e98b0be95962c91d328f7377deddab.mp3', 1384, '2026-09-14 04:00:46.044439', 'b746dcad81657695072d901c3af109691914ff124ecc12bd8fa1f4e775fdf49a', 'validated', '{"audio_key":"725627c833ed8697fbd2b576d8cca19033e98b0be95962c91d328f7377deddab","entity_key":"d_stories_and_background_02:4","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"b746dcad81657695072d901c3af109691914ff124ecc12bd8fa1f4e775fdf49a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/725627c833ed8697fbd2b576d8cca19033e98b0be95962c91d328f7377deddab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b1_city_project_capstone_01:2 -> audio/generated/it-IT/dialogues/76be4ad4abe877e933bc82e18c98d2f135b664b2e37df0a240fa9e8098b23363.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cf3e1842-7f3d-5cce-a721-ddb02576e1b9', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b1_city_project_capstone_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '512d7659c071887dc9a71fc2f83d89f4dc4eb5e3131ec05193a35e18fa62cf0d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('67707985-9f42-5f6d-b546-4cfe3ab60ea9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cf3e1842-7f3d-5cce-a721-ddb02576e1b9', 1), '512d7659c071887dc9a71fc2f83d89f4dc4eb5e3131ec05193a35e18fa62cf0d',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/76be4ad4abe877e933bc82e18c98d2f135b664b2e37df0a240fa9e8098b23363.mp3', 3474, '2026-09-14 04:00:47.054280', '79dfb62869b916e40a17afb526bd9480fb5123fdc4b6024b9df7afa727b2c95d', 'validated', '{"audio_key":"76be4ad4abe877e933bc82e18c98d2f135b664b2e37df0a240fa9e8098b23363","entity_key":"d_b1_city_project_capstone_01:2","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"79dfb62869b916e40a17afb526bd9480fb5123fdc4b6024b9df7afa727b2c95d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/76be4ad4abe877e933bc82e18c98d2f135b664b2e37df0a240fa9e8098b23363.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_problems_and_solutions_01:1 -> audio/generated/it-IT/dialogues/78f47d925c64f904328f6ba8ff02bb8cb298ade1441d76002d46599df274032b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2724b783-9e11-566f-95af-7d2e742160b1', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_problems_and_solutions_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3854ec2702b16859c14807ab0c984a3c5a528daf75a537ef2c4bf4b1df169e16'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c8a817f7-f28b-5d69-9381-cf2e2f8424e6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2724b783-9e11-566f-95af-7d2e742160b1', 1), '3854ec2702b16859c14807ab0c984a3c5a528daf75a537ef2c4bf4b1df169e16',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/78f47d925c64f904328f6ba8ff02bb8cb298ade1441d76002d46599df274032b.mp3', 1854, '2026-09-14 04:00:47.152114', '2975de5d6f4a65c8bedbf2e44b744fb8c884568138bad8bd6a212826465d9757', 'validated', '{"audio_key":"78f47d925c64f904328f6ba8ff02bb8cb298ade1441d76002d46599df274032b","entity_key":"d_problems_and_solutions_01:1","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"2975de5d6f4a65c8bedbf2e44b744fb8c884568138bad8bd6a212826465d9757","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/78f47d925c64f904328f6ba8ff02bb8cb298ade1441d76002d46599df274032b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_goals_and_effort_02:1 -> audio/generated/it-IT/dialogues/803e402fae917fe0f13f99d37478de2aecc971c56d7d63de0b2b639de5bc566b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1a785ce9-5e9a-596c-bec3-19cb55e0083a', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_goals_and_effort_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '067e5b31dd00b3d2481c19f7f793de848e355410d2f20ef8ad18d494fc053e16'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c9cf5d90-3662-5b3d-9b0b-3effb627b432', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1a785ce9-5e9a-596c-bec3-19cb55e0083a', 1), '067e5b31dd00b3d2481c19f7f793de848e355410d2f20ef8ad18d494fc053e16',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/803e402fae917fe0f13f99d37478de2aecc971c56d7d63de0b2b639de5bc566b.mp3', 1515, '2026-09-14 04:00:48.097132', 'b174bdf205bf6011edd1fc43289b6b24bca029986a452f17d3463a71291533a1', 'validated', '{"audio_key":"803e402fae917fe0f13f99d37478de2aecc971c56d7d63de0b2b639de5bc566b","entity_key":"d_goals_and_effort_02:1","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"b174bdf205bf6011edd1fc43289b6b24bca029986a452f17d3463a71291533a1","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/803e402fae917fe0f13f99d37478de2aecc971c56d7d63de0b2b639de5bc566b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polite_nuance_01:2 -> audio/generated/it-IT/dialogues/80722fb52b5f4dbc8c6252f7e5e5a6da0fa70c10d9cf46834b933e61efe73d54.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('90b8e477-d7d5-57c3-ad63-2f57266ae02c', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_nuance_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ce008cef94b324e833913bc4aaed042d92626c1f8702baf3e8a506859e23e55d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4f9e4a6e-b611-5458-9775-96d4869f3e3f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('90b8e477-d7d5-57c3-ad63-2f57266ae02c', 1), 'ce008cef94b324e833913bc4aaed042d92626c1f8702baf3e8a506859e23e55d',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/80722fb52b5f4dbc8c6252f7e5e5a6da0fa70c10d9cf46834b933e61efe73d54.mp3', 1619, '2026-09-14 04:00:48.236325', 'f51b6534b373a4697ca3c2e85a07d9287f3dd163ce43110c504627bcb24a9b70', 'validated', '{"audio_key":"80722fb52b5f4dbc8c6252f7e5e5a6da0fa70c10d9cf46834b933e61efe73d54","entity_key":"d_polite_nuance_01:2","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f51b6534b373a4697ca3c2e85a07d9287f3dd163ce43110c504627bcb24a9b70","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/80722fb52b5f4dbc8c6252f7e5e5a6da0fa70c10d9cf46834b933e61efe73d54.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_and_sources_02:3 -> audio/generated/it-IT/dialogues/807a9aa4ee239f568a689bfdd9155b377d0b808ed47b216fe26bf1787613dcbc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0b924f2a-3f54-5637-8193-863061885c31', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_and_sources_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fb694e5523faa7ecfd6f841f08e413f79b24a0fa80ef1d71ff8cc462f95a36e9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e14154e2-a7cc-5a95-9095-265560ce4082', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0b924f2a-3f54-5637-8193-863061885c31', 1), 'fb694e5523faa7ecfd6f841f08e413f79b24a0fa80ef1d71ff8cc462f95a36e9',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/807a9aa4ee239f568a689bfdd9155b377d0b808ed47b216fe26bf1787613dcbc.mp3', 1854, '2026-09-14 04:00:49.215539', '3c0b25f95f006e0fda41c477ca09526c01ceabbd083ddb965d61872f77fee3a3', 'validated', '{"audio_key":"807a9aa4ee239f568a689bfdd9155b377d0b808ed47b216fe26bf1787613dcbc","entity_key":"d_media_and_sources_02:3","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"3c0b25f95f006e0fda41c477ca09526c01ceabbd083ddb965d61872f77fee3a3","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/807a9aa4ee239f568a689bfdd9155b377d0b808ed47b216fe26bf1787613dcbc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_problems_and_solutions_01:3 -> audio/generated/it-IT/dialogues/819de29e43a2912366bbfb7d93efb800b1b2c45cc783b7b94f0b1ccc830b9212.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2d9fa9bb-e964-5623-8253-2b229af5e0b4', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_problems_and_solutions_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '58c4cad0f2a2e9f30bed6e2e171fd4de965c8eaed4baceb2ef9dfa6b72a64d7e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('62045633-cfea-575f-9491-782804ecd6d1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2d9fa9bb-e964-5623-8253-2b229af5e0b4', 1), '58c4cad0f2a2e9f30bed6e2e171fd4de965c8eaed4baceb2ef9dfa6b72a64d7e',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/819de29e43a2912366bbfb7d93efb800b1b2c45cc783b7b94f0b1ccc830b9212.mp3', 1253, '2026-09-14 04:00:49.233322', '196408d9658b8b6f07de0e4bf04dcf14d1d78ec9b225fd4fbde532a93d01a5af', 'validated', '{"audio_key":"819de29e43a2912366bbfb7d93efb800b1b2c45cc783b7b94f0b1ccc830b9212","entity_key":"d_problems_and_solutions_01:3","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"196408d9658b8b6f07de0e4bf04dcf14d1d78ec9b225fd4fbde532a93d01a5af","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/819de29e43a2912366bbfb7d93efb800b1b2c45cc783b7b94f0b1ccc830b9212.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_and_reasons_01:2 -> audio/generated/it-IT/dialogues/86f0a76a3a2e6dbac4a27a522be2a310da76a1c7234ab1e8ce14aa3f42c69188.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2759a442-cb2c-5f1b-a860-48663e4a194d', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_reasons_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '10f72fb182d86ea4fade5e13dd31ffec0c5665670e2997a0ca5551ac0ba3a4c3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e52d0f1c-3733-57b7-ab68-507a008f86f9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2759a442-cb2c-5f1b-a860-48663e4a194d', 1), '10f72fb182d86ea4fade5e13dd31ffec0c5665670e2997a0ca5551ac0ba3a4c3',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/86f0a76a3a2e6dbac4a27a522be2a310da76a1c7234ab1e8ce14aa3f42c69188.mp3', 5198, '2026-09-14 04:00:50.689251', 'e4a34988decdeeb7194a247d9298a23d4527a436c042c0bff0bc3525951c6c55', 'validated', '{"audio_key":"86f0a76a3a2e6dbac4a27a522be2a310da76a1c7234ab1e8ce14aa3f42c69188","entity_key":"d_opinions_and_reasons_01:2","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e4a34988decdeeb7194a247d9298a23d4527a436c042c0bff0bc3525951c6c55","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/86f0a76a3a2e6dbac4a27a522be2a310da76a1c7234ab1e8ce14aa3f42c69188.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_and_sources_02:4 -> audio/generated/it-IT/dialogues/8cfac80585145757a15b03fd8b4c401f118d514788b18481bda538c15eeb948a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9be9c27d-e64f-5ce2-8f9b-a5153c54fe63', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_and_sources_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e22e40d2155fc3456bc15243bf755029c006ffa1cb2b0acc2575d732ca42b24b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f8ad3ec4-6fff-5b0a-8ba0-28a6e8ec0c5d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9be9c27d-e64f-5ce2-8f9b-a5153c54fe63', 1), 'e22e40d2155fc3456bc15243bf755029c006ffa1cb2b0acc2575d732ca42b24b',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/8cfac80585145757a15b03fd8b4c401f118d514788b18481bda538c15eeb948a.mp3', 2638, '2026-09-14 04:00:50.491083', 'cd6b5c7b7048e12bf3cbe5e82eb2d699ee6f5ab6942a28763fe1cf678530f170', 'validated', '{"audio_key":"8cfac80585145757a15b03fd8b4c401f118d514788b18481bda538c15eeb948a","entity_key":"d_media_and_sources_02:4","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"cd6b5c7b7048e12bf3cbe5e82eb2d699ee6f5ab6942a28763fe1cf678530f170","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/8cfac80585145757a15b03fd8b4c401f118d514788b18481bda538c15eeb948a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b1_city_project_capstone_02:1 -> audio/generated/it-IT/dialogues/8fdc59df3d4611c5ead63111e8aa49b6e51c1ca74719a7c4be997df68035207b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6bb708e4-9907-53b6-9491-4cb74284e443', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b1_city_project_capstone_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1958a1244522cd450784a8406c53282dad574c5b2ba46d66b7e45bfc735958a5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3b31a34e-2a80-5faa-89f7-585dfa3dd9db', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6bb708e4-9907-53b6-9491-4cb74284e443', 1), '1958a1244522cd450784a8406c53282dad574c5b2ba46d66b7e45bfc735958a5',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/8fdc59df3d4611c5ead63111e8aa49b6e51c1ca74719a7c4be997df68035207b.mp3', 2403, '2026-09-14 04:00:51.619858', 'affcf9c4caac7c5e65ca62438fe97e7764fcc4cef2c6cea13cca2819541f5f88', 'validated', '{"audio_key":"8fdc59df3d4611c5ead63111e8aa49b6e51c1ca74719a7c4be997df68035207b","entity_key":"d_b1_city_project_capstone_02:1","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"affcf9c4caac7c5e65ca62438fe97e7764fcc4cef2c6cea13cca2819541f5f88","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/8fdc59df3d4611c5ead63111e8aa49b6e51c1ca74719a7c4be997df68035207b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_real_conditions_02:2 -> audio/generated/it-IT/dialogues/9157ae403655c589585a22fbbc65d8d4e0701259418c1e39f85b5202e19f4437.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c52adf52-85de-596e-a123-189234c222b4', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_real_conditions_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c824f23ae781a592c9b73e870d56c8e44c6ab010c98b17539d35aaa5a4eda85a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3051508b-8922-57d6-bd5f-5130c61d04db', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c52adf52-85de-596e-a123-189234c222b4', 1), 'c824f23ae781a592c9b73e870d56c8e44c6ab010c98b17539d35aaa5a4eda85a',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/9157ae403655c589585a22fbbc65d8d4e0701259418c1e39f85b5202e19f4437.mp3', 3526, '2026-09-14 04:00:51.966996', '36be8398f66e53f7075caad6518a277b03c06fb5b822d83babc598c582603b12', 'validated', '{"audio_key":"9157ae403655c589585a22fbbc65d8d4e0701259418c1e39f85b5202e19f4437","entity_key":"d_real_conditions_02:2","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"36be8398f66e53f7075caad6518a277b03c06fb5b822d83babc598c582603b12","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/9157ae403655c589585a22fbbc65d8d4e0701259418c1e39f85b5202e19f4437.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polite_nuance_01:3 -> audio/generated/it-IT/dialogues/915da8c8313d7b26a10616859f361e73ca9569df8702f356eb9a281cb5e4bedf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0d43558d-0742-53dd-9b12-711ece7b0f20', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_nuance_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '82e815c3614999d53a7d80ee82c60dc6865fae887e12118d646040c0cab21f04'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ac730ed9-74de-54b1-8d38-defd4250ebf1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0d43558d-0742-53dd-9b12-711ece7b0f20', 1), '82e815c3614999d53a7d80ee82c60dc6865fae887e12118d646040c0cab21f04',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/915da8c8313d7b26a10616859f361e73ca9569df8702f356eb9a281cb5e4bedf.mp3', 2533, '2026-09-14 04:00:52.735535', 'e151ed6f1301f4bc87cc3c871466506bee89a0addf75bb4069278a236fefc6e7', 'validated', '{"audio_key":"915da8c8313d7b26a10616859f361e73ca9569df8702f356eb9a281cb5e4bedf","entity_key":"d_polite_nuance_01:3","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"e151ed6f1301f4bc87cc3c871466506bee89a0addf75bb4069278a236fefc6e7","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/915da8c8313d7b26a10616859f361e73ca9569df8702f356eb9a281cb5e4bedf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_and_reasons_01:1 -> audio/generated/it-IT/dialogues/93d55a4245b7c16374debbb07ea3bac8010772537ea0e288d7c1285b5175db75.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0fafb6f4-bc68-5298-b1e0-8e71f88d681e', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_reasons_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec573862b89620054ecb31dd55a95e465ed766b90726e8404286cdca8f58b4e7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e0d5f94a-870f-5516-babe-8071df0212f6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0fafb6f4-bc68-5298-b1e0-8e71f88d681e', 1), 'ec573862b89620054ecb31dd55a95e465ed766b90726e8404286cdca8f58b4e7',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/93d55a4245b7c16374debbb07ea3bac8010772537ea0e288d7c1285b5175db75.mp3', 2324, '2026-09-14 04:00:53.083752', '38ba9ab12ac44bad98cc06bc2b2230c80689a485b9e11e8c632a660becfe178a', 'validated', '{"audio_key":"93d55a4245b7c16374debbb07ea3bac8010772537ea0e288d7c1285b5175db75","entity_key":"d_opinions_and_reasons_01:1","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"38ba9ab12ac44bad98cc06bc2b2230c80689a485b9e11e8c632a660becfe178a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/93d55a4245b7c16374debbb07ea3bac8010772537ea0e288d7c1285b5175db75.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_and_reasons_02:4 -> audio/generated/it-IT/dialogues/94ecc07e14d98327274c6102ffdff91eaa5e9d9a0cf8c9ec65b1e31aa0f67085.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1b9f3b7c-c978-550f-89ab-b0e8ef9ad75f', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_reasons_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cff54e36140d7cd04f6a60b467e763759ac9fdbe94ba9d76bcadf8b7d87c2c6b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('19ae7cca-4542-5453-a66e-b5542f2dc089', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1b9f3b7c-c978-550f-89ab-b0e8ef9ad75f', 1), 'cff54e36140d7cd04f6a60b467e763759ac9fdbe94ba9d76bcadf8b7d87c2c6b',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/94ecc07e14d98327274c6102ffdff91eaa5e9d9a0cf8c9ec65b1e31aa0f67085.mp3', 3291, '2026-09-14 04:00:53.967594', '9714a11721df56d1bd128f62f4ca351fd165048d18f73798ffec7605c95d1858', 'validated', '{"audio_key":"94ecc07e14d98327274c6102ffdff91eaa5e9d9a0cf8c9ec65b1e31aa0f67085","entity_key":"d_opinions_and_reasons_02:4","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9714a11721df56d1bd128f62f4ca351fd165048d18f73798ffec7605c95d1858","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/94ecc07e14d98327274c6102ffdff91eaa5e9d9a0cf8c9ec65b1e31aa0f67085.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b1_city_project_capstone_02:2 -> audio/generated/it-IT/dialogues/9a5cf128466f75cc16df3600a601265bf3d4ef3645a5787848921b3cd5d15847.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('38759435-4054-520e-a347-a30630e8eac8', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b1_city_project_capstone_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6f5a4c0a2c99432c2a1f23d1ee67302d33bd4d96aa640ae1dd64ccf14548996f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a50d748c-b424-5824-9b7a-774f9c9aaee2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('38759435-4054-520e-a347-a30630e8eac8', 1), '6f5a4c0a2c99432c2a1f23d1ee67302d33bd4d96aa640ae1dd64ccf14548996f',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/9a5cf128466f75cc16df3600a601265bf3d4ef3645a5787848921b3cd5d15847.mp3', 3526, '2026-09-14 04:00:54.330286', '304d37e2f9d030d0215b44e1ba2e6c1eae9e2afc990ba21aafe95d1a2c382909', 'validated', '{"audio_key":"9a5cf128466f75cc16df3600a601265bf3d4ef3645a5787848921b3cd5d15847","entity_key":"d_b1_city_project_capstone_02:2","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"304d37e2f9d030d0215b44e1ba2e6c1eae9e2afc990ba21aafe95d1a2c382909","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/9a5cf128466f75cc16df3600a601265bf3d4ef3645a5787848921b3cd5d15847.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_and_reasons_02:1 -> audio/generated/it-IT/dialogues/9b62362edbda1ad825fa9cd9cf12b87751ad3e25ff29235a5718e3970cdd1661.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f297580a-cd62-57a4-9cdc-5fafe24d7389', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_reasons_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7000d7860a0cf89703d08f2027415dc1494b5492349f0a6a1f020d1fad4518e9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e9206b80-1d16-5988-ab39-c55d06ae2fb5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f297580a-cd62-57a4-9cdc-5fafe24d7389', 1), '7000d7860a0cf89703d08f2027415dc1494b5492349f0a6a1f020d1fad4518e9',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/9b62362edbda1ad825fa9cd9cf12b87751ad3e25ff29235a5718e3970cdd1661.mp3', 2742, '2026-09-14 04:00:55.108039', '8363d7c575d12b27deba77c553c8f9eb32ba79e47ce5c2007dbb2c5d59df2e52', 'validated', '{"audio_key":"9b62362edbda1ad825fa9cd9cf12b87751ad3e25ff29235a5718e3970cdd1661","entity_key":"d_opinions_and_reasons_02:1","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"8363d7c575d12b27deba77c553c8f9eb32ba79e47ce5c2007dbb2c5d59df2e52","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/9b62362edbda1ad825fa9cd9cf12b87751ad3e25ff29235a5718e3970cdd1661.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_information_02:4 -> audio/generated/it-IT/dialogues/9c5bc079565a3375ec6ce59df82ac8c34d7ccba447f704fac872354749738d66.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2bbfc46a-951d-5ced-805c-5495c188b734', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_information_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8ed6c3885e1724f9372691676dfca6aac27592dc27674c072cbe1f5a73d49ed4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ae389c6a-e507-50f5-8aa7-22ecb2eee948', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2bbfc46a-951d-5ced-805c-5495c188b734', 1), '8ed6c3885e1724f9372691676dfca6aac27592dc27674c072cbe1f5a73d49ed4',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/9c5bc079565a3375ec6ce59df82ac8c34d7ccba447f704fac872354749738d66.mp3', 1985, '2026-09-14 04:00:55.433841', '594c02b8dfc9efc9cdda559d3df4ed6808ddecd4fa919039313b8ea468cc0d81', 'validated', '{"audio_key":"9c5bc079565a3375ec6ce59df82ac8c34d7ccba447f704fac872354749738d66","entity_key":"d_reported_information_02:4","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"594c02b8dfc9efc9cdda559d3df4ed6808ddecd4fa919039313b8ea468cc0d81","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/9c5bc079565a3375ec6ce59df82ac8c34d7ccba447f704fac872354749738d66.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_problems_and_solutions_02:4 -> audio/generated/it-IT/dialogues/9c6f1823e7c2a76d6498fc063cb4ae6e57d7ec51a24a7874181916b81a2f6d51.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('14d7041d-437d-5f42-b2d7-bfc57073576e', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_problems_and_solutions_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '731950d14420ffac802ea3584f8339af05a25ac71cddb843bb46f0606c3d1a9c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('feece9b1-5074-5917-978e-52294c32b8b0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('14d7041d-437d-5f42-b2d7-bfc57073576e', 1), '731950d14420ffac802ea3584f8339af05a25ac71cddb843bb46f0606c3d1a9c',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/9c6f1823e7c2a76d6498fc063cb4ae6e57d7ec51a24a7874181916b81a2f6d51.mp3', 3004, '2026-09-14 04:00:56.319159', '3e12d8fecc72177e9d4e5f50a7241dacca0662d08d806ef5096a38144740f778', 'validated', '{"audio_key":"9c6f1823e7c2a76d6498fc063cb4ae6e57d7ec51a24a7874181916b81a2f6d51","entity_key":"d_problems_and_solutions_02:4","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3e12d8fecc72177e9d4e5f50a7241dacca0662d08d806ef5096a38144740f778","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/9c6f1823e7c2a76d6498fc063cb4ae6e57d7ec51a24a7874181916b81a2f6d51.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_changes_over_time_02:1 -> audio/generated/it-IT/dialogues/a697007a653b7fa1f8bef9aacb2fc51285a9fea033d4d8fc52bdee5c948d06a3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f76ae4c6-d1bd-571b-a023-0e0209ba9fd0', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_changes_over_time_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d3efce8faea9fea700e9dcf25ac5e1f3e1bfffefdd7222d0d527849dceff580'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('19c05daa-88c6-51e5-92c2-1b6e6bcf2554', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f76ae4c6-d1bd-571b-a023-0e0209ba9fd0', 1), '8d3efce8faea9fea700e9dcf25ac5e1f3e1bfffefdd7222d0d527849dceff580',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/a697007a653b7fa1f8bef9aacb2fc51285a9fea033d4d8fc52bdee5c948d06a3.mp3', 1854, '2026-09-14 04:00:56.514106', '5c7ef8ab4d1ed3574a0e43276ffb05cfec6d782caeaeedb5e8619b7f9eebc11c', 'validated', '{"audio_key":"a697007a653b7fa1f8bef9aacb2fc51285a9fea033d4d8fc52bdee5c948d06a3","entity_key":"d_changes_over_time_02:1","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"5c7ef8ab4d1ed3574a0e43276ffb05cfec6d782caeaeedb5e8619b7f9eebc11c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/a697007a653b7fa1f8bef9aacb2fc51285a9fea033d4d8fc52bdee5c948d06a3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_goals_and_effort_02:2 -> audio/generated/it-IT/dialogues/a705ce3db66069101dce4bbb0ec249f5407fa323c9e502d5f76055fea5187c6c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1c003e0d-665d-5482-b142-5d9c44cc1dc1', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_goals_and_effort_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '950afaf8f8bff0f6866645f7430b6f6e4c5e56914d96189b975c2eb542de08b9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('67b490f3-26b4-52b8-a722-e17070b6371d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1c003e0d-665d-5482-b142-5d9c44cc1dc1', 1), '950afaf8f8bff0f6866645f7430b6f6e4c5e56914d96189b975c2eb542de08b9',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/a705ce3db66069101dce4bbb0ec249f5407fa323c9e502d5f76055fea5187c6c.mp3', 3369, '2026-09-14 04:00:57.558979', 'a3f9b5f9720fb5c10ea2e69ec57b9510a8404444663dd16845806bf5feb82176', 'validated', '{"audio_key":"a705ce3db66069101dce4bbb0ec249f5407fa323c9e502d5f76055fea5187c6c","entity_key":"d_goals_and_effort_02:2","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"a3f9b5f9720fb5c10ea2e69ec57b9510a8404444663dd16845806bf5feb82176","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/a705ce3db66069101dce4bbb0ec249f5407fa323c9e502d5f76055fea5187c6c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_information_01:2 -> audio/generated/it-IT/dialogues/b20b59eaf8b59827e99b9f0642a081780e0d2c7ffa02ae9275e5f1d3e6bfdd42.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a6e6ea92-8641-51a9-9656-6f7da7efbceb', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_information_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '34e3aef275cc509ef813d4c683856927626f6cdfac76036193683edefa970ca0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5f6465b3-5a27-5259-b093-1d7feece896a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a6e6ea92-8641-51a9-9656-6f7da7efbceb', 1), '34e3aef275cc509ef813d4c683856927626f6cdfac76036193683edefa970ca0',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/b20b59eaf8b59827e99b9f0642a081780e0d2c7ffa02ae9275e5f1d3e6bfdd42.mp3', 2586, '2026-09-14 04:00:57.660130', '4d4bf592ec94a2c97fd6848fd7561edc73f217e505b66eee0879e16fe955ba7c', 'validated', '{"audio_key":"b20b59eaf8b59827e99b9f0642a081780e0d2c7ffa02ae9275e5f1d3e6bfdd42","entity_key":"d_reported_information_01:2","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"4d4bf592ec94a2c97fd6848fd7561edc73f217e505b66eee0879e16fe955ba7c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/b20b59eaf8b59827e99b9f0642a081780e0d2c7ffa02ae9275e5f1d3e6bfdd42.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_and_sources_02:2 -> audio/generated/it-IT/dialogues/b59ef823bf1ba7efb73e411ed53065f8c41208f1a867ad9932932caa4b38fe53.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('81c4343e-27e2-5f41-9e98-dd31b6133aa8', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_and_sources_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '81e1be6240f0612850da24457421f4899dac3e2810d97a8c1f6a24a67c7e799d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7055f7ec-8945-5e5b-982b-dec53dc12dd7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('81c4343e-27e2-5f41-9e98-dd31b6133aa8', 1), '81e1be6240f0612850da24457421f4899dac3e2810d97a8c1f6a24a67c7e799d',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/b59ef823bf1ba7efb73e411ed53065f8c41208f1a867ad9932932caa4b38fe53.mp3', 3343, '2026-09-14 04:00:59.172349', '1205b6d6421532db023b2fcb616dd07723e663adf2f3772148c4bb6f1d2dd0cc', 'validated', '{"audio_key":"b59ef823bf1ba7efb73e411ed53065f8c41208f1a867ad9932932caa4b38fe53","entity_key":"d_media_and_sources_02:2","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"1205b6d6421532db023b2fcb616dd07723e663adf2f3772148c4bb6f1d2dd0cc","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/b59ef823bf1ba7efb73e411ed53065f8c41208f1a867ad9932932caa4b38fe53.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_changes_over_time_01:3 -> audio/generated/it-IT/dialogues/be9c3c364ed421755ab47487e279103b352acf751564447b77a7e0f6bd708e66.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6979d16b-202d-5d07-a4cf-9c74bdf256e8', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_changes_over_time_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '502b8fd48c66270c15b430d20281734b2701447a15e89b7d53fb454c4ba0a382'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('21007a3c-8ee7-5b8a-9978-bdacb1dfc33d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6979d16b-202d-5d07-a4cf-9c74bdf256e8', 1), '502b8fd48c66270c15b430d20281734b2701447a15e89b7d53fb454c4ba0a382',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/be9c3c364ed421755ab47487e279103b352acf751564447b77a7e0f6bd708e66.mp3', 1671, '2026-09-14 04:00:58.704891', 'cd3e181cfb665ef694ecd443ac4e420af0e6099d7186c7291f43dabef257a405', 'validated', '{"audio_key":"be9c3c364ed421755ab47487e279103b352acf751564447b77a7e0f6bd708e66","entity_key":"d_changes_over_time_01:3","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cd3e181cfb665ef694ecd443ac4e420af0e6099d7186c7291f43dabef257a405","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/be9c3c364ed421755ab47487e279103b352acf751564447b77a7e0f6bd708e66.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polite_nuance_01:1 -> audio/generated/it-IT/dialogues/becace9f15ee5d05369da2f3500aed58d343b8e6a73d5ef93cbfd6781228c2cd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('140ae2f5-9564-521f-aa34-3a613c11cce1', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_nuance_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '64eb08afbf6a8ce73c03163a9044753a66097b603c94877c634c970d42c69227'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('192597fd-0f85-5393-b123-b1a38908b0a5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('140ae2f5-9564-521f-aa34-3a613c11cce1', 1), '64eb08afbf6a8ce73c03163a9044753a66097b603c94877c634c970d42c69227',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/becace9f15ee5d05369da2f3500aed58d343b8e6a73d5ef93cbfd6781228c2cd.mp3', 2533, '2026-09-14 04:00:59.844215', 'e2f2d7420de1903e5e2b47e35f9331f4915c57e2e7eef8c3cb3f914a4f3a965e', 'validated', '{"audio_key":"becace9f15ee5d05369da2f3500aed58d343b8e6a73d5ef93cbfd6781228c2cd","entity_key":"d_polite_nuance_01:1","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"e2f2d7420de1903e5e2b47e35f9331f4915c57e2e7eef8c3cb3f914a4f3a965e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/becace9f15ee5d05369da2f3500aed58d343b8e6a73d5ef93cbfd6781228c2cd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_information_02:1 -> audio/generated/it-IT/dialogues/bfb7ca27b0f823344fe28008d7ef6dce883aab5193d4399fb34df962d4fd2a3d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('35317874-0032-59e0-bc6b-07537923bbf1', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_information_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '610d31fd11ed82ec8c2dc6d417e0c9801b5d391d15f9ecdd870a6278f64cbe39'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('daf21215-5dad-5936-8d91-34d7a5b34e7b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('35317874-0032-59e0-bc6b-07537923bbf1', 1), '610d31fd11ed82ec8c2dc6d417e0c9801b5d391d15f9ecdd870a6278f64cbe39',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/bfb7ca27b0f823344fe28008d7ef6dce883aab5193d4399fb34df962d4fd2a3d.mp3', 2037, '2026-09-14 04:01:00.558617', 'b2eaf14f61f91b954e3408ba45d55ed0449162c30c5e8a6e10de9b98f3463b5c', 'validated', '{"audio_key":"bfb7ca27b0f823344fe28008d7ef6dce883aab5193d4399fb34df962d4fd2a3d","entity_key":"d_reported_information_02:1","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"b2eaf14f61f91b954e3408ba45d55ed0449162c30c5e8a6e10de9b98f3463b5c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/bfb7ca27b0f823344fe28008d7ef6dce883aab5193d4399fb34df962d4fd2a3d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_stories_and_background_01:1 -> audio/generated/it-IT/dialogues/c389389b752af6ec8ea334c21a220d3e4eb102e03c68d75d4ef2474ff0a1683f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('32a031ba-e2f0-541b-b2ed-a8ce3cb834be', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_stories_and_background_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '47a22fbe633c3a4def3aaedc9dc7b13e7a86de9a9c288b964dc14eeeb29ae8c3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aae31953-49f7-5920-87c2-329e77297912', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('32a031ba-e2f0-541b-b2ed-a8ce3cb834be', 1), '47a22fbe633c3a4def3aaedc9dc7b13e7a86de9a9c288b964dc14eeeb29ae8c3',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/c389389b752af6ec8ea334c21a220d3e4eb102e03c68d75d4ef2474ff0a1683f.mp3', 1436, '2026-09-14 04:01:00.862694', '46146eae0d212cdb023f9fb63094a7ac2901c2626d8eb7ea3177d0018121f2de', 'validated', '{"audio_key":"c389389b752af6ec8ea334c21a220d3e4eb102e03c68d75d4ef2474ff0a1683f","entity_key":"d_stories_and_background_01:1","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"46146eae0d212cdb023f9fb63094a7ac2901c2626d8eb7ea3177d0018121f2de","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/c389389b752af6ec8ea334c21a220d3e4eb102e03c68d75d4ef2474ff0a1683f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_goals_and_effort_01:2 -> audio/generated/it-IT/dialogues/c47c6a6e9928ae87fb047f1f042150637fef2bb42000cd32d35139fe6dcb7a5e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3f8fa0f3-65ed-5a59-9fd8-5f68a98cc5c9', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_goals_and_effort_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9464224350c250e2be77a85cbf7b3e2b9c8d197b31ee4e3f5fe2197a4f4bdf52'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a01c3154-7b3f-5bc9-a829-16d8e8138796', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3f8fa0f3-65ed-5a59-9fd8-5f68a98cc5c9', 1), '9464224350c250e2be77a85cbf7b3e2b9c8d197b31ee4e3f5fe2197a4f4bdf52',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/c47c6a6e9928ae87fb047f1f042150637fef2bb42000cd32d35139fe6dcb7a5e.mp3', 2533, '2026-09-14 04:01:01.662782', '8519044f981cec837efaae9ecfc9eb09fd1c06aef99e272ff148f7ebdc1efb68', 'validated', '{"audio_key":"c47c6a6e9928ae87fb047f1f042150637fef2bb42000cd32d35139fe6dcb7a5e","entity_key":"d_goals_and_effort_01:2","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"8519044f981cec837efaae9ecfc9eb09fd1c06aef99e272ff148f7ebdc1efb68","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/c47c6a6e9928ae87fb047f1f042150637fef2bb42000cd32d35139fe6dcb7a5e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b1_city_project_capstone_01:3 -> audio/generated/it-IT/dialogues/c69c8ab7f0cac5640babeb2a045178d7b864f45b301c751d642fd050585c13e8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0eef3b4d-0d40-56d7-958f-96df49674666', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b1_city_project_capstone_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '92b152f8eb1df3dc25e0cbf782f753a5121f044ef4e7ef7ed1ea7bd90e71e51e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0d83e073-724d-5e0b-a5b7-c1de5119a459', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0eef3b4d-0d40-56d7-958f-96df49674666', 1), '92b152f8eb1df3dc25e0cbf782f753a5121f044ef4e7ef7ed1ea7bd90e71e51e',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/c69c8ab7f0cac5640babeb2a045178d7b864f45b301c751d642fd050585c13e8.mp3', 2220, '2026-09-14 04:01:01.980339', 'e06da6c0f52babf3e9b0e3789cb778b9ffada2f94bd6b47991954f120d109a89', 'validated', '{"audio_key":"c69c8ab7f0cac5640babeb2a045178d7b864f45b301c751d642fd050585c13e8","entity_key":"d_b1_city_project_capstone_01:3","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e06da6c0f52babf3e9b0e3789cb778b9ffada2f94bd6b47991954f120d109a89","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/c69c8ab7f0cac5640babeb2a045178d7b864f45b301c751d642fd050585c13e8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polite_nuance_02:3 -> audio/generated/it-IT/dialogues/c79f663c4136e045c56273ef4c4bd73ab5dc1ac523bf1069f5f4fb6ce7138745.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('47a69e9f-59bb-5ba3-84dc-2d38a660586b', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_nuance_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0670cb19d2ec3c295be08dcf7ec627cebf28baf5e7cec1b4a5f58718ee88cbc9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e210d97d-9d18-5670-8b5f-10607131743f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('47a69e9f-59bb-5ba3-84dc-2d38a660586b', 1), '0670cb19d2ec3c295be08dcf7ec627cebf28baf5e7cec1b4a5f58718ee88cbc9',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/c79f663c4136e045c56273ef4c4bd73ab5dc1ac523bf1069f5f4fb6ce7138745.mp3', 2037, '2026-09-14 04:01:02.755136', '35a87ad4592c4eab6a085114e88f3a06260955a8c3e0d67757d6677693fcbb4f', 'validated', '{"audio_key":"c79f663c4136e045c56273ef4c4bd73ab5dc1ac523bf1069f5f4fb6ce7138745","entity_key":"d_polite_nuance_02:3","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"35a87ad4592c4eab6a085114e88f3a06260955a8c3e0d67757d6677693fcbb4f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/c79f663c4136e045c56273ef4c4bd73ab5dc1ac523bf1069f5f4fb6ce7138745.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b1_city_project_capstone_02:4 -> audio/generated/it-IT/dialogues/ca88ae754a069106e22d1ac357a6481a68d90d980ae40eb34f25cc3774b5bbc9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1c236b84-5656-59df-b4c4-92cf301972f4', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b1_city_project_capstone_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '97266c6988e0a330080069d229db25c8e9905d2219b6af7bd55e7ae22b9f4fea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('939ba013-4fc9-5cff-901d-f45efbbd327d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1c236b84-5656-59df-b4c4-92cf301972f4', 1), '97266c6988e0a330080069d229db25c8e9905d2219b6af7bd55e7ae22b9f4fea',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/ca88ae754a069106e22d1ac357a6481a68d90d980ae40eb34f25cc3774b5bbc9.mp3', 3761, '2026-09-14 04:01:03.334952', '0a9753750093527ce4d45535a1da6c670ef65b7f05928900b71027633ebce17d', 'validated', '{"audio_key":"ca88ae754a069106e22d1ac357a6481a68d90d980ae40eb34f25cc3774b5bbc9","entity_key":"d_b1_city_project_capstone_02:4","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"0a9753750093527ce4d45535a1da6c670ef65b7f05928900b71027633ebce17d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/ca88ae754a069106e22d1ac357a6481a68d90d980ae40eb34f25cc3774b5bbc9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_real_conditions_01:4 -> audio/generated/it-IT/dialogues/cb332de9fe388127055ee8d5ea30d670329757f8ef3e28f19823291709a700f2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('742f00b5-f127-50e4-b4a0-695c4f0ec3cf', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_real_conditions_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b465a135a2f7976a1459eb0a79f8fcdecc83633ab5077ce788e768ea1656bacf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ff240627-e672-5635-bfbf-35a23d41caaf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('742f00b5-f127-50e4-b4a0-695c4f0ec3cf', 1), 'b465a135a2f7976a1459eb0a79f8fcdecc83633ab5077ce788e768ea1656bacf',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/cb332de9fe388127055ee8d5ea30d670329757f8ef3e28f19823291709a700f2.mp3', 1567, '2026-09-14 04:01:03.791615', 'd322bdb5aecc43cedff853ddc2dcb2dd37f3406281ad3cb92ac9352afc84991a', 'validated', '{"audio_key":"cb332de9fe388127055ee8d5ea30d670329757f8ef3e28f19823291709a700f2","entity_key":"d_real_conditions_01:4","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d322bdb5aecc43cedff853ddc2dcb2dd37f3406281ad3cb92ac9352afc84991a","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/cb332de9fe388127055ee8d5ea30d670329757f8ef3e28f19823291709a700f2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_goals_and_effort_02:3 -> audio/generated/it-IT/dialogues/cba44699b525243727ad368cdb234f2d41f4e99fd94bffa4e0ef77d12a1c1da3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('52bd7751-2710-5753-9262-42c24e914b41', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_goals_and_effort_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '504c881b5a249cc4d2b1ec79af38f5de4c77019f0cf9ec14afe6e73f144f011e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d6a8a2b7-c1e1-5900-b445-6204d4ffc200', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('52bd7751-2710-5753-9262-42c24e914b41', 1), '504c881b5a249cc4d2b1ec79af38f5de4c77019f0cf9ec14afe6e73f144f011e',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/cba44699b525243727ad368cdb234f2d41f4e99fd94bffa4e0ef77d12a1c1da3.mp3', 2351, '2026-09-14 04:01:04.502420', 'c4f5e2eb674873a599c32931494ba98e9819f7b61c88a32a39dfc66dbfa6af5a', 'validated', '{"audio_key":"cba44699b525243727ad368cdb234f2d41f4e99fd94bffa4e0ef77d12a1c1da3","entity_key":"d_goals_and_effort_02:3","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"c4f5e2eb674873a599c32931494ba98e9819f7b61c88a32a39dfc66dbfa6af5a","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/cba44699b525243727ad368cdb234f2d41f4e99fd94bffa4e0ef77d12a1c1da3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_goals_and_effort_02:4 -> audio/generated/it-IT/dialogues/ce9f87393f4e5f8539efa08981efd14b555a1fc2ed6b2898eca4f895e8248371.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b873335c-ba17-5e36-b1b1-fe577d44cd6e', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_goals_and_effort_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0742716600ff9ced39ed5c81ed4e312fd55cd595427ad630a473aaea5eb0838d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e421cc03-b6ac-554c-bb85-73e9e1f68215', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b873335c-ba17-5e36-b1b1-fe577d44cd6e', 1), '0742716600ff9ced39ed5c81ed4e312fd55cd595427ad630a473aaea5eb0838d',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/ce9f87393f4e5f8539efa08981efd14b555a1fc2ed6b2898eca4f895e8248371.mp3', 1854, '2026-09-14 04:01:04.881890', 'e382e5848eb5ec1067076fad89d8666fbd3eeca0e75fa36d0f0b61fddbe65dbd', 'validated', '{"audio_key":"ce9f87393f4e5f8539efa08981efd14b555a1fc2ed6b2898eca4f895e8248371","entity_key":"d_goals_and_effort_02:4","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"e382e5848eb5ec1067076fad89d8666fbd3eeca0e75fa36d0f0b61fddbe65dbd","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/ce9f87393f4e5f8539efa08981efd14b555a1fc2ed6b2898eca4f895e8248371.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_and_sources_01:2 -> audio/generated/it-IT/dialogues/d20be33623d5fa89173f64dea21c2e5a8c3a51b842ce1fe3b4f37c57c00a7883.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8ed8d6dd-afea-5057-ad8d-9317939e70e0', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_and_sources_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9dace95a375d999a9304e4fd542ac81b7f489873c3acefc34e0cecfa9bdefd6d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3c756db3-1bd1-5b01-9b5b-3a5891542509', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8ed8d6dd-afea-5057-ad8d-9317939e70e0', 1), '9dace95a375d999a9304e4fd542ac81b7f489873c3acefc34e0cecfa9bdefd6d',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/d20be33623d5fa89173f64dea21c2e5a8c3a51b842ce1fe3b4f37c57c00a7883.mp3', 2873, '2026-09-14 04:01:05.650149', '05d1bd3fad01879c6c9b4f0fe8503203fbac7a9c03dc26c22a9517d0908c66a1', 'validated', '{"audio_key":"d20be33623d5fa89173f64dea21c2e5a8c3a51b842ce1fe3b4f37c57c00a7883","entity_key":"d_media_and_sources_01:2","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"05d1bd3fad01879c6c9b4f0fe8503203fbac7a9c03dc26c22a9517d0908c66a1","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/d20be33623d5fa89173f64dea21c2e5a8c3a51b842ce1fe3b4f37c57c00a7883.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_stories_and_background_01:4 -> audio/generated/it-IT/dialogues/e11a6e36d57b9187851f65b8558199bed70246f6081ec19e6fb845b6a9af4bc9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('03b04d3e-f530-5154-884f-d9c7c6826b0d', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_stories_and_background_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fed84335d8bdef2c2952e8a1fcc0482bff085c5200ec0bc4ddc60cecb7891cc0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d744c2ca-91d2-51b2-b27c-f156d364617d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('03b04d3e-f530-5154-884f-d9c7c6826b0d', 1), 'fed84335d8bdef2c2952e8a1fcc0482bff085c5200ec0bc4ddc60cecb7891cc0',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/e11a6e36d57b9187851f65b8558199bed70246f6081ec19e6fb845b6a9af4bc9.mp3', 2925, '2026-09-14 04:01:06.030206', '9343ecc527188e7385007db9553cb954975eda048d219cf9ac638d5874e33651', 'validated', '{"audio_key":"e11a6e36d57b9187851f65b8558199bed70246f6081ec19e6fb845b6a9af4bc9","entity_key":"d_stories_and_background_01:4","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"9343ecc527188e7385007db9553cb954975eda048d219cf9ac638d5874e33651","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/e11a6e36d57b9187851f65b8558199bed70246f6081ec19e6fb845b6a9af4bc9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_real_conditions_01:3 -> audio/generated/it-IT/dialogues/e43b4fa38d3f8ba6ed185552dae006781564577a89be92c8a5e0922ae50f9d3b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cad43a15-1aa8-51db-8bd2-ea4197a01608', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_real_conditions_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3e755c96b2ed1d36dedf4bb944f9d634866dbf612751980de351f0a53fb136d3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1ab5dd1a-5f16-54bc-be26-87aafb0bf3bd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cad43a15-1aa8-51db-8bd2-ea4197a01608', 1), '3e755c96b2ed1d36dedf4bb944f9d634866dbf612751980de351f0a53fb136d3',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/e43b4fa38d3f8ba6ed185552dae006781564577a89be92c8a5e0922ae50f9d3b.mp3', 1750, '2026-09-14 04:01:06.775379', '4d17876b86bf294f5c3f26c56fd5b82bbdc7a9db3ae7d2f48adc0c982df5c5ba', 'validated', '{"audio_key":"e43b4fa38d3f8ba6ed185552dae006781564577a89be92c8a5e0922ae50f9d3b","entity_key":"d_real_conditions_01:3","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"4d17876b86bf294f5c3f26c56fd5b82bbdc7a9db3ae7d2f48adc0c982df5c5ba","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/e43b4fa38d3f8ba6ed185552dae006781564577a89be92c8a5e0922ae50f9d3b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_information_02:3 -> audio/generated/it-IT/dialogues/e4ef87839509ad3444b058369c2d573460318840689a221f0ca6f79f100ca4c2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b66302c3-ddf3-5479-87e4-dca7b03e74c4', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_information_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0868b68dd50cfaa239e2585a3f3141bcc4c27649634d15e7994594cf46d57a93'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('33dba51c-7063-5ffe-9e75-cbc1616e1ad7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b66302c3-ddf3-5479-87e4-dca7b03e74c4', 1), '0868b68dd50cfaa239e2585a3f3141bcc4c27649634d15e7994594cf46d57a93',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/e4ef87839509ad3444b058369c2d573460318840689a221f0ca6f79f100ca4c2.mp3', 2324, '2026-09-14 04:01:07.211188', 'a30d5190afcc4785074b0261e3341a523b8fcaace2765aabfdd3907be2d9375c', 'validated', '{"audio_key":"e4ef87839509ad3444b058369c2d573460318840689a221f0ca6f79f100ca4c2","entity_key":"d_reported_information_02:3","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"a30d5190afcc4785074b0261e3341a523b8fcaace2765aabfdd3907be2d9375c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/e4ef87839509ad3444b058369c2d573460318840689a221f0ca6f79f100ca4c2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_stories_and_background_02:1 -> audio/generated/it-IT/dialogues/e6cf499130f819a029628106a67297325db5107a2a7b3066c3491483bcc85bb0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('15908a19-6033-5cab-9cd4-135a8082f980', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_stories_and_background_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7ef97202fe80c54ff1790adc40e6e113a8fff8db55cdd14e1d0b77cd4b6c6108'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('139becbc-6da6-5623-ab79-ed0acd1ed6e9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('15908a19-6033-5cab-9cd4-135a8082f980', 1), '7ef97202fe80c54ff1790adc40e6e113a8fff8db55cdd14e1d0b77cd4b6c6108',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/e6cf499130f819a029628106a67297325db5107a2a7b3066c3491483bcc85bb0.mp3', 2037, '2026-09-14 04:01:07.874638', 'ae216e315434fae05c20b4a7649381e246db5d4d85a475ea7f0cb09a07382dcd', 'validated', '{"audio_key":"e6cf499130f819a029628106a67297325db5107a2a7b3066c3491483bcc85bb0","entity_key":"d_stories_and_background_02:1","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"ae216e315434fae05c20b4a7649381e246db5d4d85a475ea7f0cb09a07382dcd","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/e6cf499130f819a029628106a67297325db5107a2a7b3066c3491483bcc85bb0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_changes_over_time_02:3 -> audio/generated/it-IT/dialogues/e6e590bdf72cf0e63143bde4f2c1a39f0eb98cff417192cd764ea0b79cf04e25.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0ace32c4-a473-5342-ace2-280749c10f9e', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_changes_over_time_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '762f66fd032e621cfc77d0d3aefaf3f25bc09d408364eeacc72d1173becff4b8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9b3403d3-5b9c-5544-9f9e-0273495f3afa', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0ace32c4-a473-5342-ace2-280749c10f9e', 1), '762f66fd032e621cfc77d0d3aefaf3f25bc09d408364eeacc72d1173becff4b8',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/e6e590bdf72cf0e63143bde4f2c1a39f0eb98cff417192cd764ea0b79cf04e25.mp3', 1488, '2026-09-14 04:01:08.216054', '29de91758e77a966016660ba8ee5c357ebc8ecb9c72c85be8d79b072b8d47650', 'validated', '{"audio_key":"e6e590bdf72cf0e63143bde4f2c1a39f0eb98cff417192cd764ea0b79cf04e25","entity_key":"d_changes_over_time_02:3","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"29de91758e77a966016660ba8ee5c357ebc8ecb9c72c85be8d79b072b8d47650","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/e6e590bdf72cf0e63143bde4f2c1a39f0eb98cff417192cd764ea0b79cf04e25.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_changes_over_time_02:2 -> audio/generated/it-IT/dialogues/e7cf030f99a24e85e58a678ebfac81fcf07ce68e1ac84c5fa1851da384288f64.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6fc6c8fa-a4fd-535e-923a-32540b4f8a81', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_changes_over_time_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6c40d6d4fd7c4d5be2735fe6ffe93901a8b16e23a954bbd16c1734e6de1bf9ef'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fcc2f772-abc7-5e65-abbc-7e46bbe52a89', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6fc6c8fa-a4fd-535e-923a-32540b4f8a81', 1), '6c40d6d4fd7c4d5be2735fe6ffe93901a8b16e23a954bbd16c1734e6de1bf9ef',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/e7cf030f99a24e85e58a678ebfac81fcf07ce68e1ac84c5fa1851da384288f64.mp3', 4414, '2026-09-14 04:01:09.227432', 'fa92fc26155aca829c929da2c8e7e8cb9ab95167664130b35e6f006eda0b6cd2', 'validated', '{"audio_key":"e7cf030f99a24e85e58a678ebfac81fcf07ce68e1ac84c5fa1851da384288f64","entity_key":"d_changes_over_time_02:2","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fa92fc26155aca829c929da2c8e7e8cb9ab95167664130b35e6f006eda0b6cd2","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/e7cf030f99a24e85e58a678ebfac81fcf07ce68e1ac84c5fa1851da384288f64.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_and_reasons_02:3 -> audio/generated/it-IT/dialogues/ed3924531d59ad3badc8082980ca35f18eeb9dc1974fd163b1e9b57089dcd3c7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('eaa468ef-8cba-5daf-8fc5-96a96ad078e6', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_reasons_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '581fbd2075b8ab77a5714b72ad3b9fb27e91007d8c8db5b5a6fa67b71af76cd5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fd8d0a5f-6943-5b62-bd0f-8a5cefe2f54f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('eaa468ef-8cba-5daf-8fc5-96a96ad078e6', 1), '581fbd2075b8ab77a5714b72ad3b9fb27e91007d8c8db5b5a6fa67b71af76cd5',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/ed3924531d59ad3badc8082980ca35f18eeb9dc1974fd163b1e9b57089dcd3c7.mp3', 1436, '2026-09-14 04:01:09.250927', 'a6fe51216825bd91267de53f68a538ecc96d62469d38b85871cd5c971b8b0965', 'validated', '{"audio_key":"ed3924531d59ad3badc8082980ca35f18eeb9dc1974fd163b1e9b57089dcd3c7","entity_key":"d_opinions_and_reasons_02:3","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"a6fe51216825bd91267de53f68a538ecc96d62469d38b85871cd5c971b8b0965","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/ed3924531d59ad3badc8082980ca35f18eeb9dc1974fd163b1e9b57089dcd3c7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_and_reasons_01:3 -> audio/generated/it-IT/dialogues/ee9de6707e8aa95a763bd520328639737bf21daa74a83ada0d286e9961c7d1a4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f29dd2be-a45b-5f8c-a3c9-a8a81f25f3bc', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_reasons_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3c481ea738ead1a50413ddce48bc44908c6e8f56879d99f1377dee707f67909b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('87c70268-48ab-5111-aef5-2d038c3682b8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f29dd2be-a45b-5f8c-a3c9-a8a81f25f3bc', 1), '3c481ea738ead1a50413ddce48bc44908c6e8f56879d99f1377dee707f67909b',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/ee9de6707e8aa95a763bd520328639737bf21daa74a83ada0d286e9961c7d1a4.mp3', 2168, '2026-09-14 04:01:10.347653', 'e415f80a776be447ab08d4bb84f8c3b4a9a65f1dc9873274737c9d493b14a4c8', 'validated', '{"audio_key":"ee9de6707e8aa95a763bd520328639737bf21daa74a83ada0d286e9961c7d1a4","entity_key":"d_opinions_and_reasons_01:3","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"e415f80a776be447ab08d4bb84f8c3b4a9a65f1dc9873274737c9d493b14a4c8","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/ee9de6707e8aa95a763bd520328639737bf21daa74a83ada0d286e9961c7d1a4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_and_reasons_01:4 -> audio/generated/it-IT/dialogues/f1e2410a1c7160e01a192c083070c7fbaf43564cf2afd121a08e0dcf2fcc6982.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7f700d19-e9dc-52a7-915f-0d8fdeb4aba0', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_reasons_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '018abfeebceeeb7b51424dbbcec3dcb6032c5936d5d572599a4fafcb686cd7be'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f0991183-55a6-5ae2-afc7-7cbc6b26b9d7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7f700d19-e9dc-52a7-915f-0d8fdeb4aba0', 1), '018abfeebceeeb7b51424dbbcec3dcb6032c5936d5d572599a4fafcb686cd7be',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/f1e2410a1c7160e01a192c083070c7fbaf43564cf2afd121a08e0dcf2fcc6982.mp3', 3604, '2026-09-14 04:01:10.511368', '2ae2c074525f9d4f8650efb3de055a9fbba05c5c2677cc1281b3f42745f54fa0', 'validated', '{"audio_key":"f1e2410a1c7160e01a192c083070c7fbaf43564cf2afd121a08e0dcf2fcc6982","entity_key":"d_opinions_and_reasons_01:4","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2ae2c074525f9d4f8650efb3de055a9fbba05c5c2677cc1281b3f42745f54fa0","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/f1e2410a1c7160e01a192c083070c7fbaf43564cf2afd121a08e0dcf2fcc6982.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_goals_and_effort_01:3 -> audio/generated/it-IT/dialogues/f3332e0e191fce11fa6ecf92ddcb848cb7d0c825a3ff39ff3f3fcfe7f9827413.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ed856e28-e9d7-57a4-9a53-0abf0acdc16d', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_goals_and_effort_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a7bcd04d46c505d7a4cdc59e900784da5ba6cf6fed4997d33d68c18ff03b4c4b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cc8ffedc-72fe-55f6-85cf-dc927051bdc7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ed856e28-e9d7-57a4-9a53-0abf0acdc16d', 1), 'a7bcd04d46c505d7a4cdc59e900784da5ba6cf6fed4997d33d68c18ff03b4c4b',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/f3332e0e191fce11fa6ecf92ddcb848cb7d0c825a3ff39ff3f3fcfe7f9827413.mp3', 1750, '2026-09-14 04:01:11.440936', '8e98cb1061c428308547b9069ecd1d6e11e69360f40835830e89a33811e2a0f5', 'validated', '{"audio_key":"f3332e0e191fce11fa6ecf92ddcb848cb7d0c825a3ff39ff3f3fcfe7f9827413","entity_key":"d_goals_and_effort_01:3","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8e98cb1061c428308547b9069ecd1d6e11e69360f40835830e89a33811e2a0f5","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/f3332e0e191fce11fa6ecf92ddcb848cb7d0c825a3ff39ff3f3fcfe7f9827413.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_stories_and_background_01:3 -> audio/generated/it-IT/dialogues/f42a3afa2a7c16473e1fa11a094585f0b9334697daca4e63bf9a3fc8d5940c65.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7b930c91-47e1-5e13-94d9-5141132d4277', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_stories_and_background_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a3891aef7ed4cc37bf6e8d2dcbcbe408b1a096ae25dcb1f0bf5d04c43baef453'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5889527b-5689-5cfb-bd8c-60b156bd39d3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7b930c91-47e1-5e13-94d9-5141132d4277', 1), 'a3891aef7ed4cc37bf6e8d2dcbcbe408b1a096ae25dcb1f0bf5d04c43baef453',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/f42a3afa2a7c16473e1fa11a094585f0b9334697daca4e63bf9a3fc8d5940c65.mp3', 1515, '2026-09-14 04:01:11.670802', 'ef32272df6d7134cc3b6d581514beb5f5439ee0710f292684e68c0cffdfd8cb3', 'validated', '{"audio_key":"f42a3afa2a7c16473e1fa11a094585f0b9334697daca4e63bf9a3fc8d5940c65","entity_key":"d_stories_and_background_01:3","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"ef32272df6d7134cc3b6d581514beb5f5439ee0710f292684e68c0cffdfd8cb3","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/f42a3afa2a7c16473e1fa11a094585f0b9334697daca4e63bf9a3fc8d5940c65.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_and_reasons_02:2 -> audio/generated/it-IT/dialogues/f671db43f16e4f5f38b30122e29d7727a81722ef2385e57b894721daaea9637d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('915317a7-81ea-55af-b2aa-d0b4c12450d5', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_reasons_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '887c76d66aa8c0c759ce23d30bfca0d0e101d75841a1570d850376031daa616e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('df28fc9d-91fc-5dc4-9a94-e636dcc1f3a3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('915317a7-81ea-55af-b2aa-d0b4c12450d5', 1), '887c76d66aa8c0c759ce23d30bfca0d0e101d75841a1570d850376031daa616e',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/f671db43f16e4f5f38b30122e29d7727a81722ef2385e57b894721daaea9637d.mp3', 2638, '2026-09-14 04:01:12.623290', 'a1780bd37f9e022115442a24fbc274aa95086a3b66cc9fb48b9de9c436b48e80', 'validated', '{"audio_key":"f671db43f16e4f5f38b30122e29d7727a81722ef2385e57b894721daaea9637d","entity_key":"d_opinions_and_reasons_02:2","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a1780bd37f9e022115442a24fbc274aa95086a3b66cc9fb48b9de9c436b48e80","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/f671db43f16e4f5f38b30122e29d7727a81722ef2385e57b894721daaea9637d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polite_nuance_01:4 -> audio/generated/it-IT/dialogues/f6985c8457ecba96a4784bdba1004ab305b866ddecd744c0eca86b3f42375d44.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d66c2ccc-2f01-5317-9e26-968bcd0ac297', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_nuance_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '42f2d9c0f74b2ffd1fba62714c69d2fcdb2b0d83e64e7a84e2605d41337761ae'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9ff69e7b-9dcc-5356-ae2e-bfaf84178c64', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d66c2ccc-2f01-5317-9e26-968bcd0ac297', 1), '42f2d9c0f74b2ffd1fba62714c69d2fcdb2b0d83e64e7a84e2605d41337761ae',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/f6985c8457ecba96a4784bdba1004ab305b866ddecd744c0eca86b3f42375d44.mp3', 2089, '2026-09-14 04:01:12.809623', '5f28d820bd7fb1c858cde09982a975e9537bd034d9567c7ce1c272af0bcb1308', 'validated', '{"audio_key":"f6985c8457ecba96a4784bdba1004ab305b866ddecd744c0eca86b3f42375d44","entity_key":"d_polite_nuance_01:4","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5f28d820bd7fb1c858cde09982a975e9537bd034d9567c7ce1c272af0bcb1308","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/f6985c8457ecba96a4784bdba1004ab305b866ddecd744c0eca86b3f42375d44.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_goals_and_effort_01:1 -> audio/generated/it-IT/dialogues/f9e1295693d377d4cc8fa43dffaf57560c735e9035ae08b2b2a70e5ab914da81.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('70fb572f-ff7c-54ce-9065-980ba776ee3c', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_goals_and_effort_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6752fd8c671160f9846982190726241dce9ec98852c115126de4cc53e7d9caf3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('609400d8-c46a-5832-b225-184684c3674a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('70fb572f-ff7c-54ce-9065-980ba776ee3c', 1), '6752fd8c671160f9846982190726241dce9ec98852c115126de4cc53e7d9caf3',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/f9e1295693d377d4cc8fa43dffaf57560c735e9035ae08b2b2a70e5ab914da81.mp3', 2403, '2026-09-14 04:01:13.747750', '9981b35c9e0e35a3a8c9d4baac3c6d42d079a8593bda27ac75cb351b815bcf78', 'validated', '{"audio_key":"f9e1295693d377d4cc8fa43dffaf57560c735e9035ae08b2b2a70e5ab914da81","entity_key":"d_goals_and_effort_01:1","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9981b35c9e0e35a3a8c9d4baac3c6d42d079a8593bda27ac75cb351b815bcf78","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/f9e1295693d377d4cc8fa43dffaf57560c735e9035ae08b2b2a70e5ab914da81.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_problems_and_solutions_02:1 -> audio/generated/it-IT/dialogues/fc0f1402bde397f05cc98038aadbc9d0908b4dcfd1102feb43fbdb3e1264134d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('37dbdfab-76f0-5d1d-9b32-a6d68569f1cd', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_problems_and_solutions_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '219dedf5097c62016032410b44761892d79b362a91da87cd63f45ec5b1afd3b9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5ded8cda-efab-54da-80b1-5035ea60c018', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('37dbdfab-76f0-5d1d-9b32-a6d68569f1cd', 1), '219dedf5097c62016032410b44761892d79b362a91da87cd63f45ec5b1afd3b9',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/fc0f1402bde397f05cc98038aadbc9d0908b4dcfd1102feb43fbdb3e1264134d.mp3', 2168, '2026-09-14 04:01:13.902566', '3356f19fc57e4187b2b8010c1d43840c5ff97e21fea3557d0cc69287dded44e6', 'validated', '{"audio_key":"fc0f1402bde397f05cc98038aadbc9d0908b4dcfd1102feb43fbdb3e1264134d","entity_key":"d_problems_and_solutions_02:1","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"3356f19fc57e4187b2b8010c1d43840c5ff97e21fea3557d0cc69287dded44e6","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/fc0f1402bde397f05cc98038aadbc9d0908b4dcfd1102feb43fbdb3e1264134d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_information_01:4 -> audio/generated/it-IT/dialogues/fcce567cd504f511a25830ac3b9c50fbb15957bcad7bbd80733f32a77dedc9ad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('70d04b63-d75b-5135-9191-81057e4b54f8', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_information_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '24750ad36715c04d7044079965d988b4b36e70b8c46acd2ceed948dc9869a688'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a10549ec-08e7-5f57-bfe5-c84feee8fd72', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('70d04b63-d75b-5135-9191-81057e4b54f8', 1), '24750ad36715c04d7044079965d988b4b36e70b8c46acd2ceed948dc9869a688',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/fcce567cd504f511a25830ac3b9c50fbb15957bcad7bbd80733f32a77dedc9ad.mp3', 1933, '2026-09-14 04:01:14.838953', 'e0ce0ca84480405d7b8120fa5ce2472bd4f36616d90bebf678974abb508b1724', 'validated', '{"audio_key":"fcce567cd504f511a25830ac3b9c50fbb15957bcad7bbd80733f32a77dedc9ad","entity_key":"d_reported_information_01:4","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"e0ce0ca84480405d7b8120fa5ce2472bd4f36616d90bebf678974abb508b1724","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/fcce567cd504f511a25830ac3b9c50fbb15957bcad7bbd80733f32a77dedc9ad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_problems_and_solutions_03 -> audio/generated/it-IT/lexical/01db6684f6080372c8ed13b8b20ea8c1f7da6f5dba5b4ab66428fbb43e22dc23.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('690748f7-0e1c-53d0-8ad5-79f5dc4e8c42', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_problems_and_solutions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd2160e690c4a4b49540ee70bdece5d899a1dcb21809fb4f1a6382e25787c2f88'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c10ef133-9829-5d08-8c11-37ffbe1d8814', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('690748f7-0e1c-53d0-8ad5-79f5dc4e8c42', 1), 'd2160e690c4a4b49540ee70bdece5d899a1dcb21809fb4f1a6382e25787c2f88',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/01db6684f6080372c8ed13b8b20ea8c1f7da6f5dba5b4ab66428fbb43e22dc23.mp3', 1071, '2026-09-14 04:01:14.893632', 'f3c55440160f983841215b4cf2c8f32d380657769424ef03e05883e09391b427', 'validated', '{"audio_key":"01db6684f6080372c8ed13b8b20ea8c1f7da6f5dba5b4ab66428fbb43e22dc23","entity_key":"lx_problems_and_solutions_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f3c55440160f983841215b4cf2c8f32d380657769424ef03e05883e09391b427","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/01db6684f6080372c8ed13b8b20ea8c1f7da6f5dba5b4ab66428fbb43e22dc23.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_problems_and_solutions_03 -> audio/generated/it-IT/lexical/01db6684f6080372c8ed13b8b20ea8c1f7da6f5dba5b4ab66428fbb43e22dc23.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3d073ff0-cd1a-5f92-82a2-12bde17d69b8', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_problems_and_solutions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd2160e690c4a4b49540ee70bdece5d899a1dcb21809fb4f1a6382e25787c2f88'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d95222ff-3954-5b12-be0b-ed6b6ad0e62b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3d073ff0-cd1a-5f92-82a2-12bde17d69b8', 1), 'd2160e690c4a4b49540ee70bdece5d899a1dcb21809fb4f1a6382e25787c2f88',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/01db6684f6080372c8ed13b8b20ea8c1f7da6f5dba5b4ab66428fbb43e22dc23.mp3', 1071, '2026-09-14 04:01:14.893632', 'f3c55440160f983841215b4cf2c8f32d380657769424ef03e05883e09391b427', 'validated', '{"audio_key":"01db6684f6080372c8ed13b8b20ea8c1f7da6f5dba5b4ab66428fbb43e22dc23","entity_key":"wf_problems_and_solutions_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f3c55440160f983841215b4cf2c8f32d380657769424ef03e05883e09391b427","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/01db6684f6080372c8ed13b8b20ea8c1f7da6f5dba5b4ab66428fbb43e22dc23.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_problems_and_solutions_06 -> audio/generated/it-IT/lexical/0271ea410599e2ed0f1ac05e8b1aa2644f7e6c6a18f4b56aab4f352c400565ed.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1590ff3c-12e3-5cbc-a61d-e13b6607e9ad', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_problems_and_solutions_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9907fa412bd7a25a4457e25d230d09ffcc868a39756f9d9f118c787ad97e26f0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a019dd1e-46fd-5fa7-aa37-e38e7d3fbe7f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1590ff3c-12e3-5cbc-a61d-e13b6607e9ad', 1), '9907fa412bd7a25a4457e25d230d09ffcc868a39756f9d9f118c787ad97e26f0',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/0271ea410599e2ed0f1ac05e8b1aa2644f7e6c6a18f4b56aab4f352c400565ed.mp3', 1253, '2026-09-14 04:01:15.841732', 'fa1d71c0b42b6ad68547afffdd46b5ffd4e6c340b14ea5fef85b142b962c3868', 'validated', '{"audio_key":"0271ea410599e2ed0f1ac05e8b1aa2644f7e6c6a18f4b56aab4f352c400565ed","entity_key":"lx_problems_and_solutions_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"fa1d71c0b42b6ad68547afffdd46b5ffd4e6c340b14ea5fef85b142b962c3868","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/0271ea410599e2ed0f1ac05e8b1aa2644f7e6c6a18f4b56aab4f352c400565ed.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_problems_and_solutions_06 -> audio/generated/it-IT/lexical/0271ea410599e2ed0f1ac05e8b1aa2644f7e6c6a18f4b56aab4f352c400565ed.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f70715f4-90d1-55ac-9485-48714a0b5f1f', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_problems_and_solutions_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9907fa412bd7a25a4457e25d230d09ffcc868a39756f9d9f118c787ad97e26f0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c92edb42-a349-5c35-8cad-72295c00b082', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f70715f4-90d1-55ac-9485-48714a0b5f1f', 1), '9907fa412bd7a25a4457e25d230d09ffcc868a39756f9d9f118c787ad97e26f0',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/0271ea410599e2ed0f1ac05e8b1aa2644f7e6c6a18f4b56aab4f352c400565ed.mp3', 1253, '2026-09-14 04:01:15.841732', 'fa1d71c0b42b6ad68547afffdd46b5ffd4e6c340b14ea5fef85b142b962c3868', 'validated', '{"audio_key":"0271ea410599e2ed0f1ac05e8b1aa2644f7e6c6a18f4b56aab4f352c400565ed","entity_key":"wf_problems_and_solutions_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"fa1d71c0b42b6ad68547afffdd46b5ffd4e6c340b14ea5fef85b142b962c3868","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/0271ea410599e2ed0f1ac05e8b1aa2644f7e6c6a18f4b56aab4f352c400565ed.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_real_conditions_02 -> audio/generated/it-IT/lexical/051dd2f0f73b10830b92e450b6115c46ed0afa2120703b9077eefe6c334e9f08.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('318a7b58-9b0a-51fc-993b-a1c00f7b6227', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_real_conditions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '94e317724a062b3fd01d02c73fe6e93c165591ba400282debe2bb45ae259147d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('557766a6-eecc-515f-a6ee-3d39e865da4d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('318a7b58-9b0a-51fc-993b-a1c00f7b6227', 1), '94e317724a062b3fd01d02c73fe6e93c165591ba400282debe2bb45ae259147d',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/051dd2f0f73b10830b92e450b6115c46ed0afa2120703b9077eefe6c334e9f08.mp3', 1071, '2026-09-14 04:01:15.883359', '4a1253728b9f0c86202c5e0efab04c44e64e32eb2eb489f70e7276f7b79960a5', 'validated', '{"audio_key":"051dd2f0f73b10830b92e450b6115c46ed0afa2120703b9077eefe6c334e9f08","entity_key":"lx_real_conditions_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"4a1253728b9f0c86202c5e0efab04c44e64e32eb2eb489f70e7276f7b79960a5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/051dd2f0f73b10830b92e450b6115c46ed0afa2120703b9077eefe6c334e9f08.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_real_conditions_02 -> audio/generated/it-IT/lexical/051dd2f0f73b10830b92e450b6115c46ed0afa2120703b9077eefe6c334e9f08.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1dcf31dd-e8e6-5be9-b84f-8b3f1e6ec638', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_real_conditions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '94e317724a062b3fd01d02c73fe6e93c165591ba400282debe2bb45ae259147d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('02058daa-e929-5774-86cb-9e87285021be', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1dcf31dd-e8e6-5be9-b84f-8b3f1e6ec638', 1), '94e317724a062b3fd01d02c73fe6e93c165591ba400282debe2bb45ae259147d',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/051dd2f0f73b10830b92e450b6115c46ed0afa2120703b9077eefe6c334e9f08.mp3', 1071, '2026-09-14 04:01:15.883359', '4a1253728b9f0c86202c5e0efab04c44e64e32eb2eb489f70e7276f7b79960a5', 'validated', '{"audio_key":"051dd2f0f73b10830b92e450b6115c46ed0afa2120703b9077eefe6c334e9f08","entity_key":"wf_real_conditions_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"4a1253728b9f0c86202c5e0efab04c44e64e32eb2eb489f70e7276f7b79960a5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/051dd2f0f73b10830b92e450b6115c46ed0afa2120703b9077eefe6c334e9f08.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_b1_city_project_capstone_05 -> audio/generated/it-IT/lexical/053d5d1be85873da375ffd7a9dde7da0cb5697ef75ebc08c57e3f597b34b8396.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ee1479c6-c8e3-51e4-81bd-967147cd02cd', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_b1_city_project_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4b5d0aeca85dba1eee114dbd26b3e993681b0d149667385786831fd778d1692c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cd80b682-e0cd-5c0d-a8b2-098cd75d6533', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ee1479c6-c8e3-51e4-81bd-967147cd02cd', 1), '4b5d0aeca85dba1eee114dbd26b3e993681b0d149667385786831fd778d1692c',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/053d5d1be85873da375ffd7a9dde7da0cb5697ef75ebc08c57e3f597b34b8396.mp3', 1253, '2026-09-14 04:01:16.828988', '213ca6918f3ef429db5e02e4eb453b89502311f0ccd1290013237599312ce565', 'validated', '{"audio_key":"053d5d1be85873da375ffd7a9dde7da0cb5697ef75ebc08c57e3f597b34b8396","entity_key":"lx_b1_city_project_capstone_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"213ca6918f3ef429db5e02e4eb453b89502311f0ccd1290013237599312ce565","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/053d5d1be85873da375ffd7a9dde7da0cb5697ef75ebc08c57e3f597b34b8396.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_b1_city_project_capstone_05 -> audio/generated/it-IT/lexical/053d5d1be85873da375ffd7a9dde7da0cb5697ef75ebc08c57e3f597b34b8396.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8f90f32c-05f9-5d2f-a7d4-d81d2c468ca1', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_b1_city_project_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4b5d0aeca85dba1eee114dbd26b3e993681b0d149667385786831fd778d1692c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cd196d6f-f78f-5ce4-8d7b-a0238478365b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8f90f32c-05f9-5d2f-a7d4-d81d2c468ca1', 1), '4b5d0aeca85dba1eee114dbd26b3e993681b0d149667385786831fd778d1692c',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/053d5d1be85873da375ffd7a9dde7da0cb5697ef75ebc08c57e3f597b34b8396.mp3', 1253, '2026-09-14 04:01:16.828988', '213ca6918f3ef429db5e02e4eb453b89502311f0ccd1290013237599312ce565', 'validated', '{"audio_key":"053d5d1be85873da375ffd7a9dde7da0cb5697ef75ebc08c57e3f597b34b8396","entity_key":"wf_b1_city_project_capstone_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"213ca6918f3ef429db5e02e4eb453b89502311f0ccd1290013237599312ce565","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/053d5d1be85873da375ffd7a9dde7da0cb5697ef75ebc08c57e3f597b34b8396.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reported_information_03 -> audio/generated/it-IT/lexical/1bd6a91bb43e82cede9552865a54a0a365b5fd3b116e086ccb71f27e1c8a1a97.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0071a2de-79ee-5ccc-8c7e-e39ae043c92b', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reported_information_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3200f9ef708e4e0b26a347afc14c84ff1761af65a65f599e9964b923af9fcb6a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6ffd6013-d7f9-5e16-8488-b34464e9ffdd', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0071a2de-79ee-5ccc-8c7e-e39ae043c92b', 1), '3200f9ef708e4e0b26a347afc14c84ff1761af65a65f599e9964b923af9fcb6a',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/1bd6a91bb43e82cede9552865a54a0a365b5fd3b116e086ccb71f27e1c8a1a97.mp3', 1253, '2026-09-14 03:26:41.858236', 'c126cb4668c4b47b25c9391d8e08ca1b21690c352654160f4c11595b2200e43d', 'validated', '{"audio_key":"1bd6a91bb43e82cede9552865a54a0a365b5fd3b116e086ccb71f27e1c8a1a97","entity_key":"lx_reported_information_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c126cb4668c4b47b25c9391d8e08ca1b21690c352654160f4c11595b2200e43d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/1bd6a91bb43e82cede9552865a54a0a365b5fd3b116e086ccb71f27e1c8a1a97.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reported_information_03 -> audio/generated/it-IT/lexical/1bd6a91bb43e82cede9552865a54a0a365b5fd3b116e086ccb71f27e1c8a1a97.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8cbf3beb-7219-5bf7-9925-227f5d3716f0', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reported_information_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3200f9ef708e4e0b26a347afc14c84ff1761af65a65f599e9964b923af9fcb6a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f10ffc60-c986-54ef-b33b-ba1beee33393', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8cbf3beb-7219-5bf7-9925-227f5d3716f0', 1), '3200f9ef708e4e0b26a347afc14c84ff1761af65a65f599e9964b923af9fcb6a',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/1bd6a91bb43e82cede9552865a54a0a365b5fd3b116e086ccb71f27e1c8a1a97.mp3', 1253, '2026-09-14 03:26:41.858236', 'c126cb4668c4b47b25c9391d8e08ca1b21690c352654160f4c11595b2200e43d', 'validated', '{"audio_key":"1bd6a91bb43e82cede9552865a54a0a365b5fd3b116e086ccb71f27e1c8a1a97","entity_key":"wf_reported_information_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c126cb4668c4b47b25c9391d8e08ca1b21690c352654160f4c11595b2200e43d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/1bd6a91bb43e82cede9552865a54a0a365b5fd3b116e086ccb71f27e1c8a1a97.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_real_conditions_01 -> audio/generated/it-IT/lexical/1d4ccc85ba5ad6d8418ec89345ab41b7587fae0a9a01a4711ada0419e6ec4f94.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7753e1db-281b-50c0-8b0a-78a8aefbcc11', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_real_conditions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '919822b38bc06e80aa0acbc7585d4809638b5d7e20e1fe78b2bf9d00b4a1c4ca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1c569ac0-e139-5f41-815e-c301e26d2221', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7753e1db-281b-50c0-8b0a-78a8aefbcc11', 1), '919822b38bc06e80aa0acbc7585d4809638b5d7e20e1fe78b2bf9d00b4a1c4ca',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/1d4ccc85ba5ad6d8418ec89345ab41b7587fae0a9a01a4711ada0419e6ec4f94.mp3', 1280, '2026-09-14 04:01:16.920474', 'd6d1b38ac604c640c275da5d84d93a7ca5a0f0ac05d4a7bb0b5bbe3aab77ad81', 'validated', '{"audio_key":"1d4ccc85ba5ad6d8418ec89345ab41b7587fae0a9a01a4711ada0419e6ec4f94","entity_key":"lx_real_conditions_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d6d1b38ac604c640c275da5d84d93a7ca5a0f0ac05d4a7bb0b5bbe3aab77ad81","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/1d4ccc85ba5ad6d8418ec89345ab41b7587fae0a9a01a4711ada0419e6ec4f94.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_real_conditions_01 -> audio/generated/it-IT/lexical/1d4ccc85ba5ad6d8418ec89345ab41b7587fae0a9a01a4711ada0419e6ec4f94.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('03919328-69cc-56b8-af6d-8c8d457e2fc3', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_real_conditions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '919822b38bc06e80aa0acbc7585d4809638b5d7e20e1fe78b2bf9d00b4a1c4ca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('18ce04c6-9ec8-5810-800c-2f5a64bf33e9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('03919328-69cc-56b8-af6d-8c8d457e2fc3', 1), '919822b38bc06e80aa0acbc7585d4809638b5d7e20e1fe78b2bf9d00b4a1c4ca',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/1d4ccc85ba5ad6d8418ec89345ab41b7587fae0a9a01a4711ada0419e6ec4f94.mp3', 1280, '2026-09-14 04:01:16.920474', 'd6d1b38ac604c640c275da5d84d93a7ca5a0f0ac05d4a7bb0b5bbe3aab77ad81', 'validated', '{"audio_key":"1d4ccc85ba5ad6d8418ec89345ab41b7587fae0a9a01a4711ada0419e6ec4f94","entity_key":"wf_real_conditions_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d6d1b38ac604c640c275da5d84d93a7ca5a0f0ac05d4a7bb0b5bbe3aab77ad81","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/1d4ccc85ba5ad6d8418ec89345ab41b7587fae0a9a01a4711ada0419e6ec4f94.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_polite_nuance_03 -> audio/generated/it-IT/lexical/213f18b055138d4e567fb4b1c83a2bf247f64de285d85d95e2c07ecb4accb073.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e88fdea5-3f22-595f-99bc-f4e24cc2ff82', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_polite_nuance_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '788c699f03ac6dac0afaeb84acea02a792a9a78b330158319292b4c9129df50c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('59117a2b-2c51-5ab6-add5-0b0763a33c47', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e88fdea5-3f22-595f-99bc-f4e24cc2ff82', 1), '788c699f03ac6dac0afaeb84acea02a792a9a78b330158319292b4c9129df50c',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/213f18b055138d4e567fb4b1c83a2bf247f64de285d85d95e2c07ecb4accb073.mp3', 1253, '2026-09-14 04:01:17.828267', '76858bfe2b9b8ff9945bc540b1c496c1cfe1c37b7bea9d3ac59b6da94f14bdc7', 'validated', '{"audio_key":"213f18b055138d4e567fb4b1c83a2bf247f64de285d85d95e2c07ecb4accb073","entity_key":"lx_polite_nuance_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"76858bfe2b9b8ff9945bc540b1c496c1cfe1c37b7bea9d3ac59b6da94f14bdc7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/213f18b055138d4e567fb4b1c83a2bf247f64de285d85d95e2c07ecb4accb073.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_polite_nuance_03 -> audio/generated/it-IT/lexical/213f18b055138d4e567fb4b1c83a2bf247f64de285d85d95e2c07ecb4accb073.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9a9ecbe4-6768-53fa-a81d-e73bd95e8ac4', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_polite_nuance_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '788c699f03ac6dac0afaeb84acea02a792a9a78b330158319292b4c9129df50c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('31c9de1e-ce07-51b7-ab90-dd19e3cb09a7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9a9ecbe4-6768-53fa-a81d-e73bd95e8ac4', 1), '788c699f03ac6dac0afaeb84acea02a792a9a78b330158319292b4c9129df50c',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/213f18b055138d4e567fb4b1c83a2bf247f64de285d85d95e2c07ecb4accb073.mp3', 1253, '2026-09-14 04:01:17.828267', '76858bfe2b9b8ff9945bc540b1c496c1cfe1c37b7bea9d3ac59b6da94f14bdc7', 'validated', '{"audio_key":"213f18b055138d4e567fb4b1c83a2bf247f64de285d85d95e2c07ecb4accb073","entity_key":"wf_polite_nuance_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"76858bfe2b9b8ff9945bc540b1c496c1cfe1c37b7bea9d3ac59b6da94f14bdc7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/213f18b055138d4e567fb4b1c83a2bf247f64de285d85d95e2c07ecb4accb073.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_problems_and_solutions_01 -> audio/generated/it-IT/lexical/2230557bbeabd0b6c9707cebbf4bf069ec2422e08e244e2431316d9cf163b76b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c5f15456-93da-5f68-887e-c8344a2c2b86', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_problems_and_solutions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '835b578bd545a1bb8a335b35aadabf98f4cef010dbc9e509a4092550ed0223f3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c795cfb3-cae2-56e5-b18e-dcbc7835053d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c5f15456-93da-5f68-887e-c8344a2c2b86', 1), '835b578bd545a1bb8a335b35aadabf98f4cef010dbc9e509a4092550ed0223f3',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/2230557bbeabd0b6c9707cebbf4bf069ec2422e08e244e2431316d9cf163b76b.mp3', 1097, '2026-09-14 03:26:42.853055', '52738f085c304123bc48b9deb6ba89498cb84d1b14becb1166b40782b07a8e0a', 'validated', '{"audio_key":"2230557bbeabd0b6c9707cebbf4bf069ec2422e08e244e2431316d9cf163b76b","entity_key":"lx_problems_and_solutions_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"52738f085c304123bc48b9deb6ba89498cb84d1b14becb1166b40782b07a8e0a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/2230557bbeabd0b6c9707cebbf4bf069ec2422e08e244e2431316d9cf163b76b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_problems_and_solutions_01 -> audio/generated/it-IT/lexical/2230557bbeabd0b6c9707cebbf4bf069ec2422e08e244e2431316d9cf163b76b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('46cc1741-7d99-544e-8914-841de16720c9', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_problems_and_solutions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '835b578bd545a1bb8a335b35aadabf98f4cef010dbc9e509a4092550ed0223f3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('afb763ab-9299-547c-9076-88774af673f1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('46cc1741-7d99-544e-8914-841de16720c9', 1), '835b578bd545a1bb8a335b35aadabf98f4cef010dbc9e509a4092550ed0223f3',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/2230557bbeabd0b6c9707cebbf4bf069ec2422e08e244e2431316d9cf163b76b.mp3', 1097, '2026-09-14 03:26:42.853055', '52738f085c304123bc48b9deb6ba89498cb84d1b14becb1166b40782b07a8e0a', 'validated', '{"audio_key":"2230557bbeabd0b6c9707cebbf4bf069ec2422e08e244e2431316d9cf163b76b","entity_key":"wf_problems_and_solutions_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"52738f085c304123bc48b9deb6ba89498cb84d1b14becb1166b40782b07a8e0a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/2230557bbeabd0b6c9707cebbf4bf069ec2422e08e244e2431316d9cf163b76b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_real_conditions_03 -> audio/generated/it-IT/lexical/268829011a37caa57bec183b5111c37e6a5496b7f3f75025756c024f75995a2f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c1687d36-3a64-5172-8192-a24ef04adbcd', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_real_conditions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f3758fc19f63318e197825ca809e1f6d2c1aba87af84a80921a927c6240258b0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b4352318-11d6-5dcd-b1b1-028cecd69f4e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c1687d36-3a64-5172-8192-a24ef04adbcd', 1), 'f3758fc19f63318e197825ca809e1f6d2c1aba87af84a80921a927c6240258b0',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/268829011a37caa57bec183b5111c37e6a5496b7f3f75025756c024f75995a2f.mp3', 1253, '2026-09-14 04:01:17.950747', 'a93ea5b7b360d46c0f361d4a18cc0f3b592af29fc6e7ad40e1eec59d28b60f72', 'validated', '{"audio_key":"268829011a37caa57bec183b5111c37e6a5496b7f3f75025756c024f75995a2f","entity_key":"lx_real_conditions_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"a93ea5b7b360d46c0f361d4a18cc0f3b592af29fc6e7ad40e1eec59d28b60f72","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/268829011a37caa57bec183b5111c37e6a5496b7f3f75025756c024f75995a2f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_real_conditions_03 -> audio/generated/it-IT/lexical/268829011a37caa57bec183b5111c37e6a5496b7f3f75025756c024f75995a2f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9ca0f873-178c-595b-9c4d-a63631ffd184', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_real_conditions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f3758fc19f63318e197825ca809e1f6d2c1aba87af84a80921a927c6240258b0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('05d99902-6ac3-539d-a4f9-ab70853c43a3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9ca0f873-178c-595b-9c4d-a63631ffd184', 1), 'f3758fc19f63318e197825ca809e1f6d2c1aba87af84a80921a927c6240258b0',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/268829011a37caa57bec183b5111c37e6a5496b7f3f75025756c024f75995a2f.mp3', 1253, '2026-09-14 04:01:17.950747', 'a93ea5b7b360d46c0f361d4a18cc0f3b592af29fc6e7ad40e1eec59d28b60f72', 'validated', '{"audio_key":"268829011a37caa57bec183b5111c37e6a5496b7f3f75025756c024f75995a2f","entity_key":"wf_real_conditions_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"a93ea5b7b360d46c0f361d4a18cc0f3b592af29fc6e7ad40e1eec59d28b60f72","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/268829011a37caa57bec183b5111c37e6a5496b7f3f75025756c024f75995a2f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_problems_and_solutions_02 -> audio/generated/it-IT/lexical/2d1e1d186881774b1cd9028d0e0dbafeb0da07d63b8514cd0f51bb3503fdc862.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('95e7f139-af88-59b0-9079-d6076765db9e', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_problems_and_solutions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2f886f22a19006e4f7e47c0b03242536fec344e326181ac311117f7f8a988cad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('973f935b-437d-5950-bb8e-d9d4f8fedd07', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('95e7f139-af88-59b0-9079-d6076765db9e', 1), '2f886f22a19006e4f7e47c0b03242536fec344e326181ac311117f7f8a988cad',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/2d1e1d186881774b1cd9028d0e0dbafeb0da07d63b8514cd0f51bb3503fdc862.mp3', 1201, '2026-09-14 03:26:44.075541', '7481d1feef01b2a96df8509398c1682f059ed718f927ab2a68a12a36a897901a', 'validated', '{"audio_key":"2d1e1d186881774b1cd9028d0e0dbafeb0da07d63b8514cd0f51bb3503fdc862","entity_key":"lx_problems_and_solutions_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"7481d1feef01b2a96df8509398c1682f059ed718f927ab2a68a12a36a897901a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/2d1e1d186881774b1cd9028d0e0dbafeb0da07d63b8514cd0f51bb3503fdc862.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_problems_and_solutions_02 -> audio/generated/it-IT/lexical/2d1e1d186881774b1cd9028d0e0dbafeb0da07d63b8514cd0f51bb3503fdc862.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8030d752-f8ec-50c6-a292-381ec62e2fd5', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_problems_and_solutions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2f886f22a19006e4f7e47c0b03242536fec344e326181ac311117f7f8a988cad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3e5cb6e0-ca04-53f9-8b3c-5606376beae7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8030d752-f8ec-50c6-a292-381ec62e2fd5', 1), '2f886f22a19006e4f7e47c0b03242536fec344e326181ac311117f7f8a988cad',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/2d1e1d186881774b1cd9028d0e0dbafeb0da07d63b8514cd0f51bb3503fdc862.mp3', 1201, '2026-09-14 03:26:44.075541', '7481d1feef01b2a96df8509398c1682f059ed718f927ab2a68a12a36a897901a', 'validated', '{"audio_key":"2d1e1d186881774b1cd9028d0e0dbafeb0da07d63b8514cd0f51bb3503fdc862","entity_key":"wf_problems_and_solutions_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"7481d1feef01b2a96df8509398c1682f059ed718f927ab2a68a12a36a897901a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/2d1e1d186881774b1cd9028d0e0dbafeb0da07d63b8514cd0f51bb3503fdc862.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_stories_and_background_06 -> audio/generated/it-IT/lexical/30623601715b220d43cd0ef6c2c95895b2cb6db1037d55bdc700062f31938645.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('eb8923fe-309e-5fd1-8268-eb241c8d7a26', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_stories_and_background_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6535344441dcc0176f47ce6d4c113bf1c031bb318b28f9208741f7624107904c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3e33fc14-5d26-5130-978a-c43161ae13f7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('eb8923fe-309e-5fd1-8268-eb241c8d7a26', 1), '6535344441dcc0176f47ce6d4c113bf1c031bb318b28f9208741f7624107904c',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/30623601715b220d43cd0ef6c2c95895b2cb6db1037d55bdc700062f31938645.mp3', 1201, '2026-09-14 04:01:18.810990', 'f7aa1764954664aec8851244ddf8f35046dba8fd71f1fca7c076b4d4abf00e61', 'validated', '{"audio_key":"30623601715b220d43cd0ef6c2c95895b2cb6db1037d55bdc700062f31938645","entity_key":"lx_stories_and_background_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f7aa1764954664aec8851244ddf8f35046dba8fd71f1fca7c076b4d4abf00e61","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/30623601715b220d43cd0ef6c2c95895b2cb6db1037d55bdc700062f31938645.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_stories_and_background_06 -> audio/generated/it-IT/lexical/30623601715b220d43cd0ef6c2c95895b2cb6db1037d55bdc700062f31938645.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4986b0bf-471b-525b-8e7a-c22de76ded0e', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_stories_and_background_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6535344441dcc0176f47ce6d4c113bf1c031bb318b28f9208741f7624107904c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c3d7d491-3cdf-55aa-aa23-c9d0e944f1f0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4986b0bf-471b-525b-8e7a-c22de76ded0e', 1), '6535344441dcc0176f47ce6d4c113bf1c031bb318b28f9208741f7624107904c',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/30623601715b220d43cd0ef6c2c95895b2cb6db1037d55bdc700062f31938645.mp3', 1201, '2026-09-14 04:01:18.810990', 'f7aa1764954664aec8851244ddf8f35046dba8fd71f1fca7c076b4d4abf00e61', 'validated', '{"audio_key":"30623601715b220d43cd0ef6c2c95895b2cb6db1037d55bdc700062f31938645","entity_key":"wf_stories_and_background_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f7aa1764954664aec8851244ddf8f35046dba8fd71f1fca7c076b4d4abf00e61","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/30623601715b220d43cd0ef6c2c95895b2cb6db1037d55bdc700062f31938645.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_changes_over_time_02 -> audio/generated/it-IT/lexical/319bcd50d4a0366b9fc745f60f08880aa18d86c271a6b7dc8fcfa8fedfd6f1e6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2bad7d70-398e-5fd1-bf22-d6ac1dc79bdc', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_changes_over_time_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '08c2413bc3c13a35efd2f4b30cbf027a375ea6037e5d475dc26a086070e1d4d5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('55cbe465-ebce-5e95-b496-b13be34d0eb0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2bad7d70-398e-5fd1-bf22-d6ac1dc79bdc', 1), '08c2413bc3c13a35efd2f4b30cbf027a375ea6037e5d475dc26a086070e1d4d5',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/319bcd50d4a0366b9fc745f60f08880aa18d86c271a6b7dc8fcfa8fedfd6f1e6.mp3', 1097, '2026-09-14 03:26:45.905105', 'f04e3a64b296d1b51497cbd72c5e52085c09be6cb63587e94988a5fd11a676e7', 'validated', '{"audio_key":"319bcd50d4a0366b9fc745f60f08880aa18d86c271a6b7dc8fcfa8fedfd6f1e6","entity_key":"lx_changes_over_time_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f04e3a64b296d1b51497cbd72c5e52085c09be6cb63587e94988a5fd11a676e7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/319bcd50d4a0366b9fc745f60f08880aa18d86c271a6b7dc8fcfa8fedfd6f1e6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_changes_over_time_02 -> audio/generated/it-IT/lexical/319bcd50d4a0366b9fc745f60f08880aa18d86c271a6b7dc8fcfa8fedfd6f1e6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('06032ca1-f2b4-5cc1-86f2-4b4719286423', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_changes_over_time_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '08c2413bc3c13a35efd2f4b30cbf027a375ea6037e5d475dc26a086070e1d4d5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c15c8a3b-e9ec-57f1-8074-927dd1a5f3a3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('06032ca1-f2b4-5cc1-86f2-4b4719286423', 1), '08c2413bc3c13a35efd2f4b30cbf027a375ea6037e5d475dc26a086070e1d4d5',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/319bcd50d4a0366b9fc745f60f08880aa18d86c271a6b7dc8fcfa8fedfd6f1e6.mp3', 1097, '2026-09-14 03:26:45.905105', 'f04e3a64b296d1b51497cbd72c5e52085c09be6cb63587e94988a5fd11a676e7', 'validated', '{"audio_key":"319bcd50d4a0366b9fc745f60f08880aa18d86c271a6b7dc8fcfa8fedfd6f1e6","entity_key":"wf_changes_over_time_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f04e3a64b296d1b51497cbd72c5e52085c09be6cb63587e94988a5fd11a676e7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/319bcd50d4a0366b9fc745f60f08880aa18d86c271a6b7dc8fcfa8fedfd6f1e6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_media_and_sources_03 -> audio/generated/it-IT/lexical/3c67dc0cf6181faf3a833cbece4d2bffb17f6de69923474dbe6e154767323ea5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3086753e-33e4-55ca-b038-bf708daa3e88', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_media_and_sources_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5f622191899b298e30bf5d8d694c4622dcd96fd9eb31284ffb0b0ac0a6712e2a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('294bd459-4a40-50dc-ab0a-78ea1b98a63f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3086753e-33e4-55ca-b038-bf708daa3e88', 1), '5f622191899b298e30bf5d8d694c4622dcd96fd9eb31284ffb0b0ac0a6712e2a',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/3c67dc0cf6181faf3a833cbece4d2bffb17f6de69923474dbe6e154767323ea5.mp3', 1149, '2026-09-14 04:01:18.965489', 'cdb50ee22d446735a39106cf4e5851eed0b2ec3a0b8588155942979542456ca3', 'validated', '{"audio_key":"3c67dc0cf6181faf3a833cbece4d2bffb17f6de69923474dbe6e154767323ea5","entity_key":"lx_media_and_sources_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"cdb50ee22d446735a39106cf4e5851eed0b2ec3a0b8588155942979542456ca3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/3c67dc0cf6181faf3a833cbece4d2bffb17f6de69923474dbe6e154767323ea5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_media_and_sources_03 -> audio/generated/it-IT/lexical/3c67dc0cf6181faf3a833cbece4d2bffb17f6de69923474dbe6e154767323ea5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('180301fe-866f-5473-ae82-4b136d947f59', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_media_and_sources_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5f622191899b298e30bf5d8d694c4622dcd96fd9eb31284ffb0b0ac0a6712e2a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bc517e72-2520-5052-8475-944450f8d319', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('180301fe-866f-5473-ae82-4b136d947f59', 1), '5f622191899b298e30bf5d8d694c4622dcd96fd9eb31284ffb0b0ac0a6712e2a',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/3c67dc0cf6181faf3a833cbece4d2bffb17f6de69923474dbe6e154767323ea5.mp3', 1149, '2026-09-14 04:01:18.965489', 'cdb50ee22d446735a39106cf4e5851eed0b2ec3a0b8588155942979542456ca3', 'validated', '{"audio_key":"3c67dc0cf6181faf3a833cbece4d2bffb17f6de69923474dbe6e154767323ea5","entity_key":"wf_media_and_sources_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"cdb50ee22d446735a39106cf4e5851eed0b2ec3a0b8588155942979542456ca3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/3c67dc0cf6181faf3a833cbece4d2bffb17f6de69923474dbe6e154767323ea5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_changes_over_time_05 -> audio/generated/it-IT/lexical/42048608b91d18c9feb1670a118321feb3819e19cafad39ddf71a22972f14a18.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('92582131-240d-5e71-a2eb-552637bb6b30', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_changes_over_time_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e4d491d096b51729abdfc907641224b897967eded807d0285c6dd12c2da37cd9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('402d7b80-9ef1-5a76-b999-94bd983b0f81', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('92582131-240d-5e71-a2eb-552637bb6b30', 1), 'e4d491d096b51729abdfc907641224b897967eded807d0285c6dd12c2da37cd9',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/42048608b91d18c9feb1670a118321feb3819e19cafad39ddf71a22972f14a18.mp3', 1149, '2026-09-14 04:01:19.817962', '8d85589d1d8107b7da4115ca726afef79a9f85855b00668b7b52dcdc019e434b', 'validated', '{"audio_key":"42048608b91d18c9feb1670a118321feb3819e19cafad39ddf71a22972f14a18","entity_key":"lx_changes_over_time_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8d85589d1d8107b7da4115ca726afef79a9f85855b00668b7b52dcdc019e434b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/42048608b91d18c9feb1670a118321feb3819e19cafad39ddf71a22972f14a18.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_changes_over_time_05 -> audio/generated/it-IT/lexical/42048608b91d18c9feb1670a118321feb3819e19cafad39ddf71a22972f14a18.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c602a6ee-0692-50ea-b71d-cd23a30b86eb', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_changes_over_time_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e4d491d096b51729abdfc907641224b897967eded807d0285c6dd12c2da37cd9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4741f1fb-ff9d-545e-a93b-8515774646b0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c602a6ee-0692-50ea-b71d-cd23a30b86eb', 1), 'e4d491d096b51729abdfc907641224b897967eded807d0285c6dd12c2da37cd9',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/42048608b91d18c9feb1670a118321feb3819e19cafad39ddf71a22972f14a18.mp3', 1149, '2026-09-14 04:01:19.817962', '8d85589d1d8107b7da4115ca726afef79a9f85855b00668b7b52dcdc019e434b', 'validated', '{"audio_key":"42048608b91d18c9feb1670a118321feb3819e19cafad39ddf71a22972f14a18","entity_key":"wf_changes_over_time_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8d85589d1d8107b7da4115ca726afef79a9f85855b00668b7b52dcdc019e434b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/42048608b91d18c9feb1670a118321feb3819e19cafad39ddf71a22972f14a18.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_stories_and_background_01 -> audio/generated/it-IT/lexical/44e03358a3d783ad795ca391ab473b1000ac2a08c18b3a683dd89b9d83516450.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5ffe719e-901d-5a65-b793-5d3dd041b238', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_stories_and_background_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2a06f71820f592ea2fb99e13053792c977cd18e52cd33e61d90f98f11cac8634'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aa4b28cf-2de3-549d-98dc-7e2781e18d21', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5ffe719e-901d-5a65-b793-5d3dd041b238', 1), '2a06f71820f592ea2fb99e13053792c977cd18e52cd33e61d90f98f11cac8634',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/44e03358a3d783ad795ca391ab473b1000ac2a08c18b3a683dd89b9d83516450.mp3', 966, '2026-09-14 04:01:19.957279', '56049817b1ea88cd035a44f9c3465906eda331e8131d8c94ef6428d4f49d55fc', 'validated', '{"audio_key":"44e03358a3d783ad795ca391ab473b1000ac2a08c18b3a683dd89b9d83516450","entity_key":"lx_stories_and_background_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"56049817b1ea88cd035a44f9c3465906eda331e8131d8c94ef6428d4f49d55fc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/44e03358a3d783ad795ca391ab473b1000ac2a08c18b3a683dd89b9d83516450.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_stories_and_background_01 -> audio/generated/it-IT/lexical/44e03358a3d783ad795ca391ab473b1000ac2a08c18b3a683dd89b9d83516450.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0fc0e64b-4be8-504b-aef3-da9b8639181c', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_stories_and_background_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2a06f71820f592ea2fb99e13053792c977cd18e52cd33e61d90f98f11cac8634'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aa9bc8ad-c865-5058-9551-408c24c98af8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0fc0e64b-4be8-504b-aef3-da9b8639181c', 1), '2a06f71820f592ea2fb99e13053792c977cd18e52cd33e61d90f98f11cac8634',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/44e03358a3d783ad795ca391ab473b1000ac2a08c18b3a683dd89b9d83516450.mp3', 966, '2026-09-14 04:01:19.957279', '56049817b1ea88cd035a44f9c3465906eda331e8131d8c94ef6428d4f49d55fc', 'validated', '{"audio_key":"44e03358a3d783ad795ca391ab473b1000ac2a08c18b3a683dd89b9d83516450","entity_key":"wf_stories_and_background_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"56049817b1ea88cd035a44f9c3465906eda331e8131d8c94ef6428d4f49d55fc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/44e03358a3d783ad795ca391ab473b1000ac2a08c18b3a683dd89b9d83516450.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_polite_nuance_02 -> audio/generated/it-IT/lexical/483753f16851caa7bdf874ddf691d0d8e4aacbcde8cd05b7eded383f6b98b61f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f70f7402-e58f-5f3a-8fa4-18c58ca3f1c7', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_polite_nuance_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '82f379eb4c9acaeb0ac006b3ee35040327c248fe3ab04f25f44f8c96791daf84'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f5fa27ee-f504-56f5-adaf-72dcd897b9fb', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f70f7402-e58f-5f3a-8fa4-18c58ca3f1c7', 1), '82f379eb4c9acaeb0ac006b3ee35040327c248fe3ab04f25f44f8c96791daf84',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/483753f16851caa7bdf874ddf691d0d8e4aacbcde8cd05b7eded383f6b98b61f.mp3', 966, '2026-09-14 04:01:20.808190', '3b935bd008a0513d4b3fec5a8ddf25179c5efab2fe09b74ff6867feed1dbac94', 'validated', '{"audio_key":"483753f16851caa7bdf874ddf691d0d8e4aacbcde8cd05b7eded383f6b98b61f","entity_key":"lx_polite_nuance_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"3b935bd008a0513d4b3fec5a8ddf25179c5efab2fe09b74ff6867feed1dbac94","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/483753f16851caa7bdf874ddf691d0d8e4aacbcde8cd05b7eded383f6b98b61f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_polite_nuance_02 -> audio/generated/it-IT/lexical/483753f16851caa7bdf874ddf691d0d8e4aacbcde8cd05b7eded383f6b98b61f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6d184b36-7c82-5ced-bf0a-441b2e5923a4', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_polite_nuance_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '82f379eb4c9acaeb0ac006b3ee35040327c248fe3ab04f25f44f8c96791daf84'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cdc12e8a-40c2-5205-9558-cf02b373fe0e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6d184b36-7c82-5ced-bf0a-441b2e5923a4', 1), '82f379eb4c9acaeb0ac006b3ee35040327c248fe3ab04f25f44f8c96791daf84',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/483753f16851caa7bdf874ddf691d0d8e4aacbcde8cd05b7eded383f6b98b61f.mp3', 966, '2026-09-14 04:01:20.808190', '3b935bd008a0513d4b3fec5a8ddf25179c5efab2fe09b74ff6867feed1dbac94', 'validated', '{"audio_key":"483753f16851caa7bdf874ddf691d0d8e4aacbcde8cd05b7eded383f6b98b61f","entity_key":"wf_polite_nuance_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"3b935bd008a0513d4b3fec5a8ddf25179c5efab2fe09b74ff6867feed1dbac94","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/483753f16851caa7bdf874ddf691d0d8e4aacbcde8cd05b7eded383f6b98b61f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_goals_and_effort_06 -> audio/generated/it-IT/lexical/4b4f3179d5b6af9998876da933ffc7c2e41c606dd5b237990d73dd84f5fe5b6f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('29fecd37-3605-5776-a346-91e7784eefec', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_goals_and_effort_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9d943354ef5e7ed7c79383a2c241408bdc3bc4e3050a66871746bd56014c24c0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('78461111-4352-5e08-b530-ec06e4239e5e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('29fecd37-3605-5776-a346-91e7784eefec', 1), '9d943354ef5e7ed7c79383a2c241408bdc3bc4e3050a66871746bd56014c24c0',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/4b4f3179d5b6af9998876da933ffc7c2e41c606dd5b237990d73dd84f5fe5b6f.mp3', 1201, '2026-09-14 04:01:21.015372', '241080a355c3afee6ff54890c004ec987b0c6f4e4c540133527f879369825bb3', 'validated', '{"audio_key":"4b4f3179d5b6af9998876da933ffc7c2e41c606dd5b237990d73dd84f5fe5b6f","entity_key":"lx_goals_and_effort_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"241080a355c3afee6ff54890c004ec987b0c6f4e4c540133527f879369825bb3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/4b4f3179d5b6af9998876da933ffc7c2e41c606dd5b237990d73dd84f5fe5b6f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_goals_and_effort_06 -> audio/generated/it-IT/lexical/4b4f3179d5b6af9998876da933ffc7c2e41c606dd5b237990d73dd84f5fe5b6f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b4bd3081-0787-5e5e-9b66-5333be5cbbde', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_goals_and_effort_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9d943354ef5e7ed7c79383a2c241408bdc3bc4e3050a66871746bd56014c24c0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0ed56127-2306-5095-a766-752c8a6af566', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b4bd3081-0787-5e5e-9b66-5333be5cbbde', 1), '9d943354ef5e7ed7c79383a2c241408bdc3bc4e3050a66871746bd56014c24c0',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/4b4f3179d5b6af9998876da933ffc7c2e41c606dd5b237990d73dd84f5fe5b6f.mp3', 1201, '2026-09-14 04:01:21.015372', '241080a355c3afee6ff54890c004ec987b0c6f4e4c540133527f879369825bb3', 'validated', '{"audio_key":"4b4f3179d5b6af9998876da933ffc7c2e41c606dd5b237990d73dd84f5fe5b6f","entity_key":"wf_goals_and_effort_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"241080a355c3afee6ff54890c004ec987b0c6f4e4c540133527f879369825bb3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/4b4f3179d5b6af9998876da933ffc7c2e41c606dd5b237990d73dd84f5fe5b6f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_goals_and_effort_05 -> audio/generated/it-IT/lexical/4bac16841a2d4bf13c4adb27da661d1221796a6ecc28968cbde1d823fee66dc5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('54e05b93-9b27-5c47-89f2-455b13898d80', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_goals_and_effort_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1724445bc98963785ee1d0c998a8565a4cd7a6450de8ee766ebad5f11fc17134'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5ddd0419-e697-5561-a53a-a9601cc61a25', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('54e05b93-9b27-5c47-89f2-455b13898d80', 1), '1724445bc98963785ee1d0c998a8565a4cd7a6450de8ee766ebad5f11fc17134',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/4bac16841a2d4bf13c4adb27da661d1221796a6ecc28968cbde1d823fee66dc5.mp3', 1149, '2026-09-14 04:01:22.008330', 'c7e206556d8e9b1755e5a307568e18321e89717089ed188ae48cc957e223ce7e', 'validated', '{"audio_key":"4bac16841a2d4bf13c4adb27da661d1221796a6ecc28968cbde1d823fee66dc5","entity_key":"lx_goals_and_effort_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c7e206556d8e9b1755e5a307568e18321e89717089ed188ae48cc957e223ce7e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/4bac16841a2d4bf13c4adb27da661d1221796a6ecc28968cbde1d823fee66dc5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_goals_and_effort_05 -> audio/generated/it-IT/lexical/4bac16841a2d4bf13c4adb27da661d1221796a6ecc28968cbde1d823fee66dc5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('09e821e7-40b6-5c3e-bc38-b7dede3e476c', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_goals_and_effort_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1724445bc98963785ee1d0c998a8565a4cd7a6450de8ee766ebad5f11fc17134'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e30dd585-3713-551f-8d22-afb1fe496be2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('09e821e7-40b6-5c3e-bc38-b7dede3e476c', 1), '1724445bc98963785ee1d0c998a8565a4cd7a6450de8ee766ebad5f11fc17134',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/4bac16841a2d4bf13c4adb27da661d1221796a6ecc28968cbde1d823fee66dc5.mp3', 1149, '2026-09-14 04:01:22.008330', 'c7e206556d8e9b1755e5a307568e18321e89717089ed188ae48cc957e223ce7e', 'validated', '{"audio_key":"4bac16841a2d4bf13c4adb27da661d1221796a6ecc28968cbde1d823fee66dc5","entity_key":"wf_goals_and_effort_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c7e206556d8e9b1755e5a307568e18321e89717089ed188ae48cc957e223ce7e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/4bac16841a2d4bf13c4adb27da661d1221796a6ecc28968cbde1d823fee66dc5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_opinions_and_reasons_02 -> audio/generated/it-IT/lexical/4dec3a8e7a69656ed8abd8489a481fdae5968e98537b30553d9451bb44fec684.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d99f72f7-7e4d-5618-af26-a47537904e71', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_opinions_and_reasons_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '47466fc3f24ed51b77405f98310a2348cb36d7be2a732a4217fb68c79fbc657e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6662d958-9ae0-5b66-9538-07bf98255604', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d99f72f7-7e4d-5618-af26-a47537904e71', 1), '47466fc3f24ed51b77405f98310a2348cb36d7be2a732a4217fb68c79fbc657e',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/4dec3a8e7a69656ed8abd8489a481fdae5968e98537b30553d9451bb44fec684.mp3', 1097, '2026-09-14 04:01:22.001114', '287edbbbf09ff7214cbfca7df5921532190c2349bf6f67bc988df0b956b2587f', 'validated', '{"audio_key":"4dec3a8e7a69656ed8abd8489a481fdae5968e98537b30553d9451bb44fec684","entity_key":"lx_opinions_and_reasons_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"287edbbbf09ff7214cbfca7df5921532190c2349bf6f67bc988df0b956b2587f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/4dec3a8e7a69656ed8abd8489a481fdae5968e98537b30553d9451bb44fec684.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_opinions_and_reasons_02 -> audio/generated/it-IT/lexical/4dec3a8e7a69656ed8abd8489a481fdae5968e98537b30553d9451bb44fec684.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2070092e-8bfb-5939-bbf9-b2f06023e778', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_opinions_and_reasons_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '47466fc3f24ed51b77405f98310a2348cb36d7be2a732a4217fb68c79fbc657e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('41a9fbac-f802-58a0-9469-90ee5edc2514', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2070092e-8bfb-5939-bbf9-b2f06023e778', 1), '47466fc3f24ed51b77405f98310a2348cb36d7be2a732a4217fb68c79fbc657e',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/4dec3a8e7a69656ed8abd8489a481fdae5968e98537b30553d9451bb44fec684.mp3', 1097, '2026-09-14 04:01:22.001114', '287edbbbf09ff7214cbfca7df5921532190c2349bf6f67bc988df0b956b2587f', 'validated', '{"audio_key":"4dec3a8e7a69656ed8abd8489a481fdae5968e98537b30553d9451bb44fec684","entity_key":"wf_opinions_and_reasons_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"287edbbbf09ff7214cbfca7df5921532190c2349bf6f67bc988df0b956b2587f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/4dec3a8e7a69656ed8abd8489a481fdae5968e98537b30553d9451bb44fec684.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_opinions_and_reasons_03 -> audio/generated/it-IT/lexical/4e41620d327f3d82b38cb801ffd193701f1aa06b3e0df2cb90caa990d6f56b24.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b78afaaa-f5e2-582d-85a4-141036f6cf74', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_opinions_and_reasons_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '58604e419d054111b20d9bdeb6c8bfeb387730294fed4be0e1c009ac9ec9a18e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('af4e546d-f13e-5ca3-80d1-dcbf7f32accd', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b78afaaa-f5e2-582d-85a4-141036f6cf74', 1), '58604e419d054111b20d9bdeb6c8bfeb387730294fed4be0e1c009ac9ec9a18e',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/4e41620d327f3d82b38cb801ffd193701f1aa06b3e0df2cb90caa990d6f56b24.mp3', 1201, '2026-09-14 04:01:22.994983', '03e3dfe8058f32e5878f212ec044afcba82a44ab936b9aef0e5b193f936f6169', 'validated', '{"audio_key":"4e41620d327f3d82b38cb801ffd193701f1aa06b3e0df2cb90caa990d6f56b24","entity_key":"lx_opinions_and_reasons_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"03e3dfe8058f32e5878f212ec044afcba82a44ab936b9aef0e5b193f936f6169","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/4e41620d327f3d82b38cb801ffd193701f1aa06b3e0df2cb90caa990d6f56b24.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_opinions_and_reasons_03 -> audio/generated/it-IT/lexical/4e41620d327f3d82b38cb801ffd193701f1aa06b3e0df2cb90caa990d6f56b24.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('27e95858-13af-54ec-a457-c976dbda138c', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_opinions_and_reasons_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '58604e419d054111b20d9bdeb6c8bfeb387730294fed4be0e1c009ac9ec9a18e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f55a7410-53bb-5dc1-b2c3-090da7474017', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('27e95858-13af-54ec-a457-c976dbda138c', 1), '58604e419d054111b20d9bdeb6c8bfeb387730294fed4be0e1c009ac9ec9a18e',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/4e41620d327f3d82b38cb801ffd193701f1aa06b3e0df2cb90caa990d6f56b24.mp3', 1201, '2026-09-14 04:01:22.994983', '03e3dfe8058f32e5878f212ec044afcba82a44ab936b9aef0e5b193f936f6169', 'validated', '{"audio_key":"4e41620d327f3d82b38cb801ffd193701f1aa06b3e0df2cb90caa990d6f56b24","entity_key":"wf_opinions_and_reasons_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"03e3dfe8058f32e5878f212ec044afcba82a44ab936b9aef0e5b193f936f6169","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/4e41620d327f3d82b38cb801ffd193701f1aa06b3e0df2cb90caa990d6f56b24.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_opinions_and_reasons_04 -> audio/generated/it-IT/lexical/528f1bd776e3c8dfdfbf4c2c2731ee1d57e27de2395a6268d5ae29f43f6e3c85.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('463e8848-8c26-52f2-b85d-5da48b5b71b0', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_opinions_and_reasons_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b27b12f0dbbc0130261ca0c23567ceadf7329fb66a950faee5391f9e5baf12bb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('df4ca4e5-a32b-55ad-9530-a007253c5cd7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('463e8848-8c26-52f2-b85d-5da48b5b71b0', 1), 'b27b12f0dbbc0130261ca0c23567ceadf7329fb66a950faee5391f9e5baf12bb',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/528f1bd776e3c8dfdfbf4c2c2731ee1d57e27de2395a6268d5ae29f43f6e3c85.mp3', 1253, '2026-09-14 04:01:23.048415', 'd4feb91ad75705624c597579e33b4832d0d8727c11511c7b2a662bc634276e53', 'validated', '{"audio_key":"528f1bd776e3c8dfdfbf4c2c2731ee1d57e27de2395a6268d5ae29f43f6e3c85","entity_key":"lx_opinions_and_reasons_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d4feb91ad75705624c597579e33b4832d0d8727c11511c7b2a662bc634276e53","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/528f1bd776e3c8dfdfbf4c2c2731ee1d57e27de2395a6268d5ae29f43f6e3c85.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_opinions_and_reasons_04 -> audio/generated/it-IT/lexical/528f1bd776e3c8dfdfbf4c2c2731ee1d57e27de2395a6268d5ae29f43f6e3c85.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('67d90b5e-9e15-5dcc-aaf7-69830f779fab', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_opinions_and_reasons_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b27b12f0dbbc0130261ca0c23567ceadf7329fb66a950faee5391f9e5baf12bb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('87b3e967-759c-5835-8e28-d246e3326b5b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('67d90b5e-9e15-5dcc-aaf7-69830f779fab', 1), 'b27b12f0dbbc0130261ca0c23567ceadf7329fb66a950faee5391f9e5baf12bb',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/528f1bd776e3c8dfdfbf4c2c2731ee1d57e27de2395a6268d5ae29f43f6e3c85.mp3', 1253, '2026-09-14 04:01:23.048415', 'd4feb91ad75705624c597579e33b4832d0d8727c11511c7b2a662bc634276e53', 'validated', '{"audio_key":"528f1bd776e3c8dfdfbf4c2c2731ee1d57e27de2395a6268d5ae29f43f6e3c85","entity_key":"wf_opinions_and_reasons_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d4feb91ad75705624c597579e33b4832d0d8727c11511c7b2a662bc634276e53","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/528f1bd776e3c8dfdfbf4c2c2731ee1d57e27de2395a6268d5ae29f43f6e3c85.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_goals_and_effort_02 -> audio/generated/it-IT/lexical/541ac4ba3f43bd6a1fa2ec9b7ffaf716605ffc70c497b4b3343e1955896689b3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7d2ddf99-18f4-5a2a-8685-2735ebe3ffc7', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_goals_and_effort_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '510094696e67ca3f35b8ccbcec1d76c618eb0efc25da66e94689b4274c546518'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c67f2e4c-f381-54df-b8c8-15bf9240215f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7d2ddf99-18f4-5a2a-8685-2735ebe3ffc7', 1), '510094696e67ca3f35b8ccbcec1d76c618eb0efc25da66e94689b4274c546518',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/541ac4ba3f43bd6a1fa2ec9b7ffaf716605ffc70c497b4b3343e1955896689b3.mp3', 1201, '2026-09-14 04:01:23.961647', 'c422030b7ea16adf89b730d2986118279c7fc66981a7409d761788e6cff3db52', 'validated', '{"audio_key":"541ac4ba3f43bd6a1fa2ec9b7ffaf716605ffc70c497b4b3343e1955896689b3","entity_key":"lx_goals_and_effort_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c422030b7ea16adf89b730d2986118279c7fc66981a7409d761788e6cff3db52","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/541ac4ba3f43bd6a1fa2ec9b7ffaf716605ffc70c497b4b3343e1955896689b3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_goals_and_effort_02 -> audio/generated/it-IT/lexical/541ac4ba3f43bd6a1fa2ec9b7ffaf716605ffc70c497b4b3343e1955896689b3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('849f135d-844b-50e4-8e23-105b3f14a7d4', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_goals_and_effort_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '510094696e67ca3f35b8ccbcec1d76c618eb0efc25da66e94689b4274c546518'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5b9ced6b-f257-5a38-b433-84602dc561bc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('849f135d-844b-50e4-8e23-105b3f14a7d4', 1), '510094696e67ca3f35b8ccbcec1d76c618eb0efc25da66e94689b4274c546518',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/541ac4ba3f43bd6a1fa2ec9b7ffaf716605ffc70c497b4b3343e1955896689b3.mp3', 1201, '2026-09-14 04:01:23.961647', 'c422030b7ea16adf89b730d2986118279c7fc66981a7409d761788e6cff3db52', 'validated', '{"audio_key":"541ac4ba3f43bd6a1fa2ec9b7ffaf716605ffc70c497b4b3343e1955896689b3","entity_key":"wf_goals_and_effort_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c422030b7ea16adf89b730d2986118279c7fc66981a7409d761788e6cff3db52","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/541ac4ba3f43bd6a1fa2ec9b7ffaf716605ffc70c497b4b3343e1955896689b3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_stories_and_background_03 -> audio/generated/it-IT/lexical/5757237e77f8408451d2f46d19483dd5a3a01e76523b4db753b6016bb822f232.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('917d8def-f82d-5129-aa5c-27e5309153af', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_stories_and_background_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9b9a82082496c2bf777d9931bf3920549565587100960ba4e5de3135d15515ee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4288188c-c3c8-506d-88ab-16fa36434743', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('917d8def-f82d-5129-aa5c-27e5309153af', 1), '9b9a82082496c2bf777d9931bf3920549565587100960ba4e5de3135d15515ee',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/5757237e77f8408451d2f46d19483dd5a3a01e76523b4db753b6016bb822f232.mp3', 1332, '2026-09-14 04:01:24.150653', 'fe47d08fd9eb24fcd66014121e9a415a22a6ccb5c2717b36b62fbe2a361d9958', 'validated', '{"audio_key":"5757237e77f8408451d2f46d19483dd5a3a01e76523b4db753b6016bb822f232","entity_key":"lx_stories_and_background_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"fe47d08fd9eb24fcd66014121e9a415a22a6ccb5c2717b36b62fbe2a361d9958","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/5757237e77f8408451d2f46d19483dd5a3a01e76523b4db753b6016bb822f232.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_stories_and_background_03 -> audio/generated/it-IT/lexical/5757237e77f8408451d2f46d19483dd5a3a01e76523b4db753b6016bb822f232.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c9b19787-2ca1-5202-8416-409ca128ac8e', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_stories_and_background_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9b9a82082496c2bf777d9931bf3920549565587100960ba4e5de3135d15515ee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('89e746b0-ac83-50b8-b3a3-77866e98de12', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c9b19787-2ca1-5202-8416-409ca128ac8e', 1), '9b9a82082496c2bf777d9931bf3920549565587100960ba4e5de3135d15515ee',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/5757237e77f8408451d2f46d19483dd5a3a01e76523b4db753b6016bb822f232.mp3', 1332, '2026-09-14 04:01:24.150653', 'fe47d08fd9eb24fcd66014121e9a415a22a6ccb5c2717b36b62fbe2a361d9958', 'validated', '{"audio_key":"5757237e77f8408451d2f46d19483dd5a3a01e76523b4db753b6016bb822f232","entity_key":"wf_stories_and_background_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"fe47d08fd9eb24fcd66014121e9a415a22a6ccb5c2717b36b62fbe2a361d9958","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/5757237e77f8408451d2f46d19483dd5a3a01e76523b4db753b6016bb822f232.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_changes_over_time_03 -> audio/generated/it-IT/lexical/5c354c8c5ecb124c023a1f78fc1ee2c7fd195a0ad5b57fffa637c82682397ea8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ad9768dc-fe24-53b6-b185-c5f2192296be', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_changes_over_time_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f5a63ae91129cab70a4798c478f1cb9fe85a26efbee583ea2b1889d334393ffd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1e759a5d-c64a-5ebb-a0db-f36319661da0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ad9768dc-fe24-53b6-b185-c5f2192296be', 1), 'f5a63ae91129cab70a4798c478f1cb9fe85a26efbee583ea2b1889d334393ffd',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/5c354c8c5ecb124c023a1f78fc1ee2c7fd195a0ad5b57fffa637c82682397ea8.mp3', 1018, '2026-09-14 04:01:24.946178', '8d207c6941f26c6374ae65f2b6d9a6d75c6d8564009d3f5978ce456b6bfa590b', 'validated', '{"audio_key":"5c354c8c5ecb124c023a1f78fc1ee2c7fd195a0ad5b57fffa637c82682397ea8","entity_key":"lx_changes_over_time_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8d207c6941f26c6374ae65f2b6d9a6d75c6d8564009d3f5978ce456b6bfa590b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/5c354c8c5ecb124c023a1f78fc1ee2c7fd195a0ad5b57fffa637c82682397ea8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_changes_over_time_03 -> audio/generated/it-IT/lexical/5c354c8c5ecb124c023a1f78fc1ee2c7fd195a0ad5b57fffa637c82682397ea8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9128755d-801d-59a7-b00f-006a7db8ed50', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_changes_over_time_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f5a63ae91129cab70a4798c478f1cb9fe85a26efbee583ea2b1889d334393ffd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('38da6d55-a89a-53a8-bd6c-2b2d71b09f2b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9128755d-801d-59a7-b00f-006a7db8ed50', 1), 'f5a63ae91129cab70a4798c478f1cb9fe85a26efbee583ea2b1889d334393ffd',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/5c354c8c5ecb124c023a1f78fc1ee2c7fd195a0ad5b57fffa637c82682397ea8.mp3', 1018, '2026-09-14 04:01:24.946178', '8d207c6941f26c6374ae65f2b6d9a6d75c6d8564009d3f5978ce456b6bfa590b', 'validated', '{"audio_key":"5c354c8c5ecb124c023a1f78fc1ee2c7fd195a0ad5b57fffa637c82682397ea8","entity_key":"wf_changes_over_time_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8d207c6941f26c6374ae65f2b6d9a6d75c6d8564009d3f5978ce456b6bfa590b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/5c354c8c5ecb124c023a1f78fc1ee2c7fd195a0ad5b57fffa637c82682397ea8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reported_information_04 -> audio/generated/it-IT/lexical/6741bc5619bf0fd275b22b081d67c216bdc2f68fd723bcb87d9ffe9a18611cdd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('252b0b6a-29af-5758-a7d4-01f82a54cbc8', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reported_information_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a64fa398984893bbc11350d80a46d4f7abee8cddaf0a2802fcb17d84627a543c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('18e72c06-3062-586a-8cf1-badfac4076b9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('252b0b6a-29af-5758-a7d4-01f82a54cbc8', 1), 'a64fa398984893bbc11350d80a46d4f7abee8cddaf0a2802fcb17d84627a543c',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/6741bc5619bf0fd275b22b081d67c216bdc2f68fd723bcb87d9ffe9a18611cdd.mp3', 1097, '2026-09-14 04:01:25.130381', '0ccb61d69354649f38f86f156e4e48f39174bdc1e53ebe68c976cd9f6bfc5888', 'validated', '{"audio_key":"6741bc5619bf0fd275b22b081d67c216bdc2f68fd723bcb87d9ffe9a18611cdd","entity_key":"lx_reported_information_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"0ccb61d69354649f38f86f156e4e48f39174bdc1e53ebe68c976cd9f6bfc5888","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/6741bc5619bf0fd275b22b081d67c216bdc2f68fd723bcb87d9ffe9a18611cdd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reported_information_04 -> audio/generated/it-IT/lexical/6741bc5619bf0fd275b22b081d67c216bdc2f68fd723bcb87d9ffe9a18611cdd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3635324e-ec28-5231-97f7-bfa067bd04be', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reported_information_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a64fa398984893bbc11350d80a46d4f7abee8cddaf0a2802fcb17d84627a543c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fe94820e-25d1-5ea0-9325-1ab08c5d90cd', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3635324e-ec28-5231-97f7-bfa067bd04be', 1), 'a64fa398984893bbc11350d80a46d4f7abee8cddaf0a2802fcb17d84627a543c',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/6741bc5619bf0fd275b22b081d67c216bdc2f68fd723bcb87d9ffe9a18611cdd.mp3', 1097, '2026-09-14 04:01:25.130381', '0ccb61d69354649f38f86f156e4e48f39174bdc1e53ebe68c976cd9f6bfc5888', 'validated', '{"audio_key":"6741bc5619bf0fd275b22b081d67c216bdc2f68fd723bcb87d9ffe9a18611cdd","entity_key":"wf_reported_information_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"0ccb61d69354649f38f86f156e4e48f39174bdc1e53ebe68c976cd9f6bfc5888","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/6741bc5619bf0fd275b22b081d67c216bdc2f68fd723bcb87d9ffe9a18611cdd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_stories_and_background_05 -> audio/generated/it-IT/lexical/67d95ce0e353a0558ed315acadec10f12710e9dcaa57f0baeab4f99aa882a777.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('168ec785-7521-5b71-be9f-e963ab457b45', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_stories_and_background_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a1e9b14294fc5b72077bac91a92c992a10b12729ce320f0f202f8053367f2bc5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fca8d5ba-94a8-5ebf-ae72-4c350e291072', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('168ec785-7521-5b71-be9f-e963ab457b45', 1), 'a1e9b14294fc5b72077bac91a92c992a10b12729ce320f0f202f8053367f2bc5',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/67d95ce0e353a0558ed315acadec10f12710e9dcaa57f0baeab4f99aa882a777.mp3', 1253, '2026-09-14 03:10:00.551111', 'ecd2958f5445e18f331a1fb8de62ca8f3516211f42d2541299fdb5216e88828e', 'validated', '{"audio_key":"67d95ce0e353a0558ed315acadec10f12710e9dcaa57f0baeab4f99aa882a777","entity_key":"lx_stories_and_background_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ecd2958f5445e18f331a1fb8de62ca8f3516211f42d2541299fdb5216e88828e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/67d95ce0e353a0558ed315acadec10f12710e9dcaa57f0baeab4f99aa882a777.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_stories_and_background_05 -> audio/generated/it-IT/lexical/67d95ce0e353a0558ed315acadec10f12710e9dcaa57f0baeab4f99aa882a777.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('92c3b698-e984-5a4d-a54c-f15f9ab246e1', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_stories_and_background_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a1e9b14294fc5b72077bac91a92c992a10b12729ce320f0f202f8053367f2bc5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b389060b-d2f2-5ed3-bfe0-3b262c33b031', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('92c3b698-e984-5a4d-a54c-f15f9ab246e1', 1), 'a1e9b14294fc5b72077bac91a92c992a10b12729ce320f0f202f8053367f2bc5',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/67d95ce0e353a0558ed315acadec10f12710e9dcaa57f0baeab4f99aa882a777.mp3', 1253, '2026-09-14 03:10:00.551111', 'ecd2958f5445e18f331a1fb8de62ca8f3516211f42d2541299fdb5216e88828e', 'validated', '{"audio_key":"67d95ce0e353a0558ed315acadec10f12710e9dcaa57f0baeab4f99aa882a777","entity_key":"wf_stories_and_background_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ecd2958f5445e18f331a1fb8de62ca8f3516211f42d2541299fdb5216e88828e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/67d95ce0e353a0558ed315acadec10f12710e9dcaa57f0baeab4f99aa882a777.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_polite_nuance_05 -> audio/generated/it-IT/lexical/6aa53c1cccc5e5de2e3f796dfd70020bebe50cbf671bd8a5c314345a231901d9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d2355dfc-7fff-58f7-a9cf-37b1eabef5b5', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_polite_nuance_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ba79bd6414e776a024c1ed35a01995a57fc7b5d5d5699cc2aa9cad12ad46a5a6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7feab71d-d325-5686-8efd-83f745148aca', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d2355dfc-7fff-58f7-a9cf-37b1eabef5b5', 1), 'ba79bd6414e776a024c1ed35a01995a57fc7b5d5d5699cc2aa9cad12ad46a5a6',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/6aa53c1cccc5e5de2e3f796dfd70020bebe50cbf671bd8a5c314345a231901d9.mp3', 1201, '2026-09-14 04:01:25.943743', '53cd423b9143246e369b7527556b5028009e1ae3dbcd6e30071923570df846c5', 'validated', '{"audio_key":"6aa53c1cccc5e5de2e3f796dfd70020bebe50cbf671bd8a5c314345a231901d9","entity_key":"lx_polite_nuance_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"53cd423b9143246e369b7527556b5028009e1ae3dbcd6e30071923570df846c5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/6aa53c1cccc5e5de2e3f796dfd70020bebe50cbf671bd8a5c314345a231901d9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_polite_nuance_05 -> audio/generated/it-IT/lexical/6aa53c1cccc5e5de2e3f796dfd70020bebe50cbf671bd8a5c314345a231901d9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('72fcc66c-d293-5337-9186-29a9df974376', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_polite_nuance_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ba79bd6414e776a024c1ed35a01995a57fc7b5d5d5699cc2aa9cad12ad46a5a6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cb7e5223-e86f-548a-9da1-f502cd1f58fc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('72fcc66c-d293-5337-9186-29a9df974376', 1), 'ba79bd6414e776a024c1ed35a01995a57fc7b5d5d5699cc2aa9cad12ad46a5a6',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/6aa53c1cccc5e5de2e3f796dfd70020bebe50cbf671bd8a5c314345a231901d9.mp3', 1201, '2026-09-14 04:01:25.943743', '53cd423b9143246e369b7527556b5028009e1ae3dbcd6e30071923570df846c5', 'validated', '{"audio_key":"6aa53c1cccc5e5de2e3f796dfd70020bebe50cbf671bd8a5c314345a231901d9","entity_key":"wf_polite_nuance_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"53cd423b9143246e369b7527556b5028009e1ae3dbcd6e30071923570df846c5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/6aa53c1cccc5e5de2e3f796dfd70020bebe50cbf671bd8a5c314345a231901d9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_stories_and_background_04 -> audio/generated/it-IT/lexical/6efbf4d84cc700324b2d68e808a3725903d06ddadd855e99b6f6627a64a11faf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('36230d90-89bc-5d4f-9852-f2d613e38223', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_stories_and_background_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dde89c97c7e914b65360ab5cc2ebea682852520181f49ebcca411723beeea4f6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('45e86177-78b9-5e02-96bb-77c685d2284d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('36230d90-89bc-5d4f-9852-f2d613e38223', 1), 'dde89c97c7e914b65360ab5cc2ebea682852520181f49ebcca411723beeea4f6',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/6efbf4d84cc700324b2d68e808a3725903d06ddadd855e99b6f6627a64a11faf.mp3', 966, '2026-09-14 04:01:26.100510', '722b5110852b529f765bd45c9070c1274b3100ce5471b93d5ffa18e09abc1b00', 'validated', '{"audio_key":"6efbf4d84cc700324b2d68e808a3725903d06ddadd855e99b6f6627a64a11faf","entity_key":"lx_stories_and_background_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"722b5110852b529f765bd45c9070c1274b3100ce5471b93d5ffa18e09abc1b00","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/6efbf4d84cc700324b2d68e808a3725903d06ddadd855e99b6f6627a64a11faf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_stories_and_background_04 -> audio/generated/it-IT/lexical/6efbf4d84cc700324b2d68e808a3725903d06ddadd855e99b6f6627a64a11faf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0d8f809d-68e5-5945-9f1e-edb9f2569c19', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_stories_and_background_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dde89c97c7e914b65360ab5cc2ebea682852520181f49ebcca411723beeea4f6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9593a308-7856-5828-942f-bdfb57baf4f4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0d8f809d-68e5-5945-9f1e-edb9f2569c19', 1), 'dde89c97c7e914b65360ab5cc2ebea682852520181f49ebcca411723beeea4f6',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/6efbf4d84cc700324b2d68e808a3725903d06ddadd855e99b6f6627a64a11faf.mp3', 966, '2026-09-14 04:01:26.100510', '722b5110852b529f765bd45c9070c1274b3100ce5471b93d5ffa18e09abc1b00', 'validated', '{"audio_key":"6efbf4d84cc700324b2d68e808a3725903d06ddadd855e99b6f6627a64a11faf","entity_key":"wf_stories_and_background_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"722b5110852b529f765bd45c9070c1274b3100ce5471b93d5ffa18e09abc1b00","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/6efbf4d84cc700324b2d68e808a3725903d06ddadd855e99b6f6627a64a11faf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reported_information_05 -> audio/generated/it-IT/lexical/713c0a4ddc5433b8dbfe2550cb3b2fcf5f79948dfbb97d1fddfe4d04aa13ae39.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8eee9e1d-7bbb-57e6-b502-97dc35873550', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reported_information_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ee421ea0634bf70f1f4e7d560899a1b016878f4f26c9cce66d18a896a4cf9e94'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c2c42da3-c2f0-5af7-844a-18e3a385917e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8eee9e1d-7bbb-57e6-b502-97dc35873550', 1), 'ee421ea0634bf70f1f4e7d560899a1b016878f4f26c9cce66d18a896a4cf9e94',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/713c0a4ddc5433b8dbfe2550cb3b2fcf5f79948dfbb97d1fddfe4d04aa13ae39.mp3', 1149, '2026-09-14 03:26:53.523812', '03a369c5dec2725704b3bf109ea9114d6594d48158415ad03308b9ef59dd01a8', 'validated', '{"audio_key":"713c0a4ddc5433b8dbfe2550cb3b2fcf5f79948dfbb97d1fddfe4d04aa13ae39","entity_key":"lx_reported_information_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"03a369c5dec2725704b3bf109ea9114d6594d48158415ad03308b9ef59dd01a8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/713c0a4ddc5433b8dbfe2550cb3b2fcf5f79948dfbb97d1fddfe4d04aa13ae39.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reported_information_05 -> audio/generated/it-IT/lexical/713c0a4ddc5433b8dbfe2550cb3b2fcf5f79948dfbb97d1fddfe4d04aa13ae39.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f94f45c7-0e33-51b4-bf98-be01fd50005b', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reported_information_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ee421ea0634bf70f1f4e7d560899a1b016878f4f26c9cce66d18a896a4cf9e94'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0f6980cf-2c75-5e23-aa87-93ee0ce711de', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f94f45c7-0e33-51b4-bf98-be01fd50005b', 1), 'ee421ea0634bf70f1f4e7d560899a1b016878f4f26c9cce66d18a896a4cf9e94',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/713c0a4ddc5433b8dbfe2550cb3b2fcf5f79948dfbb97d1fddfe4d04aa13ae39.mp3', 1149, '2026-09-14 03:26:53.523812', '03a369c5dec2725704b3bf109ea9114d6594d48158415ad03308b9ef59dd01a8', 'validated', '{"audio_key":"713c0a4ddc5433b8dbfe2550cb3b2fcf5f79948dfbb97d1fddfe4d04aa13ae39","entity_key":"wf_reported_information_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"03a369c5dec2725704b3bf109ea9114d6594d48158415ad03308b9ef59dd01a8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/713c0a4ddc5433b8dbfe2550cb3b2fcf5f79948dfbb97d1fddfe4d04aa13ae39.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_changes_over_time_04 -> audio/generated/it-IT/lexical/7150fd5e9e200e390ad9851d2e857693e72e4fa54583fae189052338cf80583e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3c367a64-a7ee-5f7a-886d-94839dbc97c7', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_changes_over_time_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5fddc98cb5369e1b3574fdf388da167d489b7da29527f1cfc1cc59671cb13637'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c0ae4493-0e6c-5845-8dc1-19dd2866b60c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3c367a64-a7ee-5f7a-886d-94839dbc97c7', 1), '5fddc98cb5369e1b3574fdf388da167d489b7da29527f1cfc1cc59671cb13637',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/7150fd5e9e200e390ad9851d2e857693e72e4fa54583fae189052338cf80583e.mp3', 862, '2026-09-14 04:01:26.896365', 'ec43e3e8c3506058085742d22b0957d57c23ff6cf00aa542d3d98f8e91b91b57', 'validated', '{"audio_key":"7150fd5e9e200e390ad9851d2e857693e72e4fa54583fae189052338cf80583e","entity_key":"lx_changes_over_time_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ec43e3e8c3506058085742d22b0957d57c23ff6cf00aa542d3d98f8e91b91b57","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/7150fd5e9e200e390ad9851d2e857693e72e4fa54583fae189052338cf80583e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_changes_over_time_04 -> audio/generated/it-IT/lexical/7150fd5e9e200e390ad9851d2e857693e72e4fa54583fae189052338cf80583e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9b4afb8a-5beb-5ecd-a7d6-6591cef058ec', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_changes_over_time_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5fddc98cb5369e1b3574fdf388da167d489b7da29527f1cfc1cc59671cb13637'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0db6ea01-01cc-51e7-9861-8fb28fc4bf07', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9b4afb8a-5beb-5ecd-a7d6-6591cef058ec', 1), '5fddc98cb5369e1b3574fdf388da167d489b7da29527f1cfc1cc59671cb13637',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/7150fd5e9e200e390ad9851d2e857693e72e4fa54583fae189052338cf80583e.mp3', 862, '2026-09-14 04:01:26.896365', 'ec43e3e8c3506058085742d22b0957d57c23ff6cf00aa542d3d98f8e91b91b57', 'validated', '{"audio_key":"7150fd5e9e200e390ad9851d2e857693e72e4fa54583fae189052338cf80583e","entity_key":"wf_changes_over_time_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ec43e3e8c3506058085742d22b0957d57c23ff6cf00aa542d3d98f8e91b91b57","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/7150fd5e9e200e390ad9851d2e857693e72e4fa54583fae189052338cf80583e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_polite_nuance_01 -> audio/generated/it-IT/lexical/78e53004ef8f5e85fa63a8b5c9ccbc0ab2d09bcc06cdba455f82317ba9a551a4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('01c95376-f2b6-52ed-a7d8-6dea85e3d5bd', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_polite_nuance_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd4d0d56918efef61f6e13575dec303f392550b0bb02228b00b785d535111f166'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('563cb598-f445-55bf-b8ad-5663f842a840', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('01c95376-f2b6-52ed-a7d8-6dea85e3d5bd', 1), 'd4d0d56918efef61f6e13575dec303f392550b0bb02228b00b785d535111f166',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/78e53004ef8f5e85fa63a8b5c9ccbc0ab2d09bcc06cdba455f82317ba9a551a4.mp3', 1097, '2026-09-14 04:01:27.084486', 'c1a4f833db97947b9d5a8ca3e9f99e84ca9995051d0b41a5fabd4be06a4da2bb', 'validated', '{"audio_key":"78e53004ef8f5e85fa63a8b5c9ccbc0ab2d09bcc06cdba455f82317ba9a551a4","entity_key":"lx_polite_nuance_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c1a4f833db97947b9d5a8ca3e9f99e84ca9995051d0b41a5fabd4be06a4da2bb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/78e53004ef8f5e85fa63a8b5c9ccbc0ab2d09bcc06cdba455f82317ba9a551a4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_polite_nuance_01 -> audio/generated/it-IT/lexical/78e53004ef8f5e85fa63a8b5c9ccbc0ab2d09bcc06cdba455f82317ba9a551a4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b6e754b9-cbfa-57e7-98b6-eda32f6ed246', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_polite_nuance_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd4d0d56918efef61f6e13575dec303f392550b0bb02228b00b785d535111f166'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('719aec46-c854-5e5f-8c75-3971191af228', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b6e754b9-cbfa-57e7-98b6-eda32f6ed246', 1), 'd4d0d56918efef61f6e13575dec303f392550b0bb02228b00b785d535111f166',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/78e53004ef8f5e85fa63a8b5c9ccbc0ab2d09bcc06cdba455f82317ba9a551a4.mp3', 1097, '2026-09-14 04:01:27.084486', 'c1a4f833db97947b9d5a8ca3e9f99e84ca9995051d0b41a5fabd4be06a4da2bb', 'validated', '{"audio_key":"78e53004ef8f5e85fa63a8b5c9ccbc0ab2d09bcc06cdba455f82317ba9a551a4","entity_key":"wf_polite_nuance_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c1a4f833db97947b9d5a8ca3e9f99e84ca9995051d0b41a5fabd4be06a4da2bb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/78e53004ef8f5e85fa63a8b5c9ccbc0ab2d09bcc06cdba455f82317ba9a551a4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_b1_city_project_capstone_06 -> audio/generated/it-IT/lexical/7cad511bc38e5c5ac666b4e037013d32943d368f6feda3d4b9c62cc30fa75513.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('86577e80-48ed-57eb-b27c-23e8517bf697', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_b1_city_project_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '56cebbcf21b124d8a658c44db38057e4790f1fba1220c1a12fbf55649dc6801c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ba39c67f-5386-510d-aad7-497a8a68eada', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('86577e80-48ed-57eb-b27c-23e8517bf697', 1), '56cebbcf21b124d8a658c44db38057e4790f1fba1220c1a12fbf55649dc6801c',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/7cad511bc38e5c5ac666b4e037013d32943d368f6feda3d4b9c62cc30fa75513.mp3', 1071, '2026-09-14 04:01:27.871753', '1822f0d56f58b7aa6155feab3d08eacefe58c6b2cd41d883fbfc3363ba53d074', 'validated', '{"audio_key":"7cad511bc38e5c5ac666b4e037013d32943d368f6feda3d4b9c62cc30fa75513","entity_key":"lx_b1_city_project_capstone_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1822f0d56f58b7aa6155feab3d08eacefe58c6b2cd41d883fbfc3363ba53d074","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/7cad511bc38e5c5ac666b4e037013d32943d368f6feda3d4b9c62cc30fa75513.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_b1_city_project_capstone_06 -> audio/generated/it-IT/lexical/7cad511bc38e5c5ac666b4e037013d32943d368f6feda3d4b9c62cc30fa75513.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('af89fe36-d4cf-5886-84fe-fcbab121ec83', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_b1_city_project_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '56cebbcf21b124d8a658c44db38057e4790f1fba1220c1a12fbf55649dc6801c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('369b812b-7e58-57a4-822e-0eac2f46eced', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('af89fe36-d4cf-5886-84fe-fcbab121ec83', 1), '56cebbcf21b124d8a658c44db38057e4790f1fba1220c1a12fbf55649dc6801c',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/7cad511bc38e5c5ac666b4e037013d32943d368f6feda3d4b9c62cc30fa75513.mp3', 1071, '2026-09-14 04:01:27.871753', '1822f0d56f58b7aa6155feab3d08eacefe58c6b2cd41d883fbfc3363ba53d074', 'validated', '{"audio_key":"7cad511bc38e5c5ac666b4e037013d32943d368f6feda3d4b9c62cc30fa75513","entity_key":"wf_b1_city_project_capstone_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1822f0d56f58b7aa6155feab3d08eacefe58c6b2cd41d883fbfc3363ba53d074","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/7cad511bc38e5c5ac666b4e037013d32943d368f6feda3d4b9c62cc30fa75513.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_media_and_sources_05 -> audio/generated/it-IT/lexical/7e16d419aea9220fbef6616b140201d8eeb86b67c35089718e2669071ce31d2c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8b637544-706c-5986-8a52-f4ac0ad9442e', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_media_and_sources_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cf3625288b81e6864b9a2f67b8acafd2b536db637ab456c0c8a267b6014d0525'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aa163761-7c95-5e2c-a376-0bcf8141745e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8b637544-706c-5986-8a52-f4ac0ad9442e', 1), 'cf3625288b81e6864b9a2f67b8acafd2b536db637ab456c0c8a267b6014d0525',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/7e16d419aea9220fbef6616b140201d8eeb86b67c35089718e2669071ce31d2c.mp3', 1018, '2026-09-14 04:01:28.067878', 'ac2cc54afa63e8cadfe5c7e1f64ae3a9bf34048796d7e3e22eeeb101d20a6dd9', 'validated', '{"audio_key":"7e16d419aea9220fbef6616b140201d8eeb86b67c35089718e2669071ce31d2c","entity_key":"lx_media_and_sources_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ac2cc54afa63e8cadfe5c7e1f64ae3a9bf34048796d7e3e22eeeb101d20a6dd9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/7e16d419aea9220fbef6616b140201d8eeb86b67c35089718e2669071ce31d2c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_media_and_sources_05 -> audio/generated/it-IT/lexical/7e16d419aea9220fbef6616b140201d8eeb86b67c35089718e2669071ce31d2c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4a54837e-0298-5ecb-9c34-9d57bd8062cc', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_media_and_sources_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cf3625288b81e6864b9a2f67b8acafd2b536db637ab456c0c8a267b6014d0525'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7f1a208c-694f-5c74-895e-1ae05590f319', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4a54837e-0298-5ecb-9c34-9d57bd8062cc', 1), 'cf3625288b81e6864b9a2f67b8acafd2b536db637ab456c0c8a267b6014d0525',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/7e16d419aea9220fbef6616b140201d8eeb86b67c35089718e2669071ce31d2c.mp3', 1018, '2026-09-14 04:01:28.067878', 'ac2cc54afa63e8cadfe5c7e1f64ae3a9bf34048796d7e3e22eeeb101d20a6dd9', 'validated', '{"audio_key":"7e16d419aea9220fbef6616b140201d8eeb86b67c35089718e2669071ce31d2c","entity_key":"wf_media_and_sources_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ac2cc54afa63e8cadfe5c7e1f64ae3a9bf34048796d7e3e22eeeb101d20a6dd9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/7e16d419aea9220fbef6616b140201d8eeb86b67c35089718e2669071ce31d2c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_real_conditions_05 -> audio/generated/it-IT/lexical/7ee19c7b4d0f9be8b37595860885aefcb0c950efcc57f9120d61a2eeaaac038d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a4fc5745-6728-5033-9bd6-fc303f84cf14', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_real_conditions_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2aca98a7868ec7b4555818552ca0debcaea26e0c0b4b117f7157185e58543457'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('af7e3802-d03c-5a9a-a370-19290e138828', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a4fc5745-6728-5033-9bd6-fc303f84cf14', 1), '2aca98a7868ec7b4555818552ca0debcaea26e0c0b4b117f7157185e58543457',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/7ee19c7b4d0f9be8b37595860885aefcb0c950efcc57f9120d61a2eeaaac038d.mp3', 1201, '2026-09-14 04:01:28.863283', '552d66d4c712c9a25e80e7831923bb0d956b30041dd80ea811b5ddc95b047c54', 'validated', '{"audio_key":"7ee19c7b4d0f9be8b37595860885aefcb0c950efcc57f9120d61a2eeaaac038d","entity_key":"lx_real_conditions_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"552d66d4c712c9a25e80e7831923bb0d956b30041dd80ea811b5ddc95b047c54","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/7ee19c7b4d0f9be8b37595860885aefcb0c950efcc57f9120d61a2eeaaac038d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_real_conditions_05 -> audio/generated/it-IT/lexical/7ee19c7b4d0f9be8b37595860885aefcb0c950efcc57f9120d61a2eeaaac038d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('147e444d-a164-5bbf-a3fb-be67703e3ed9', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_real_conditions_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2aca98a7868ec7b4555818552ca0debcaea26e0c0b4b117f7157185e58543457'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('906f042d-9af5-55d4-aecf-814efb60ddf5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('147e444d-a164-5bbf-a3fb-be67703e3ed9', 1), '2aca98a7868ec7b4555818552ca0debcaea26e0c0b4b117f7157185e58543457',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/7ee19c7b4d0f9be8b37595860885aefcb0c950efcc57f9120d61a2eeaaac038d.mp3', 1201, '2026-09-14 04:01:28.863283', '552d66d4c712c9a25e80e7831923bb0d956b30041dd80ea811b5ddc95b047c54', 'validated', '{"audio_key":"7ee19c7b4d0f9be8b37595860885aefcb0c950efcc57f9120d61a2eeaaac038d","entity_key":"wf_real_conditions_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"552d66d4c712c9a25e80e7831923bb0d956b30041dd80ea811b5ddc95b047c54","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/7ee19c7b4d0f9be8b37595860885aefcb0c950efcc57f9120d61a2eeaaac038d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_polite_nuance_04 -> audio/generated/it-IT/lexical/805618392d7a6aea9e6960d2823c19a12fcf8877ae0e88cd1ea7e22773d513ba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6c685480-b6b5-571f-aef5-761fdde2de40', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_polite_nuance_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1121b96c2f1d1fa9b4db4e1d967964644bba74cb75f6bfa3aaec70a12bba1b63'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fcc54078-c35e-5b26-8319-d9d98c25d893', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6c685480-b6b5-571f-aef5-761fdde2de40', 1), '1121b96c2f1d1fa9b4db4e1d967964644bba74cb75f6bfa3aaec70a12bba1b63',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/805618392d7a6aea9e6960d2823c19a12fcf8877ae0e88cd1ea7e22773d513ba.mp3', 1097, '2026-09-14 04:01:29.111000', 'dc805c84a8dae4cc918dabfb8de1417da9272e42e1167745250b51cf47d00e38', 'validated', '{"audio_key":"805618392d7a6aea9e6960d2823c19a12fcf8877ae0e88cd1ea7e22773d513ba","entity_key":"lx_polite_nuance_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"dc805c84a8dae4cc918dabfb8de1417da9272e42e1167745250b51cf47d00e38","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/805618392d7a6aea9e6960d2823c19a12fcf8877ae0e88cd1ea7e22773d513ba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_polite_nuance_04 -> audio/generated/it-IT/lexical/805618392d7a6aea9e6960d2823c19a12fcf8877ae0e88cd1ea7e22773d513ba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('bd5b0f79-5616-5386-abeb-504be1304ee5', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_polite_nuance_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1121b96c2f1d1fa9b4db4e1d967964644bba74cb75f6bfa3aaec70a12bba1b63'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4d57a645-d39b-5754-8133-a8262d6e9bee', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('bd5b0f79-5616-5386-abeb-504be1304ee5', 1), '1121b96c2f1d1fa9b4db4e1d967964644bba74cb75f6bfa3aaec70a12bba1b63',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/805618392d7a6aea9e6960d2823c19a12fcf8877ae0e88cd1ea7e22773d513ba.mp3', 1097, '2026-09-14 04:01:29.111000', 'dc805c84a8dae4cc918dabfb8de1417da9272e42e1167745250b51cf47d00e38', 'validated', '{"audio_key":"805618392d7a6aea9e6960d2823c19a12fcf8877ae0e88cd1ea7e22773d513ba","entity_key":"wf_polite_nuance_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"dc805c84a8dae4cc918dabfb8de1417da9272e42e1167745250b51cf47d00e38","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/805618392d7a6aea9e6960d2823c19a12fcf8877ae0e88cd1ea7e22773d513ba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_goals_and_effort_01 -> audio/generated/it-IT/lexical/80d5fd0ff682f8edb412ac18b1d5ba057495724f6a67de3f19f78e3ca0b1f6f6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1f402be1-9f1f-5148-b094-f1d501ba8d22', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_goals_and_effort_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '86a82fe1da88e09c1caccfe62d06874ea85d3e0d3de7e11a1a8d6c8a29203bbb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ec15a078-7e8b-5164-a470-130bdfad25ec', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1f402be1-9f1f-5148-b094-f1d501ba8d22', 1), '86a82fe1da88e09c1caccfe62d06874ea85d3e0d3de7e11a1a8d6c8a29203bbb',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/80d5fd0ff682f8edb412ac18b1d5ba057495724f6a67de3f19f78e3ca0b1f6f6.mp3', 1149, '2026-09-14 04:01:29.884667', '17fe92aa958bd785eeded32547aedc0e38644a2cfa8278b0cdf46e73e46d6761', 'validated', '{"audio_key":"80d5fd0ff682f8edb412ac18b1d5ba057495724f6a67de3f19f78e3ca0b1f6f6","entity_key":"lx_goals_and_effort_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"17fe92aa958bd785eeded32547aedc0e38644a2cfa8278b0cdf46e73e46d6761","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/80d5fd0ff682f8edb412ac18b1d5ba057495724f6a67de3f19f78e3ca0b1f6f6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_goals_and_effort_01 -> audio/generated/it-IT/lexical/80d5fd0ff682f8edb412ac18b1d5ba057495724f6a67de3f19f78e3ca0b1f6f6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7a52b6bc-84df-5291-b138-e8cbd8ebb4c5', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_goals_and_effort_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '86a82fe1da88e09c1caccfe62d06874ea85d3e0d3de7e11a1a8d6c8a29203bbb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('85f3e97a-2ec2-53af-bd3d-cac7896358ea', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7a52b6bc-84df-5291-b138-e8cbd8ebb4c5', 1), '86a82fe1da88e09c1caccfe62d06874ea85d3e0d3de7e11a1a8d6c8a29203bbb',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/80d5fd0ff682f8edb412ac18b1d5ba057495724f6a67de3f19f78e3ca0b1f6f6.mp3', 1149, '2026-09-14 04:01:29.884667', '17fe92aa958bd785eeded32547aedc0e38644a2cfa8278b0cdf46e73e46d6761', 'validated', '{"audio_key":"80d5fd0ff682f8edb412ac18b1d5ba057495724f6a67de3f19f78e3ca0b1f6f6","entity_key":"wf_goals_and_effort_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"17fe92aa958bd785eeded32547aedc0e38644a2cfa8278b0cdf46e73e46d6761","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/80d5fd0ff682f8edb412ac18b1d5ba057495724f6a67de3f19f78e3ca0b1f6f6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_opinions_and_reasons_01 -> audio/generated/it-IT/lexical/8263ec0335860231a2765227ae1c342a53a5c7ed74e638d5b7e7ca95c1be0e37.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3a9033e7-011b-5ba3-9c6e-9f1ca1b649ee', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_opinions_and_reasons_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5a1ec7102e41f1b65f1ab4ff62d1420577f61620d6ebf3204bce6f17c2dd6bcb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4cece133-ee00-542d-8090-16cfea924fb1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3a9033e7-011b-5ba3-9c6e-9f1ca1b649ee', 1), '5a1ec7102e41f1b65f1ab4ff62d1420577f61620d6ebf3204bce6f17c2dd6bcb',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/8263ec0335860231a2765227ae1c342a53a5c7ed74e638d5b7e7ca95c1be0e37.mp3', 1097, '2026-09-14 04:01:30.113779', '2d87433729d36c5206f3b9e71a1c797a5b78c53cb5911bfff8d210ce6c52e401', 'validated', '{"audio_key":"8263ec0335860231a2765227ae1c342a53a5c7ed74e638d5b7e7ca95c1be0e37","entity_key":"lx_opinions_and_reasons_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2d87433729d36c5206f3b9e71a1c797a5b78c53cb5911bfff8d210ce6c52e401","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/8263ec0335860231a2765227ae1c342a53a5c7ed74e638d5b7e7ca95c1be0e37.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_opinions_and_reasons_01 -> audio/generated/it-IT/lexical/8263ec0335860231a2765227ae1c342a53a5c7ed74e638d5b7e7ca95c1be0e37.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7b4d11fc-d8a5-58d7-bba9-6433ddca6116', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_opinions_and_reasons_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5a1ec7102e41f1b65f1ab4ff62d1420577f61620d6ebf3204bce6f17c2dd6bcb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fb25e34b-205e-5584-b0dc-60918ba14f5f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7b4d11fc-d8a5-58d7-bba9-6433ddca6116', 1), '5a1ec7102e41f1b65f1ab4ff62d1420577f61620d6ebf3204bce6f17c2dd6bcb',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/8263ec0335860231a2765227ae1c342a53a5c7ed74e638d5b7e7ca95c1be0e37.mp3', 1097, '2026-09-14 04:01:30.113779', '2d87433729d36c5206f3b9e71a1c797a5b78c53cb5911bfff8d210ce6c52e401', 'validated', '{"audio_key":"8263ec0335860231a2765227ae1c342a53a5c7ed74e638d5b7e7ca95c1be0e37","entity_key":"wf_opinions_and_reasons_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2d87433729d36c5206f3b9e71a1c797a5b78c53cb5911bfff8d210ce6c52e401","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/8263ec0335860231a2765227ae1c342a53a5c7ed74e638d5b7e7ca95c1be0e37.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_b1_city_project_capstone_02 -> audio/generated/it-IT/lexical/8bc2b1e8ac5fcbb1e2ef1d80d17d59146109a72754ff5f3884f783ff76d33419.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('492c15bb-65e7-5da2-bc27-00c047bcacfe', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_b1_city_project_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a2ff0f92d16129595db26769d23d6b49a744627b11eed37f50af865fdfd45ce4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('33592dce-ad31-50d8-9ba3-157241e6e5e8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('492c15bb-65e7-5da2-bc27-00c047bcacfe', 1), 'a2ff0f92d16129595db26769d23d6b49a744627b11eed37f50af865fdfd45ce4',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/8bc2b1e8ac5fcbb1e2ef1d80d17d59146109a72754ff5f3884f783ff76d33419.mp3', 1149, '2026-09-14 04:01:30.872096', '7a69d6f53d0adf99af886dd4cd61bf2abf63152d3fc0c12b6c876bd3413dcb8e', 'validated', '{"audio_key":"8bc2b1e8ac5fcbb1e2ef1d80d17d59146109a72754ff5f3884f783ff76d33419","entity_key":"lx_b1_city_project_capstone_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"7a69d6f53d0adf99af886dd4cd61bf2abf63152d3fc0c12b6c876bd3413dcb8e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/8bc2b1e8ac5fcbb1e2ef1d80d17d59146109a72754ff5f3884f783ff76d33419.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_b1_city_project_capstone_02 -> audio/generated/it-IT/lexical/8bc2b1e8ac5fcbb1e2ef1d80d17d59146109a72754ff5f3884f783ff76d33419.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('dece865a-0c56-5b92-9934-9f67cbf70612', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_b1_city_project_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a2ff0f92d16129595db26769d23d6b49a744627b11eed37f50af865fdfd45ce4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('83bf7299-aaee-59c1-b4f7-93366f47d881', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('dece865a-0c56-5b92-9934-9f67cbf70612', 1), 'a2ff0f92d16129595db26769d23d6b49a744627b11eed37f50af865fdfd45ce4',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/8bc2b1e8ac5fcbb1e2ef1d80d17d59146109a72754ff5f3884f783ff76d33419.mp3', 1149, '2026-09-14 04:01:30.872096', '7a69d6f53d0adf99af886dd4cd61bf2abf63152d3fc0c12b6c876bd3413dcb8e', 'validated', '{"audio_key":"8bc2b1e8ac5fcbb1e2ef1d80d17d59146109a72754ff5f3884f783ff76d33419","entity_key":"wf_b1_city_project_capstone_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"7a69d6f53d0adf99af886dd4cd61bf2abf63152d3fc0c12b6c876bd3413dcb8e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/8bc2b1e8ac5fcbb1e2ef1d80d17d59146109a72754ff5f3884f783ff76d33419.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_problems_and_solutions_04 -> audio/generated/it-IT/lexical/96e35ef2218ee4152c165cb4058ad9e640290cb0083255fc73c0ad4ed909b6ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('080dd4f4-715e-53e7-9bf8-90d0cd7d21a7', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_problems_and_solutions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4cd54e5105e98b49882cfcce14c2d6d99f723b3e9526068b8f8f568383825e9b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c2e54f78-0960-5671-b071-44b8e6e9e743', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('080dd4f4-715e-53e7-9bf8-90d0cd7d21a7', 1), '4cd54e5105e98b49882cfcce14c2d6d99f723b3e9526068b8f8f568383825e9b',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/96e35ef2218ee4152c165cb4058ad9e640290cb0083255fc73c0ad4ed909b6ef.mp3', 1149, '2026-09-14 04:01:31.146586', '92cd03ba2ae74a6610de883d39f248b690a6c401472cc5bd8e52faa7a4b6bc2b', 'validated', '{"audio_key":"96e35ef2218ee4152c165cb4058ad9e640290cb0083255fc73c0ad4ed909b6ef","entity_key":"lx_problems_and_solutions_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"92cd03ba2ae74a6610de883d39f248b690a6c401472cc5bd8e52faa7a4b6bc2b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/96e35ef2218ee4152c165cb4058ad9e640290cb0083255fc73c0ad4ed909b6ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_problems_and_solutions_04 -> audio/generated/it-IT/lexical/96e35ef2218ee4152c165cb4058ad9e640290cb0083255fc73c0ad4ed909b6ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f1c8e4a8-0605-5de2-bf87-101acb409ad8', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_problems_and_solutions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4cd54e5105e98b49882cfcce14c2d6d99f723b3e9526068b8f8f568383825e9b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e891e086-517c-53a4-a3fb-0dbd2c4eaeed', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f1c8e4a8-0605-5de2-bf87-101acb409ad8', 1), '4cd54e5105e98b49882cfcce14c2d6d99f723b3e9526068b8f8f568383825e9b',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/96e35ef2218ee4152c165cb4058ad9e640290cb0083255fc73c0ad4ed909b6ef.mp3', 1149, '2026-09-14 04:01:31.146586', '92cd03ba2ae74a6610de883d39f248b690a6c401472cc5bd8e52faa7a4b6bc2b', 'validated', '{"audio_key":"96e35ef2218ee4152c165cb4058ad9e640290cb0083255fc73c0ad4ed909b6ef","entity_key":"wf_problems_and_solutions_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"92cd03ba2ae74a6610de883d39f248b690a6c401472cc5bd8e52faa7a4b6bc2b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/96e35ef2218ee4152c165cb4058ad9e640290cb0083255fc73c0ad4ed909b6ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_real_conditions_06 -> audio/generated/it-IT/lexical/975cc5154b69684bf1a9d637b6848fa66fe14fb8f057adaec736aae8365bc2a9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3d4a92dc-eb7f-5cb0-a19f-5c3e415882b8', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_real_conditions_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '26a1725c70039da03605772f157b05738fd7af5d49dc844b969d47ac688df403'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('74b9e8a4-b55b-5bcc-99a0-0b24a27a480d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3d4a92dc-eb7f-5cb0-a19f-5c3e415882b8', 1), '26a1725c70039da03605772f157b05738fd7af5d49dc844b969d47ac688df403',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/975cc5154b69684bf1a9d637b6848fa66fe14fb8f057adaec736aae8365bc2a9.mp3', 1149, '2026-09-14 04:01:31.869892', '0b62c938bfae074e5875997d82a76e5aa7713050596448e42bec039f3a2b5793', 'validated', '{"audio_key":"975cc5154b69684bf1a9d637b6848fa66fe14fb8f057adaec736aae8365bc2a9","entity_key":"lx_real_conditions_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"0b62c938bfae074e5875997d82a76e5aa7713050596448e42bec039f3a2b5793","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/975cc5154b69684bf1a9d637b6848fa66fe14fb8f057adaec736aae8365bc2a9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_real_conditions_06 -> audio/generated/it-IT/lexical/975cc5154b69684bf1a9d637b6848fa66fe14fb8f057adaec736aae8365bc2a9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4df5341f-aaf7-5b31-b818-43f7334b6af2', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_real_conditions_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '26a1725c70039da03605772f157b05738fd7af5d49dc844b969d47ac688df403'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('82b6dfbd-e564-5ada-99dc-77a83f1481f2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4df5341f-aaf7-5b31-b818-43f7334b6af2', 1), '26a1725c70039da03605772f157b05738fd7af5d49dc844b969d47ac688df403',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/975cc5154b69684bf1a9d637b6848fa66fe14fb8f057adaec736aae8365bc2a9.mp3', 1149, '2026-09-14 04:01:31.869892', '0b62c938bfae074e5875997d82a76e5aa7713050596448e42bec039f3a2b5793', 'validated', '{"audio_key":"975cc5154b69684bf1a9d637b6848fa66fe14fb8f057adaec736aae8365bc2a9","entity_key":"wf_real_conditions_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"0b62c938bfae074e5875997d82a76e5aa7713050596448e42bec039f3a2b5793","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/975cc5154b69684bf1a9d637b6848fa66fe14fb8f057adaec736aae8365bc2a9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_polite_nuance_06 -> audio/generated/it-IT/lexical/9d2b33432e1399c0c68857854ab1822a53885ee3c2c54c9dd87b401f00b9ba3e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('356c2866-b812-57c8-bb5b-48d2341ed0c7', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_polite_nuance_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8deae88f366530bde78e387550d71c1e66f2e6146eb41a92e5b3783823ca13b5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6e185d9f-3b3d-5f19-a3eb-b57aad66b5aa', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('356c2866-b812-57c8-bb5b-48d2341ed0c7', 1), '8deae88f366530bde78e387550d71c1e66f2e6146eb41a92e5b3783823ca13b5',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/9d2b33432e1399c0c68857854ab1822a53885ee3c2c54c9dd87b401f00b9ba3e.mp3', 1201, '2026-09-14 04:01:32.137474', '29a8a48b321a390ef09aea17f78859e420b580a830ff4330aaec4b843a0d7729', 'validated', '{"audio_key":"9d2b33432e1399c0c68857854ab1822a53885ee3c2c54c9dd87b401f00b9ba3e","entity_key":"lx_polite_nuance_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"29a8a48b321a390ef09aea17f78859e420b580a830ff4330aaec4b843a0d7729","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/9d2b33432e1399c0c68857854ab1822a53885ee3c2c54c9dd87b401f00b9ba3e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_polite_nuance_06 -> audio/generated/it-IT/lexical/9d2b33432e1399c0c68857854ab1822a53885ee3c2c54c9dd87b401f00b9ba3e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fad523a1-e4bf-5e2c-bef7-3e9ecc5c83fb', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_polite_nuance_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8deae88f366530bde78e387550d71c1e66f2e6146eb41a92e5b3783823ca13b5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('05185906-a403-5ac0-a612-16105371ee67', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fad523a1-e4bf-5e2c-bef7-3e9ecc5c83fb', 1), '8deae88f366530bde78e387550d71c1e66f2e6146eb41a92e5b3783823ca13b5',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/9d2b33432e1399c0c68857854ab1822a53885ee3c2c54c9dd87b401f00b9ba3e.mp3', 1201, '2026-09-14 04:01:32.137474', '29a8a48b321a390ef09aea17f78859e420b580a830ff4330aaec4b843a0d7729', 'validated', '{"audio_key":"9d2b33432e1399c0c68857854ab1822a53885ee3c2c54c9dd87b401f00b9ba3e","entity_key":"wf_polite_nuance_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"29a8a48b321a390ef09aea17f78859e420b580a830ff4330aaec4b843a0d7729","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/9d2b33432e1399c0c68857854ab1822a53885ee3c2c54c9dd87b401f00b9ba3e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_goals_and_effort_04 -> audio/generated/it-IT/lexical/9e235e0af1060df3181ab3f65bee50febe826f8df1c7541c5348494bc599ab0a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('35eacc19-683e-58c1-b894-2b1a7baacbaa', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_goals_and_effort_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e4f33e6d7e0fe9db5c83c094bb64ac8f81de2a5bf84e73ed2d2d2363004f159f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('07ed39e4-dd96-5c91-a670-c9c4eb73fad8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('35eacc19-683e-58c1-b894-2b1a7baacbaa', 1), 'e4f33e6d7e0fe9db5c83c094bb64ac8f81de2a5bf84e73ed2d2d2363004f159f',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/9e235e0af1060df3181ab3f65bee50febe826f8df1c7541c5348494bc599ab0a.mp3', 1201, '2026-09-14 04:01:33.285125', '0c086087f68bfb57a3abd9ce3efe83c51945a1c595098987d5248de670b46c45', 'validated', '{"audio_key":"9e235e0af1060df3181ab3f65bee50febe826f8df1c7541c5348494bc599ab0a","entity_key":"lx_goals_and_effort_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"0c086087f68bfb57a3abd9ce3efe83c51945a1c595098987d5248de670b46c45","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/9e235e0af1060df3181ab3f65bee50febe826f8df1c7541c5348494bc599ab0a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_goals_and_effort_04 -> audio/generated/it-IT/lexical/9e235e0af1060df3181ab3f65bee50febe826f8df1c7541c5348494bc599ab0a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('69ea7d89-2b58-5472-9625-93f12c53f6b2', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_goals_and_effort_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e4f33e6d7e0fe9db5c83c094bb64ac8f81de2a5bf84e73ed2d2d2363004f159f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d3ddfe09-a6af-5c2b-ad2e-2cbe0310619c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('69ea7d89-2b58-5472-9625-93f12c53f6b2', 1), 'e4f33e6d7e0fe9db5c83c094bb64ac8f81de2a5bf84e73ed2d2d2363004f159f',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/9e235e0af1060df3181ab3f65bee50febe826f8df1c7541c5348494bc599ab0a.mp3', 1201, '2026-09-14 04:01:33.285125', '0c086087f68bfb57a3abd9ce3efe83c51945a1c595098987d5248de670b46c45', 'validated', '{"audio_key":"9e235e0af1060df3181ab3f65bee50febe826f8df1c7541c5348494bc599ab0a","entity_key":"wf_goals_and_effort_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"0c086087f68bfb57a3abd9ce3efe83c51945a1c595098987d5248de670b46c45","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/9e235e0af1060df3181ab3f65bee50febe826f8df1c7541c5348494bc599ab0a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reported_information_01 -> audio/generated/it-IT/lexical/a79098e284904202e2f71d184ce1cbf93d4e65a9928871f2ccabaced67a15c2b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('aa053af5-5db5-5e5f-85ac-6d256cc4216d', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reported_information_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '649603add1fd9c17867beba4e835109ad7df27098bbbb6185937d84916409a28'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9fbabde5-3012-5f18-ba3e-c513c6493793', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('aa053af5-5db5-5e5f-85ac-6d256cc4216d', 1), '649603add1fd9c17867beba4e835109ad7df27098bbbb6185937d84916409a28',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/a79098e284904202e2f71d184ce1cbf93d4e65a9928871f2ccabaced67a15c2b.mp3', 1071, '2026-09-14 04:01:33.139840', '39e4f4517a0acafe5a3d72b8341e57b025f97ed3a10b86fbe4c42884901f9ecb', 'validated', '{"audio_key":"a79098e284904202e2f71d184ce1cbf93d4e65a9928871f2ccabaced67a15c2b","entity_key":"lx_reported_information_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"39e4f4517a0acafe5a3d72b8341e57b025f97ed3a10b86fbe4c42884901f9ecb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/a79098e284904202e2f71d184ce1cbf93d4e65a9928871f2ccabaced67a15c2b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reported_information_01 -> audio/generated/it-IT/lexical/a79098e284904202e2f71d184ce1cbf93d4e65a9928871f2ccabaced67a15c2b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f4083543-a20b-58db-8562-cfae5626a431', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reported_information_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '649603add1fd9c17867beba4e835109ad7df27098bbbb6185937d84916409a28'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f8c6b2dc-9733-5ac3-8e6c-fa1b640f6b1c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f4083543-a20b-58db-8562-cfae5626a431', 1), '649603add1fd9c17867beba4e835109ad7df27098bbbb6185937d84916409a28',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/a79098e284904202e2f71d184ce1cbf93d4e65a9928871f2ccabaced67a15c2b.mp3', 1071, '2026-09-14 04:01:33.139840', '39e4f4517a0acafe5a3d72b8341e57b025f97ed3a10b86fbe4c42884901f9ecb', 'validated', '{"audio_key":"a79098e284904202e2f71d184ce1cbf93d4e65a9928871f2ccabaced67a15c2b","entity_key":"wf_reported_information_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"39e4f4517a0acafe5a3d72b8341e57b025f97ed3a10b86fbe4c42884901f9ecb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/a79098e284904202e2f71d184ce1cbf93d4e65a9928871f2ccabaced67a15c2b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_real_conditions_04 -> audio/generated/it-IT/lexical/aef5c44bad2eecbb9593286e2b12f36d9687d4e2f7b1063dbdb25ce4d2b3fad5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c20a09f1-b403-5cf6-9b03-5f182e242bb0', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_real_conditions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e7056c4efb9350cbd1405406d5b587edf95942070a44f013bc4ba3414a6e29ba'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('09d9714b-c24a-58b3-bfb8-4c3fb2d4562d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c20a09f1-b403-5cf6-9b03-5f182e242bb0', 1), 'e7056c4efb9350cbd1405406d5b587edf95942070a44f013bc4ba3414a6e29ba',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/aef5c44bad2eecbb9593286e2b12f36d9687d4e2f7b1063dbdb25ce4d2b3fad5.mp3', 914, '2026-09-14 04:01:34.124953', 'd0c8e5f064a0c5b16776895f95c68075c75546bd95ab3a7ec5d12135d6f4a6e8', 'validated', '{"audio_key":"aef5c44bad2eecbb9593286e2b12f36d9687d4e2f7b1063dbdb25ce4d2b3fad5","entity_key":"lx_real_conditions_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d0c8e5f064a0c5b16776895f95c68075c75546bd95ab3a7ec5d12135d6f4a6e8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/aef5c44bad2eecbb9593286e2b12f36d9687d4e2f7b1063dbdb25ce4d2b3fad5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_real_conditions_04 -> audio/generated/it-IT/lexical/aef5c44bad2eecbb9593286e2b12f36d9687d4e2f7b1063dbdb25ce4d2b3fad5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('99a2b653-ee07-5c54-85ef-727e83f45a91', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_real_conditions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e7056c4efb9350cbd1405406d5b587edf95942070a44f013bc4ba3414a6e29ba'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('438f452b-ff3c-51c7-abac-a4505c5f44c0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('99a2b653-ee07-5c54-85ef-727e83f45a91', 1), 'e7056c4efb9350cbd1405406d5b587edf95942070a44f013bc4ba3414a6e29ba',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/aef5c44bad2eecbb9593286e2b12f36d9687d4e2f7b1063dbdb25ce4d2b3fad5.mp3', 914, '2026-09-14 04:01:34.124953', 'd0c8e5f064a0c5b16776895f95c68075c75546bd95ab3a7ec5d12135d6f4a6e8', 'validated', '{"audio_key":"aef5c44bad2eecbb9593286e2b12f36d9687d4e2f7b1063dbdb25ce4d2b3fad5","entity_key":"wf_real_conditions_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d0c8e5f064a0c5b16776895f95c68075c75546bd95ab3a7ec5d12135d6f4a6e8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/aef5c44bad2eecbb9593286e2b12f36d9687d4e2f7b1063dbdb25ce4d2b3fad5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_stories_and_background_02 -> audio/generated/it-IT/lexical/af4e0bf50df2c3b13992fca2ba50bd5444fc95cfa4ab0be393441e8350f72a41.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('53d97594-d1f2-5250-8d05-c847bd55e875', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_stories_and_background_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'df454aa8146f1b1c879109e51f8be749cfbbde8037dcac739062d7a01eb2e6d8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e1095d4c-a927-5381-a9dc-5c08debfd015', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('53d97594-d1f2-5250-8d05-c847bd55e875', 1), 'df454aa8146f1b1c879109e51f8be749cfbbde8037dcac739062d7a01eb2e6d8',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/af4e0bf50df2c3b13992fca2ba50bd5444fc95cfa4ab0be393441e8350f72a41.mp3', 1149, '2026-09-14 04:01:34.280995', '07f4ecc4b63bc5b1e9302ebe2516433c93f8232b7d42d2a5de704b5bc5b8e9db', 'validated', '{"audio_key":"af4e0bf50df2c3b13992fca2ba50bd5444fc95cfa4ab0be393441e8350f72a41","entity_key":"lx_stories_and_background_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"07f4ecc4b63bc5b1e9302ebe2516433c93f8232b7d42d2a5de704b5bc5b8e9db","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/af4e0bf50df2c3b13992fca2ba50bd5444fc95cfa4ab0be393441e8350f72a41.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_stories_and_background_02 -> audio/generated/it-IT/lexical/af4e0bf50df2c3b13992fca2ba50bd5444fc95cfa4ab0be393441e8350f72a41.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('965268ab-fb6f-5c81-88a0-725fb41c1d73', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_stories_and_background_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'df454aa8146f1b1c879109e51f8be749cfbbde8037dcac739062d7a01eb2e6d8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ff225df8-ce44-5929-8dee-fc2eb47db3fc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('965268ab-fb6f-5c81-88a0-725fb41c1d73', 1), 'df454aa8146f1b1c879109e51f8be749cfbbde8037dcac739062d7a01eb2e6d8',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/af4e0bf50df2c3b13992fca2ba50bd5444fc95cfa4ab0be393441e8350f72a41.mp3', 1149, '2026-09-14 04:01:34.280995', '07f4ecc4b63bc5b1e9302ebe2516433c93f8232b7d42d2a5de704b5bc5b8e9db', 'validated', '{"audio_key":"af4e0bf50df2c3b13992fca2ba50bd5444fc95cfa4ab0be393441e8350f72a41","entity_key":"wf_stories_and_background_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"07f4ecc4b63bc5b1e9302ebe2516433c93f8232b7d42d2a5de704b5bc5b8e9db","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/af4e0bf50df2c3b13992fca2ba50bd5444fc95cfa4ab0be393441e8350f72a41.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_b1_city_project_capstone_01 -> audio/generated/it-IT/lexical/b6c9354e418fa6102f8db66dc4718b2e9a3e763bc23e90a9f07f6cf39026a71a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('55864d70-56f4-5b73-9eaf-0c644d702a5d', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_b1_city_project_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '35d3ca8a217a9e39d0128ecdc88577da1ae2c6935e899d96bd0afe99e0c12f22'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ddbb3b8c-60db-5b25-a42c-570f34aab878', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('55864d70-56f4-5b73-9eaf-0c644d702a5d', 1), '35d3ca8a217a9e39d0128ecdc88577da1ae2c6935e899d96bd0afe99e0c12f22',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/b6c9354e418fa6102f8db66dc4718b2e9a3e763bc23e90a9f07f6cf39026a71a.mp3', 1253, '2026-09-14 04:01:35.132392', 'e714bd82d4b4366cacf5a7fbf303a7366e308419ca40fef88e480a118d3fde19', 'validated', '{"audio_key":"b6c9354e418fa6102f8db66dc4718b2e9a3e763bc23e90a9f07f6cf39026a71a","entity_key":"lx_b1_city_project_capstone_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e714bd82d4b4366cacf5a7fbf303a7366e308419ca40fef88e480a118d3fde19","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/b6c9354e418fa6102f8db66dc4718b2e9a3e763bc23e90a9f07f6cf39026a71a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_b1_city_project_capstone_01 -> audio/generated/it-IT/lexical/b6c9354e418fa6102f8db66dc4718b2e9a3e763bc23e90a9f07f6cf39026a71a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('84a5de07-d8c3-578f-b477-cab45c850810', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_b1_city_project_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '35d3ca8a217a9e39d0128ecdc88577da1ae2c6935e899d96bd0afe99e0c12f22'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1a1ccdbc-2a6b-5f33-be4e-3b3b95639a91', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('84a5de07-d8c3-578f-b477-cab45c850810', 1), '35d3ca8a217a9e39d0128ecdc88577da1ae2c6935e899d96bd0afe99e0c12f22',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/b6c9354e418fa6102f8db66dc4718b2e9a3e763bc23e90a9f07f6cf39026a71a.mp3', 1253, '2026-09-14 04:01:35.132392', 'e714bd82d4b4366cacf5a7fbf303a7366e308419ca40fef88e480a118d3fde19', 'validated', '{"audio_key":"b6c9354e418fa6102f8db66dc4718b2e9a3e763bc23e90a9f07f6cf39026a71a","entity_key":"wf_b1_city_project_capstone_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e714bd82d4b4366cacf5a7fbf303a7366e308419ca40fef88e480a118d3fde19","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/b6c9354e418fa6102f8db66dc4718b2e9a3e763bc23e90a9f07f6cf39026a71a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_opinions_and_reasons_05 -> audio/generated/it-IT/lexical/b9fd92ab758f5e050bbb3d728668614f690645e3ac04836a8e3208863b358e4d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e2f4b950-2168-5ecc-876b-8b383c97060c', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_opinions_and_reasons_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dde225d8eaf968e157225f4057d829b49f86cdbb66d3729ae79a35d6b7e2e6c2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c26fff1d-660d-571b-8ba2-1297519681c5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e2f4b950-2168-5ecc-876b-8b383c97060c', 1), 'dde225d8eaf968e157225f4057d829b49f86cdbb66d3729ae79a35d6b7e2e6c2',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/b9fd92ab758f5e050bbb3d728668614f690645e3ac04836a8e3208863b358e4d.mp3', 1149, '2026-09-14 04:01:35.297396', '2507b09bbf1eb5c5bd40e1055968389ef8dd676cf205479f013cfe94daafcc9f', 'validated', '{"audio_key":"b9fd92ab758f5e050bbb3d728668614f690645e3ac04836a8e3208863b358e4d","entity_key":"lx_opinions_and_reasons_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2507b09bbf1eb5c5bd40e1055968389ef8dd676cf205479f013cfe94daafcc9f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/b9fd92ab758f5e050bbb3d728668614f690645e3ac04836a8e3208863b358e4d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_opinions_and_reasons_05 -> audio/generated/it-IT/lexical/b9fd92ab758f5e050bbb3d728668614f690645e3ac04836a8e3208863b358e4d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('cc42fbea-b3b1-566f-98e7-f928eebd58a9', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_opinions_and_reasons_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dde225d8eaf968e157225f4057d829b49f86cdbb66d3729ae79a35d6b7e2e6c2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('87341ca7-3624-5b8e-8547-578eff815558', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('cc42fbea-b3b1-566f-98e7-f928eebd58a9', 1), 'dde225d8eaf968e157225f4057d829b49f86cdbb66d3729ae79a35d6b7e2e6c2',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/b9fd92ab758f5e050bbb3d728668614f690645e3ac04836a8e3208863b358e4d.mp3', 1149, '2026-09-14 04:01:35.297396', '2507b09bbf1eb5c5bd40e1055968389ef8dd676cf205479f013cfe94daafcc9f', 'validated', '{"audio_key":"b9fd92ab758f5e050bbb3d728668614f690645e3ac04836a8e3208863b358e4d","entity_key":"wf_opinions_and_reasons_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2507b09bbf1eb5c5bd40e1055968389ef8dd676cf205479f013cfe94daafcc9f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/b9fd92ab758f5e050bbb3d728668614f690645e3ac04836a8e3208863b358e4d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_b1_city_project_capstone_04 -> audio/generated/it-IT/lexical/bbb908a34f0efd69238d3e8dd88eab37ea33bc9d3c00c53dd52f7e27164ac37d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7ea248f7-e02b-5f1f-874a-3b3f005357a9', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_b1_city_project_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '29b3acfad2d82830a082b496d355b4015e40a1111d58ef2bf20d4209603c5255'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8bd6ac7f-81b8-529c-901c-a07c408208bd', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7ea248f7-e02b-5f1f-874a-3b3f005357a9', 1), '29b3acfad2d82830a082b496d355b4015e40a1111d58ef2bf20d4209603c5255',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/bbb908a34f0efd69238d3e8dd88eab37ea33bc9d3c00c53dd52f7e27164ac37d.mp3', 1253, '2026-09-14 03:26:57.745352', 'e79d555d5032a000bd01b379cb4762dbc1b73caa8d85ab7080dcfbefc1a3e0f8', 'validated', '{"audio_key":"bbb908a34f0efd69238d3e8dd88eab37ea33bc9d3c00c53dd52f7e27164ac37d","entity_key":"lx_b1_city_project_capstone_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e79d555d5032a000bd01b379cb4762dbc1b73caa8d85ab7080dcfbefc1a3e0f8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/bbb908a34f0efd69238d3e8dd88eab37ea33bc9d3c00c53dd52f7e27164ac37d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_b1_city_project_capstone_04 -> audio/generated/it-IT/lexical/bbb908a34f0efd69238d3e8dd88eab37ea33bc9d3c00c53dd52f7e27164ac37d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8983d7a0-5dc7-5f4d-a784-b47087741ffd', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_b1_city_project_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '29b3acfad2d82830a082b496d355b4015e40a1111d58ef2bf20d4209603c5255'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f421769f-b9cd-5b0b-93fd-affad5b1f2b3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8983d7a0-5dc7-5f4d-a784-b47087741ffd', 1), '29b3acfad2d82830a082b496d355b4015e40a1111d58ef2bf20d4209603c5255',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/bbb908a34f0efd69238d3e8dd88eab37ea33bc9d3c00c53dd52f7e27164ac37d.mp3', 1253, '2026-09-14 03:26:57.745352', 'e79d555d5032a000bd01b379cb4762dbc1b73caa8d85ab7080dcfbefc1a3e0f8', 'validated', '{"audio_key":"bbb908a34f0efd69238d3e8dd88eab37ea33bc9d3c00c53dd52f7e27164ac37d","entity_key":"wf_b1_city_project_capstone_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e79d555d5032a000bd01b379cb4762dbc1b73caa8d85ab7080dcfbefc1a3e0f8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/bbb908a34f0efd69238d3e8dd88eab37ea33bc9d3c00c53dd52f7e27164ac37d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_problems_and_solutions_05 -> audio/generated/it-IT/lexical/be29663f4ef18477531381904f3f3844faf83d6ff0e6af03cc5bc9ce5b68edbb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1e51100e-6e21-53ca-81b9-c27498699dd7', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_problems_and_solutions_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c927e36a2e0465159331d1120e192f97e3cf93bde66f6e1e0f5a7b185dc23bf3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1bf137e9-6853-586f-bda8-7b71aff24a32', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1e51100e-6e21-53ca-81b9-c27498699dd7', 1), 'c927e36a2e0465159331d1120e192f97e3cf93bde66f6e1e0f5a7b185dc23bf3',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/be29663f4ef18477531381904f3f3844faf83d6ff0e6af03cc5bc9ce5b68edbb.mp3', 1097, '2026-09-14 04:01:36.130455', '45c479b80bf4e126808d86891b7398fe0900908cbad6d9bc7e2f4b76fd9667e6', 'validated', '{"audio_key":"be29663f4ef18477531381904f3f3844faf83d6ff0e6af03cc5bc9ce5b68edbb","entity_key":"lx_problems_and_solutions_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"45c479b80bf4e126808d86891b7398fe0900908cbad6d9bc7e2f4b76fd9667e6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/be29663f4ef18477531381904f3f3844faf83d6ff0e6af03cc5bc9ce5b68edbb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_problems_and_solutions_05 -> audio/generated/it-IT/lexical/be29663f4ef18477531381904f3f3844faf83d6ff0e6af03cc5bc9ce5b68edbb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b5e47d21-933a-5861-b2d7-c772628009f7', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_problems_and_solutions_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c927e36a2e0465159331d1120e192f97e3cf93bde66f6e1e0f5a7b185dc23bf3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7e8bc87c-1c04-5e24-8f2a-59f1fd41718e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b5e47d21-933a-5861-b2d7-c772628009f7', 1), 'c927e36a2e0465159331d1120e192f97e3cf93bde66f6e1e0f5a7b185dc23bf3',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/be29663f4ef18477531381904f3f3844faf83d6ff0e6af03cc5bc9ce5b68edbb.mp3', 1097, '2026-09-14 04:01:36.130455', '45c479b80bf4e126808d86891b7398fe0900908cbad6d9bc7e2f4b76fd9667e6', 'validated', '{"audio_key":"be29663f4ef18477531381904f3f3844faf83d6ff0e6af03cc5bc9ce5b68edbb","entity_key":"wf_problems_and_solutions_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"45c479b80bf4e126808d86891b7398fe0900908cbad6d9bc7e2f4b76fd9667e6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/be29663f4ef18477531381904f3f3844faf83d6ff0e6af03cc5bc9ce5b68edbb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reported_information_02 -> audio/generated/it-IT/lexical/be84bfdc2746230cec12716f6462cdd947d32fdff4feddede5325f91e665a23d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('79a3dad3-7dc1-5157-be38-291d3dd08cda', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reported_information_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cdc3c177c037c3515dba9260d1cd7009e5242a5179c4e1dcc8de78f56c985a51'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('71f62e53-fe21-5af8-9bdb-f8e439c4dada', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('79a3dad3-7dc1-5157-be38-291d3dd08cda', 1), 'cdc3c177c037c3515dba9260d1cd7009e5242a5179c4e1dcc8de78f56c985a51',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/be84bfdc2746230cec12716f6462cdd947d32fdff4feddede5325f91e665a23d.mp3', 1071, '2026-09-14 04:01:36.291236', '844563cce881fa9ed7629d9cf4f4aacb56b96f22dd71ac5b548b000d7bc5bde9', 'validated', '{"audio_key":"be84bfdc2746230cec12716f6462cdd947d32fdff4feddede5325f91e665a23d","entity_key":"lx_reported_information_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"844563cce881fa9ed7629d9cf4f4aacb56b96f22dd71ac5b548b000d7bc5bde9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/be84bfdc2746230cec12716f6462cdd947d32fdff4feddede5325f91e665a23d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reported_information_02 -> audio/generated/it-IT/lexical/be84bfdc2746230cec12716f6462cdd947d32fdff4feddede5325f91e665a23d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5990b0d6-05e0-5ad5-aa9d-74b4fb5e0979', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reported_information_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cdc3c177c037c3515dba9260d1cd7009e5242a5179c4e1dcc8de78f56c985a51'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('302f1e16-be0c-5a35-9d53-3e766eba7272', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5990b0d6-05e0-5ad5-aa9d-74b4fb5e0979', 1), 'cdc3c177c037c3515dba9260d1cd7009e5242a5179c4e1dcc8de78f56c985a51',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/be84bfdc2746230cec12716f6462cdd947d32fdff4feddede5325f91e665a23d.mp3', 1071, '2026-09-14 04:01:36.291236', '844563cce881fa9ed7629d9cf4f4aacb56b96f22dd71ac5b548b000d7bc5bde9', 'validated', '{"audio_key":"be84bfdc2746230cec12716f6462cdd947d32fdff4feddede5325f91e665a23d","entity_key":"wf_reported_information_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"844563cce881fa9ed7629d9cf4f4aacb56b96f22dd71ac5b548b000d7bc5bde9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/be84bfdc2746230cec12716f6462cdd947d32fdff4feddede5325f91e665a23d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_opinions_and_reasons_06 -> audio/generated/it-IT/lexical/c46052d507a3b58bd333d402340798ce55f62f167e6c023bf6361e15ae1b64da.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f8e36210-1f6a-59de-b4e3-7caffca57b9d', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_opinions_and_reasons_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1562e06a3289c38c18eef3330cb651813d1ac76e648b0d4baaf6c0638be8f705'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d0dcbc7d-ac4f-5141-a1c6-b4d9d86a0ec8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f8e36210-1f6a-59de-b4e3-7caffca57b9d', 1), '1562e06a3289c38c18eef3330cb651813d1ac76e648b0d4baaf6c0638be8f705',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/c46052d507a3b58bd333d402340798ce55f62f167e6c023bf6361e15ae1b64da.mp3', 1018, '2026-09-14 04:01:37.135360', 'f7dccca413fe3caa07c5e939ee0098f4f82c3909751901026dabe007eae8afc1', 'validated', '{"audio_key":"c46052d507a3b58bd333d402340798ce55f62f167e6c023bf6361e15ae1b64da","entity_key":"lx_opinions_and_reasons_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f7dccca413fe3caa07c5e939ee0098f4f82c3909751901026dabe007eae8afc1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/c46052d507a3b58bd333d402340798ce55f62f167e6c023bf6361e15ae1b64da.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_opinions_and_reasons_06 -> audio/generated/it-IT/lexical/c46052d507a3b58bd333d402340798ce55f62f167e6c023bf6361e15ae1b64da.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ed15b6ea-0e77-5487-910a-97def5556df6', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_opinions_and_reasons_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1562e06a3289c38c18eef3330cb651813d1ac76e648b0d4baaf6c0638be8f705'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('48aeb820-bda7-584b-a88d-5d2dff11b3f8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ed15b6ea-0e77-5487-910a-97def5556df6', 1), '1562e06a3289c38c18eef3330cb651813d1ac76e648b0d4baaf6c0638be8f705',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/c46052d507a3b58bd333d402340798ce55f62f167e6c023bf6361e15ae1b64da.mp3', 1018, '2026-09-14 04:01:37.135360', 'f7dccca413fe3caa07c5e939ee0098f4f82c3909751901026dabe007eae8afc1', 'validated', '{"audio_key":"c46052d507a3b58bd333d402340798ce55f62f167e6c023bf6361e15ae1b64da","entity_key":"wf_opinions_and_reasons_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f7dccca413fe3caa07c5e939ee0098f4f82c3909751901026dabe007eae8afc1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/c46052d507a3b58bd333d402340798ce55f62f167e6c023bf6361e15ae1b64da.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_b1_city_project_capstone_03 -> audio/generated/it-IT/lexical/cf5d47e1872fc0e605818738c03698d13b4e22b01c8386ecb1ef87161eb6f1c1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('97ffd891-d492-5d99-8404-2a168355a84e', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_b1_city_project_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8a24f58613de42d66e88bb918eb3997e9e0c7b56d760c1d3ceee9a4c2facc655'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('53cc2889-34c3-5aed-861b-86c97b59149a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('97ffd891-d492-5d99-8404-2a168355a84e', 1), '8a24f58613de42d66e88bb918eb3997e9e0c7b56d760c1d3ceee9a4c2facc655',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/cf5d47e1872fc0e605818738c03698d13b4e22b01c8386ecb1ef87161eb6f1c1.mp3', 1149, '2026-09-14 04:01:37.296005', '662ef05d506a1dc02d5b79359cb8adec3d1e95895af2df463bdfd848e7f0eaf7', 'validated', '{"audio_key":"cf5d47e1872fc0e605818738c03698d13b4e22b01c8386ecb1ef87161eb6f1c1","entity_key":"lx_b1_city_project_capstone_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"662ef05d506a1dc02d5b79359cb8adec3d1e95895af2df463bdfd848e7f0eaf7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/cf5d47e1872fc0e605818738c03698d13b4e22b01c8386ecb1ef87161eb6f1c1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_b1_city_project_capstone_03 -> audio/generated/it-IT/lexical/cf5d47e1872fc0e605818738c03698d13b4e22b01c8386ecb1ef87161eb6f1c1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0397a563-e79c-5334-8f78-5d47c513e783', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_b1_city_project_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8a24f58613de42d66e88bb918eb3997e9e0c7b56d760c1d3ceee9a4c2facc655'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('20fb75b7-e8cd-5b1f-951b-9165f51dceb2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0397a563-e79c-5334-8f78-5d47c513e783', 1), '8a24f58613de42d66e88bb918eb3997e9e0c7b56d760c1d3ceee9a4c2facc655',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/cf5d47e1872fc0e605818738c03698d13b4e22b01c8386ecb1ef87161eb6f1c1.mp3', 1149, '2026-09-14 04:01:37.296005', '662ef05d506a1dc02d5b79359cb8adec3d1e95895af2df463bdfd848e7f0eaf7', 'validated', '{"audio_key":"cf5d47e1872fc0e605818738c03698d13b4e22b01c8386ecb1ef87161eb6f1c1","entity_key":"wf_b1_city_project_capstone_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"662ef05d506a1dc02d5b79359cb8adec3d1e95895af2df463bdfd848e7f0eaf7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/cf5d47e1872fc0e605818738c03698d13b4e22b01c8386ecb1ef87161eb6f1c1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_media_and_sources_01 -> audio/generated/it-IT/lexical/d0e478d0753aca1684b5f566d1694726594065cc9ca0331e86206f574660e085.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a5329a75-e0fa-5185-bb22-cee7156f4fd5', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_media_and_sources_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3e303c336a58c084f16e8e7c55f0bbeab90b1777ba08d44f8b116e8f674658af'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7f007229-64a8-5383-8ad0-3d8751adc9f9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a5329a75-e0fa-5185-bb22-cee7156f4fd5', 1), '3e303c336a58c084f16e8e7c55f0bbeab90b1777ba08d44f8b116e8f674658af',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/d0e478d0753aca1684b5f566d1694726594065cc9ca0331e86206f574660e085.mp3', 1018, '2026-09-14 04:01:38.183318', '2302c25e48b5a1e47b00b26f5da08034b70c8800eea7ac0cd202ff34b43e7354', 'validated', '{"audio_key":"d0e478d0753aca1684b5f566d1694726594065cc9ca0331e86206f574660e085","entity_key":"lx_media_and_sources_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2302c25e48b5a1e47b00b26f5da08034b70c8800eea7ac0cd202ff34b43e7354","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/d0e478d0753aca1684b5f566d1694726594065cc9ca0331e86206f574660e085.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_media_and_sources_01 -> audio/generated/it-IT/lexical/d0e478d0753aca1684b5f566d1694726594065cc9ca0331e86206f574660e085.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f7a04c91-d112-59f1-b6e0-f13e3582ff28', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_media_and_sources_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3e303c336a58c084f16e8e7c55f0bbeab90b1777ba08d44f8b116e8f674658af'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0b8e2263-72f3-55b5-bf60-71b90a2cdee2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f7a04c91-d112-59f1-b6e0-f13e3582ff28', 1), '3e303c336a58c084f16e8e7c55f0bbeab90b1777ba08d44f8b116e8f674658af',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/d0e478d0753aca1684b5f566d1694726594065cc9ca0331e86206f574660e085.mp3', 1018, '2026-09-14 04:01:38.183318', '2302c25e48b5a1e47b00b26f5da08034b70c8800eea7ac0cd202ff34b43e7354', 'validated', '{"audio_key":"d0e478d0753aca1684b5f566d1694726594065cc9ca0331e86206f574660e085","entity_key":"wf_media_and_sources_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2302c25e48b5a1e47b00b26f5da08034b70c8800eea7ac0cd202ff34b43e7354","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/d0e478d0753aca1684b5f566d1694726594065cc9ca0331e86206f574660e085.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_changes_over_time_06 -> audio/generated/it-IT/lexical/dc424d8a0efeee3416bef7cfe60fa3a63e9ab6d77c2455ec2e7ce7d6e7a9f913.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e0f8fbfa-d679-5baa-82e4-801a1de46267', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_changes_over_time_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '93e44914d1a98c16bef02572dcc3cf1e34ab120ee1320782b38776f676d49286'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6a07cc63-df6c-5459-9165-a5da12061588', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e0f8fbfa-d679-5baa-82e4-801a1de46267', 1), '93e44914d1a98c16bef02572dcc3cf1e34ab120ee1320782b38776f676d49286',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/dc424d8a0efeee3416bef7cfe60fa3a63e9ab6d77c2455ec2e7ce7d6e7a9f913.mp3', 1149, '2026-09-14 04:01:38.393680', 'e28225e7efa2280266168e3b5662bddd6e99d02de169394dd250e59cb3f96c0d', 'validated', '{"audio_key":"dc424d8a0efeee3416bef7cfe60fa3a63e9ab6d77c2455ec2e7ce7d6e7a9f913","entity_key":"lx_changes_over_time_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e28225e7efa2280266168e3b5662bddd6e99d02de169394dd250e59cb3f96c0d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/dc424d8a0efeee3416bef7cfe60fa3a63e9ab6d77c2455ec2e7ce7d6e7a9f913.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_changes_over_time_06 -> audio/generated/it-IT/lexical/dc424d8a0efeee3416bef7cfe60fa3a63e9ab6d77c2455ec2e7ce7d6e7a9f913.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e85269a9-c480-545a-b170-fe02cc17f558', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_changes_over_time_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '93e44914d1a98c16bef02572dcc3cf1e34ab120ee1320782b38776f676d49286'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1eceb277-ce4b-5906-8788-27f6c86df1ba', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e85269a9-c480-545a-b170-fe02cc17f558', 1), '93e44914d1a98c16bef02572dcc3cf1e34ab120ee1320782b38776f676d49286',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/dc424d8a0efeee3416bef7cfe60fa3a63e9ab6d77c2455ec2e7ce7d6e7a9f913.mp3', 1149, '2026-09-14 04:01:38.393680', 'e28225e7efa2280266168e3b5662bddd6e99d02de169394dd250e59cb3f96c0d', 'validated', '{"audio_key":"dc424d8a0efeee3416bef7cfe60fa3a63e9ab6d77c2455ec2e7ce7d6e7a9f913","entity_key":"wf_changes_over_time_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e28225e7efa2280266168e3b5662bddd6e99d02de169394dd250e59cb3f96c0d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/dc424d8a0efeee3416bef7cfe60fa3a63e9ab6d77c2455ec2e7ce7d6e7a9f913.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_media_and_sources_02 -> audio/generated/it-IT/lexical/e17a78ae6c22ed7230e6bc9c294c90ffbbfc4bc395a06fba24771c5833b73a7e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('35510675-4eb3-5f9d-82dd-bd313ae3536b', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_media_and_sources_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ad7844d85c867106874b434ba4fb1f5ff981965b6c744fcf7d77a0ba9a915724'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a2c3d540-9c8b-5553-8c46-3ed7c3688181', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('35510675-4eb3-5f9d-82dd-bd313ae3536b', 1), 'ad7844d85c867106874b434ba4fb1f5ff981965b6c744fcf7d77a0ba9a915724',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/e17a78ae6c22ed7230e6bc9c294c90ffbbfc4bc395a06fba24771c5833b73a7e.mp3', 1097, '2026-09-14 04:01:39.268686', 'eb6ee9b46188cb5972b3e0a0271df748de2c3aa4a824d56354e2c3e69b75c0bc', 'validated', '{"audio_key":"e17a78ae6c22ed7230e6bc9c294c90ffbbfc4bc395a06fba24771c5833b73a7e","entity_key":"lx_media_and_sources_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"eb6ee9b46188cb5972b3e0a0271df748de2c3aa4a824d56354e2c3e69b75c0bc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/e17a78ae6c22ed7230e6bc9c294c90ffbbfc4bc395a06fba24771c5833b73a7e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_media_and_sources_02 -> audio/generated/it-IT/lexical/e17a78ae6c22ed7230e6bc9c294c90ffbbfc4bc395a06fba24771c5833b73a7e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6d86d62d-b6c0-5781-908f-fb64a634163a', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_media_and_sources_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ad7844d85c867106874b434ba4fb1f5ff981965b6c744fcf7d77a0ba9a915724'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c250b85a-6ebe-5cfa-ae47-108f9a395830', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6d86d62d-b6c0-5781-908f-fb64a634163a', 1), 'ad7844d85c867106874b434ba4fb1f5ff981965b6c744fcf7d77a0ba9a915724',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/e17a78ae6c22ed7230e6bc9c294c90ffbbfc4bc395a06fba24771c5833b73a7e.mp3', 1097, '2026-09-14 04:01:39.268686', 'eb6ee9b46188cb5972b3e0a0271df748de2c3aa4a824d56354e2c3e69b75c0bc', 'validated', '{"audio_key":"e17a78ae6c22ed7230e6bc9c294c90ffbbfc4bc395a06fba24771c5833b73a7e","entity_key":"wf_media_and_sources_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"eb6ee9b46188cb5972b3e0a0271df748de2c3aa4a824d56354e2c3e69b75c0bc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/e17a78ae6c22ed7230e6bc9c294c90ffbbfc4bc395a06fba24771c5833b73a7e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_goals_and_effort_03 -> audio/generated/it-IT/lexical/e498bee294a56c5f7102941f9bab98100c89d6048c986d2ae4870cd579480bec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('42d53692-1e4a-55f0-aebf-d7e30574fbca', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_goals_and_effort_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ff4f5a9007c88429572e6fba2862e10ae090a90410e1e626113f7bc355eabeef'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('75dac3ea-6ba3-553a-932a-83965106f9fb', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('42d53692-1e4a-55f0-aebf-d7e30574fbca', 1), 'ff4f5a9007c88429572e6fba2862e10ae090a90410e1e626113f7bc355eabeef',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/e498bee294a56c5f7102941f9bab98100c89d6048c986d2ae4870cd579480bec.mp3', 1097, '2026-09-14 04:01:39.714339', '5caf9af6dda2e991f0a1cb441dffb7c96057f13b38dea34884b094eeb9b71988', 'validated', '{"audio_key":"e498bee294a56c5f7102941f9bab98100c89d6048c986d2ae4870cd579480bec","entity_key":"lx_goals_and_effort_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"5caf9af6dda2e991f0a1cb441dffb7c96057f13b38dea34884b094eeb9b71988","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/e498bee294a56c5f7102941f9bab98100c89d6048c986d2ae4870cd579480bec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_goals_and_effort_03 -> audio/generated/it-IT/lexical/e498bee294a56c5f7102941f9bab98100c89d6048c986d2ae4870cd579480bec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a00db57c-3d34-564a-b6b4-0fc4851fa53a', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_goals_and_effort_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ff4f5a9007c88429572e6fba2862e10ae090a90410e1e626113f7bc355eabeef'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('45fa201e-346b-5ad8-8a5f-1b355756bd6c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a00db57c-3d34-564a-b6b4-0fc4851fa53a', 1), 'ff4f5a9007c88429572e6fba2862e10ae090a90410e1e626113f7bc355eabeef',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/e498bee294a56c5f7102941f9bab98100c89d6048c986d2ae4870cd579480bec.mp3', 1097, '2026-09-14 04:01:39.714339', '5caf9af6dda2e991f0a1cb441dffb7c96057f13b38dea34884b094eeb9b71988', 'validated', '{"audio_key":"e498bee294a56c5f7102941f9bab98100c89d6048c986d2ae4870cd579480bec","entity_key":"wf_goals_and_effort_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"5caf9af6dda2e991f0a1cb441dffb7c96057f13b38dea34884b094eeb9b71988","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/e498bee294a56c5f7102941f9bab98100c89d6048c986d2ae4870cd579480bec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_media_and_sources_04 -> audio/generated/it-IT/lexical/e4a0bdb3cfeec8d336e01772c8ac94112c5dd3ac545e531a6cfb64db39c98ba6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e283c431-56c2-5b6b-9982-979ff15774ec', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_media_and_sources_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e6c8b318b65a509cd07a2385d21ed0b13e84124b8a1466bf84a1dc59fe8d578e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4497e5a1-3f59-517c-ab30-ea2868f1712f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e283c431-56c2-5b6b-9982-979ff15774ec', 1), 'e6c8b318b65a509cd07a2385d21ed0b13e84124b8a1466bf84a1dc59fe8d578e',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/e4a0bdb3cfeec8d336e01772c8ac94112c5dd3ac545e531a6cfb64db39c98ba6.mp3', 1149, '2026-09-14 04:01:40.280300', 'c41254eac4f66ec472ad03ed75965243e232ebdda96b51fedfddbfa98c2b70f1', 'validated', '{"audio_key":"e4a0bdb3cfeec8d336e01772c8ac94112c5dd3ac545e531a6cfb64db39c98ba6","entity_key":"lx_media_and_sources_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c41254eac4f66ec472ad03ed75965243e232ebdda96b51fedfddbfa98c2b70f1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/e4a0bdb3cfeec8d336e01772c8ac94112c5dd3ac545e531a6cfb64db39c98ba6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_media_and_sources_04 -> audio/generated/it-IT/lexical/e4a0bdb3cfeec8d336e01772c8ac94112c5dd3ac545e531a6cfb64db39c98ba6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('da3432ea-0433-51cb-bac5-eee0124f4b17', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_media_and_sources_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e6c8b318b65a509cd07a2385d21ed0b13e84124b8a1466bf84a1dc59fe8d578e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e34cafb6-4503-5fcf-ba5c-33e344a6cd67', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('da3432ea-0433-51cb-bac5-eee0124f4b17', 1), 'e6c8b318b65a509cd07a2385d21ed0b13e84124b8a1466bf84a1dc59fe8d578e',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/e4a0bdb3cfeec8d336e01772c8ac94112c5dd3ac545e531a6cfb64db39c98ba6.mp3', 1149, '2026-09-14 04:01:40.280300', 'c41254eac4f66ec472ad03ed75965243e232ebdda96b51fedfddbfa98c2b70f1', 'validated', '{"audio_key":"e4a0bdb3cfeec8d336e01772c8ac94112c5dd3ac545e531a6cfb64db39c98ba6","entity_key":"wf_media_and_sources_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c41254eac4f66ec472ad03ed75965243e232ebdda96b51fedfddbfa98c2b70f1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/e4a0bdb3cfeec8d336e01772c8ac94112c5dd3ac545e531a6cfb64db39c98ba6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reported_information_06 -> audio/generated/it-IT/lexical/f2fe8d1ddc3d6dce681a2ab31859c3d0ca7626252df4c550111e3edd41d58956.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('592a3c5f-3c8b-5975-a39d-05193d822913', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reported_information_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3006d4a6c631b678ce66f44269316f7eca4869cd6ce51df3e8b1994b294e623a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2da6a7fb-4848-5fd8-9ddc-c0991bff1ea0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('592a3c5f-3c8b-5975-a39d-05193d822913', 1), '3006d4a6c631b678ce66f44269316f7eca4869cd6ce51df3e8b1994b294e623a',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/f2fe8d1ddc3d6dce681a2ab31859c3d0ca7626252df4c550111e3edd41d58956.mp3', 1149, '2026-09-14 04:01:41.165530', 'f581fd30820a9382585394e0fab3423773d28e83a93e3afc539d436fee33e909', 'validated', '{"audio_key":"f2fe8d1ddc3d6dce681a2ab31859c3d0ca7626252df4c550111e3edd41d58956","entity_key":"lx_reported_information_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f581fd30820a9382585394e0fab3423773d28e83a93e3afc539d436fee33e909","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/f2fe8d1ddc3d6dce681a2ab31859c3d0ca7626252df4c550111e3edd41d58956.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reported_information_06 -> audio/generated/it-IT/lexical/f2fe8d1ddc3d6dce681a2ab31859c3d0ca7626252df4c550111e3edd41d58956.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3e2f2588-92da-5607-842d-6680c51d4f21', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reported_information_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3006d4a6c631b678ce66f44269316f7eca4869cd6ce51df3e8b1994b294e623a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('797d79e6-3049-5c9f-a8cc-aa5a784d0de7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3e2f2588-92da-5607-842d-6680c51d4f21', 1), '3006d4a6c631b678ce66f44269316f7eca4869cd6ce51df3e8b1994b294e623a',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/f2fe8d1ddc3d6dce681a2ab31859c3d0ca7626252df4c550111e3edd41d58956.mp3', 1149, '2026-09-14 04:01:41.165530', 'f581fd30820a9382585394e0fab3423773d28e83a93e3afc539d436fee33e909', 'validated', '{"audio_key":"f2fe8d1ddc3d6dce681a2ab31859c3d0ca7626252df4c550111e3edd41d58956","entity_key":"wf_reported_information_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f581fd30820a9382585394e0fab3423773d28e83a93e3afc539d436fee33e909","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/f2fe8d1ddc3d6dce681a2ab31859c3d0ca7626252df4c550111e3edd41d58956.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_media_and_sources_06 -> audio/generated/it-IT/lexical/f749836cbbda8d69241def8ef714fdfa88ca4b55548430d52cb8edfdf8bcec5e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('58c95a79-a3ff-59bd-9288-ee3517779097', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_media_and_sources_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '37113c778137fd44ff4ff9acac8cf67c03739abfd144bbc04bde25152cc35df0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8d5b1444-0560-59bc-9c87-a3ed49582a03', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('58c95a79-a3ff-59bd-9288-ee3517779097', 1), '37113c778137fd44ff4ff9acac8cf67c03739abfd144bbc04bde25152cc35df0',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/f749836cbbda8d69241def8ef714fdfa88ca4b55548430d52cb8edfdf8bcec5e.mp3', 914, '2026-09-14 04:01:41.378141', 'a0a893360fb19a53b78625053b4c3e0f55402628134f688ab165aaa6b19a256b', 'validated', '{"audio_key":"f749836cbbda8d69241def8ef714fdfa88ca4b55548430d52cb8edfdf8bcec5e","entity_key":"lx_media_and_sources_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"a0a893360fb19a53b78625053b4c3e0f55402628134f688ab165aaa6b19a256b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/f749836cbbda8d69241def8ef714fdfa88ca4b55548430d52cb8edfdf8bcec5e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_media_and_sources_06 -> audio/generated/it-IT/lexical/f749836cbbda8d69241def8ef714fdfa88ca4b55548430d52cb8edfdf8bcec5e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('38059c22-760a-52bd-84d3-d49a3db4b788', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_media_and_sources_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '37113c778137fd44ff4ff9acac8cf67c03739abfd144bbc04bde25152cc35df0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('120d84b3-5c17-5c5f-b148-af432c54c00e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('38059c22-760a-52bd-84d3-d49a3db4b788', 1), '37113c778137fd44ff4ff9acac8cf67c03739abfd144bbc04bde25152cc35df0',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/f749836cbbda8d69241def8ef714fdfa88ca4b55548430d52cb8edfdf8bcec5e.mp3', 914, '2026-09-14 04:01:41.378141', 'a0a893360fb19a53b78625053b4c3e0f55402628134f688ab165aaa6b19a256b', 'validated', '{"audio_key":"f749836cbbda8d69241def8ef714fdfa88ca4b55548430d52cb8edfdf8bcec5e","entity_key":"wf_media_and_sources_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"a0a893360fb19a53b78625053b4c3e0f55402628134f688ab165aaa6b19a256b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/f749836cbbda8d69241def8ef714fdfa88ca4b55548430d52cb8edfdf8bcec5e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_changes_over_time_01 -> audio/generated/it-IT/lexical/ffb486070596311673d4e4192c5c322ad08bb838ab43de45d486156360a3d073.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('08c67680-8454-5613-8712-66a0f9d0411e', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_changes_over_time_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '087c0dbc875cd4e44afc5515d29502724776abe246e8502d0c73635d0281d9f3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f94d5925-04d2-5b0d-ac11-dc3c5f7d62e8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('08c67680-8454-5613-8712-66a0f9d0411e', 1), '087c0dbc875cd4e44afc5515d29502724776abe246e8502d0c73635d0281d9f3',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/ffb486070596311673d4e4192c5c322ad08bb838ab43de45d486156360a3d073.mp3', 1071, '2026-09-14 04:01:42.229176', 'a30e6e1404394f0ccb0a4542e49f5015dc2d83c2dc1598b5bd38c9c544f0e82b', 'validated', '{"audio_key":"ffb486070596311673d4e4192c5c322ad08bb838ab43de45d486156360a3d073","entity_key":"lx_changes_over_time_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"a30e6e1404394f0ccb0a4542e49f5015dc2d83c2dc1598b5bd38c9c544f0e82b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/ffb486070596311673d4e4192c5c322ad08bb838ab43de45d486156360a3d073.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_changes_over_time_01 -> audio/generated/it-IT/lexical/ffb486070596311673d4e4192c5c322ad08bb838ab43de45d486156360a3d073.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b184cfbc-60fc-5c32-b88e-251b288bf1ab', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_changes_over_time_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '087c0dbc875cd4e44afc5515d29502724776abe246e8502d0c73635d0281d9f3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('af5d67a5-a243-5b37-8d3b-c169c4afe021', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b184cfbc-60fc-5c32-b88e-251b288bf1ab', 1), '087c0dbc875cd4e44afc5515d29502724776abe246e8502d0c73635d0281d9f3',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/ffb486070596311673d4e4192c5c322ad08bb838ab43de45d486156360a3d073.mp3', 1071, '2026-09-14 04:01:42.229176', 'a30e6e1404394f0ccb0a4542e49f5015dc2d83c2dc1598b5bd38c9c544f0e82b', 'validated', '{"audio_key":"ffb486070596311673d4e4192c5c322ad08bb838ab43de45d486156360a3d073","entity_key":"wf_changes_over_time_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"a30e6e1404394f0ccb0a4542e49f5015dc2d83c2dc1598b5bd38c9c544f0e82b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/ffb486070596311673d4e4192c5c322ad08bb838ab43de45d486156360a3d073.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_opinions_and_reasons_04 -> audio/generated/it-IT/utterances/1438ec456319484d7f736c24e001ed948a082b21e289802b5bf52b5516576416.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c2de1373-10b5-5a0c-be89-f725bf9ba550', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_opinions_and_reasons_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '233e5cb4217c9f940fd715d0fe6ad1bb0b99f5a8a714e3b4cd35d48bac28322e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('600fdc5e-ee8d-5043-a7c1-ea638f1ef196', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c2de1373-10b5-5a0c-be89-f725bf9ba550', 1), '233e5cb4217c9f940fd715d0fe6ad1bb0b99f5a8a714e3b4cd35d48bac28322e',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/1438ec456319484d7f736c24e001ed948a082b21e289802b5bf52b5516576416.mp3', 3709, '2026-09-14 04:01:42.717505', 'a0441f853ba3122ade2ef89cdc39ac2311f4081020a2d6b33bf68f5dad47962f', 'validated', '{"audio_key":"1438ec456319484d7f736c24e001ed948a082b21e289802b5bf52b5516576416","entity_key":"u_opinions_and_reasons_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"a0441f853ba3122ade2ef89cdc39ac2311f4081020a2d6b33bf68f5dad47962f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/1438ec456319484d7f736c24e001ed948a082b21e289802b5bf52b5516576416.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_opinions_and_reasons_02_listen -> audio/generated/it-IT/utterances/1438ec456319484d7f736c24e001ed948a082b21e289802b5bf52b5516576416.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('97975359-75e2-5252-9977-3d05933aece7', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_opinions_and_reasons_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '233e5cb4217c9f940fd715d0fe6ad1bb0b99f5a8a714e3b4cd35d48bac28322e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('843f9580-35bd-5fb4-8715-60b449fe9a74', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('97975359-75e2-5252-9977-3d05933aece7', 1), '233e5cb4217c9f940fd715d0fe6ad1bb0b99f5a8a714e3b4cd35d48bac28322e',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/1438ec456319484d7f736c24e001ed948a082b21e289802b5bf52b5516576416.mp3', 3709, '2026-09-14 04:01:42.717505', 'a0441f853ba3122ade2ef89cdc39ac2311f4081020a2d6b33bf68f5dad47962f', 'validated', '{"audio_key":"1438ec456319484d7f736c24e001ed948a082b21e289802b5bf52b5516576416","entity_key":"e_opinions_and_reasons_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"a0441f853ba3122ade2ef89cdc39ac2311f4081020a2d6b33bf68f5dad47962f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/1438ec456319484d7f736c24e001ed948a082b21e289802b5bf52b5516576416.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_goals_and_effort_03 -> audio/generated/it-IT/utterances/2af5a140e5e1ae441a3edf8ce35ba8820aa0b8e3e41ae025524b9bd820d8f15a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f32f2c8a-43f9-5b5c-abeb-4f0de86abf6e', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_goals_and_effort_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b458605a51948d84dc79976093d5181c8417e5dd9453d7e2118d3cf2ce41b8dd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1a9d9ef0-daa1-5aa0-96c5-560af9db7219', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f32f2c8a-43f9-5b5c-abeb-4f0de86abf6e', 1), 'b458605a51948d84dc79976093d5181c8417e5dd9453d7e2118d3cf2ce41b8dd',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/2af5a140e5e1ae441a3edf8ce35ba8820aa0b8e3e41ae025524b9bd820d8f15a.mp3', 2873, '2026-09-14 04:01:43.421620', 'ea7f7eeafdcb3d2287735c2bf6b3fb958768a18ad1ff7eec8bda107df7709dac', 'validated', '{"audio_key":"2af5a140e5e1ae441a3edf8ce35ba8820aa0b8e3e41ae025524b9bd820d8f15a","entity_key":"u_goals_and_effort_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ea7f7eeafdcb3d2287735c2bf6b3fb958768a18ad1ff7eec8bda107df7709dac","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/2af5a140e5e1ae441a3edf8ce35ba8820aa0b8e3e41ae025524b9bd820d8f15a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_goals_and_effort_01 -> audio/generated/it-IT/utterances/32f3c141b5f969fadc2ceb3fbb79dbecc8d3a0984797737771fa3b8ba9e5fe93.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6f73163e-7de5-5558-a0dd-0b14f3187ea9', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_goals_and_effort_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8ab5a8e37743bab50fd879056549f2567439b10e663fcb3fc5694557ff35d6c9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dae360c5-1519-5bbf-a9af-b15958e704bc', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6f73163e-7de5-5558-a0dd-0b14f3187ea9', 1), '8ab5a8e37743bab50fd879056549f2567439b10e663fcb3fc5694557ff35d6c9',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/32f3c141b5f969fadc2ceb3fbb79dbecc8d3a0984797737771fa3b8ba9e5fe93.mp3', 2638, '2026-09-14 04:01:43.846452', 'eacffd954a4f46c14df1aff2d673f476c07cc7f0267a8d6306372addbdcd9dcb', 'validated', '{"audio_key":"32f3c141b5f969fadc2ceb3fbb79dbecc8d3a0984797737771fa3b8ba9e5fe93","entity_key":"u_goals_and_effort_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"eacffd954a4f46c14df1aff2d673f476c07cc7f0267a8d6306372addbdcd9dcb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/32f3c141b5f969fadc2ceb3fbb79dbecc8d3a0984797737771fa3b8ba9e5fe93.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_problems_and_solutions_01 -> audio/generated/it-IT/utterances/3303072e7d056b42e807d1cdf6806809948a25d8a712550310151a655eb30629.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6d7ae227-a9c7-52b7-9736-46f7334cf77f', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_problems_and_solutions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1820c0405e2c38450560a19e7659cd8606a3146c6e3e76c7bb6814fd8e8f9a0d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9205d71c-b4b1-59a5-b00a-38bbdea00036', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6d7ae227-a9c7-52b7-9736-46f7334cf77f', 1), '1820c0405e2c38450560a19e7659cd8606a3146c6e3e76c7bb6814fd8e8f9a0d',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/3303072e7d056b42e807d1cdf6806809948a25d8a712550310151a655eb30629.mp3', 2586, '2026-09-14 04:01:44.600735', '68e5b9617c494e960af6f1b14019f3137ed6613ea91fcd39a7324f7fa603bcc6', 'validated', '{"audio_key":"3303072e7d056b42e807d1cdf6806809948a25d8a712550310151a655eb30629","entity_key":"u_problems_and_solutions_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"68e5b9617c494e960af6f1b14019f3137ed6613ea91fcd39a7324f7fa603bcc6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/3303072e7d056b42e807d1cdf6806809948a25d8a712550310151a655eb30629.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_polite_nuance_03 -> audio/generated/it-IT/utterances/3967c6e140ee9c879b334e0243bda1b7e7639ac689722019b319d9b66bda8a1f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a260f2ca-8cb0-52b5-88a9-3b66a5c38c64', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_polite_nuance_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8615d45749bec7aef52057d41b35d9cbe9c2475582632f7419683f756cdfc4cc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eb9dcebc-3f40-5f56-9e2a-0de29366bf7e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a260f2ca-8cb0-52b5-88a9-3b66a5c38c64', 1), '8615d45749bec7aef52057d41b35d9cbe9c2475582632f7419683f756cdfc4cc',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/3967c6e140ee9c879b334e0243bda1b7e7639ac689722019b319d9b66bda8a1f.mp3', 2533, '2026-09-14 04:01:45.057791', '1ce1b0989a779841b85975f6803c38bdab1e1b9304a8afc3dbb76b957446372e', 'validated', '{"audio_key":"3967c6e140ee9c879b334e0243bda1b7e7639ac689722019b319d9b66bda8a1f","entity_key":"u_polite_nuance_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1ce1b0989a779841b85975f6803c38bdab1e1b9304a8afc3dbb76b957446372e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/3967c6e140ee9c879b334e0243bda1b7e7639ac689722019b319d9b66bda8a1f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_real_conditions_03 -> audio/generated/it-IT/utterances/3a71badfe31c5360d6632a33cdd26482aef2203d5c34b3982b53b52a0a81e831.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('adb711ba-cc5c-5648-81e5-99a5073ab492', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_real_conditions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bc1e4bbb169dac0e1457c9e3f3444bdfded50967771481f505c97c86771554db'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('766b1cb5-f194-5413-9f2a-2b05618bb1dc', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('adb711ba-cc5c-5648-81e5-99a5073ab492', 1), 'bc1e4bbb169dac0e1457c9e3f3444bdfded50967771481f505c97c86771554db',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/3a71badfe31c5360d6632a33cdd26482aef2203d5c34b3982b53b52a0a81e831.mp3', 3056, '2026-09-14 04:01:45.798294', '4f4c42c70cad7f5af5d8f189af4a18f4bc763e6e37d6ef8b18acf7efedeb1822', 'validated', '{"audio_key":"3a71badfe31c5360d6632a33cdd26482aef2203d5c34b3982b53b52a0a81e831","entity_key":"u_real_conditions_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"4f4c42c70cad7f5af5d8f189af4a18f4bc763e6e37d6ef8b18acf7efedeb1822","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/3a71badfe31c5360d6632a33cdd26482aef2203d5c34b3982b53b52a0a81e831.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_polite_nuance_04 -> audio/generated/it-IT/utterances/44194f3688af7bb074be6859b40c0904805356a5701d3ff93c034106cffe4663.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('451a1e2a-ee21-5d74-905d-9ee23c23833d', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_polite_nuance_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '71255890a77eeea464687095153aec8f1e71156533daed3406abad03f88663d6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6be8fd03-b1da-52a4-8ce2-ca995b4360bd', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('451a1e2a-ee21-5d74-905d-9ee23c23833d', 1), '71255890a77eeea464687095153aec8f1e71156533daed3406abad03f88663d6',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/44194f3688af7bb074be6859b40c0904805356a5701d3ff93c034106cffe4663.mp3', 3108, '2026-09-14 04:01:46.324573', 'f1be6500e0b96fc054831537b2b2a5b70ea6bfb664a2404a70e4c2e94bb35fa5', 'validated', '{"audio_key":"44194f3688af7bb074be6859b40c0904805356a5701d3ff93c034106cffe4663","entity_key":"u_polite_nuance_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f1be6500e0b96fc054831537b2b2a5b70ea6bfb664a2404a70e4c2e94bb35fa5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/44194f3688af7bb074be6859b40c0904805356a5701d3ff93c034106cffe4663.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_polite_nuance_02_listen -> audio/generated/it-IT/utterances/44194f3688af7bb074be6859b40c0904805356a5701d3ff93c034106cffe4663.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7fe393a2-851c-5fad-a2db-0b34080bf2c1', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_polite_nuance_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '71255890a77eeea464687095153aec8f1e71156533daed3406abad03f88663d6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('902867d2-976d-5c99-98b1-7d2d2356392d', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7fe393a2-851c-5fad-a2db-0b34080bf2c1', 1), '71255890a77eeea464687095153aec8f1e71156533daed3406abad03f88663d6',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/44194f3688af7bb074be6859b40c0904805356a5701d3ff93c034106cffe4663.mp3', 3108, '2026-09-14 04:01:46.324573', 'f1be6500e0b96fc054831537b2b2a5b70ea6bfb664a2404a70e4c2e94bb35fa5', 'validated', '{"audio_key":"44194f3688af7bb074be6859b40c0904805356a5701d3ff93c034106cffe4663","entity_key":"e_polite_nuance_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f1be6500e0b96fc054831537b2b2a5b70ea6bfb664a2404a70e4c2e94bb35fa5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/44194f3688af7bb074be6859b40c0904805356a5701d3ff93c034106cffe4663.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_opinions_and_reasons_01 -> audio/generated/it-IT/utterances/482225bc4000f6b53d8bd16aa7a99dbecbaa6bc2b73f7f25e132da868250da45.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9fe29d72-a77a-5cf1-b464-ef05ede7e6fd', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_opinions_and_reasons_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e6b4af42b6548821c931f598fe10be8bb83ffcec7dac49989949ad0ea10e15dd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a77be2b8-59fc-56a1-9b2f-474a773ed67f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9fe29d72-a77a-5cf1-b464-ef05ede7e6fd', 1), 'e6b4af42b6548821c931f598fe10be8bb83ffcec7dac49989949ad0ea10e15dd',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/482225bc4000f6b53d8bd16aa7a99dbecbaa6bc2b73f7f25e132da868250da45.mp3', 2507, '2026-09-14 04:01:46.910945', 'd6d1976ea8c8fe67b8d43853ed1173163a1f63881c2f9921cf7f906670194e1e', 'validated', '{"audio_key":"482225bc4000f6b53d8bd16aa7a99dbecbaa6bc2b73f7f25e132da868250da45","entity_key":"u_opinions_and_reasons_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d6d1976ea8c8fe67b8d43853ed1173163a1f63881c2f9921cf7f906670194e1e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/482225bc4000f6b53d8bd16aa7a99dbecbaa6bc2b73f7f25e132da868250da45.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_stories_and_background_01 -> audio/generated/it-IT/utterances/52305006ae8c185397fa95310770c60708c197d2cc1fb23ba92601d2874b7fa1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5a470e31-c896-5d67-b18f-38be661b1fe8', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_stories_and_background_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a6048e6e26136f42649316612e43276fcf8ba16834d4d8c221f27dff788afda7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6e4ac08f-44a0-5011-840d-5468e4e2b5b5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5a470e31-c896-5d67-b18f-38be661b1fe8', 1), 'a6048e6e26136f42649316612e43276fcf8ba16834d4d8c221f27dff788afda7',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/52305006ae8c185397fa95310770c60708c197d2cc1fb23ba92601d2874b7fa1.mp3', 4179, '2026-09-14 04:01:47.739433', '093943997d91a947ca1bdb16aeb5947bd97308e930f9e9d9815aabbd3f4dff32', 'validated', '{"audio_key":"52305006ae8c185397fa95310770c60708c197d2cc1fb23ba92601d2874b7fa1","entity_key":"u_stories_and_background_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"093943997d91a947ca1bdb16aeb5947bd97308e930f9e9d9815aabbd3f4dff32","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/52305006ae8c185397fa95310770c60708c197d2cc1fb23ba92601d2874b7fa1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_reported_information_02 -> audio/generated/it-IT/utterances/5afd42f4a1b9cc00418bdf318b225e570f0ec8cf11fdef77bd77677641548823.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9942e3f9-9a58-5a1b-b810-59688a9610bd', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_reported_information_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '67d1be5035618835596b1c02ffa5a2a378a906c841b69565aee421e4a27480d4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5fe623b4-d989-5cec-b6b9-ab66f593c695', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9942e3f9-9a58-5a1b-b810-59688a9610bd', 1), '67d1be5035618835596b1c02ffa5a2a378a906c841b69565aee421e4a27480d4',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/5afd42f4a1b9cc00418bdf318b225e570f0ec8cf11fdef77bd77677641548823.mp3', 3108, '2026-09-14 04:01:48.153080', '8a922b78a26793ece914fbf21a1b855dbed3bca1e51f0a157355ef07076b2f55', 'validated', '{"audio_key":"5afd42f4a1b9cc00418bdf318b225e570f0ec8cf11fdef77bd77677641548823","entity_key":"u_reported_information_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8a922b78a26793ece914fbf21a1b855dbed3bca1e51f0a157355ef07076b2f55","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/5afd42f4a1b9cc00418bdf318b225e570f0ec8cf11fdef77bd77677641548823.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_reported_information_01_listen -> audio/generated/it-IT/utterances/5afd42f4a1b9cc00418bdf318b225e570f0ec8cf11fdef77bd77677641548823.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('6791b204-70b6-550f-826d-6c544fe19104', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_reported_information_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '67d1be5035618835596b1c02ffa5a2a378a906c841b69565aee421e4a27480d4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eccf9746-df17-5c8e-aeef-e5bd06acf546', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('6791b204-70b6-550f-826d-6c544fe19104', 1), '67d1be5035618835596b1c02ffa5a2a378a906c841b69565aee421e4a27480d4',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/5afd42f4a1b9cc00418bdf318b225e570f0ec8cf11fdef77bd77677641548823.mp3', 3108, '2026-09-14 04:01:48.153080', '8a922b78a26793ece914fbf21a1b855dbed3bca1e51f0a157355ef07076b2f55', 'validated', '{"audio_key":"5afd42f4a1b9cc00418bdf318b225e570f0ec8cf11fdef77bd77677641548823","entity_key":"e_reported_information_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8a922b78a26793ece914fbf21a1b855dbed3bca1e51f0a157355ef07076b2f55","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/5afd42f4a1b9cc00418bdf318b225e570f0ec8cf11fdef77bd77677641548823.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_media_and_sources_02 -> audio/generated/it-IT/utterances/5c81d407f1708f94616b472da94e64c90cf49aa36310a0b58e8a143575c44577.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d43f5bc7-228c-56c9-88d2-c18258a535c7', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_media_and_sources_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ff42ab4e41e4527ad090a0a648dfe121c8a7d4062b8d6e6ff8a1a54ce45bacac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('384cb559-0f6e-54ed-baaa-1965288e50a7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d43f5bc7-228c-56c9-88d2-c18258a535c7', 1), 'ff42ab4e41e4527ad090a0a648dfe121c8a7d4062b8d6e6ff8a1a54ce45bacac',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/5c81d407f1708f94616b472da94e64c90cf49aa36310a0b58e8a143575c44577.mp3', 2351, '2026-09-14 04:01:48.827301', '14965319a46111cc05d263e0fb6d4021136645313f76c57f3a21b43b3b656f60', 'validated', '{"audio_key":"5c81d407f1708f94616b472da94e64c90cf49aa36310a0b58e8a143575c44577","entity_key":"u_media_and_sources_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"14965319a46111cc05d263e0fb6d4021136645313f76c57f3a21b43b3b656f60","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/5c81d407f1708f94616b472da94e64c90cf49aa36310a0b58e8a143575c44577.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_media_and_sources_01_listen -> audio/generated/it-IT/utterances/5c81d407f1708f94616b472da94e64c90cf49aa36310a0b58e8a143575c44577.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('9d2e8544-3601-5300-b62b-0302af4f88dd', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_media_and_sources_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ff42ab4e41e4527ad090a0a648dfe121c8a7d4062b8d6e6ff8a1a54ce45bacac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('12c063b9-5560-5465-a254-a34ce344e1a5', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('9d2e8544-3601-5300-b62b-0302af4f88dd', 1), 'ff42ab4e41e4527ad090a0a648dfe121c8a7d4062b8d6e6ff8a1a54ce45bacac',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/5c81d407f1708f94616b472da94e64c90cf49aa36310a0b58e8a143575c44577.mp3', 2351, '2026-09-14 04:01:48.827301', '14965319a46111cc05d263e0fb6d4021136645313f76c57f3a21b43b3b656f60', 'validated', '{"audio_key":"5c81d407f1708f94616b472da94e64c90cf49aa36310a0b58e8a143575c44577","entity_key":"e_media_and_sources_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"14965319a46111cc05d263e0fb6d4021136645313f76c57f3a21b43b3b656f60","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/5c81d407f1708f94616b472da94e64c90cf49aa36310a0b58e8a143575c44577.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_reported_information_04 -> audio/generated/it-IT/utterances/699d8c500e42f8e776789283a3a9894407cae67a028f1b845dcf8408116f44ae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3e90c560-de6d-5671-b668-985356d3278c', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_reported_information_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a797e667f923afcb9f6b6f4af3ce2b734d0a72a9369846ed63149f0547540594'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('230fc39c-364a-595a-8bb8-d4fdfbd4911a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3e90c560-de6d-5671-b668-985356d3278c', 1), 'a797e667f923afcb9f6b6f4af3ce2b734d0a72a9369846ed63149f0547540594',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/699d8c500e42f8e776789283a3a9894407cae67a028f1b845dcf8408116f44ae.mp3', 3657, '2026-09-14 04:01:49.430810', '787c5cd9de18fd606cefcdbdf3051d9ee5af61173238840db770ec25bc1cc284', 'validated', '{"audio_key":"699d8c500e42f8e776789283a3a9894407cae67a028f1b845dcf8408116f44ae","entity_key":"u_reported_information_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"787c5cd9de18fd606cefcdbdf3051d9ee5af61173238840db770ec25bc1cc284","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/699d8c500e42f8e776789283a3a9894407cae67a028f1b845dcf8408116f44ae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_reported_information_02_listen -> audio/generated/it-IT/utterances/699d8c500e42f8e776789283a3a9894407cae67a028f1b845dcf8408116f44ae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('bc9f856b-c2b0-5eaf-b3e5-f4f5c18f2244', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_reported_information_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a797e667f923afcb9f6b6f4af3ce2b734d0a72a9369846ed63149f0547540594'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c1366f55-039c-5a87-8357-fb107d493094', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('bc9f856b-c2b0-5eaf-b3e5-f4f5c18f2244', 1), 'a797e667f923afcb9f6b6f4af3ce2b734d0a72a9369846ed63149f0547540594',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/699d8c500e42f8e776789283a3a9894407cae67a028f1b845dcf8408116f44ae.mp3', 3657, '2026-09-14 04:01:49.430810', '787c5cd9de18fd606cefcdbdf3051d9ee5af61173238840db770ec25bc1cc284', 'validated', '{"audio_key":"699d8c500e42f8e776789283a3a9894407cae67a028f1b845dcf8408116f44ae","entity_key":"e_reported_information_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"787c5cd9de18fd606cefcdbdf3051d9ee5af61173238840db770ec25bc1cc284","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/699d8c500e42f8e776789283a3a9894407cae67a028f1b845dcf8408116f44ae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_opinions_and_reasons_03 -> audio/generated/it-IT/utterances/6d1951a8b79d66877e6956df128547c7ac37446ff6006faa65cfede994b28250.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('72624585-13b1-598f-993d-1380f502539f', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_opinions_and_reasons_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '69004791b7e3252e62ff7c3620b733b72a5224cf2661847c76a37f0b4d119cb3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('60c69c7c-ed86-5f10-827c-0c119a7cfd1e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('72624585-13b1-598f-993d-1380f502539f', 1), '69004791b7e3252e62ff7c3620b733b72a5224cf2661847c76a37f0b4d119cb3',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/6d1951a8b79d66877e6956df128547c7ac37446ff6006faa65cfede994b28250.mp3', 3186, '2026-09-14 04:01:50.121476', 'c8dab22db34614d53fa0d50c7ea5f93e8a48c1367cd3e03eb925a0741a2dd0d8', 'validated', '{"audio_key":"6d1951a8b79d66877e6956df128547c7ac37446ff6006faa65cfede994b28250","entity_key":"u_opinions_and_reasons_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c8dab22db34614d53fa0d50c7ea5f93e8a48c1367cd3e03eb925a0741a2dd0d8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/6d1951a8b79d66877e6956df128547c7ac37446ff6006faa65cfede994b28250.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_problems_and_solutions_03 -> audio/generated/it-IT/utterances/6ded1fc85b0f30feb0cf8f89c4e88b01343b2095fdb3292f8e54292cf2fda493.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('080ddb74-3a11-5257-9e27-dbc71eba30e9', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_problems_and_solutions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1e09bcd8432e867a1a305a09e45f2893114ada0b32664180a943da22271954bd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a7beedd2-6576-5ee7-a830-79c80f2d89c7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('080ddb74-3a11-5257-9e27-dbc71eba30e9', 1), '1e09bcd8432e867a1a305a09e45f2893114ada0b32664180a943da22271954bd',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/6ded1fc85b0f30feb0cf8f89c4e88b01343b2095fdb3292f8e54292cf2fda493.mp3', 2351, '2026-09-14 04:01:50.586576', '9e14e104007e8eacfc7b3693f1f4465e405fb366179d8f465e177c7b9dbd29a3', 'validated', '{"audio_key":"6ded1fc85b0f30feb0cf8f89c4e88b01343b2095fdb3292f8e54292cf2fda493","entity_key":"u_problems_and_solutions_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"9e14e104007e8eacfc7b3693f1f4465e405fb366179d8f465e177c7b9dbd29a3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/6ded1fc85b0f30feb0cf8f89c4e88b01343b2095fdb3292f8e54292cf2fda493.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_changes_over_time_04 -> audio/generated/it-IT/utterances/6fbff8ec3ae5db15cfc9e38a09c53403f137e9eac370350c368c450e3f14fce0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3faf683e-1609-587b-9d64-f09d98d38e89', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_changes_over_time_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b940dc88098998da3236cce75100ff9c0ea81e112470833646a29186196442e9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('178baa34-5d4a-5f60-b5c5-281c2687dc5a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3faf683e-1609-587b-9d64-f09d98d38e89', 1), 'b940dc88098998da3236cce75100ff9c0ea81e112470833646a29186196442e9',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/6fbff8ec3ae5db15cfc9e38a09c53403f137e9eac370350c368c450e3f14fce0.mp3', 2586, '2026-09-14 04:01:51.291934', 'a0fb1b67a1e462014ddd101e822571c5c33ba39ca2ab63e6d0a0e296403b95ed', 'validated', '{"audio_key":"6fbff8ec3ae5db15cfc9e38a09c53403f137e9eac370350c368c450e3f14fce0","entity_key":"u_changes_over_time_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"a0fb1b67a1e462014ddd101e822571c5c33ba39ca2ab63e6d0a0e296403b95ed","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/6fbff8ec3ae5db15cfc9e38a09c53403f137e9eac370350c368c450e3f14fce0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_changes_over_time_02_listen -> audio/generated/it-IT/utterances/6fbff8ec3ae5db15cfc9e38a09c53403f137e9eac370350c368c450e3f14fce0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e5dd71d6-2b19-5a7b-8a46-2101892210d6', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_changes_over_time_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b940dc88098998da3236cce75100ff9c0ea81e112470833646a29186196442e9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ead75e69-0186-5622-894d-c4b3da1ed252', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e5dd71d6-2b19-5a7b-8a46-2101892210d6', 1), 'b940dc88098998da3236cce75100ff9c0ea81e112470833646a29186196442e9',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/6fbff8ec3ae5db15cfc9e38a09c53403f137e9eac370350c368c450e3f14fce0.mp3', 2586, '2026-09-14 04:01:51.291934', 'a0fb1b67a1e462014ddd101e822571c5c33ba39ca2ab63e6d0a0e296403b95ed', 'validated', '{"audio_key":"6fbff8ec3ae5db15cfc9e38a09c53403f137e9eac370350c368c450e3f14fce0","entity_key":"e_changes_over_time_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"a0fb1b67a1e462014ddd101e822571c5c33ba39ca2ab63e6d0a0e296403b95ed","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/6fbff8ec3ae5db15cfc9e38a09c53403f137e9eac370350c368c450e3f14fce0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_problems_and_solutions_02 -> audio/generated/it-IT/utterances/6fc0c192879cf1a23d634229b7d8d12669baca329ea16b568b98480d08aa1af1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('11069179-21ca-5e7b-8c99-e7e7c1762300', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_problems_and_solutions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd42b128e44533a3cfed663c996a53180345cc68d4737c327999814bb22505e83'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3598e43d-526c-5168-a314-b2a04ffa6b24', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('11069179-21ca-5e7b-8c99-e7e7c1762300', 1), 'd42b128e44533a3cfed663c996a53180345cc68d4737c327999814bb22505e83',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/6fc0c192879cf1a23d634229b7d8d12669baca329ea16b568b98480d08aa1af1.mp3', 2507, '2026-09-14 04:01:51.791713', 'b98329b879e3fb9457efc373a52420839f56b6ece13f37e2a580295ce5f0cd98', 'validated', '{"audio_key":"6fc0c192879cf1a23d634229b7d8d12669baca329ea16b568b98480d08aa1af1","entity_key":"u_problems_and_solutions_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"b98329b879e3fb9457efc373a52420839f56b6ece13f37e2a580295ce5f0cd98","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/6fc0c192879cf1a23d634229b7d8d12669baca329ea16b568b98480d08aa1af1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_problems_and_solutions_01_listen -> audio/generated/it-IT/utterances/6fc0c192879cf1a23d634229b7d8d12669baca329ea16b568b98480d08aa1af1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('4b0a67cf-4efd-5cb7-9552-7d4ea81824a7', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_problems_and_solutions_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd42b128e44533a3cfed663c996a53180345cc68d4737c327999814bb22505e83'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c14d29f3-1882-5159-b0f2-e1c309de7460', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('4b0a67cf-4efd-5cb7-9552-7d4ea81824a7', 1), 'd42b128e44533a3cfed663c996a53180345cc68d4737c327999814bb22505e83',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/6fc0c192879cf1a23d634229b7d8d12669baca329ea16b568b98480d08aa1af1.mp3', 2507, '2026-09-14 04:01:51.791713', 'b98329b879e3fb9457efc373a52420839f56b6ece13f37e2a580295ce5f0cd98', 'validated', '{"audio_key":"6fc0c192879cf1a23d634229b7d8d12669baca329ea16b568b98480d08aa1af1","entity_key":"e_problems_and_solutions_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"b98329b879e3fb9457efc373a52420839f56b6ece13f37e2a580295ce5f0cd98","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/6fc0c192879cf1a23d634229b7d8d12669baca329ea16b568b98480d08aa1af1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_goals_and_effort_04 -> audio/generated/it-IT/utterances/744574e64ba45acac3c782b6a52224f8be8b8f5e66ac992f10e9259b07a05f3d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('672985eb-8e14-5aba-b9d4-c4e2860c69b6', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_goals_and_effort_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ca509d6ad16d8b04c6e3e4de46c0125ebfafbab64f7f339655152a8f309432fc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5ac3d130-491a-526c-8044-9bb094c63d71', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('672985eb-8e14-5aba-b9d4-c4e2860c69b6', 1), 'ca509d6ad16d8b04c6e3e4de46c0125ebfafbab64f7f339655152a8f309432fc',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/744574e64ba45acac3c782b6a52224f8be8b8f5e66ac992f10e9259b07a05f3d.mp3', 3056, '2026-09-14 04:01:52.867444', '0186d1f112dfe7fc23a2f99da22e8aeda88c554ed8f8bf857875a0ecf92e39f8', 'validated', '{"audio_key":"744574e64ba45acac3c782b6a52224f8be8b8f5e66ac992f10e9259b07a05f3d","entity_key":"u_goals_and_effort_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"0186d1f112dfe7fc23a2f99da22e8aeda88c554ed8f8bf857875a0ecf92e39f8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/744574e64ba45acac3c782b6a52224f8be8b8f5e66ac992f10e9259b07a05f3d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_goals_and_effort_02_listen -> audio/generated/it-IT/utterances/744574e64ba45acac3c782b6a52224f8be8b8f5e66ac992f10e9259b07a05f3d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('0dbcef41-ed73-5acd-a0bb-ef21525920fe', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_goals_and_effort_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ca509d6ad16d8b04c6e3e4de46c0125ebfafbab64f7f339655152a8f309432fc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('24ba84f5-42bc-548a-84ad-951979d49f49', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('0dbcef41-ed73-5acd-a0bb-ef21525920fe', 1), 'ca509d6ad16d8b04c6e3e4de46c0125ebfafbab64f7f339655152a8f309432fc',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/744574e64ba45acac3c782b6a52224f8be8b8f5e66ac992f10e9259b07a05f3d.mp3', 3056, '2026-09-14 04:01:52.867444', '0186d1f112dfe7fc23a2f99da22e8aeda88c554ed8f8bf857875a0ecf92e39f8', 'validated', '{"audio_key":"744574e64ba45acac3c782b6a52224f8be8b8f5e66ac992f10e9259b07a05f3d","entity_key":"e_goals_and_effort_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"0186d1f112dfe7fc23a2f99da22e8aeda88c554ed8f8bf857875a0ecf92e39f8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/744574e64ba45acac3c782b6a52224f8be8b8f5e66ac992f10e9259b07a05f3d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_b1_city_project_capstone_03 -> audio/generated/it-IT/utterances/78c35235db09bb48a47bfb4cb542c7a791afcd7f2de77171bcaf543e0fbf2be4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('15a398d6-c7b5-5ff2-a523-66fa22e6cb9f', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_b1_city_project_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ddd3aa30d262c3b691ec2081593fc0a67e815a108618ce5b68264cc69f25b18f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('48c85ecf-a324-55cb-a007-e2698e1fe280', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('15a398d6-c7b5-5ff2-a523-66fa22e6cb9f', 1), 'ddd3aa30d262c3b691ec2081593fc0a67e815a108618ce5b68264cc69f25b18f',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/78c35235db09bb48a47bfb4cb542c7a791afcd7f2de77171bcaf543e0fbf2be4.mp3', 3604, '2026-09-14 04:01:53.023914', '343fa35c21d7109c516c83d059d39788a99acc07674b1d6d06118d43b1dff93f', 'validated', '{"audio_key":"78c35235db09bb48a47bfb4cb542c7a791afcd7f2de77171bcaf543e0fbf2be4","entity_key":"u_b1_city_project_capstone_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"343fa35c21d7109c516c83d059d39788a99acc07674b1d6d06118d43b1dff93f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/78c35235db09bb48a47bfb4cb542c7a791afcd7f2de77171bcaf543e0fbf2be4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_b1_city_project_capstone_02 -> audio/generated/it-IT/utterances/7e10c47716a5d5e3a84c719ca5761c320faad813f9641fd87444675e53f21d14.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('878b780e-fe6d-559a-b506-086e9a55ffd1', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_b1_city_project_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e1f6e29e743f4bce738ba6e5052b7f41228ff25fb4772dc65fd4d4cf41d83975'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('310e7191-a3ab-5f7a-a716-0a7f6d86c40e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('878b780e-fe6d-559a-b506-086e9a55ffd1', 1), 'e1f6e29e743f4bce738ba6e5052b7f41228ff25fb4772dc65fd4d4cf41d83975',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/7e10c47716a5d5e3a84c719ca5761c320faad813f9641fd87444675e53f21d14.mp3', 3004, '2026-09-14 04:01:54.043012', 'f31ffcedb6895e1bff605f186b541965998ebb498cc8c355a9e7a4717f1b15a8', 'validated', '{"audio_key":"7e10c47716a5d5e3a84c719ca5761c320faad813f9641fd87444675e53f21d14","entity_key":"u_b1_city_project_capstone_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f31ffcedb6895e1bff605f186b541965998ebb498cc8c355a9e7a4717f1b15a8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/7e10c47716a5d5e3a84c719ca5761c320faad813f9641fd87444675e53f21d14.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_b1_city_project_capstone_01_listen -> audio/generated/it-IT/utterances/7e10c47716a5d5e3a84c719ca5761c320faad813f9641fd87444675e53f21d14.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c49d5842-ec43-5e4e-9372-d6dfe59a497f', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_b1_city_project_capstone_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e1f6e29e743f4bce738ba6e5052b7f41228ff25fb4772dc65fd4d4cf41d83975'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('816a4029-83fe-54bd-89a1-0132f7d20ddb', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c49d5842-ec43-5e4e-9372-d6dfe59a497f', 1), 'e1f6e29e743f4bce738ba6e5052b7f41228ff25fb4772dc65fd4d4cf41d83975',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/7e10c47716a5d5e3a84c719ca5761c320faad813f9641fd87444675e53f21d14.mp3', 3004, '2026-09-14 04:01:54.043012', 'f31ffcedb6895e1bff605f186b541965998ebb498cc8c355a9e7a4717f1b15a8', 'validated', '{"audio_key":"7e10c47716a5d5e3a84c719ca5761c320faad813f9641fd87444675e53f21d14","entity_key":"e_b1_city_project_capstone_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f31ffcedb6895e1bff605f186b541965998ebb498cc8c355a9e7a4717f1b15a8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/7e10c47716a5d5e3a84c719ca5761c320faad813f9641fd87444675e53f21d14.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_media_and_sources_04 -> audio/generated/it-IT/utterances/81e1d477801808280b8166e9d9bccde6f60698907cdd06015914e8bcb5184ebe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5d722ebb-3809-51f2-b21e-7633a17ef46a', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_media_and_sources_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c24da1d19d2ca3e5a707899c081680e190dc3520d86abf061d1aacd52a8f7579'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0d24a539-3964-572a-89dd-9aaeba5ae49c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5d722ebb-3809-51f2-b21e-7633a17ef46a', 1), 'c24da1d19d2ca3e5a707899c081680e190dc3520d86abf061d1aacd52a8f7579',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/81e1d477801808280b8166e9d9bccde6f60698907cdd06015914e8bcb5184ebe.mp3', 2272, '2026-09-14 04:01:54.114326', '81e404ecc53dac3291891c933d7d79dea3bbaeb3e4072ec9ebb740c9c4596911', 'validated', '{"audio_key":"81e1d477801808280b8166e9d9bccde6f60698907cdd06015914e8bcb5184ebe","entity_key":"u_media_and_sources_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"81e404ecc53dac3291891c933d7d79dea3bbaeb3e4072ec9ebb740c9c4596911","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/81e1d477801808280b8166e9d9bccde6f60698907cdd06015914e8bcb5184ebe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_media_and_sources_02_listen -> audio/generated/it-IT/utterances/81e1d477801808280b8166e9d9bccde6f60698907cdd06015914e8bcb5184ebe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('3a640565-a85f-56eb-b994-a1437cf8c0cf', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_media_and_sources_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c24da1d19d2ca3e5a707899c081680e190dc3520d86abf061d1aacd52a8f7579'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9fb7b636-a552-54a6-92ad-6771bcc76fb5', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('3a640565-a85f-56eb-b994-a1437cf8c0cf', 1), 'c24da1d19d2ca3e5a707899c081680e190dc3520d86abf061d1aacd52a8f7579',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/81e1d477801808280b8166e9d9bccde6f60698907cdd06015914e8bcb5184ebe.mp3', 2272, '2026-09-14 04:01:54.114326', '81e404ecc53dac3291891c933d7d79dea3bbaeb3e4072ec9ebb740c9c4596911', 'validated', '{"audio_key":"81e1d477801808280b8166e9d9bccde6f60698907cdd06015914e8bcb5184ebe","entity_key":"e_media_and_sources_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"81e404ecc53dac3291891c933d7d79dea3bbaeb3e4072ec9ebb740c9c4596911","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/81e1d477801808280b8166e9d9bccde6f60698907cdd06015914e8bcb5184ebe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_polite_nuance_01 -> audio/generated/it-IT/utterances/938241b9f270da194980c7ecbdc1ce1936b427ca7bfddf854d62143d82def725.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e7042c29-1d3b-560e-8dbe-8d4e62b0a5fe', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_polite_nuance_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '881aacee72e90a2232a355572068300184d578577ee489c13bab0a0cbbf836fb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9cf8b420-cb14-5d4d-91c3-848b0de6e2eb', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e7042c29-1d3b-560e-8dbe-8d4e62b0a5fe', 1), '881aacee72e90a2232a355572068300184d578577ee489c13bab0a0cbbf836fb',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/938241b9f270da194980c7ecbdc1ce1936b427ca7bfddf854d62143d82def725.mp3', 2324, '2026-09-14 04:01:55.140246', '824b3b9c4f45f9e263c6ca3be5326500896089251a7fc69139ccbee108d2b83c', 'validated', '{"audio_key":"938241b9f270da194980c7ecbdc1ce1936b427ca7bfddf854d62143d82def725","entity_key":"u_polite_nuance_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"824b3b9c4f45f9e263c6ca3be5326500896089251a7fc69139ccbee108d2b83c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/938241b9f270da194980c7ecbdc1ce1936b427ca7bfddf854d62143d82def725.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_goals_and_effort_02 -> audio/generated/it-IT/utterances/99cb4b79d6e79548f9f969a9b3cf80c2e4a625af1ade9cfe3067b43b71d6af87.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bce763ed-42fb-5437-ace0-a7377bdad3ef', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_goals_and_effort_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a894993e02cb6a74f5e46f8945fe81e7373da8f9e8bce0cd98590af46fce556d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('13cb6bb4-f80b-5b85-9360-eec5367144fe', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bce763ed-42fb-5437-ace0-a7377bdad3ef', 1), 'a894993e02cb6a74f5e46f8945fe81e7373da8f9e8bce0cd98590af46fce556d',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/99cb4b79d6e79548f9f969a9b3cf80c2e4a625af1ade9cfe3067b43b71d6af87.mp3', 2638, '2026-09-14 04:01:55.317316', 'bc550b6488fe329ce451400ce24a74c8274027d87f0173f09ed449b02832aabf', 'validated', '{"audio_key":"99cb4b79d6e79548f9f969a9b3cf80c2e4a625af1ade9cfe3067b43b71d6af87","entity_key":"u_goals_and_effort_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"bc550b6488fe329ce451400ce24a74c8274027d87f0173f09ed449b02832aabf","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/99cb4b79d6e79548f9f969a9b3cf80c2e4a625af1ade9cfe3067b43b71d6af87.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_goals_and_effort_01_listen -> audio/generated/it-IT/utterances/99cb4b79d6e79548f9f969a9b3cf80c2e4a625af1ade9cfe3067b43b71d6af87.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('a883a512-7fd0-5e91-9223-0a9ed3332897', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_goals_and_effort_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a894993e02cb6a74f5e46f8945fe81e7373da8f9e8bce0cd98590af46fce556d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ee8d452a-bb31-5561-b310-22bdd03187f9', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('a883a512-7fd0-5e91-9223-0a9ed3332897', 1), 'a894993e02cb6a74f5e46f8945fe81e7373da8f9e8bce0cd98590af46fce556d',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/99cb4b79d6e79548f9f969a9b3cf80c2e4a625af1ade9cfe3067b43b71d6af87.mp3', 2638, '2026-09-14 04:01:55.317316', 'bc550b6488fe329ce451400ce24a74c8274027d87f0173f09ed449b02832aabf', 'validated', '{"audio_key":"99cb4b79d6e79548f9f969a9b3cf80c2e4a625af1ade9cfe3067b43b71d6af87","entity_key":"e_goals_and_effort_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"bc550b6488fe329ce451400ce24a74c8274027d87f0173f09ed449b02832aabf","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/99cb4b79d6e79548f9f969a9b3cf80c2e4a625af1ade9cfe3067b43b71d6af87.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_polite_nuance_02 -> audio/generated/it-IT/utterances/9ba42a82d7a93824c4280d3eba14cf5bd88200a5818e444b2daf85801cff2cd2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('42eafbde-664d-58c9-992f-5f2f9f5c72e6', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_polite_nuance_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '723985ce24e979fe4256376557bd869f94e30c72a94b4c08f3f025cf4f0947d6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0706e6fc-2615-5389-a359-5b79153f2081', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('42eafbde-664d-58c9-992f-5f2f9f5c72e6', 1), '723985ce24e979fe4256376557bd869f94e30c72a94b4c08f3f025cf4f0947d6',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/9ba42a82d7a93824c4280d3eba14cf5bd88200a5818e444b2daf85801cff2cd2.mp3', 1933, '2026-09-14 04:01:56.215985', '3fd6eac8e1374285fbcdb4afe1be1682af326a9ac89d541dafd72769db2f4d50', 'validated', '{"audio_key":"9ba42a82d7a93824c4280d3eba14cf5bd88200a5818e444b2daf85801cff2cd2","entity_key":"u_polite_nuance_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"3fd6eac8e1374285fbcdb4afe1be1682af326a9ac89d541dafd72769db2f4d50","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/9ba42a82d7a93824c4280d3eba14cf5bd88200a5818e444b2daf85801cff2cd2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_polite_nuance_01_listen -> audio/generated/it-IT/utterances/9ba42a82d7a93824c4280d3eba14cf5bd88200a5818e444b2daf85801cff2cd2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e7cf6fd0-2dda-5c21-a11a-972b7a9b0ac4', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_polite_nuance_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '723985ce24e979fe4256376557bd869f94e30c72a94b4c08f3f025cf4f0947d6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('29b91266-101a-50d3-b4f6-63296dba8b36', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e7cf6fd0-2dda-5c21-a11a-972b7a9b0ac4', 1), '723985ce24e979fe4256376557bd869f94e30c72a94b4c08f3f025cf4f0947d6',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/9ba42a82d7a93824c4280d3eba14cf5bd88200a5818e444b2daf85801cff2cd2.mp3', 1933, '2026-09-14 04:01:56.215985', '3fd6eac8e1374285fbcdb4afe1be1682af326a9ac89d541dafd72769db2f4d50', 'validated', '{"audio_key":"9ba42a82d7a93824c4280d3eba14cf5bd88200a5818e444b2daf85801cff2cd2","entity_key":"e_polite_nuance_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"3fd6eac8e1374285fbcdb4afe1be1682af326a9ac89d541dafd72769db2f4d50","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/9ba42a82d7a93824c4280d3eba14cf5bd88200a5818e444b2daf85801cff2cd2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_b1_city_project_capstone_04 -> audio/generated/it-IT/utterances/aac2066e4bedbe27907e09db50c5dcb9797a753f5624af9f88f948f8644b3f31.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4b0d42a3-4c2d-54e7-9560-12ece7a0cee7', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_b1_city_project_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b65f47de2c597798f7319aae0f27f56140f56d757346a518e4a0e5e184698890'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a771ae42-b475-5df2-bf1e-ce31079c37c0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4b0d42a3-4c2d-54e7-9560-12ece7a0cee7', 1), 'b65f47de2c597798f7319aae0f27f56140f56d757346a518e4a0e5e184698890',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/aac2066e4bedbe27907e09db50c5dcb9797a753f5624af9f88f948f8644b3f31.mp3', 4022, '2026-09-14 04:01:56.630006', '9b05b1e8a9173a6212e05e3faccd538cde3fef2ce5f192af62abfb67bd035c7b', 'validated', '{"audio_key":"aac2066e4bedbe27907e09db50c5dcb9797a753f5624af9f88f948f8644b3f31","entity_key":"u_b1_city_project_capstone_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"9b05b1e8a9173a6212e05e3faccd538cde3fef2ce5f192af62abfb67bd035c7b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/aac2066e4bedbe27907e09db50c5dcb9797a753f5624af9f88f948f8644b3f31.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_b1_city_project_capstone_02_listen -> audio/generated/it-IT/utterances/aac2066e4bedbe27907e09db50c5dcb9797a753f5624af9f88f948f8644b3f31.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('b2389352-d3b8-573c-a141-c9beb39450f5', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_b1_city_project_capstone_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b65f47de2c597798f7319aae0f27f56140f56d757346a518e4a0e5e184698890'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('22beb43c-da38-59d8-ae1b-d17ae27cf55b', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('b2389352-d3b8-573c-a141-c9beb39450f5', 1), 'b65f47de2c597798f7319aae0f27f56140f56d757346a518e4a0e5e184698890',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/aac2066e4bedbe27907e09db50c5dcb9797a753f5624af9f88f948f8644b3f31.mp3', 4022, '2026-09-14 04:01:56.630006', '9b05b1e8a9173a6212e05e3faccd538cde3fef2ce5f192af62abfb67bd035c7b', 'validated', '{"audio_key":"aac2066e4bedbe27907e09db50c5dcb9797a753f5624af9f88f948f8644b3f31","entity_key":"e_b1_city_project_capstone_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"9b05b1e8a9173a6212e05e3faccd538cde3fef2ce5f192af62abfb67bd035c7b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/aac2066e4bedbe27907e09db50c5dcb9797a753f5624af9f88f948f8644b3f31.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_changes_over_time_01 -> audio/generated/it-IT/utterances/ac23ae78b06c02868b6113d644c9fe03fce829d3271aad6fef82192984b4cd78.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bf3186c9-bc36-5690-aa38-a64b7b59e19e', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_changes_over_time_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '63f6950407c30fc43eaa12abe23f3c648e3deb9de80c2eae2d66e50d7cfd7fb1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8b0e96e8-66f3-52b0-94a3-819eac8a9c90', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bf3186c9-bc36-5690-aa38-a64b7b59e19e', 1), '63f6950407c30fc43eaa12abe23f3c648e3deb9de80c2eae2d66e50d7cfd7fb1',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/ac23ae78b06c02868b6113d644c9fe03fce829d3271aad6fef82192984b4cd78.mp3', 3239, '2026-09-14 04:01:57.445459', '74312450cecf5bef549eb9eaec80b56daa68e446d1dfb16b9343d19fef617723', 'validated', '{"audio_key":"ac23ae78b06c02868b6113d644c9fe03fce829d3271aad6fef82192984b4cd78","entity_key":"u_changes_over_time_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"74312450cecf5bef549eb9eaec80b56daa68e446d1dfb16b9343d19fef617723","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/ac23ae78b06c02868b6113d644c9fe03fce829d3271aad6fef82192984b4cd78.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_reported_information_03 -> audio/generated/it-IT/utterances/acba099253fb37f0ae09f8b6e7e18988fafa1f184c4f95b68d70528fe4fa9ed1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9613e9dd-cf30-5700-b8a6-328ed1d01c48', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_reported_information_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0733526d6303c3149ce56094a154de4840fba94e67f4f1cf4f579acc1089c116'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3ea79161-2a0a-535b-91ea-be201b0e9ea0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9613e9dd-cf30-5700-b8a6-328ed1d01c48', 1), '0733526d6303c3149ce56094a154de4840fba94e67f4f1cf4f579acc1089c116',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/acba099253fb37f0ae09f8b6e7e18988fafa1f184c4f95b68d70528fe4fa9ed1.mp3', 2533, '2026-09-14 04:01:57.761898', 'fd4994ae08a6011e7b5810ccd3ca1255a95f3265b0645d261adde214cc4169d3', 'validated', '{"audio_key":"acba099253fb37f0ae09f8b6e7e18988fafa1f184c4f95b68d70528fe4fa9ed1","entity_key":"u_reported_information_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"fd4994ae08a6011e7b5810ccd3ca1255a95f3265b0645d261adde214cc4169d3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/acba099253fb37f0ae09f8b6e7e18988fafa1f184c4f95b68d70528fe4fa9ed1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_media_and_sources_03 -> audio/generated/it-IT/utterances/b3ba572e51cb3c318b134937a02746a7659c18b88dc7576b7331880bb52101ab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7ef1f668-9579-587d-b1a4-14f3cdddb803', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_media_and_sources_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3fc2f27295fccb69f27cf1eba8f2c4137d15df2e2b043043f5addcf56c7b76ef'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1d27d11c-2e2e-58d8-8454-06823c7cdd2a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7ef1f668-9579-587d-b1a4-14f3cdddb803', 1), '3fc2f27295fccb69f27cf1eba8f2c4137d15df2e2b043043f5addcf56c7b76ef',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/b3ba572e51cb3c318b134937a02746a7659c18b88dc7576b7331880bb52101ab.mp3', 2951, '2026-09-14 04:01:58.656528', '76816abdeaf8df9523cbab77ec466ab924aff11950d9dd7c092322a1ca8301f9', 'validated', '{"audio_key":"b3ba572e51cb3c318b134937a02746a7659c18b88dc7576b7331880bb52101ab","entity_key":"u_media_and_sources_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"76816abdeaf8df9523cbab77ec466ab924aff11950d9dd7c092322a1ca8301f9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/b3ba572e51cb3c318b134937a02746a7659c18b88dc7576b7331880bb52101ab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_b1_city_project_capstone_01 -> audio/generated/it-IT/utterances/c3f27084f12d5762e0c68d43622a5a0967142ae5399ef3d063b38dfefcdc77da.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0ad2adde-b57a-5b68-8224-b20e987c7a12', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_b1_city_project_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0a16cd1cd81f0d480f48e3a68b96371f96b7dac83486432a9ed7d90922c9f774'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4cd247f8-9645-5706-bc56-6e223e8abeac', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0ad2adde-b57a-5b68-8224-b20e987c7a12', 1), '0a16cd1cd81f0d480f48e3a68b96371f96b7dac83486432a9ed7d90922c9f774',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/c3f27084f12d5762e0c68d43622a5a0967142ae5399ef3d063b38dfefcdc77da.mp3', 3291, '2026-09-14 04:01:59.026637', 'f0153ff2d590bf94812e5f7de15823f84ee460c07fd6ccc4720bc021b06e3c2b', 'validated', '{"audio_key":"c3f27084f12d5762e0c68d43622a5a0967142ae5399ef3d063b38dfefcdc77da","entity_key":"u_b1_city_project_capstone_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f0153ff2d590bf94812e5f7de15823f84ee460c07fd6ccc4720bc021b06e3c2b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/c3f27084f12d5762e0c68d43622a5a0967142ae5399ef3d063b38dfefcdc77da.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_opinions_and_reasons_02 -> audio/generated/it-IT/utterances/c41b309b1256af7acaeefb30bed4b8736f79513912b35b4b2dae9d38a6dbe884.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9e029c29-f80b-5463-b7b7-53325c0908dc', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_opinions_and_reasons_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c39ad3e36bb43bb976271e9dccafa8eaf261159c8a5ee66a00c62a7c2ab82473'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5b51dc29-dd56-54d7-a989-92b0dc78cacf', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9e029c29-f80b-5463-b7b7-53325c0908dc', 1), 'c39ad3e36bb43bb976271e9dccafa8eaf261159c8a5ee66a00c62a7c2ab82473',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/c41b309b1256af7acaeefb30bed4b8736f79513912b35b4b2dae9d38a6dbe884.mp3', 3004, '2026-09-14 04:01:59.822326', '30c4aa0f4dabe14ab23a026e47ef6d7ab836df505315bcdc2c85e5f51e63f5fc', 'validated', '{"audio_key":"c41b309b1256af7acaeefb30bed4b8736f79513912b35b4b2dae9d38a6dbe884","entity_key":"u_opinions_and_reasons_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"30c4aa0f4dabe14ab23a026e47ef6d7ab836df505315bcdc2c85e5f51e63f5fc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/c41b309b1256af7acaeefb30bed4b8736f79513912b35b4b2dae9d38a6dbe884.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_opinions_and_reasons_01_listen -> audio/generated/it-IT/utterances/c41b309b1256af7acaeefb30bed4b8736f79513912b35b4b2dae9d38a6dbe884.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('1961b595-68af-5b24-89b1-7bed2bcffacf', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_opinions_and_reasons_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c39ad3e36bb43bb976271e9dccafa8eaf261159c8a5ee66a00c62a7c2ab82473'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8029a01a-8abb-5e17-ba5b-6f8ad98e2d21', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('1961b595-68af-5b24-89b1-7bed2bcffacf', 1), 'c39ad3e36bb43bb976271e9dccafa8eaf261159c8a5ee66a00c62a7c2ab82473',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/c41b309b1256af7acaeefb30bed4b8736f79513912b35b4b2dae9d38a6dbe884.mp3', 3004, '2026-09-14 04:01:59.822326', '30c4aa0f4dabe14ab23a026e47ef6d7ab836df505315bcdc2c85e5f51e63f5fc', 'validated', '{"audio_key":"c41b309b1256af7acaeefb30bed4b8736f79513912b35b4b2dae9d38a6dbe884","entity_key":"e_opinions_and_reasons_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"30c4aa0f4dabe14ab23a026e47ef6d7ab836df505315bcdc2c85e5f51e63f5fc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/c41b309b1256af7acaeefb30bed4b8736f79513912b35b4b2dae9d38a6dbe884.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_stories_and_background_03 -> audio/generated/it-IT/utterances/c72992409f7de4b76e66f082af5b1119050ad333f11d3d779776b7bf55e8b7e3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('adf91d2c-b15e-55e2-9dc4-2ff174fddade', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_stories_and_background_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '30e5f9cdc00064b8e5acf437ffe058b18bd0bfe16a7018a4f2a01252bd77b773'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7374491b-f7d5-50da-97cd-f77c18fccf2e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('adf91d2c-b15e-55e2-9dc4-2ff174fddade', 1), '30e5f9cdc00064b8e5acf437ffe058b18bd0bfe16a7018a4f2a01252bd77b773',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/c72992409f7de4b76e66f082af5b1119050ad333f11d3d779776b7bf55e8b7e3.mp3', 3761, '2026-09-14 04:02:00.280917', 'e23c941b977936976a9bc34c6d5ab501b17fd3c2bfc9ad5b9f8987f1f163273b', 'validated', '{"audio_key":"c72992409f7de4b76e66f082af5b1119050ad333f11d3d779776b7bf55e8b7e3","entity_key":"u_stories_and_background_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e23c941b977936976a9bc34c6d5ab501b17fd3c2bfc9ad5b9f8987f1f163273b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/c72992409f7de4b76e66f082af5b1119050ad333f11d3d779776b7bf55e8b7e3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_changes_over_time_02 -> audio/generated/it-IT/utterances/cb4af6a3f93ad592dff67a1d911c54665e27f68880b49b0fd01a7c2920eaa87c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5f0a564a-7f66-595f-b148-86f40fab6f37', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_changes_over_time_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6bace91b06bf6119fe18f0fb867d8c956b646ff2dd0e3ce1b1b4c800212acc9f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5901e03d-7db8-522b-8a71-15ec5e4ddb8b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5f0a564a-7f66-595f-b148-86f40fab6f37', 1), '6bace91b06bf6119fe18f0fb867d8c956b646ff2dd0e3ce1b1b4c800212acc9f',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/cb4af6a3f93ad592dff67a1d911c54665e27f68880b49b0fd01a7c2920eaa87c.mp3', 2507, '2026-09-14 04:02:00.963897', '56c9eb9734c790120e33e3319a73038df27801dd043e6d83261c8f871fc8422b', 'validated', '{"audio_key":"cb4af6a3f93ad592dff67a1d911c54665e27f68880b49b0fd01a7c2920eaa87c","entity_key":"u_changes_over_time_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"56c9eb9734c790120e33e3319a73038df27801dd043e6d83261c8f871fc8422b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/cb4af6a3f93ad592dff67a1d911c54665e27f68880b49b0fd01a7c2920eaa87c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_changes_over_time_01_listen -> audio/generated/it-IT/utterances/cb4af6a3f93ad592dff67a1d911c54665e27f68880b49b0fd01a7c2920eaa87c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('9d45ca06-728d-504c-9e78-8ca8c9759967', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_changes_over_time_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6bace91b06bf6119fe18f0fb867d8c956b646ff2dd0e3ce1b1b4c800212acc9f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9b7bfde6-fa74-5e2c-bb4e-5287c4de919b', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('9d45ca06-728d-504c-9e78-8ca8c9759967', 1), '6bace91b06bf6119fe18f0fb867d8c956b646ff2dd0e3ce1b1b4c800212acc9f',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/cb4af6a3f93ad592dff67a1d911c54665e27f68880b49b0fd01a7c2920eaa87c.mp3', 2507, '2026-09-14 04:02:00.963897', '56c9eb9734c790120e33e3319a73038df27801dd043e6d83261c8f871fc8422b', 'validated', '{"audio_key":"cb4af6a3f93ad592dff67a1d911c54665e27f68880b49b0fd01a7c2920eaa87c","entity_key":"e_changes_over_time_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"56c9eb9734c790120e33e3319a73038df27801dd043e6d83261c8f871fc8422b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/cb4af6a3f93ad592dff67a1d911c54665e27f68880b49b0fd01a7c2920eaa87c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_media_and_sources_01 -> audio/generated/it-IT/utterances/d21de1a091f4e67e4bb749ba773caab61d676bb0867f099476f1f4e336f83884.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('27e9d72b-38e2-5c8d-900a-2acae4b1b4ac', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_media_and_sources_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7794ac338bcd738471ecac4879deada67b2e4fa9e13b9c2ff1cf9867cf657924'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f8b2cc89-a1e9-5eb0-9a49-8eb5da597b82', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('27e9d72b-38e2-5c8d-900a-2acae4b1b4ac', 1), '7794ac338bcd738471ecac4879deada67b2e4fa9e13b9c2ff1cf9867cf657924',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/d21de1a091f4e67e4bb749ba773caab61d676bb0867f099476f1f4e336f83884.mp3', 2403, '2026-09-14 04:02:01.446551', '1c6aaa296dc84680e1347a8e00a43abcb3239ae3320d30c5bd5b60c00c423083', 'validated', '{"audio_key":"d21de1a091f4e67e4bb749ba773caab61d676bb0867f099476f1f4e336f83884","entity_key":"u_media_and_sources_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1c6aaa296dc84680e1347a8e00a43abcb3239ae3320d30c5bd5b60c00c423083","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/d21de1a091f4e67e4bb749ba773caab61d676bb0867f099476f1f4e336f83884.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_stories_and_background_04 -> audio/generated/it-IT/utterances/d8527e261d8d82afea944255205dc2d6acb6364ef566851b7d0304c0f9a67e4e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('14c7ad33-6bf7-5181-aa36-49b13abb51a1', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_stories_and_background_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0370800eb61a0412a5bec5137c72b4538ea06902775f473b6555a4ad2bd9f9c8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ee8a24a4-6b7d-548b-a07b-5552f08e4fe5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('14c7ad33-6bf7-5181-aa36-49b13abb51a1', 1), '0370800eb61a0412a5bec5137c72b4538ea06902775f473b6555a4ad2bd9f9c8',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/d8527e261d8d82afea944255205dc2d6acb6364ef566851b7d0304c0f9a67e4e.mp3', 2089, '2026-09-14 04:02:02.061097', 'cec995d9c1cb125a0817a4dd580b15cc507711c0c4d3c11de111988d904e9c9d', 'validated', '{"audio_key":"d8527e261d8d82afea944255205dc2d6acb6364ef566851b7d0304c0f9a67e4e","entity_key":"u_stories_and_background_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"cec995d9c1cb125a0817a4dd580b15cc507711c0c4d3c11de111988d904e9c9d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/d8527e261d8d82afea944255205dc2d6acb6364ef566851b7d0304c0f9a67e4e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_stories_and_background_02_listen -> audio/generated/it-IT/utterances/d8527e261d8d82afea944255205dc2d6acb6364ef566851b7d0304c0f9a67e4e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('bcb6873d-fcbd-5260-9b5b-088d79d46d31', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_stories_and_background_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0370800eb61a0412a5bec5137c72b4538ea06902775f473b6555a4ad2bd9f9c8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('037a6da4-29c4-558e-8cda-9cdf63db47bd', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('bcb6873d-fcbd-5260-9b5b-088d79d46d31', 1), '0370800eb61a0412a5bec5137c72b4538ea06902775f473b6555a4ad2bd9f9c8',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/d8527e261d8d82afea944255205dc2d6acb6364ef566851b7d0304c0f9a67e4e.mp3', 2089, '2026-09-14 04:02:02.061097', 'cec995d9c1cb125a0817a4dd580b15cc507711c0c4d3c11de111988d904e9c9d', 'validated', '{"audio_key":"d8527e261d8d82afea944255205dc2d6acb6364ef566851b7d0304c0f9a67e4e","entity_key":"e_stories_and_background_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"cec995d9c1cb125a0817a4dd580b15cc507711c0c4d3c11de111988d904e9c9d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/d8527e261d8d82afea944255205dc2d6acb6364ef566851b7d0304c0f9a67e4e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_stories_and_background_02 -> audio/generated/it-IT/utterances/db542784d1988bebef8c05e52dc354c8cf90755dfdb6efff28312c8f38667a92.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2c73f982-ead9-5003-9c19-d7c06ebb923f', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_stories_and_background_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e59fe293929ba096e131ef8abb9736fb9a9cabdd9039725c0a8cadb111861977'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7e8b042b-00e7-586a-81bb-117a677ca76e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2c73f982-ead9-5003-9c19-d7c06ebb923f', 1), 'e59fe293929ba096e131ef8abb9736fb9a9cabdd9039725c0a8cadb111861977',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/db542784d1988bebef8c05e52dc354c8cf90755dfdb6efff28312c8f38667a92.mp3', 2586, '2026-09-14 04:02:02.609928', '899420a7f41977c90838110526dd3d21fc4987dd1e7f942dd21117e7acdfe860', 'validated', '{"audio_key":"db542784d1988bebef8c05e52dc354c8cf90755dfdb6efff28312c8f38667a92","entity_key":"u_stories_and_background_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"899420a7f41977c90838110526dd3d21fc4987dd1e7f942dd21117e7acdfe860","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/db542784d1988bebef8c05e52dc354c8cf90755dfdb6efff28312c8f38667a92.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_stories_and_background_01_listen -> audio/generated/it-IT/utterances/db542784d1988bebef8c05e52dc354c8cf90755dfdb6efff28312c8f38667a92.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('90f15c85-72b3-5e73-a86b-7f37980d4fb6', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_stories_and_background_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e59fe293929ba096e131ef8abb9736fb9a9cabdd9039725c0a8cadb111861977'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('52b28796-011a-558a-9116-e5039bb6726b', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('90f15c85-72b3-5e73-a86b-7f37980d4fb6', 1), 'e59fe293929ba096e131ef8abb9736fb9a9cabdd9039725c0a8cadb111861977',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/db542784d1988bebef8c05e52dc354c8cf90755dfdb6efff28312c8f38667a92.mp3', 2586, '2026-09-14 04:02:02.609928', '899420a7f41977c90838110526dd3d21fc4987dd1e7f942dd21117e7acdfe860', 'validated', '{"audio_key":"db542784d1988bebef8c05e52dc354c8cf90755dfdb6efff28312c8f38667a92","entity_key":"e_stories_and_background_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"899420a7f41977c90838110526dd3d21fc4987dd1e7f942dd21117e7acdfe860","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/db542784d1988bebef8c05e52dc354c8cf90755dfdb6efff28312c8f38667a92.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_changes_over_time_03 -> audio/generated/it-IT/utterances/de68ce2f6c531fa8ebab3b168122966359bcea2a04f4091b2c0cc33f79cf8332.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('42115e61-d2c9-5737-bc5f-cb3e3103af48', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_changes_over_time_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1fb5cc7a430de225570f7857e319df8794c6c6d04c4e555e840a309ca0c26ad5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('33af1887-aedf-5230-bdb9-3d0bb76a40be', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('42115e61-d2c9-5737-bc5f-cb3e3103af48', 1), '1fb5cc7a430de225570f7857e319df8794c6c6d04c4e555e840a309ca0c26ad5',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/de68ce2f6c531fa8ebab3b168122966359bcea2a04f4091b2c0cc33f79cf8332.mp3', 2455, '2026-09-14 04:02:03.240352', '450ab680fd52625d859601a494c7020d819de7d296b64256a6f9276f0382c6dc', 'validated', '{"audio_key":"de68ce2f6c531fa8ebab3b168122966359bcea2a04f4091b2c0cc33f79cf8332","entity_key":"u_changes_over_time_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"450ab680fd52625d859601a494c7020d819de7d296b64256a6f9276f0382c6dc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/de68ce2f6c531fa8ebab3b168122966359bcea2a04f4091b2c0cc33f79cf8332.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_real_conditions_02 -> audio/generated/it-IT/utterances/dfab441334ca15a4466cdf77368fa6ce560aea145399703f31c1626fb64c5df4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('46439389-a3ff-5a18-a41d-36d5d7a1e770', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_real_conditions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e296b4794e54873dad89751f5ab06a88d34ff95b61391455f662898f3e71340b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('086c29bf-941a-5738-9544-f5e3fba1e1f6', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('46439389-a3ff-5a18-a41d-36d5d7a1e770', 1), 'e296b4794e54873dad89751f5ab06a88d34ff95b61391455f662898f3e71340b',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/dfab441334ca15a4466cdf77368fa6ce560aea145399703f31c1626fb64c5df4.mp3', 2351, '2026-09-14 04:02:03.778801', '554ff2b40112d04fd61565314abdd65c608a92896e10c423ca2afa0243471994', 'validated', '{"audio_key":"dfab441334ca15a4466cdf77368fa6ce560aea145399703f31c1626fb64c5df4","entity_key":"u_real_conditions_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"554ff2b40112d04fd61565314abdd65c608a92896e10c423ca2afa0243471994","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/dfab441334ca15a4466cdf77368fa6ce560aea145399703f31c1626fb64c5df4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_real_conditions_01_listen -> audio/generated/it-IT/utterances/dfab441334ca15a4466cdf77368fa6ce560aea145399703f31c1626fb64c5df4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('03772008-b021-5144-8d1e-4ab40f3b2156', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_real_conditions_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e296b4794e54873dad89751f5ab06a88d34ff95b61391455f662898f3e71340b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fac1329c-f2b4-50fc-86e0-f1360c10f9ae', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('03772008-b021-5144-8d1e-4ab40f3b2156', 1), 'e296b4794e54873dad89751f5ab06a88d34ff95b61391455f662898f3e71340b',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/dfab441334ca15a4466cdf77368fa6ce560aea145399703f31c1626fb64c5df4.mp3', 2351, '2026-09-14 04:02:03.778801', '554ff2b40112d04fd61565314abdd65c608a92896e10c423ca2afa0243471994', 'validated', '{"audio_key":"dfab441334ca15a4466cdf77368fa6ce560aea145399703f31c1626fb64c5df4","entity_key":"e_real_conditions_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"554ff2b40112d04fd61565314abdd65c608a92896e10c423ca2afa0243471994","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/dfab441334ca15a4466cdf77368fa6ce560aea145399703f31c1626fb64c5df4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_real_conditions_01 -> audio/generated/it-IT/utterances/e5a34d44480086ad6cda2271b3e5e0dcaef80c29cc076a6f92318cb0e839a7db.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c2817520-46cc-5771-860c-8a2b66e3f678', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_real_conditions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3adbcf027d5825632fe353fe5cbe58709c24b9629a0f9feea81ef80c3cb107ce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1c51ad0e-d34e-55f5-b333-f874430cd02d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c2817520-46cc-5771-860c-8a2b66e3f678', 1), '3adbcf027d5825632fe353fe5cbe58709c24b9629a0f9feea81ef80c3cb107ce',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/e5a34d44480086ad6cda2271b3e5e0dcaef80c29cc076a6f92318cb0e839a7db.mp3', 1854, '2026-09-14 04:02:04.305689', '8cc335c888d110438aaa694ba1efba087b1afc4916e276698199998d2251b32a', 'validated', '{"audio_key":"e5a34d44480086ad6cda2271b3e5e0dcaef80c29cc076a6f92318cb0e839a7db","entity_key":"u_real_conditions_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8cc335c888d110438aaa694ba1efba087b1afc4916e276698199998d2251b32a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/e5a34d44480086ad6cda2271b3e5e0dcaef80c29cc076a6f92318cb0e839a7db.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_problems_and_solutions_04 -> audio/generated/it-IT/utterances/e5fcdb3bf60c9cec507f332614bc0c53a4cda3a1967e80b0e7fe089701042a1c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b08c93fa-a9a1-5e69-be0b-d5d7d40ccc05', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_problems_and_solutions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '069cc5a5feaeaed4ed34742970af7bbf450eae5f2f8191666cf6d8945b8ddf52'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fceed11b-7f18-5877-8833-8bdf902c5b8f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b08c93fa-a9a1-5e69-be0b-d5d7d40ccc05', 1), '069cc5a5feaeaed4ed34742970af7bbf450eae5f2f8191666cf6d8945b8ddf52',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/e5fcdb3bf60c9cec507f332614bc0c53a4cda3a1967e80b0e7fe089701042a1c.mp3', 2638, '2026-09-14 04:02:04.905127', 'd7468d3a0143414b6afcc74119c5b5ca2bbcb150cc7aa5960534f957b15f5ce2', 'validated', '{"audio_key":"e5fcdb3bf60c9cec507f332614bc0c53a4cda3a1967e80b0e7fe089701042a1c","entity_key":"u_problems_and_solutions_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d7468d3a0143414b6afcc74119c5b5ca2bbcb150cc7aa5960534f957b15f5ce2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/e5fcdb3bf60c9cec507f332614bc0c53a4cda3a1967e80b0e7fe089701042a1c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_problems_and_solutions_02_listen -> audio/generated/it-IT/utterances/e5fcdb3bf60c9cec507f332614bc0c53a4cda3a1967e80b0e7fe089701042a1c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('eb4193c4-2a80-5748-a0a4-84d0fec3c1d8', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_problems_and_solutions_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '069cc5a5feaeaed4ed34742970af7bbf450eae5f2f8191666cf6d8945b8ddf52'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b73e6b60-edac-5ae2-b175-4486af0e0516', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('eb4193c4-2a80-5748-a0a4-84d0fec3c1d8', 1), '069cc5a5feaeaed4ed34742970af7bbf450eae5f2f8191666cf6d8945b8ddf52',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/e5fcdb3bf60c9cec507f332614bc0c53a4cda3a1967e80b0e7fe089701042a1c.mp3', 2638, '2026-09-14 04:02:04.905127', 'd7468d3a0143414b6afcc74119c5b5ca2bbcb150cc7aa5960534f957b15f5ce2', 'validated', '{"audio_key":"e5fcdb3bf60c9cec507f332614bc0c53a4cda3a1967e80b0e7fe089701042a1c","entity_key":"e_problems_and_solutions_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d7468d3a0143414b6afcc74119c5b5ca2bbcb150cc7aa5960534f957b15f5ce2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/e5fcdb3bf60c9cec507f332614bc0c53a4cda3a1967e80b0e7fe089701042a1c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_reported_information_01 -> audio/generated/it-IT/utterances/e91c415c576b7db25d3d220c0663e81a0eef548f1d5751aa59690858f9b73396.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('77bc2a9c-58e4-5f71-9631-c6519988168d', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_reported_information_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aac33b67719144bfd40ebab332a1fd399ea04b848f928c878358d67c0c12b410'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2fd2425d-19de-5b4b-8ae2-924a622f837a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('77bc2a9c-58e4-5f71-9631-c6519988168d', 1), 'aac33b67719144bfd40ebab332a1fd399ea04b848f928c878358d67c0c12b410',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/e91c415c576b7db25d3d220c0663e81a0eef548f1d5751aa59690858f9b73396.mp3', 2455, '2026-09-14 04:02:05.420363', '29716b6adcca77228c9622df67ef7d17fc1a489f234e2e1b7d04c668516349de', 'validated', '{"audio_key":"e91c415c576b7db25d3d220c0663e81a0eef548f1d5751aa59690858f9b73396","entity_key":"u_reported_information_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"29716b6adcca77228c9622df67ef7d17fc1a489f234e2e1b7d04c668516349de","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/e91c415c576b7db25d3d220c0663e81a0eef548f1d5751aa59690858f9b73396.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_real_conditions_04 -> audio/generated/it-IT/utterances/fc08fc086754302b23714843760b6a6a55c49c8ae03f14d560e41a63eeb69963.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ddc578f2-1bca-51d2-8ed5-c5f46f030adf', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_real_conditions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '78176c769adf0496bd2ddf35e9a59d154e775263b6a58ff5d90c74d5198e4efd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2f1a8cad-2e14-5618-bc38-08bedda2b11f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ddc578f2-1bca-51d2-8ed5-c5f46f030adf', 1), '78176c769adf0496bd2ddf35e9a59d154e775263b6a58ff5d90c74d5198e4efd',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/fc08fc086754302b23714843760b6a6a55c49c8ae03f14d560e41a63eeb69963.mp3', 3004, '2026-09-14 04:02:06.079017', 'f033e3f4480ba4cb9c9dc0e650e2b42de6baffa4747c8e398ab9d3c238665299', 'validated', '{"audio_key":"fc08fc086754302b23714843760b6a6a55c49c8ae03f14d560e41a63eeb69963","entity_key":"u_real_conditions_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f033e3f4480ba4cb9c9dc0e650e2b42de6baffa4747c8e398ab9d3c238665299","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/fc08fc086754302b23714843760b6a6a55c49c8ae03f14d560e41a63eeb69963.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_real_conditions_02_listen -> audio/generated/it-IT/utterances/fc08fc086754302b23714843760b6a6a55c49c8ae03f14d560e41a63eeb69963.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('a5d8a08f-4e09-55ad-afd4-43e84c0ea5f2', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_real_conditions_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '78176c769adf0496bd2ddf35e9a59d154e775263b6a58ff5d90c74d5198e4efd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b9d9b12f-20fa-58c7-b4f5-78c69e423da2', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('a5d8a08f-4e09-55ad-afd4-43e84c0ea5f2', 1), '78176c769adf0496bd2ddf35e9a59d154e775263b6a58ff5d90c74d5198e4efd',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/fc08fc086754302b23714843760b6a6a55c49c8ae03f14d560e41a63eeb69963.mp3', 3004, '2026-09-14 04:02:06.079017', 'f033e3f4480ba4cb9c9dc0e650e2b42de6baffa4747c8e398ab9d3c238665299', 'validated', '{"audio_key":"fc08fc086754302b23714843760b6a6a55c49c8ae03f14d560e41a63eeb69963","entity_key":"e_real_conditions_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f033e3f4480ba4cb9c9dc0e650e2b42de6baffa4747c8e398ab9d3c238665299","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/fc08fc086754302b23714843760b6a6a55c49c8ae03f14d560e41a63eeb69963.mp3"}'
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
